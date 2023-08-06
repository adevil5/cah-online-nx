create table "public"."card" (
    "id" uuid not null default gen_random_uuid(),
    "is_white_card" boolean not null,
    "text" text not null,
    "pick_count" smallint,
    "card_pack_id" uuid
);


alter table "public"."card" enable row level security;

create table "public"."card_pack" (
    "id" uuid not null default gen_random_uuid(),
    "name" text not null,
    "is_official" boolean not null
);


alter table "public"."card_pack" enable row level security;

create table "public"."game" (
    "id" uuid not null default gen_random_uuid(),
    "host_user_id" uuid not null,
    "state" text not null default 'waiting'::text,
    "game_deck_id" uuid not null,
    "current_round_id" uuid,
    "enable_ghost_player" boolean not null default false,
    "created_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "updated_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text)
);


alter table "public"."game" enable row level security;

create table "public"."game_card" (
    "id" uuid not null default gen_random_uuid(),
    "game_id" uuid not null,
    "card_id" uuid not null,
    "card_location" text not null default 'deck'::text,
    "card_owner_id" uuid,
    "created_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "updated_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text)
);


alter table "public"."game_card" enable row level security;

create table "public"."game_round" (
    "id" uuid not null default gen_random_uuid(),
    "game_id" uuid not null,
    "game_round_number" smallint not null default '1'::smallint,
    "black_card_id" uuid not null,
    "czar_user_id" uuid,
    "winning_user_game_id" uuid,
    "created_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "updated_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text)
);


alter table "public"."game_round" enable row level security;

create table "public"."profile" (
    "id" uuid not null,
    "updated_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "username" text,
    "avatar_url" text
);


alter table "public"."profile" enable row level security;

create table "public"."user_game" (
    "id" uuid not null default gen_random_uuid(),
    "user_id" uuid not null,
    "game_id" uuid not null,
    "enable_autoplay" boolean not null default false,
    "created_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "updated_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text)
);


alter table "public"."user_game" enable row level security;

create table "public"."user_game_round_card" (
    "id" uuid not null default gen_random_uuid(),
    "user_game_id" uuid not null,
    "game_round_id" uuid not null,
    "played_card_id" uuid,
    "played_card_order" smallint not null default '1'::smallint,
    "created_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text),
    "updated_at" timestamp with time zone not null default (now() AT TIME ZONE 'utc'::text)
);


alter table "public"."user_game_round_card" enable row level security;

CREATE UNIQUE INDEX card_pack_pkey ON public.card_pack USING btree (id);

CREATE UNIQUE INDEX card_pkey ON public.card USING btree (id);

CREATE UNIQUE INDEX game_deck_pkey ON public.game_card USING btree (id);

CREATE UNIQUE INDEX game_pkey ON public.game USING btree (id);

CREATE UNIQUE INDEX game_round_pkey ON public.game_round USING btree (id);

CREATE UNIQUE INDEX profiles_pkey ON public.profile USING btree (id);

CREATE UNIQUE INDEX profiles_username_key ON public.profile USING btree (username);

CREATE UNIQUE INDEX user_game_pkey ON public.user_game USING btree (id);

CREATE UNIQUE INDEX user_game_round_pkey ON public.user_game_round_card USING btree (id);

alter table "public"."card" add constraint "card_pkey" PRIMARY KEY using index "card_pkey";

alter table "public"."card_pack" add constraint "card_pack_pkey" PRIMARY KEY using index "card_pack_pkey";

alter table "public"."game" add constraint "game_pkey" PRIMARY KEY using index "game_pkey";

alter table "public"."game_card" add constraint "game_deck_pkey" PRIMARY KEY using index "game_deck_pkey";

alter table "public"."game_round" add constraint "game_round_pkey" PRIMARY KEY using index "game_round_pkey";

alter table "public"."profile" add constraint "profiles_pkey" PRIMARY KEY using index "profiles_pkey";

alter table "public"."user_game" add constraint "user_game_pkey" PRIMARY KEY using index "user_game_pkey";

alter table "public"."user_game_round_card" add constraint "user_game_round_pkey" PRIMARY KEY using index "user_game_round_pkey";

alter table "public"."card" add constraint "card_card_pack_id_fkey" FOREIGN KEY (card_pack_id) REFERENCES card_pack(id) not valid;

alter table "public"."card" validate constraint "card_card_pack_id_fkey";

alter table "public"."game" add constraint "game_current_round_id_fkey" FOREIGN KEY (current_round_id) REFERENCES game_round(id) ON DELETE CASCADE not valid;

alter table "public"."game" validate constraint "game_current_round_id_fkey";

alter table "public"."game" add constraint "game_host_user_id_fkey" FOREIGN KEY (host_user_id) REFERENCES profile(id) ON DELETE RESTRICT not valid;

alter table "public"."game" validate constraint "game_host_user_id_fkey";

alter table "public"."game_card" add constraint "game_card_card_id_fkey" FOREIGN KEY (card_id) REFERENCES card(id) ON DELETE RESTRICT not valid;

alter table "public"."game_card" validate constraint "game_card_card_id_fkey";

alter table "public"."game_card" add constraint "game_card_card_owner_id_fkey" FOREIGN KEY (card_owner_id) REFERENCES profile(id) ON DELETE RESTRICT not valid;

alter table "public"."game_card" validate constraint "game_card_card_owner_id_fkey";

alter table "public"."game_card" add constraint "game_card_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game(id) ON DELETE CASCADE not valid;

alter table "public"."game_card" validate constraint "game_card_game_id_fkey";

alter table "public"."game_round" add constraint "game_round_black_card_id_fkey" FOREIGN KEY (black_card_id) REFERENCES card(id) ON DELETE RESTRICT not valid;

alter table "public"."game_round" validate constraint "game_round_black_card_id_fkey";

alter table "public"."game_round" add constraint "game_round_czar_user_id_fkey" FOREIGN KEY (czar_user_id) REFERENCES profile(id) ON DELETE RESTRICT not valid;

alter table "public"."game_round" validate constraint "game_round_czar_user_id_fkey";

alter table "public"."game_round" add constraint "game_round_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game(id) ON DELETE CASCADE not valid;

alter table "public"."game_round" validate constraint "game_round_game_id_fkey";

alter table "public"."game_round" add constraint "game_round_winning_user_game_id_fkey" FOREIGN KEY (winning_user_game_id) REFERENCES user_game(id) ON DELETE RESTRICT not valid;

alter table "public"."game_round" validate constraint "game_round_winning_user_game_id_fkey";

alter table "public"."profile" add constraint "profile_id_fkey" FOREIGN KEY (id) REFERENCES auth.users(id) ON DELETE CASCADE not valid;

alter table "public"."profile" validate constraint "profile_id_fkey";

alter table "public"."profile" add constraint "profiles_username_key" UNIQUE using index "profiles_username_key";

alter table "public"."profile" add constraint "username_length" CHECK ((char_length(username) >= 3)) not valid;

alter table "public"."profile" validate constraint "username_length";

alter table "public"."user_game" add constraint "user_game_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game(id) ON DELETE CASCADE not valid;

alter table "public"."user_game" validate constraint "user_game_game_id_fkey";

alter table "public"."user_game" add constraint "user_game_user_id_fkey" FOREIGN KEY (user_id) REFERENCES profile(id) ON DELETE RESTRICT not valid;

alter table "public"."user_game" validate constraint "user_game_user_id_fkey";

alter table "public"."user_game_round_card" add constraint "user_game_round_card_game_round_id_fkey" FOREIGN KEY (game_round_id) REFERENCES game_round(id) ON DELETE CASCADE not valid;

alter table "public"."user_game_round_card" validate constraint "user_game_round_card_game_round_id_fkey";

alter table "public"."user_game_round_card" add constraint "user_game_round_card_played_card_id_fkey" FOREIGN KEY (played_card_id) REFERENCES card(id) ON DELETE RESTRICT not valid;

alter table "public"."user_game_round_card" validate constraint "user_game_round_card_played_card_id_fkey";

alter table "public"."user_game_round_card" add constraint "user_game_round_card_user_game_id_fkey" FOREIGN KEY (user_game_id) REFERENCES user_game(id) ON DELETE CASCADE not valid;

alter table "public"."user_game_round_card" validate constraint "user_game_round_card_user_game_id_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.delete_avatar(avatar_url text, OUT status integer, OUT content text)
 RETURNS record
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
begin
  select
      into status, content
           result.status, result.content
      from public.delete_storage_object('avatars', avatar_url) as result;
end;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_old_avatar()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
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
$function$
;

CREATE OR REPLACE FUNCTION public.delete_old_profile()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
begin
  delete from public.profiles where id = old.id;
  return old;
end;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_storage_object(bucket text, object text, OUT status integer, OUT content text)
 RETURNS record
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
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
$function$
;

CREATE OR REPLACE FUNCTION public.get_random_cards(n integer, is_white_card boolean DEFAULT NULL::boolean)
 RETURNS SETOF card
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY SELECT *
                 FROM public.card c
                 WHERE c.is_white_card = get_random_cards.is_white_card
                    OR get_random_cards.is_white_card IS NULL
                 ORDER BY RANDOM()
                 LIMIT get_random_cards.n;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.handle_new_user()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
begin
  insert into public.profile (id, username, avatar_url)
  values (
    new.id, 
    COALESCE(new.raw_user_meta_data->>'full_name', new.email), 
    new.raw_user_meta_data->>'avatar_url'
  );
  return new;
end;
$function$
;

create policy "Enable read access for all users"
on "public"."card"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."card_pack"
as permissive
for select
to public
using (true);


create policy "Public profiles are viewable by everyone."
on "public"."profile"
as permissive
for select
to public
using (true);


create policy "Users can insert their own profile."
on "public"."profile"
as permissive
for insert
to public
with check ((auth.uid() = id));


create policy "Users can update own profile."
on "public"."profile"
as permissive
for update
to public
using ((auth.uid() = id));


CREATE TRIGGER before_profile_changes BEFORE DELETE OR UPDATE OF avatar_url ON public.profile FOR EACH ROW EXECUTE FUNCTION delete_old_avatar();


