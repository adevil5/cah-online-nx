CREATE TYPE card_type_enum AS ENUM ('black', 'white');

CREATE TABLE IF NOT EXISTS "public"."cards" (
    "card_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "deck_id" "uuid" NOT NULL,
    "text" "text" NOT NULL,
    "type" card_type_enum NOT NULL,
    "pick" integer,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."cards" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."decks" (
    "deck_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" character varying(255) NOT NULL,
    "official" boolean DEFAULT false
);

ALTER TABLE "public"."decks" OWNER TO "postgres";

CREATE TYPE game_state_enum AS ENUM ('lobby', 'in_progress', 'completed');

CREATE TABLE IF NOT EXISTS "public"."game_sessions" (
    "game_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "host_user_id" "uuid" NOT NULL,
    "game_code" character varying(255) NOT NULL,
    "game_state" game_state_enum DEFAULT 'lobby' NOT NULL,
    "rando_cardrissian" boolean DEFAULT false NOT NULL,
    "score_limit" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."game_sessions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."game_cards" (
    "game_card_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "game_id" "uuid" NOT NULL,
    "card_id" "uuid" NOT NULL,
    "user_id" "uuid" DEFAULT NULL,
    "is_played" boolean DEFAULT false,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."game_cards" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."player_sessions" (
    "user_id" "uuid" NOT NULL,
    "game_id" "uuid" NOT NULL
);

ALTER TABLE "public"."player_sessions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."players" (
    "user_id" "uuid" NOT NULL,
    "username" character varying(255) NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."players" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."response_cards" (
    "response_id" "uuid" NOT NULL,
    "response_order" integer NOT NULL,
    "card_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."response_cards" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."responses" (
    "response_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "round_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."responses" OWNER TO "postgres";

CREATE TYPE round_phase_enum AS ENUM ('waiting_for_responses', 'judging', 'completed');

CREATE TABLE IF NOT EXISTS "public"."rounds" (
    "round_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "game_id" "uuid" NOT NULL,
    "current_black_card_id" "uuid" NOT NULL,
    "czar_user_id" "uuid" NOT NULL,
    "round_number" integer NOT NULL,
    "winning_response_id" "uuid" DEFAULT NULL,
    "round_phase" round_phase_enum DEFAULT 'waiting_for_responses' NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."rounds" OWNER TO "postgres";

ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_pkey" PRIMARY KEY ("card_id");

ALTER TABLE ONLY "public"."decks"
    ADD CONSTRAINT "decks_pkey" PRIMARY KEY ("deck_id");

ALTER TABLE ONLY "public"."game_sessions"
    ADD CONSTRAINT "game_sessions_pkey" PRIMARY KEY ("game_id");

ALTER TABLE ONLY "public"."game_cards"
    ADD CONSTRAINT "game_cards_pkey" PRIMARY KEY ("game_card_id");

ALTER TABLE ONLY "public"."player_sessions"
    ADD CONSTRAINT "player_sessions_pkey" PRIMARY KEY ("user_id", "game_id");

ALTER TABLE ONLY "public"."players"
    ADD CONSTRAINT "players_pkey" PRIMARY KEY ("user_id");

ALTER TABLE ONLY "public"."responses"
    ADD CONSTRAINT "responses_pkey" PRIMARY KEY ("response_id");

ALTER TABLE ONLY "public"."rounds"
    ADD CONSTRAINT "rounds_pkey" PRIMARY KEY ("round_id");

ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_deck_id_fkey" FOREIGN KEY ("deck_id") REFERENCES "public"."decks"("deck_id");

ALTER TABLE ONLY "public"."game_sessions"
    ADD CONSTRAINT "game_sessions_host_user_id_fkey" FOREIGN KEY ("host_user_id") REFERENCES "auth"."users"("id");

ALTER TABLE ONLY "public"."game_cards"
    ADD CONSTRAINT "game_cards_card_id_fkey" FOREIGN KEY ("card_id") REFERENCES "public"."cards"("card_id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."game_cards"
    ADD CONSTRAINT "game_cards_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "public"."game_sessions"("game_id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."game_cards"
    ADD CONSTRAINT "game_cards_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."player_sessions"
    ADD CONSTRAINT "player_sessions_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "public"."game_sessions"("game_id");

ALTER TABLE ONLY "public"."player_sessions"
    ADD CONSTRAINT "player_sessions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");

ALTER TABLE ONLY "public"."players"
    ADD CONSTRAINT "players_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."response_cards"
    ADD CONSTRAINT "response_cards_card_id_fkey" FOREIGN KEY ("card_id") REFERENCES "public"."cards"("card_id");

ALTER TABLE ONLY "public"."response_cards"
    ADD CONSTRAINT "response_cards_response_id_fkey" FOREIGN KEY ("response_id") REFERENCES "public"."responses"("response_id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."responses"
    ADD CONSTRAINT "responses_round_id_fkey" FOREIGN KEY ("round_id") REFERENCES "public"."rounds"("round_id") ON DELETE CASCADE;

ALTER TABLE ONLY "public"."responses"
    ADD CONSTRAINT "responses_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");

ALTER TABLE ONLY "public"."rounds"
    ADD CONSTRAINT "rounds_current_black_card_id_fkey" FOREIGN KEY ("current_black_card_id") REFERENCES "public"."cards"("card_id");

ALTER TABLE ONLY "public"."rounds"
    ADD CONSTRAINT "rounds_czar_user_id_fkey" FOREIGN KEY ("czar_user_id") REFERENCES "auth"."users"("id");

ALTER TABLE ONLY "public"."rounds"
    ADD CONSTRAINT "rounds_winning_response_id_fkey" FOREIGN KEY ("winning_response_id") REFERENCES "public"."responses"("response_id");

ALTER TABLE ONLY "public"."rounds"
    ADD CONSTRAINT "rounds_game_id_fkey" FOREIGN KEY ("game_id") REFERENCES "public"."game_sessions"("game_id") ON UPDATE CASCADE ON DELETE CASCADE;

CREATE INDEX idx_cards_deck_id ON public.cards (deck_id);

CREATE INDEX idx_game_cards_game ON public.game_cards (game_id);

CREATE INDEX idx_game_cards_game_user ON public.game_cards (game_id, user_id);

CREATE INDEX idx_game_cards_game_user_played ON public.game_cards (game_id, user_id, is_played);

CREATE INDEX idx_rounds_game_id ON public.rounds (game_id);

CREATE INDEX idx_responses_round_id ON public.responses (round_id);


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON TABLE "public"."cards" TO "anon";
GRANT ALL ON TABLE "public"."cards" TO "authenticated";
GRANT ALL ON TABLE "public"."cards" TO "service_role";

GRANT ALL ON TABLE "public"."decks" TO "anon";
GRANT ALL ON TABLE "public"."decks" TO "authenticated";
GRANT ALL ON TABLE "public"."decks" TO "service_role";

GRANT ALL ON TABLE "public"."game_sessions" TO "anon";
GRANT ALL ON TABLE "public"."game_sessions" TO "authenticated";
GRANT ALL ON TABLE "public"."game_sessions" TO "service_role";

GRANT ALL ON TABLE "public"."game_cards" TO "anon";
GRANT ALL ON TABLE "public"."game_cards" TO "authenticated";
GRANT ALL ON TABLE "public"."game_cards" TO "service_role";

GRANT ALL ON TABLE "public"."player_sessions" TO "anon";
GRANT ALL ON TABLE "public"."player_sessions" TO "authenticated";
GRANT ALL ON TABLE "public"."player_sessions" TO "service_role";

GRANT ALL ON TABLE "public"."players" TO "anon";
GRANT ALL ON TABLE "public"."players" TO "authenticated";
GRANT ALL ON TABLE "public"."players" TO "service_role";

GRANT ALL ON TABLE "public"."response_cards" TO "anon";
GRANT ALL ON TABLE "public"."response_cards" TO "authenticated";
GRANT ALL ON TABLE "public"."response_cards" TO "service_role";

GRANT ALL ON TABLE "public"."responses" TO "anon";
GRANT ALL ON TABLE "public"."responses" TO "authenticated";
GRANT ALL ON TABLE "public"."responses" TO "service_role";

GRANT ALL ON TABLE "public"."rounds" TO "anon";
GRANT ALL ON TABLE "public"."rounds" TO "authenticated";
GRANT ALL ON TABLE "public"."rounds" TO "service_role";

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
