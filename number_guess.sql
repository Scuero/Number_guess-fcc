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
    guesses integer NOT NULL,
    user_id integer
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
-- Name: usuarios; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usuarios (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO freecodecamp;

--
-- Name: usuarios_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usuarios_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_user_id_seq OWNER TO freecodecamp;

--
-- Name: usuarios_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usuarios_user_id_seq OWNED BY public.usuarios.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usuarios user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN user_id SET DEFAULT nextval('public.usuarios_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (236, 863, 189);
INSERT INTO public.games VALUES (238, 506, 190);
INSERT INTO public.games VALUES (240, 300, 189);
INSERT INTO public.games VALUES (242, 687, 189);
INSERT INTO public.games VALUES (244, 272, 192);
INSERT INTO public.games VALUES (246, 48, 191);
INSERT INTO public.games VALUES (248, 642, 193);
INSERT INTO public.games VALUES (250, 397, 194);
INSERT INTO public.games VALUES (252, 700, 193);
INSERT INTO public.games VALUES (254, 206, 193);
INSERT INTO public.games VALUES (256, 346, 196);
INSERT INTO public.games VALUES (258, 166, 196);
INSERT INTO public.games VALUES (260, 11, 195);
INSERT INTO public.games VALUES (262, 198, 199);
INSERT INTO public.games VALUES (264, 774, 198);
INSERT INTO public.games VALUES (266, 479, 198);
INSERT INTO public.games VALUES (268, 10, 195);
INSERT INTO public.games VALUES (270, 630, 201);
INSERT INTO public.games VALUES (272, 16, 202);
INSERT INTO public.games VALUES (274, 558, 201);
INSERT INTO public.games VALUES (276, 101, 203);
INSERT INTO public.games VALUES (278, 751, 203);
INSERT INTO public.games VALUES (280, 436, 203);
INSERT INTO public.games VALUES (282, 636, 205);
INSERT INTO public.games VALUES (284, 627, 206);
INSERT INTO public.games VALUES (286, 503, 205);
INSERT INTO public.games VALUES (288, 427, 207);
INSERT INTO public.games VALUES (290, 825, 208);
INSERT INTO public.games VALUES (292, 577, 207);
INSERT INTO public.games VALUES (294, 519, 207);
INSERT INTO public.games VALUES (296, 391, 210);
INSERT INTO public.games VALUES (298, 252, 209);
INSERT INTO public.games VALUES (300, 96, 209);
INSERT INTO public.games VALUES (302, 538, 212);
INSERT INTO public.games VALUES (304, 550, 211);
INSERT INTO public.games VALUES (306, 793, 211);
INSERT INTO public.games VALUES (308, 546, 213);
INSERT INTO public.games VALUES (310, 832, 214);
INSERT INTO public.games VALUES (312, 703, 213);
INSERT INTO public.games VALUES (314, 365, 215);
INSERT INTO public.games VALUES (316, 66, 216);
INSERT INTO public.games VALUES (318, 670, 215);
INSERT INTO public.games VALUES (320, 871, 215);
INSERT INTO public.games VALUES (322, 485, 217);
INSERT INTO public.games VALUES (324, 439, 218);
INSERT INTO public.games VALUES (326, 678, 217);
INSERT INTO public.games VALUES (328, 665, 219);
INSERT INTO public.games VALUES (330, 867, 219);
INSERT INTO public.games VALUES (332, 536, 219);
INSERT INTO public.games VALUES (334, 396, 222);
INSERT INTO public.games VALUES (336, 184, 221);
INSERT INTO public.games VALUES (338, 353, 224);
INSERT INTO public.games VALUES (340, 853, 223);
INSERT INTO public.games VALUES (342, 312, 227);
INSERT INTO public.games VALUES (344, 829, 225);
INSERT INTO public.games VALUES (346, 364, 228);
INSERT INTO public.games VALUES (348, 354, 229);
INSERT INTO public.games VALUES (350, 561, 228);
INSERT INTO public.games VALUES (352, 697, 228);
INSERT INTO public.games VALUES (354, 959, 230);
INSERT INTO public.games VALUES (356, 89, 231);
INSERT INTO public.games VALUES (358, 921, 230);
INSERT INTO public.games VALUES (360, 260, 232);
INSERT INTO public.games VALUES (362, 388, 233);
INSERT INTO public.games VALUES (364, 724, 232);
INSERT INTO public.games VALUES (366, 550, 232);
INSERT INTO public.games VALUES (368, 216, 235);
INSERT INTO public.games VALUES (370, 367, 234);
INSERT INTO public.games VALUES (237, 555, 189);
INSERT INTO public.games VALUES (239, 324, 190);
INSERT INTO public.games VALUES (241, 442, 189);
INSERT INTO public.games VALUES (243, 11, 192);
INSERT INTO public.games VALUES (245, 482, 191);
INSERT INTO public.games VALUES (247, 125, 191);
INSERT INTO public.games VALUES (249, 763, 193);
INSERT INTO public.games VALUES (251, 366, 194);
INSERT INTO public.games VALUES (253, 464, 193);
INSERT INTO public.games VALUES (255, 365, 196);
INSERT INTO public.games VALUES (257, 537, 196);
INSERT INTO public.games VALUES (259, 196, 196);
INSERT INTO public.games VALUES (261, 514, 198);
INSERT INTO public.games VALUES (263, 303, 199);
INSERT INTO public.games VALUES (265, 530, 198);
INSERT INTO public.games VALUES (267, 6, 200);
INSERT INTO public.games VALUES (269, 567, 201);
INSERT INTO public.games VALUES (230, 511, 187);
INSERT INTO public.games VALUES (231, 601, 187);
INSERT INTO public.games VALUES (232, 326, 188);
INSERT INTO public.games VALUES (233, 623, 187);
INSERT INTO public.games VALUES (234, 741, 187);
INSERT INTO public.games VALUES (235, 344, 187);
INSERT INTO public.games VALUES (271, 837, 202);
INSERT INTO public.games VALUES (273, 210, 201);
INSERT INTO public.games VALUES (275, 874, 201);
INSERT INTO public.games VALUES (277, 671, 204);
INSERT INTO public.games VALUES (279, 262, 203);
INSERT INTO public.games VALUES (281, 846, 205);
INSERT INTO public.games VALUES (283, 605, 206);
INSERT INTO public.games VALUES (285, 838, 205);
INSERT INTO public.games VALUES (287, 82, 205);
INSERT INTO public.games VALUES (289, 894, 207);
INSERT INTO public.games VALUES (291, 518, 208);
INSERT INTO public.games VALUES (293, 570, 207);
INSERT INTO public.games VALUES (295, 433, 209);
INSERT INTO public.games VALUES (297, 697, 210);
INSERT INTO public.games VALUES (299, 174, 209);
INSERT INTO public.games VALUES (301, 318, 211);
INSERT INTO public.games VALUES (303, 858, 212);
INSERT INTO public.games VALUES (305, 331, 211);
INSERT INTO public.games VALUES (307, 425, 213);
INSERT INTO public.games VALUES (309, 616, 214);
INSERT INTO public.games VALUES (311, 782, 213);
INSERT INTO public.games VALUES (313, 714, 213);
INSERT INTO public.games VALUES (315, 61, 215);
INSERT INTO public.games VALUES (317, 18, 216);
INSERT INTO public.games VALUES (319, 197, 215);
INSERT INTO public.games VALUES (321, 28, 217);
INSERT INTO public.games VALUES (323, 688, 218);
INSERT INTO public.games VALUES (325, 871, 217);
INSERT INTO public.games VALUES (327, 227, 217);
INSERT INTO public.games VALUES (329, 289, 220);
INSERT INTO public.games VALUES (331, 688, 219);
INSERT INTO public.games VALUES (333, 324, 222);
INSERT INTO public.games VALUES (335, 76, 221);
INSERT INTO public.games VALUES (337, 702, 221);
INSERT INTO public.games VALUES (339, 479, 223);
INSERT INTO public.games VALUES (341, 20, 223);
INSERT INTO public.games VALUES (343, 442, 225);
INSERT INTO public.games VALUES (345, 52, 225);
INSERT INTO public.games VALUES (347, 506, 228);
INSERT INTO public.games VALUES (349, 298, 229);
INSERT INTO public.games VALUES (351, 390, 228);
INSERT INTO public.games VALUES (353, 788, 230);
INSERT INTO public.games VALUES (355, 691, 231);
INSERT INTO public.games VALUES (357, 366, 230);
INSERT INTO public.games VALUES (359, 650, 230);
INSERT INTO public.games VALUES (361, 550, 232);
INSERT INTO public.games VALUES (363, 371, 233);
INSERT INTO public.games VALUES (365, 391, 232);
INSERT INTO public.games VALUES (367, 253, 234);
INSERT INTO public.games VALUES (369, 430, 234);


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usuarios VALUES (189, 'user_1689506808639');
INSERT INTO public.usuarios VALUES (190, 'user_1689506808638');
INSERT INTO public.usuarios VALUES (191, 'user_1689506881994');
INSERT INTO public.usuarios VALUES (192, 'user_1689506881993');
INSERT INTO public.usuarios VALUES (193, 'user_1689506917950');
INSERT INTO public.usuarios VALUES (194, 'user_1689506917949');
INSERT INTO public.usuarios VALUES (195, 'rod');
INSERT INTO public.usuarios VALUES (196, 'user_1689506987047');
INSERT INTO public.usuarios VALUES (197, 'user_1689506987046');
INSERT INTO public.usuarios VALUES (198, 'user_1689507063987');
INSERT INTO public.usuarios VALUES (199, 'user_1689507063986');
INSERT INTO public.usuarios VALUES (200, 'a');
INSERT INTO public.usuarios VALUES (201, 'user_1689507180546');
INSERT INTO public.usuarios VALUES (202, 'user_1689507180545');
INSERT INTO public.usuarios VALUES (203, 'user_1689507379174');
INSERT INTO public.usuarios VALUES (187, 'user_1689506741810');
INSERT INTO public.usuarios VALUES (188, 'user_1689506741809');
INSERT INTO public.usuarios VALUES (204, 'user_1689507379173');
INSERT INTO public.usuarios VALUES (205, 'user_1689507500426');
INSERT INTO public.usuarios VALUES (206, 'user_1689507500425');
INSERT INTO public.usuarios VALUES (207, 'user_1689507550791');
INSERT INTO public.usuarios VALUES (208, 'user_1689507550790');
INSERT INTO public.usuarios VALUES (209, 'user_1689507573227');
INSERT INTO public.usuarios VALUES (210, 'user_1689507573226');
INSERT INTO public.usuarios VALUES (211, 'user_1689508877580');
INSERT INTO public.usuarios VALUES (212, 'user_1689508877579');
INSERT INTO public.usuarios VALUES (213, 'user_1689509056399');
INSERT INTO public.usuarios VALUES (214, 'user_1689509056398');
INSERT INTO public.usuarios VALUES (215, 'user_1689509240706');
INSERT INTO public.usuarios VALUES (216, 'user_1689509240705');
INSERT INTO public.usuarios VALUES (217, 'user_1689509323294');
INSERT INTO public.usuarios VALUES (218, 'user_1689509323293');
INSERT INTO public.usuarios VALUES (219, 'user_1689509366369');
INSERT INTO public.usuarios VALUES (220, 'user_1689509366368');
INSERT INTO public.usuarios VALUES (221, 'user_1689509394687');
INSERT INTO public.usuarios VALUES (222, 'user_1689509394686');
INSERT INTO public.usuarios VALUES (223, 'user_1689509476954');
INSERT INTO public.usuarios VALUES (224, 'user_1689509476953');
INSERT INTO public.usuarios VALUES (225, 'user_1689510397366');
INSERT INTO public.usuarios VALUES (227, 'user_1689510397365');
INSERT INTO public.usuarios VALUES (228, 'user_1689510475630');
INSERT INTO public.usuarios VALUES (229, 'user_1689510475629');
INSERT INTO public.usuarios VALUES (230, 'user_1689510529967');
INSERT INTO public.usuarios VALUES (231, 'user_1689510529966');
INSERT INTO public.usuarios VALUES (232, 'user_1689510549620');
INSERT INTO public.usuarios VALUES (233, 'user_1689510549619');
INSERT INTO public.usuarios VALUES (234, 'user_1689510791604');
INSERT INTO public.usuarios VALUES (235, 'user_1689510791603');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 370, true);


--
-- Name: usuarios_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usuarios_user_id_seq', 235, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (user_id);


--
-- Name: usuarios usuarios_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuarios(user_id);


--
-- PostgreSQL database dump complete
--

