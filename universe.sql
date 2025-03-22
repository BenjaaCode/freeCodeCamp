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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    character_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    color character varying(15),
    livable boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_character_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_character_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_character_id_seq OWNED BY public.galaxy.character_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    distance_from_earth numeric(9,1),
    moon_id integer NOT NULL,
    character_id integer NOT NULL,
    color character varying(15)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    character_id integer NOT NULL,
    name character varying(20) NOT NULL,
    other_id integer NOT NULL,
    color character varying(20),
    livable boolean
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth_in_kilometers integer,
    planet_id integer NOT NULL,
    character_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    distance_from_earth integer,
    galaxy_id integer,
    character_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy character_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN character_id SET DEFAULT nextval('public.galaxy_character_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 1, 1, 'red', NULL);
INSERT INTO public.galaxy VALUES (NULL, 2, 2, 'blue', NULL);
INSERT INTO public.galaxy VALUES (NULL, 3, 3, 'brown', NULL);
INSERT INTO public.galaxy VALUES (NULL, 4, 4, 'yellow', NULL);
INSERT INTO public.galaxy VALUES (NULL, 5, 5, 'pink', NULL);
INSERT INTO public.galaxy VALUES (NULL, 6, 6, 'purple', NULL);
INSERT INTO public.galaxy VALUES (NULL, 7, 7, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 8, 8, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 9, 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 10, 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 11, 11, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 12, 12, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 13, 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 14, 14, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 15, 15, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 16, 16, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 17, 17, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 18, 18, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 19, 19, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 20, 20, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 156165.0, 1, 1, NULL);
INSERT INTO public.moon VALUES (NULL, 6515616.0, 2, 2, NULL);
INSERT INTO public.moon VALUES (NULL, 1655156.0, 3, 3, NULL);
INSERT INTO public.moon VALUES (NULL, 891891.0, 4, 4, NULL);
INSERT INTO public.moon VALUES (NULL, 19152.0, 5, 5, NULL);
INSERT INTO public.moon VALUES (NULL, 156165.0, 6, 6, NULL);
INSERT INTO public.moon VALUES (NULL, 516165.0, 7, 7, NULL);
INSERT INTO public.moon VALUES (NULL, 16516.0, 8, 8, NULL);
INSERT INTO public.moon VALUES (NULL, 156165.0, 9, 9, NULL);
INSERT INTO public.moon VALUES (NULL, 165156.0, 10, 10, NULL);
INSERT INTO public.moon VALUES (NULL, 555846.0, 12, 12, NULL);
INSERT INTO public.moon VALUES (NULL, 1596198.0, 13, 13, NULL);
INSERT INTO public.moon VALUES (NULL, 561654.0, 14, 14, NULL);
INSERT INTO public.moon VALUES (NULL, 1568.0, 15, 15, NULL);
INSERT INTO public.moon VALUES (NULL, 51981.0, 16, 16, NULL);
INSERT INTO public.moon VALUES (NULL, 96129.0, 17, 17, NULL);
INSERT INTO public.moon VALUES (NULL, 65156.0, 18, 18, NULL);
INSERT INTO public.moon VALUES (NULL, 51651.0, 19, 19, NULL);
INSERT INTO public.moon VALUES (NULL, 651651.0, 20, 20, NULL);
INSERT INTO public.moon VALUES (NULL, 5169516.0, 11, 11, NULL);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'not', 1, NULL, NULL);
INSERT INTO public.other VALUES (2, 'null', 2, NULL, NULL);
INSERT INTO public.other VALUES (3, 'shit', 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('one', NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES ('two', NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES ('three', NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES ('four', NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.planet VALUES ('five', NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES ('six', NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES ('venus', NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.planet VALUES ('marth', NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.planet VALUES ('jupiter', NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.planet VALUES ('mercury', NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES ('earth', NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.planet VALUES ('nepturne', NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, 1, 55654, NULL, 1);
INSERT INTO public.star VALUES (NULL, 2, 1546, NULL, 2);
INSERT INTO public.star VALUES (NULL, 3, 8451, NULL, 3);
INSERT INTO public.star VALUES (NULL, 4, 88545223, NULL, 4);
INSERT INTO public.star VALUES (NULL, 5, 5161879, NULL, 5);
INSERT INTO public.star VALUES (NULL, 6, 5487, NULL, 6);
INSERT INTO public.star VALUES (NULL, 13, NULL, NULL, 13);
INSERT INTO public.star VALUES (NULL, 14, NULL, NULL, 14);
INSERT INTO public.star VALUES (NULL, 15, NULL, NULL, 15);
INSERT INTO public.star VALUES (NULL, 16, NULL, NULL, 16);
INSERT INTO public.star VALUES (NULL, 17, NULL, NULL, 17);
INSERT INTO public.star VALUES (NULL, 18, NULL, NULL, 18);
INSERT INTO public.star VALUES (NULL, 19, NULL, NULL, 19);
INSERT INTO public.star VALUES (NULL, 20, NULL, NULL, 20);
INSERT INTO public.star VALUES (NULL, 7, NULL, NULL, 7);
INSERT INTO public.star VALUES (NULL, 8, NULL, NULL, 8);
INSERT INTO public.star VALUES (NULL, 9, NULL, NULL, 9);
INSERT INTO public.star VALUES (NULL, 10, NULL, NULL, 10);
INSERT INTO public.star VALUES (NULL, 11, NULL, NULL, 11);
INSERT INTO public.star VALUES (NULL, 12, NULL, NULL, 12);


--
-- Name: galaxy_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_character_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: galaxy galaxy_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_character_id_key UNIQUE (character_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_character_id_key UNIQUE (character_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other other_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_character_id_key UNIQUE (character_id);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_character_id_key UNIQUE (character_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_character_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_character_id_key UNIQUE (character_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_character_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.planet(character_id);


--
-- Name: planet planet_character_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.star(character_id);


--
-- Name: star star_character_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.galaxy(character_id);


--
-- PostgreSQL database dump complete
--
