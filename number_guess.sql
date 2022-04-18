--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    user_id integer NOT NULL,
    game_number integer,
    winning_guess integer
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
    username character varying(50) NOT NULL,
    user_id integer NOT NULL
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

INSERT INTO public.games VALUES (167, 75, NULL, 4);
INSERT INTO public.games VALUES (168, 75, NULL, 7);
INSERT INTO public.games VALUES (169, 76, NULL, 692);
INSERT INTO public.games VALUES (170, 76, NULL, 335);
INSERT INTO public.games VALUES (171, 77, NULL, 8);
INSERT INTO public.games VALUES (172, 77, NULL, 799);
INSERT INTO public.games VALUES (173, 76, NULL, 190);
INSERT INTO public.games VALUES (174, 76, NULL, 336);
INSERT INTO public.games VALUES (175, 76, NULL, 961);
INSERT INTO public.games VALUES (176, 78, NULL, 6);
INSERT INTO public.games VALUES (177, 79, NULL, 746);
INSERT INTO public.games VALUES (178, 79, NULL, 406);
INSERT INTO public.games VALUES (179, 80, NULL, 572);
INSERT INTO public.games VALUES (180, 80, NULL, 139);
INSERT INTO public.games VALUES (181, 79, NULL, 681);
INSERT INTO public.games VALUES (182, 79, NULL, 866);
INSERT INTO public.games VALUES (183, 79, NULL, 304);
INSERT INTO public.games VALUES (184, 81, NULL, 525);
INSERT INTO public.games VALUES (185, 81, NULL, 401);
INSERT INTO public.games VALUES (186, 82, NULL, 491);
INSERT INTO public.games VALUES (187, 82, NULL, 594);
INSERT INTO public.games VALUES (188, 81, NULL, 752);
INSERT INTO public.games VALUES (189, 81, NULL, 332);
INSERT INTO public.games VALUES (190, 81, NULL, 234);
INSERT INTO public.games VALUES (191, 83, NULL, 998);
INSERT INTO public.games VALUES (192, 83, NULL, 348);
INSERT INTO public.games VALUES (193, 84, NULL, 485);
INSERT INTO public.games VALUES (194, 84, NULL, 479);
INSERT INTO public.games VALUES (195, 83, NULL, 943);
INSERT INTO public.games VALUES (196, 83, NULL, 846);
INSERT INTO public.games VALUES (197, 83, NULL, 808);
INSERT INTO public.games VALUES (198, 85, NULL, 396);
INSERT INTO public.games VALUES (199, 85, NULL, 23);
INSERT INTO public.games VALUES (200, 86, NULL, 79);
INSERT INTO public.games VALUES (201, 86, NULL, 714);
INSERT INTO public.games VALUES (202, 85, NULL, 544);
INSERT INTO public.games VALUES (203, 85, NULL, 823);
INSERT INTO public.games VALUES (204, 85, NULL, 960);
INSERT INTO public.games VALUES (205, 78, NULL, 13);
INSERT INTO public.games VALUES (206, 78, NULL, 8);
INSERT INTO public.games VALUES (207, 88, NULL, 562);
INSERT INTO public.games VALUES (208, 88, NULL, 941);
INSERT INTO public.games VALUES (209, 89, NULL, 55);
INSERT INTO public.games VALUES (210, 89, NULL, 242);
INSERT INTO public.games VALUES (211, 88, NULL, 68);
INSERT INTO public.games VALUES (212, 88, NULL, 636);
INSERT INTO public.games VALUES (213, 88, NULL, 732);
INSERT INTO public.games VALUES (214, 90, NULL, 561);
INSERT INTO public.games VALUES (215, 90, NULL, 611);
INSERT INTO public.games VALUES (216, 91, NULL, 722);
INSERT INTO public.games VALUES (217, 91, NULL, 888);
INSERT INTO public.games VALUES (218, 90, NULL, 788);
INSERT INTO public.games VALUES (219, 90, NULL, 791);
INSERT INTO public.games VALUES (220, 90, NULL, 118);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Bmo', 75);
INSERT INTO public.users VALUES ('User_1650302390396', 76);
INSERT INTO public.users VALUES ('User_1650302390395', 77);
INSERT INTO public.users VALUES ('Boom', 78);
INSERT INTO public.users VALUES ('User_1650302600259', 79);
INSERT INTO public.users VALUES ('User_1650302600258', 80);
INSERT INTO public.users VALUES ('User_1650303178476', 81);
INSERT INTO public.users VALUES ('User_1650303178475', 82);
INSERT INTO public.users VALUES ('User_1650304120484', 83);
INSERT INTO public.users VALUES ('User_1650304120483', 84);
INSERT INTO public.users VALUES ('User_1650304186581', 85);
INSERT INTO public.users VALUES ('User_1650304186580', 86);
INSERT INTO public.users VALUES ('Sam', 87);
INSERT INTO public.users VALUES ('User_1650305634898', 88);
INSERT INTO public.users VALUES ('User_1650305634897', 89);
INSERT INTO public.users VALUES ('User_1650308158594', 90);
INSERT INTO public.users VALUES ('User_1650308158593', 91);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 220, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 91, true);


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

