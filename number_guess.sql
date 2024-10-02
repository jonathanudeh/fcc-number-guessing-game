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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    tries integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (11, 1);
INSERT INTO public.games VALUES (11, 1);
INSERT INTO public.games VALUES (16, 681);
INSERT INTO public.games VALUES (16, 310);
INSERT INTO public.games VALUES (17, 528);
INSERT INTO public.games VALUES (17, 693);
INSERT INTO public.games VALUES (16, 747);
INSERT INTO public.games VALUES (16, 901);
INSERT INTO public.games VALUES (16, 863);
INSERT INTO public.games VALUES (11, 3);
INSERT INTO public.games VALUES (11, 1);
INSERT INTO public.games VALUES (18, 708);
INSERT INTO public.games VALUES (18, 208);
INSERT INTO public.games VALUES (19, 769);
INSERT INTO public.games VALUES (19, 713);
INSERT INTO public.games VALUES (18, 589);
INSERT INTO public.games VALUES (18, 44);
INSERT INTO public.games VALUES (18, 759);
INSERT INTO public.games VALUES (20, 6);
INSERT INTO public.games VALUES (20, 5);
INSERT INTO public.games VALUES (21, 440);
INSERT INTO public.games VALUES (21, 163);
INSERT INTO public.games VALUES (22, 272);
INSERT INTO public.games VALUES (22, 256);
INSERT INTO public.games VALUES (21, 564);
INSERT INTO public.games VALUES (21, 287);
INSERT INTO public.games VALUES (21, 196);
INSERT INTO public.games VALUES (23, 0);
INSERT INTO public.games VALUES (23, 0);
INSERT INTO public.games VALUES (24, 0);
INSERT INTO public.games VALUES (24, 0);
INSERT INTO public.games VALUES (23, 0);
INSERT INTO public.games VALUES (23, 0);
INSERT INTO public.games VALUES (23, 0);
INSERT INTO public.games VALUES (25, 212);
INSERT INTO public.games VALUES (25, 180);
INSERT INTO public.games VALUES (26, 817);
INSERT INTO public.games VALUES (26, 738);
INSERT INTO public.games VALUES (25, 872);
INSERT INTO public.games VALUES (25, 107);
INSERT INTO public.games VALUES (25, 359);
INSERT INTO public.games VALUES (27, 76);
INSERT INTO public.games VALUES (27, 293);
INSERT INTO public.games VALUES (28, 709);
INSERT INTO public.games VALUES (28, 852);
INSERT INTO public.games VALUES (27, 522);
INSERT INTO public.games VALUES (27, 797);
INSERT INTO public.games VALUES (27, 968);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1727893158454');
INSERT INTO public.users VALUES (2, 'user_1727893158453');
INSERT INTO public.users VALUES (3, 'user_1727893348675');
INSERT INTO public.users VALUES (4, 'user_1727893348674');
INSERT INTO public.users VALUES (5, 'user_1727893375585');
INSERT INTO public.users VALUES (6, 'user_1727893375584');
INSERT INTO public.users VALUES (7, 'user_1727893395942');
INSERT INTO public.users VALUES (8, 'user_1727893395941');
INSERT INTO public.users VALUES (9, 'user_1727893492604');
INSERT INTO public.users VALUES (10, 'user_1727893492603');
INSERT INTO public.users VALUES (11, 'playerX');
INSERT INTO public.users VALUES (12, 'user_1727893970101');
INSERT INTO public.users VALUES (13, 'user_1727893970100');
INSERT INTO public.users VALUES (14, 'user_1727894186448');
INSERT INTO public.users VALUES (15, 'user_1727894186447');
INSERT INTO public.users VALUES (16, 'user_1727894460946');
INSERT INTO public.users VALUES (17, 'user_1727894460945');
INSERT INTO public.users VALUES (18, 'user_1727894966035');
INSERT INTO public.users VALUES (19, 'user_1727894966034');
INSERT INTO public.users VALUES (20, 'getItdone');
INSERT INTO public.users VALUES (21, 'user_1727895254561');
INSERT INTO public.users VALUES (22, 'user_1727895254560');
INSERT INTO public.users VALUES (23, 'user_1727895277551');
INSERT INTO public.users VALUES (24, 'user_1727895277550');
INSERT INTO public.users VALUES (25, 'user_1727895300763');
INSERT INTO public.users VALUES (26, 'user_1727895300762');
INSERT INTO public.users VALUES (27, 'user_1727895379612');
INSERT INTO public.users VALUES (28, 'user_1727895379611');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

