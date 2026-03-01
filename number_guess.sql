--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 12, 341);
INSERT INTO public.games VALUES (2, 12, 90);
INSERT INTO public.games VALUES (3, 13, 777);
INSERT INTO public.games VALUES (4, 13, 639);
INSERT INTO public.games VALUES (5, 12, 8);
INSERT INTO public.games VALUES (6, 12, 751);
INSERT INTO public.games VALUES (7, 12, 147);
INSERT INTO public.games VALUES (8, 14, 841);
INSERT INTO public.games VALUES (9, 14, 952);
INSERT INTO public.games VALUES (10, 15, 198);
INSERT INTO public.games VALUES (11, 15, 981);
INSERT INTO public.games VALUES (12, 14, 689);
INSERT INTO public.games VALUES (13, 14, 628);
INSERT INTO public.games VALUES (14, 14, 633);
INSERT INTO public.games VALUES (15, 3, 1);
INSERT INTO public.games VALUES (16, 3, 17);
INSERT INTO public.games VALUES (17, 16, 959);
INSERT INTO public.games VALUES (18, 16, 290);
INSERT INTO public.games VALUES (19, 17, 990);
INSERT INTO public.games VALUES (20, 17, 812);
INSERT INTO public.games VALUES (21, 16, 969);
INSERT INTO public.games VALUES (22, 16, 514);
INSERT INTO public.games VALUES (23, 16, 308);
INSERT INTO public.games VALUES (24, 18, 29);
INSERT INTO public.games VALUES (25, 18, 80);
INSERT INTO public.games VALUES (26, 19, 609);
INSERT INTO public.games VALUES (27, 19, 940);
INSERT INTO public.games VALUES (28, 18, 164);
INSERT INTO public.games VALUES (29, 18, 795);
INSERT INTO public.games VALUES (30, 18, 511);
INSERT INTO public.games VALUES (31, 20, 640);
INSERT INTO public.games VALUES (32, 20, 300);
INSERT INTO public.games VALUES (33, 21, 3);
INSERT INTO public.games VALUES (34, 21, 471);
INSERT INTO public.games VALUES (35, 20, 772);
INSERT INTO public.games VALUES (36, 20, 853);
INSERT INTO public.games VALUES (37, 20, 856);
INSERT INTO public.games VALUES (38, 22, 398);
INSERT INTO public.games VALUES (39, 22, 139);
INSERT INTO public.games VALUES (40, 23, 659);
INSERT INTO public.games VALUES (41, 23, 761);
INSERT INTO public.games VALUES (42, 22, 414);
INSERT INTO public.games VALUES (43, 22, 600);
INSERT INTO public.games VALUES (44, 22, 964);
INSERT INTO public.games VALUES (45, 24, 367);
INSERT INTO public.games VALUES (46, 24, 600);
INSERT INTO public.games VALUES (47, 25, 768);
INSERT INTO public.games VALUES (48, 25, 890);
INSERT INTO public.games VALUES (49, 24, 508);
INSERT INTO public.games VALUES (50, 24, 337);
INSERT INTO public.games VALUES (51, 24, 789);
INSERT INTO public.games VALUES (52, 26, 1);
INSERT INTO public.games VALUES (53, 28, 1);
INSERT INTO public.games VALUES (54, 33, 115);
INSERT INTO public.games VALUES (55, 33, 310);
INSERT INTO public.games VALUES (56, 34, 846);
INSERT INTO public.games VALUES (57, 34, 177);
INSERT INTO public.games VALUES (58, 33, 95);
INSERT INTO public.games VALUES (59, 33, 706);
INSERT INTO public.games VALUES (60, 33, 768);
INSERT INTO public.games VALUES (61, 37, 5);
INSERT INTO public.games VALUES (62, 37, 2);
INSERT INTO public.games VALUES (63, 39, 5);
INSERT INTO public.games VALUES (64, 39, 3);
INSERT INTO public.games VALUES (65, 37, 6);
INSERT INTO public.games VALUES (66, 37, 4);
INSERT INTO public.games VALUES (67, 37, 2);
INSERT INTO public.games VALUES (68, 44, 2);
INSERT INTO public.games VALUES (69, 44, 4);
INSERT INTO public.games VALUES (70, 46, 3);
INSERT INTO public.games VALUES (71, 46, 4);
INSERT INTO public.games VALUES (72, 44, 6);
INSERT INTO public.games VALUES (73, 44, 4);
INSERT INTO public.games VALUES (74, 44, 5);
INSERT INTO public.games VALUES (75, 51, 5);
INSERT INTO public.games VALUES (76, 51, 5);
INSERT INTO public.games VALUES (77, 53, 2);
INSERT INTO public.games VALUES (78, 53, 4);
INSERT INTO public.games VALUES (79, 51, 7);
INSERT INTO public.games VALUES (80, 51, 6);
INSERT INTO public.games VALUES (81, 51, 5);
INSERT INTO public.games VALUES (82, 59, 206);
INSERT INTO public.games VALUES (83, 59, 784);
INSERT INTO public.games VALUES (84, 60, 31);
INSERT INTO public.games VALUES (85, 60, 750);
INSERT INTO public.games VALUES (86, 59, 514);
INSERT INTO public.games VALUES (87, 59, 453);
INSERT INTO public.games VALUES (88, 59, 446);
INSERT INTO public.games VALUES (89, 3, 8);
INSERT INTO public.games VALUES (90, 61, 908);
INSERT INTO public.games VALUES (91, 61, 51);
INSERT INTO public.games VALUES (92, 62, 683);
INSERT INTO public.games VALUES (93, 62, 775);
INSERT INTO public.games VALUES (94, 61, 238);
INSERT INTO public.games VALUES (95, 61, 948);
INSERT INTO public.games VALUES (96, 61, 39);
INSERT INTO public.games VALUES (97, 63, 72);
INSERT INTO public.games VALUES (98, 63, 578);
INSERT INTO public.games VALUES (99, 64, 256);
INSERT INTO public.games VALUES (100, 64, 409);
INSERT INTO public.games VALUES (101, 63, 974);
INSERT INTO public.games VALUES (102, 63, 762);
INSERT INTO public.games VALUES (103, 63, 515);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1772386724417');
INSERT INTO public.users VALUES (2, 'user_1772386724416');
INSERT INTO public.users VALUES (3, 'alex');
INSERT INTO public.users VALUES (4, 'user_1772386789009');
INSERT INTO public.users VALUES (5, 'user_1772386789008');
INSERT INTO public.users VALUES (6, 'user_1772386934074');
INSERT INTO public.users VALUES (7, 'user_1772386934073');
INSERT INTO public.users VALUES (8, 'user_1772387216033');
INSERT INTO public.users VALUES (9, 'user_1772387216032');
INSERT INTO public.users VALUES (10, 'user_1772387338857');
INSERT INTO public.users VALUES (11, 'user_1772387338856');
INSERT INTO public.users VALUES (12, 'user_1772387512551');
INSERT INTO public.users VALUES (13, 'user_1772387512550');
INSERT INTO public.users VALUES (14, 'user_1772387714737');
INSERT INTO public.users VALUES (15, 'user_1772387714736');
INSERT INTO public.users VALUES (16, 'user_1772387827555');
INSERT INTO public.users VALUES (17, 'user_1772387827554');
INSERT INTO public.users VALUES (18, 'user_1772388112318');
INSERT INTO public.users VALUES (19, 'user_1772388112317');
INSERT INTO public.users VALUES (20, 'user_1772388190036');
INSERT INTO public.users VALUES (21, 'user_1772388190035');
INSERT INTO public.users VALUES (22, 'user_1772388315175');
INSERT INTO public.users VALUES (23, 'user_1772388315174');
INSERT INTO public.users VALUES (24, 'user_1772388364173');
INSERT INTO public.users VALUES (25, 'user_1772388364172');
INSERT INTO public.users VALUES (26, 'user_1772388538498');
INSERT INTO public.users VALUES (28, 'user_1772388538497');
INSERT INTO public.users VALUES (33, 'user_1772388611198');
INSERT INTO public.users VALUES (34, 'user_1772388611197');
INSERT INTO public.users VALUES (35, 'user_1772388893347');
INSERT INTO public.users VALUES (36, 'user_1772388893346');
INSERT INTO public.users VALUES (37, 'user_1772388960062');
INSERT INTO public.users VALUES (39, 'user_1772388960061');
INSERT INTO public.users VALUES (44, 'user_1772389115440');
INSERT INTO public.users VALUES (46, 'user_1772389115439');
INSERT INTO public.users VALUES (51, 'user_1772389133068');
INSERT INTO public.users VALUES (53, 'user_1772389133067');
INSERT INTO public.users VALUES (59, 'user_1772389272993');
INSERT INTO public.users VALUES (60, 'user_1772389272992');
INSERT INTO public.users VALUES (61, 'user_1772389580654');
INSERT INTO public.users VALUES (62, 'user_1772389580653');
INSERT INTO public.users VALUES (63, 'user_1772389780964');
INSERT INTO public.users VALUES (64, 'user_1772389780963');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 103, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 64, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

