--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer DEFAULT 9999
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (158, 'eee', 1, 9999);
INSERT INTO public.players VALUES (160, 'user_1719580284025', 2, 329);
INSERT INTO public.players VALUES (159, 'user_1719580284026', 5, 173);
INSERT INTO public.players VALUES (193, 'user_1719658469601', 5, 346);
INSERT INTO public.players VALUES (178, 'user_1719658453260', 2, 329);
INSERT INTO public.players VALUES (162, 'user_1719658417578', 2, 111);
INSERT INTO public.players VALUES (177, 'user_1719658453261', 5, 128);
INSERT INTO public.players VALUES (161, 'user_1719658417579', 5, 242);
INSERT INTO public.players VALUES (208, 'user_1719658486179', 2, 699);
INSERT INTO public.players VALUES (217, 'user_1719658604137', 5, 183);
INSERT INTO public.players VALUES (164, 'user_1719658422309', 2, 255);
INSERT INTO public.players VALUES (180, 'user_1719658455075', 2, 313);
INSERT INTO public.players VALUES (196, 'user_1719658472183', 2, 119);
INSERT INTO public.players VALUES (163, 'user_1719658422310', 5, 247);
INSERT INTO public.players VALUES (179, 'user_1719658455076', 5, 176);
INSERT INTO public.players VALUES (207, 'user_1719658486180', 5, 10);
INSERT INTO public.players VALUES (195, 'user_1719658472184', 5, 376);
INSERT INTO public.players VALUES (166, 'user_1719658440887', 2, 240);
INSERT INTO public.players VALUES (182, 'user_1719658457754', 2, 326);
INSERT INTO public.players VALUES (165, 'user_1719658440888', 5, 20);
INSERT INTO public.players VALUES (181, 'user_1719658457755', 5, 589);
INSERT INTO public.players VALUES (168, 'user_1719658444000', 2, 842);
INSERT INTO public.players VALUES (198, 'user_1719658474436', 2, 844);
INSERT INTO public.players VALUES (167, 'user_1719658444001', 5, 140);
INSERT INTO public.players VALUES (184, 'user_1719658459823', 2, 200);
INSERT INTO public.players VALUES (210, 'user_1719658488322', 2, 856);
INSERT INTO public.players VALUES (183, 'user_1719658459824', 5, 269);
INSERT INTO public.players VALUES (170, 'user_1719658445761', 2, 230);
INSERT INTO public.players VALUES (220, 'user_1719658606167', 2, 196);
INSERT INTO public.players VALUES (209, 'user_1719658488323', 5, 227);
INSERT INTO public.players VALUES (197, 'user_1719658474438', 5, 177);
INSERT INTO public.players VALUES (169, 'user_1719658445762', 5, 104);
INSERT INTO public.players VALUES (186, 'user_1719658461654', 2, 311);
INSERT INTO public.players VALUES (172, 'user_1719658447577', 2, 855);
INSERT INTO public.players VALUES (185, 'user_1719658461655', 5, 114);
INSERT INTO public.players VALUES (171, 'user_1719658447578', 5, 34);
INSERT INTO public.players VALUES (219, 'user_1719658606168', 5, 280);
INSERT INTO public.players VALUES (200, 'user_1719658478436', 2, 42);
INSERT INTO public.players VALUES (212, 'user_1719658555964', 2, 827);
INSERT INTO public.players VALUES (188, 'user_1719658463529', 2, 248);
INSERT INTO public.players VALUES (174, 'user_1719658449450', 2, 239);
INSERT INTO public.players VALUES (199, 'user_1719658478437', 5, 132);
INSERT INTO public.players VALUES (187, 'user_1719658463530', 5, 221);
INSERT INTO public.players VALUES (173, 'user_1719658449451', 5, 286);
INSERT INTO public.players VALUES (211, 'user_1719658555965', 5, 102);
INSERT INTO public.players VALUES (176, 'user_1719658451330', 2, 565);
INSERT INTO public.players VALUES (190, 'user_1719658465459', 2, 575);
INSERT INTO public.players VALUES (175, 'user_1719658451331', 5, 213);
INSERT INTO public.players VALUES (202, 'user_1719658480450', 2, 535);
INSERT INTO public.players VALUES (189, 'user_1719658465460', 5, 297);
INSERT INTO public.players VALUES (201, 'user_1719658480451', 5, 335);
INSERT INTO public.players VALUES (192, 'user_1719658467354', 2, 293);
INSERT INTO public.players VALUES (191, 'user_1719658467355', 5, 162);
INSERT INTO public.players VALUES (204, 'user_1719658482038', 2, 127);
INSERT INTO public.players VALUES (214, 'user_1719658561547', 2, 266);
INSERT INTO public.players VALUES (203, 'user_1719658482039', 5, 199);
INSERT INTO public.players VALUES (194, 'user_1719658469600', 2, 225);
INSERT INTO public.players VALUES (213, 'user_1719658561548', 5, 495);
INSERT INTO public.players VALUES (206, 'user_1719658484175', 2, 406);
INSERT INTO public.players VALUES (216, 'user_1719658601753', 2, 816);
INSERT INTO public.players VALUES (205, 'user_1719658484176', 5, 270);
INSERT INTO public.players VALUES (215, 'user_1719658601754', 5, 373);
INSERT INTO public.players VALUES (218, 'user_1719658604136', 2, 280);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 220, true);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

