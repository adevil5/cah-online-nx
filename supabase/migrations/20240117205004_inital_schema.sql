create table "public"."cards" (
    "card_id" uuid not null default gen_random_uuid(),
    "deck_id" uuid not null,
    "text" text not null,
    "type" character varying(50) not null,
    "pick" integer,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


create table "public"."decks" (
    "deck_id" uuid not null default gen_random_uuid(),
    "name" character varying(255) not null,
    "official" boolean default false
);


create table "public"."game_configurations" (
    "config_id" uuid not null default gen_random_uuid(),
    "game_id" uuid not null,
    "czar_rotation" character varying(255) not null,
    "max_players" integer not null,
    "score_limit" integer not null,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


create table "public"."game_sessions" (
    "game_id" uuid not null default gen_random_uuid(),
    "host_user_id" uuid not null,
    "game_code" character varying(255) not null,
    "is_active" boolean default true,
    "rando_cardrissian" boolean default false,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


create table "public"."player_cards" (
    "player_card_id" uuid not null default gen_random_uuid(),
    "game_id" uuid not null,
    "player_id" uuid not null,
    "card_id" uuid not null,
    "is_played" boolean default false,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


create table "public"."players" (
    "player_id" uuid not null default gen_random_uuid(),
    "game_id" uuid not null,
    "user_id" uuid,
    "is_czar" boolean default false,
    "score" integer default 0,
    "is_active" boolean default true,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


create table "public"."responses" (
    "response_id" uuid not null default gen_random_uuid(),
    "round_id" uuid not null,
    "player_id" uuid not null,
    "card_id" uuid not null,
    "response_order" integer not null,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


create table "public"."rounds" (
    "round_id" uuid not null default gen_random_uuid(),
    "game_id" uuid not null,
    "current_black_card_id" uuid not null,
    "czar_user_id" uuid not null,
    "round_number" integer not null,
    "is_active" boolean default true,
    "created_at" timestamp with time zone default CURRENT_TIMESTAMP
);


CREATE UNIQUE INDEX cards_pkey ON public.cards USING btree (card_id);

CREATE UNIQUE INDEX decks_pkey ON public.decks USING btree (deck_id);

CREATE UNIQUE INDEX game_configurations_pkey ON public.game_configurations USING btree (config_id);

CREATE UNIQUE INDEX game_sessions_game_code_key ON public.game_sessions USING btree (game_code);

CREATE UNIQUE INDEX game_sessions_pkey ON public.game_sessions USING btree (game_id);

CREATE UNIQUE INDEX player_cards_pkey ON public.player_cards USING btree (player_card_id);

CREATE UNIQUE INDEX players_pkey ON public.players USING btree (player_id);

CREATE UNIQUE INDEX responses_pkey ON public.responses USING btree (response_id);

CREATE UNIQUE INDEX rounds_pkey ON public.rounds USING btree (round_id);

alter table "public"."cards" add constraint "cards_pkey" PRIMARY KEY using index "cards_pkey";

alter table "public"."decks" add constraint "decks_pkey" PRIMARY KEY using index "decks_pkey";

alter table "public"."game_configurations" add constraint "game_configurations_pkey" PRIMARY KEY using index "game_configurations_pkey";

alter table "public"."game_sessions" add constraint "game_sessions_pkey" PRIMARY KEY using index "game_sessions_pkey";

alter table "public"."player_cards" add constraint "player_cards_pkey" PRIMARY KEY using index "player_cards_pkey";

alter table "public"."players" add constraint "players_pkey" PRIMARY KEY using index "players_pkey";

alter table "public"."responses" add constraint "responses_pkey" PRIMARY KEY using index "responses_pkey";

alter table "public"."rounds" add constraint "rounds_pkey" PRIMARY KEY using index "rounds_pkey";

alter table "public"."cards" add constraint "cards_deck_id_fkey" FOREIGN KEY (deck_id) REFERENCES decks(deck_id) not valid;

alter table "public"."cards" validate constraint "cards_deck_id_fkey";

alter table "public"."cards" add constraint "cards_type_check" CHECK (((type)::text = ANY ((ARRAY['black'::character varying, 'white'::character varying])::text[]))) not valid;

alter table "public"."cards" validate constraint "cards_type_check";

alter table "public"."game_configurations" add constraint "game_configurations_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game_sessions(game_id) not valid;

alter table "public"."game_configurations" validate constraint "game_configurations_game_id_fkey";

alter table "public"."game_sessions" add constraint "game_sessions_game_code_key" UNIQUE using index "game_sessions_game_code_key";

alter table "public"."game_sessions" add constraint "game_sessions_host_user_id_fkey" FOREIGN KEY (host_user_id) REFERENCES auth.users(id) not valid;

alter table "public"."game_sessions" validate constraint "game_sessions_host_user_id_fkey";

alter table "public"."player_cards" add constraint "player_cards_card_id_fkey" FOREIGN KEY (card_id) REFERENCES cards(card_id) not valid;

alter table "public"."player_cards" validate constraint "player_cards_card_id_fkey";

alter table "public"."player_cards" add constraint "player_cards_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game_sessions(game_id) not valid;

alter table "public"."player_cards" validate constraint "player_cards_game_id_fkey";

alter table "public"."player_cards" add constraint "player_cards_player_id_fkey" FOREIGN KEY (player_id) REFERENCES players(player_id) not valid;

alter table "public"."player_cards" validate constraint "player_cards_player_id_fkey";

alter table "public"."players" add constraint "players_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game_sessions(game_id) not valid;

alter table "public"."players" validate constraint "players_game_id_fkey";

alter table "public"."players" add constraint "players_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) not valid;

alter table "public"."players" validate constraint "players_user_id_fkey";

alter table "public"."responses" add constraint "responses_card_id_fkey" FOREIGN KEY (card_id) REFERENCES cards(card_id) not valid;

alter table "public"."responses" validate constraint "responses_card_id_fkey";

alter table "public"."responses" add constraint "responses_player_id_fkey" FOREIGN KEY (player_id) REFERENCES players(player_id) not valid;

alter table "public"."responses" validate constraint "responses_player_id_fkey";

alter table "public"."responses" add constraint "responses_round_id_fkey" FOREIGN KEY (round_id) REFERENCES rounds(round_id) not valid;

alter table "public"."responses" validate constraint "responses_round_id_fkey";

alter table "public"."rounds" add constraint "rounds_current_black_card_id_fkey" FOREIGN KEY (current_black_card_id) REFERENCES cards(card_id) not valid;

alter table "public"."rounds" validate constraint "rounds_current_black_card_id_fkey";

alter table "public"."rounds" add constraint "rounds_czar_user_id_fkey" FOREIGN KEY (czar_user_id) REFERENCES players(player_id) not valid;

alter table "public"."rounds" validate constraint "rounds_czar_user_id_fkey";

alter table "public"."rounds" add constraint "rounds_game_id_fkey" FOREIGN KEY (game_id) REFERENCES game_sessions(game_id) not valid;

alter table "public"."rounds" validate constraint "rounds_game_id_fkey";

grant delete on table "public"."cards" to "anon";

grant insert on table "public"."cards" to "anon";

grant references on table "public"."cards" to "anon";

grant select on table "public"."cards" to "anon";

grant trigger on table "public"."cards" to "anon";

grant truncate on table "public"."cards" to "anon";

grant update on table "public"."cards" to "anon";

grant delete on table "public"."cards" to "authenticated";

grant insert on table "public"."cards" to "authenticated";

grant references on table "public"."cards" to "authenticated";

grant select on table "public"."cards" to "authenticated";

grant trigger on table "public"."cards" to "authenticated";

grant truncate on table "public"."cards" to "authenticated";

grant update on table "public"."cards" to "authenticated";

grant delete on table "public"."cards" to "service_role";

grant insert on table "public"."cards" to "service_role";

grant references on table "public"."cards" to "service_role";

grant select on table "public"."cards" to "service_role";

grant trigger on table "public"."cards" to "service_role";

grant truncate on table "public"."cards" to "service_role";

grant update on table "public"."cards" to "service_role";

grant delete on table "public"."decks" to "anon";

grant insert on table "public"."decks" to "anon";

grant references on table "public"."decks" to "anon";

grant select on table "public"."decks" to "anon";

grant trigger on table "public"."decks" to "anon";

grant truncate on table "public"."decks" to "anon";

grant update on table "public"."decks" to "anon";

grant delete on table "public"."decks" to "authenticated";

grant insert on table "public"."decks" to "authenticated";

grant references on table "public"."decks" to "authenticated";

grant select on table "public"."decks" to "authenticated";

grant trigger on table "public"."decks" to "authenticated";

grant truncate on table "public"."decks" to "authenticated";

grant update on table "public"."decks" to "authenticated";

grant delete on table "public"."decks" to "service_role";

grant insert on table "public"."decks" to "service_role";

grant references on table "public"."decks" to "service_role";

grant select on table "public"."decks" to "service_role";

grant trigger on table "public"."decks" to "service_role";

grant truncate on table "public"."decks" to "service_role";

grant update on table "public"."decks" to "service_role";

grant delete on table "public"."game_configurations" to "anon";

grant insert on table "public"."game_configurations" to "anon";

grant references on table "public"."game_configurations" to "anon";

grant select on table "public"."game_configurations" to "anon";

grant trigger on table "public"."game_configurations" to "anon";

grant truncate on table "public"."game_configurations" to "anon";

grant update on table "public"."game_configurations" to "anon";

grant delete on table "public"."game_configurations" to "authenticated";

grant insert on table "public"."game_configurations" to "authenticated";

grant references on table "public"."game_configurations" to "authenticated";

grant select on table "public"."game_configurations" to "authenticated";

grant trigger on table "public"."game_configurations" to "authenticated";

grant truncate on table "public"."game_configurations" to "authenticated";

grant update on table "public"."game_configurations" to "authenticated";

grant delete on table "public"."game_configurations" to "service_role";

grant insert on table "public"."game_configurations" to "service_role";

grant references on table "public"."game_configurations" to "service_role";

grant select on table "public"."game_configurations" to "service_role";

grant trigger on table "public"."game_configurations" to "service_role";

grant truncate on table "public"."game_configurations" to "service_role";

grant update on table "public"."game_configurations" to "service_role";

grant delete on table "public"."game_sessions" to "anon";

grant insert on table "public"."game_sessions" to "anon";

grant references on table "public"."game_sessions" to "anon";

grant select on table "public"."game_sessions" to "anon";

grant trigger on table "public"."game_sessions" to "anon";

grant truncate on table "public"."game_sessions" to "anon";

grant update on table "public"."game_sessions" to "anon";

grant delete on table "public"."game_sessions" to "authenticated";

grant insert on table "public"."game_sessions" to "authenticated";

grant references on table "public"."game_sessions" to "authenticated";

grant select on table "public"."game_sessions" to "authenticated";

grant trigger on table "public"."game_sessions" to "authenticated";

grant truncate on table "public"."game_sessions" to "authenticated";

grant update on table "public"."game_sessions" to "authenticated";

grant delete on table "public"."game_sessions" to "service_role";

grant insert on table "public"."game_sessions" to "service_role";

grant references on table "public"."game_sessions" to "service_role";

grant select on table "public"."game_sessions" to "service_role";

grant trigger on table "public"."game_sessions" to "service_role";

grant truncate on table "public"."game_sessions" to "service_role";

grant update on table "public"."game_sessions" to "service_role";

grant delete on table "public"."player_cards" to "anon";

grant insert on table "public"."player_cards" to "anon";

grant references on table "public"."player_cards" to "anon";

grant select on table "public"."player_cards" to "anon";

grant trigger on table "public"."player_cards" to "anon";

grant truncate on table "public"."player_cards" to "anon";

grant update on table "public"."player_cards" to "anon";

grant delete on table "public"."player_cards" to "authenticated";

grant insert on table "public"."player_cards" to "authenticated";

grant references on table "public"."player_cards" to "authenticated";

grant select on table "public"."player_cards" to "authenticated";

grant trigger on table "public"."player_cards" to "authenticated";

grant truncate on table "public"."player_cards" to "authenticated";

grant update on table "public"."player_cards" to "authenticated";

grant delete on table "public"."player_cards" to "service_role";

grant insert on table "public"."player_cards" to "service_role";

grant references on table "public"."player_cards" to "service_role";

grant select on table "public"."player_cards" to "service_role";

grant trigger on table "public"."player_cards" to "service_role";

grant truncate on table "public"."player_cards" to "service_role";

grant update on table "public"."player_cards" to "service_role";

grant delete on table "public"."players" to "anon";

grant insert on table "public"."players" to "anon";

grant references on table "public"."players" to "anon";

grant select on table "public"."players" to "anon";

grant trigger on table "public"."players" to "anon";

grant truncate on table "public"."players" to "anon";

grant update on table "public"."players" to "anon";

grant delete on table "public"."players" to "authenticated";

grant insert on table "public"."players" to "authenticated";

grant references on table "public"."players" to "authenticated";

grant select on table "public"."players" to "authenticated";

grant trigger on table "public"."players" to "authenticated";

grant truncate on table "public"."players" to "authenticated";

grant update on table "public"."players" to "authenticated";

grant delete on table "public"."players" to "service_role";

grant insert on table "public"."players" to "service_role";

grant references on table "public"."players" to "service_role";

grant select on table "public"."players" to "service_role";

grant trigger on table "public"."players" to "service_role";

grant truncate on table "public"."players" to "service_role";

grant update on table "public"."players" to "service_role";

grant delete on table "public"."responses" to "anon";

grant insert on table "public"."responses" to "anon";

grant references on table "public"."responses" to "anon";

grant select on table "public"."responses" to "anon";

grant trigger on table "public"."responses" to "anon";

grant truncate on table "public"."responses" to "anon";

grant update on table "public"."responses" to "anon";

grant delete on table "public"."responses" to "authenticated";

grant insert on table "public"."responses" to "authenticated";

grant references on table "public"."responses" to "authenticated";

grant select on table "public"."responses" to "authenticated";

grant trigger on table "public"."responses" to "authenticated";

grant truncate on table "public"."responses" to "authenticated";

grant update on table "public"."responses" to "authenticated";

grant delete on table "public"."responses" to "service_role";

grant insert on table "public"."responses" to "service_role";

grant references on table "public"."responses" to "service_role";

grant select on table "public"."responses" to "service_role";

grant trigger on table "public"."responses" to "service_role";

grant truncate on table "public"."responses" to "service_role";

grant update on table "public"."responses" to "service_role";

grant delete on table "public"."rounds" to "anon";

grant insert on table "public"."rounds" to "anon";

grant references on table "public"."rounds" to "anon";

grant select on table "public"."rounds" to "anon";

grant trigger on table "public"."rounds" to "anon";

grant truncate on table "public"."rounds" to "anon";

grant update on table "public"."rounds" to "anon";

grant delete on table "public"."rounds" to "authenticated";

grant insert on table "public"."rounds" to "authenticated";

grant references on table "public"."rounds" to "authenticated";

grant select on table "public"."rounds" to "authenticated";

grant trigger on table "public"."rounds" to "authenticated";

grant truncate on table "public"."rounds" to "authenticated";

grant update on table "public"."rounds" to "authenticated";

grant delete on table "public"."rounds" to "service_role";

grant insert on table "public"."rounds" to "service_role";

grant references on table "public"."rounds" to "service_role";

grant select on table "public"."rounds" to "service_role";

grant trigger on table "public"."rounds" to "service_role";

grant truncate on table "public"."rounds" to "service_role";

grant update on table "public"."rounds" to "service_role";


