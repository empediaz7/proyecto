--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17
-- Dumped by pg_dump version 10.17

-- Started on 2021-07-20 17:22:20

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

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2828 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16396)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    id_empresa integer NOT NULL,
    tip_rif character varying(1) NOT NULL,
    rif_empresa character varying(10) NOT NULL,
    correo_empresa character varying(20) NOT NULL,
    ciudad_empresa character varying(10) NOT NULL,
    cod_postal integer NOT NULL,
    nom_empresa character varying(30),
    telefono numeric(12,0),
    dir_empresa text NOT NULL
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: empresa_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empresa_id_empresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_id_empresa_seq OWNER TO postgres;

--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 196
-- Name: empresa_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empresa_id_empresa_seq OWNED BY public.empresa.id_empresa;


--
-- TOC entry 201 (class 1259 OID 16412)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id_persona integer NOT NULL,
    nom_persona character varying(10) NOT NULL,
    ape_persona character varying(10) NOT NULL,
    ced_persona integer NOT NULL,
    tel_persona numeric(12,0) NOT NULL,
    corre_persona character varying(20) NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16410)
-- Name: persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_persona_seq OWNER TO postgres;

--
-- TOC entry 2830 (class 0 OID 0)
-- Dependencies: 200
-- Name: persona_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_persona_seq OWNED BY public.persona.id_persona;


--
-- TOC entry 199 (class 1259 OID 16404)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    usuario character varying(20) NOT NULL,
    clave character varying(20) NOT NULL,
    estatus boolean,
    id_persona integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16402)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 198
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- TOC entry 2683 (class 2604 OID 16399)
-- Name: empresa id_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa ALTER COLUMN id_empresa SET DEFAULT nextval('public.empresa_id_empresa_seq'::regclass);


--
-- TOC entry 2685 (class 2604 OID 16415)
-- Name: persona id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id_persona SET DEFAULT nextval('public.persona_id_persona_seq'::regclass);


--
-- TOC entry 2684 (class 2604 OID 16407)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- TOC entry 2816 (class 0 OID 16396)
-- Dependencies: 197
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (1, 'j', '79999', 'empediaz7@gmail.com', 'caracas', 1060, 'prueba', 412995555, 'Altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (2, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'prueba', 412955981, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (3, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'prueba', 412955981, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (4, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'prueba', 412955981, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (5, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'prueba', 412955981, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (6, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'prueba', 412955981, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (7, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (8, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (9, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (10, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (11, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (12, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (13, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (14, 'J', '78995', 'empediaz7@gmail.com', 'Caracas', 1060, 'Inac', 789654, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (15, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'Instituto nacion Ac', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (16, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'Instituto nacion Ac', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (17, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'Instituto nacion Ac', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (18, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'Instituto nacion Ac', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (19, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'Instituto nacion Ac', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (20, 'J', '555', 'empediaz7@gmail.com', 'Caracas', 1060, 'jgfdhiugtiu', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (21, 'J', '555', 'empediaz7@gmail.com', 'Caracas', 1060, 'jgfdhiugtiu', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (22, 'J', '555', 'empediaz7@gmail.com', 'Caracas', 1060, 'jgfdhiugtiu', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (23, 'J', '555', 'empediaz7@gmail.com', 'Caracas', 1060, 'jgfdhiugtiu', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (24, 'J', '555', 'empediaz7@gmail.com', 'Caracas', 1060, 'jgfdhiugtiu', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (25, 'J', '555', 'empediaz7@gmail.com', 'Caracas', 1060, 'jgfdhiugtiu', 4129559816, 'altamira');
INSERT INTO public.empresa (id_empresa, tip_rif, rif_empresa, correo_empresa, ciudad_empresa, cod_postal, nom_empresa, telefono, dir_empresa) VALUES (26, 'J', '78484974', 'empediaz7@gmail.com', 'Caracas', 1060, 'prueba final', 4129559816, 'altamira');


--
-- TOC entry 2820 (class 0 OID 16412)
-- Dependencies: 201
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (1, 'Emperatriz', 'Diaz', 21535045, 41229588888, 'empediaz7@gmail.com', 16);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (2, 'Emperatriz', 'Diaz', 21535045, 41229588888, 'empediaz7@gmail.com', 17);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (3, 'Emperatriz', 'Diaz', 21535045, 41229588888, 'empediaz7@gmail.com', 19);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (4, 'Emperatriz', 'Diaz', 21535045, 789966544, 'empediaz7@gmail.com', 20);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (5, 'Emperatriz', 'Diaz', 21535045, 789966544, 'empediaz7@gmail.com', 21);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (6, 'Emperatriz', 'Diaz', 21535045, 789966544, 'empediaz7@gmail.com', 22);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (7, 'Emperatriz', 'Diaz', 21535045, 789966544, 'empediaz7@gmail.com', 23);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (8, 'Emperatriz', 'Diaz', 21535045, 789966544, 'empediaz7@gmail.com', 24);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (9, 'Emperatriz', 'Diaz', 21535045, 789966544, 'empediaz7@gmail.com', 25);
INSERT INTO public.persona (id_persona, nom_persona, ape_persona, ced_persona, tel_persona, corre_persona, id_empresa) VALUES (10, 'Emperatriz', 'gggg', 21535045, 789999, 'empediaz7@gmail.com', 26);


--
-- TOC entry 2818 (class 0 OID 16404)
-- Dependencies: 199
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (id_usuario, usuario, clave, estatus, id_persona) OVERRIDING SYSTEM VALUE VALUES (1, 'empe', '1234', true, NULL);
INSERT INTO public.usuario (id_usuario, usuario, clave, estatus, id_persona) OVERRIDING SYSTEM VALUE VALUES (2, 'empe', '123456', true, NULL);
INSERT INTO public.usuario (id_usuario, usuario, clave, estatus, id_persona) OVERRIDING SYSTEM VALUE VALUES (3, 'empe', '789654', true, 10);


--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 196
-- Name: empresa_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresa_id_empresa_seq', 26, true);


--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 200
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_persona_seq', 10, true);


--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 198
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);


--
-- TOC entry 2687 (class 2606 OID 16401)
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- TOC entry 2691 (class 2606 OID 16417)
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);


--
-- TOC entry 2689 (class 2606 OID 16409)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2692 (class 2606 OID 16510)
-- Name: usuario fk_id_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_id_persona FOREIGN KEY (id_persona) REFERENCES public.persona(id_persona) NOT VALID;


--
-- TOC entry 2693 (class 2606 OID 16474)
-- Name: persona id_empresa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT id_empresa FOREIGN KEY (id_empresa) REFERENCES public.empresa(id_empresa) NOT VALID;


-- Completed on 2021-07-20 17:22:22

--
-- PostgreSQL database dump complete
--

