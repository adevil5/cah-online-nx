
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";

CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";

CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";

CREATE FUNCTION "public"."delete_avatar"("avatar_url" "text", OUT "status" integer, OUT "content" "text") RETURNS "record"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
begin
  select
      into status, content
           result.status, result.content
      from public.delete_storage_object('avatars', avatar_url) as result;
end;
$$;

ALTER FUNCTION "public"."delete_avatar"("avatar_url" "text", OUT "status" integer, OUT "content" "text") OWNER TO "postgres";

CREATE FUNCTION "public"."delete_old_avatar"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
declare
  status int;
  content text;
begin
  if coalesce(old.avatar_url, '') <> ''
      and (tg_op = 'DELETE' or (old.avatar_url <> new.avatar_url)) then
    select
      into status, content
      result.status, result.content
      from public.delete_avatar(old.avatar_url) as result;
    if status <> 200 then
      raise warning 'Could not delete avatar: % %', status, content;
    end if;
  end if;
  if tg_op = 'DELETE' then
    return old;
  end if;
  return new;
end;
$$;

ALTER FUNCTION "public"."delete_old_avatar"() OWNER TO "postgres";

CREATE FUNCTION "public"."delete_old_profile"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
begin
  delete from public.profiles where id = old.id;
  return old;
end;
$$;

ALTER FUNCTION "public"."delete_old_profile"() OWNER TO "postgres";

CREATE FUNCTION "public"."delete_storage_object"("bucket" "text", "object" "text", OUT "status" integer, OUT "content" "text") RETURNS "record"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
declare
  project_url text := '<YOURPROJECTURL>';
  service_role_key text := '<YOURSERVICEROLEKEY>'; --  full access needed
  url text := project_url||'/storage/v1/object/'||bucket||'/'||object;
begin
  select
      into status, content
           result.status::int, result.content::text
      FROM extensions.http((
    'DELETE',
    url,
    ARRAY[extensions.http_header('authorization','Bearer '||service_role_key)],
    NULL,
    NULL)::extensions.http_request) as result;
end;
$$;

ALTER FUNCTION "public"."delete_storage_object"("bucket" "text", "object" "text", OUT "status" integer, OUT "content" "text") OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";

CREATE TABLE "public"."card" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "is_white_card" boolean NOT NULL,
    "text" "text" NOT NULL,
    "pick_count" smallint,
    "card_pack_id" "uuid"
);

ALTER TABLE "public"."card" OWNER TO "postgres";

CREATE FUNCTION "public"."get_random_cards"("n" integer, "is_white_card" boolean DEFAULT NULL::boolean) RETURNS SETOF "public"."card"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    RETURN QUERY SELECT *
                 FROM public.card c
                 WHERE c.is_white_card = get_random_cards.is_white_card
                    OR get_random_cards.is_white_card IS NULL
                 ORDER BY RANDOM()
                 LIMIT get_random_cards.n;
END;
$$;

ALTER FUNCTION "public"."get_random_cards"("n" integer, "is_white_card" boolean) OWNER TO "postgres";

CREATE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
begin
  insert into public.profile (id, username, avatar_url)
  values (
    new.id, 
    COALESCE(new.raw_user_meta_data->>'full_name', new.email), 
    new.raw_user_meta_data->>'avatar_url'
  );
  return new;
end;
$$;

ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";

CREATE TABLE "public"."card_pack" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "is_official" boolean NOT NULL
);

ALTER TABLE "public"."card_pack" OWNER TO "postgres";

CREATE TABLE "public"."game" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "host_user_id" "uuid" NOT NULL,
    "state" "text" DEFAULT 'waiting'::"text" NOT NULL,
    "game_deck_id" "uuid" NOT NULL,
    "current_round_id" "uuid",
    "enable_ghost_player" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL,
    "updated_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL
);

ALTER TABLE "public"."game" OWNER TO "postgres";

CREATE TABLE "public"."game_card" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "game_id" "uuid" NOT NULL,
    "card_id" "uuid" NOT NULL,
    "card_location" "text" DEFAULT 'deck'::"text" NOT NULL,
    "card_owner_id" "uuid",
    "created_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL,
    "updated_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL
);

ALTER TABLE "public"."game_card" OWNER TO "postgres";

CREATE TABLE "public"."game_round" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "game_id" "uuid" NOT NULL,
    "game_round_number" smallint DEFAULT '1'::smallint NOT NULL,
    "black_card_id" "uuid" NOT NULL,
    "czar_user_id" "uuid",
    "winning_user_game_id" "uuid",
    "created_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL,
    "updated_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL
);

ALTER TABLE "public"."game_round" OWNER TO "postgres";

CREATE TABLE "public"."profile" (
    "id" "uuid" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL,
    "username" "text",
    "avatar_url" "text",
    CONSTRAINT "username_length" CHECK (("char_length"("username") >= 3))
);

ALTER TABLE "public"."profile" OWNER TO "postgres";

CREATE TABLE "public"."user_game" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "game_id" "uuid" NOT NULL,
    "enable_autoplay" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL,
    "updated_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL
);

ALTER TABLE "public"."user_game" OWNER TO "postgres";

CREATE TABLE "public"."user_game_round_card" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_game_id" "uuid" NOT NULL,
    "game_round_id" "uuid" NOT NULL,
    "played_card_id" "uuid",
    "played_card_order" smallint DEFAULT '1'::smallint NOT NULL,
    "created_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL,
    "updated_at" timestamp with time zone DEFAULT ("now"() AT TIME ZONE 'utc'::"text") NOT NULL
);

ALTER TABLE "public"."user_game_round_card" OWNER TO "postgres";

ALTER TABLE ONLY "public"."card_pack"
    ADD CONSTRAINT "card_pack_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."card"
    ADD CONSTRAINT "card_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."game_card"
    ADD CONSTRAINT "game_deck_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."game"
    ADD CONSTRAINT "game_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."game_round"
    ADD CONSTRAINT "game_round_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."profile"
    ADD CONSTRAINT "profiles_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."profile"
    ADD CONSTRAINT "profiles_username_key" UNIQUE ("username");

ALTER TABLE ONLY "public"."user_game"
    ADD CONSTRAINT "user_game_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."user_game_round_card"
    ADD CONSTRAINT "user_game_round_pkey" PRIMARY KEY ("id");

CREATE TRIGGER "before_profile_changes" BEFORE DELETE OR UPDATE OF "avatar_url" ON "public"."profile" FOR EACH ROW EXECUTE FUNCTION "public"."delete_old_avatar"();

ALTER TABLE ONLY "public"."card"
    ADD CONSTRAINT "card_card_pack_id_fkey" FOREIGN KEY ("card_pack_id") REFERENCES "public"."card_pack"("id");

ALTER TABLE ONLY "public"."game_card"
    ADD CONSTRAINT "game_card_card_id_fkey" FOREIGN KEY ("card_id") REFERENCES "public"."card"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."game_card"
    ADD CONSTRAINT "game_card_card_owner_id_fkey" FOREIGN KEY ("card_owner_id") REFERENCES "public"."profile"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."game_card"
    ADD CONSTRAINT "game_card_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "public"."game"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."game"
    ADD CONSTRAINT "game_current_round_id_fkey" FOREIGN KEY ("current_round_id") REFERENCES "public"."game_round"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."game"
    ADD CONSTRAINT "game_host_user_id_fkey" FOREIGN KEY ("host_user_id") REFERENCES "public"."profile"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."game_round"
    ADD CONSTRAINT "game_round_black_card_id_fkey" FOREIGN KEY ("black_card_id") REFERENCES "public"."card"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."game_round"
    ADD CONSTRAINT "game_round_czar_user_id_fkey" FOREIGN KEY ("czar_user_id") REFERENCES "public"."profile"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."game_round"
    ADD CONSTRAINT "game_round_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "public"."game"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."game_round"
    ADD CONSTRAINT "game_round_winning_user_game_id_fkey" FOREIGN KEY ("winning_user_game_id") REFERENCES "public"."user_game"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."profile"
    ADD CONSTRAINT "profile_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."user_game"
    ADD CONSTRAINT "user_game_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "public"."game"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."user_game_round_card"
    ADD CONSTRAINT "user_game_round_card_game_round_id_fkey" FOREIGN KEY ("game_round_id") REFERENCES "public"."game_round"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."user_game_round_card"
    ADD CONSTRAINT "user_game_round_card_played_card_id_fkey" FOREIGN KEY ("played_card_id") REFERENCES "public"."card"("id") ON DELETE RESTRICT;

ALTER TABLE ONLY "public"."user_game_round_card"
    ADD CONSTRAINT "user_game_round_card_user_game_id_fkey" FOREIGN KEY ("user_game_id") REFERENCES "public"."user_game"("id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."user_game"
    ADD CONSTRAINT "user_game_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."profile"("id") ON DELETE RESTRICT;

CREATE POLICY "Enable read access for all users" ON "public"."card" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."card_pack" FOR SELECT USING (true);

CREATE POLICY "Public profiles are viewable by everyone." ON "public"."profile" FOR SELECT USING (true);

CREATE POLICY "Users can insert their own profile." ON "public"."profile" FOR INSERT WITH CHECK (("auth"."uid"() = "id"));

CREATE POLICY "Users can update own profile." ON "public"."profile" FOR UPDATE USING (("auth"."uid"() = "id"));

ALTER TABLE "public"."card" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."card_pack" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."game" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."game_card" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."game_round" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."profile" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."user_game" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."user_game_round_card" ENABLE ROW LEVEL SECURITY;

REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;
GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON FUNCTION "public"."delete_avatar"("avatar_url" "text", OUT "status" integer, OUT "content" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."delete_avatar"("avatar_url" "text", OUT "status" integer, OUT "content" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_avatar"("avatar_url" "text", OUT "status" integer, OUT "content" "text") TO "service_role";

GRANT ALL ON FUNCTION "public"."delete_old_avatar"() TO "anon";
GRANT ALL ON FUNCTION "public"."delete_old_avatar"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_old_avatar"() TO "service_role";

GRANT ALL ON FUNCTION "public"."delete_old_profile"() TO "anon";
GRANT ALL ON FUNCTION "public"."delete_old_profile"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_old_profile"() TO "service_role";

GRANT ALL ON FUNCTION "public"."delete_storage_object"("bucket" "text", "object" "text", OUT "status" integer, OUT "content" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."delete_storage_object"("bucket" "text", "object" "text", OUT "status" integer, OUT "content" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_storage_object"("bucket" "text", "object" "text", OUT "status" integer, OUT "content" "text") TO "service_role";

GRANT ALL ON TABLE "public"."card" TO "anon";
GRANT ALL ON TABLE "public"."card" TO "authenticated";
GRANT ALL ON TABLE "public"."card" TO "service_role";

GRANT ALL ON FUNCTION "public"."get_random_cards"("n" integer, "is_white_card" boolean) TO "anon";
GRANT ALL ON FUNCTION "public"."get_random_cards"("n" integer, "is_white_card" boolean) TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_random_cards"("n" integer, "is_white_card" boolean) TO "service_role";

GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";

GRANT ALL ON TABLE "public"."card_pack" TO "anon";
GRANT ALL ON TABLE "public"."card_pack" TO "authenticated";
GRANT ALL ON TABLE "public"."card_pack" TO "service_role";

GRANT ALL ON TABLE "public"."game" TO "anon";
GRANT ALL ON TABLE "public"."game" TO "authenticated";
GRANT ALL ON TABLE "public"."game" TO "service_role";

GRANT ALL ON TABLE "public"."game_card" TO "anon";
GRANT ALL ON TABLE "public"."game_card" TO "authenticated";
GRANT ALL ON TABLE "public"."game_card" TO "service_role";

GRANT ALL ON TABLE "public"."game_round" TO "anon";
GRANT ALL ON TABLE "public"."game_round" TO "authenticated";
GRANT ALL ON TABLE "public"."game_round" TO "service_role";

GRANT ALL ON TABLE "public"."profile" TO "anon";
GRANT ALL ON TABLE "public"."profile" TO "authenticated";
GRANT ALL ON TABLE "public"."profile" TO "service_role";

GRANT ALL ON TABLE "public"."user_game" TO "anon";
GRANT ALL ON TABLE "public"."user_game" TO "authenticated";
GRANT ALL ON TABLE "public"."user_game" TO "service_role";

GRANT ALL ON TABLE "public"."user_game_round_card" TO "anon";
GRANT ALL ON TABLE "public"."user_game_round_card" TO "authenticated";
GRANT ALL ON TABLE "public"."user_game_round_card" TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";

RESET ALL;
