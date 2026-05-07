--
-- PostgreSQL database dump
--

\restrict OYPiVaTnIwbsQ9ccufJ0CxSDYPhoFd7Wv67Asykq7feZk18uMgUHOhyhhOUZiRn

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-07 00:59:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16663)
-- Name: categorias; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categorias (
    categoria_id integer NOT NULL,
    nombre_categoria character varying(50) NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 16662)
-- Name: categorias_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categorias_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 219
-- Name: categorias_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categorias_categoria_id_seq OWNED BY public.categorias.categoria_id;


--
-- TOC entry 222 (class 1259 OID 16672)
-- Name: chocolates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chocolates (
    chocolate_id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    precio numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    categoria_id integer
);


--
-- TOC entry 221 (class 1259 OID 16671)
-- Name: chocolates_chocolate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.chocolates_chocolate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 221
-- Name: chocolates_chocolate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.chocolates_chocolate_id_seq OWNED BY public.chocolates.chocolate_id;


--
-- TOC entry 224 (class 1259 OID 16690)
-- Name: clientes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    nombre_completo character varying(150) NOT NULL,
    email character varying(100),
    telefono character varying(20)
);


--
-- TOC entry 223 (class 1259 OID 16689)
-- Name: clientes_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 223
-- Name: clientes_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;


--
-- TOC entry 228 (class 1259 OID 16715)
-- Name: detalle_ventas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.detalle_ventas (
    detalle_id integer NOT NULL,
    venta_id integer,
    chocolate_id integer,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2) NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 16714)
-- Name: detalle_ventas_detalle_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.detalle_ventas_detalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 227
-- Name: detalle_ventas_detalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.detalle_ventas_detalle_id_seq OWNED BY public.detalle_ventas.detalle_id;


--
-- TOC entry 226 (class 1259 OID 16701)
-- Name: ventas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ventas (
    venta_id integer NOT NULL,
    fecha_venta timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    cliente_id integer,
    total_venta numeric(10,2)
);


--
-- TOC entry 225 (class 1259 OID 16700)
-- Name: ventas_venta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ventas_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 225
-- Name: ventas_venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ventas_venta_id_seq OWNED BY public.ventas.venta_id;


--
-- TOC entry 4775 (class 2604 OID 16666)
-- Name: categorias categoria_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorias ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_categoria_id_seq'::regclass);


--
-- TOC entry 4776 (class 2604 OID 16675)
-- Name: chocolates chocolate_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chocolates ALTER COLUMN chocolate_id SET DEFAULT nextval('public.chocolates_chocolate_id_seq'::regclass);


--
-- TOC entry 4777 (class 2604 OID 16693)
-- Name: clientes cliente_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);


--
-- TOC entry 4780 (class 2604 OID 16718)
-- Name: detalle_ventas detalle_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.detalle_ventas ALTER COLUMN detalle_id SET DEFAULT nextval('public.detalle_ventas_detalle_id_seq'::regclass);


--
-- TOC entry 4778 (class 2604 OID 16704)
-- Name: ventas venta_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ventas ALTER COLUMN venta_id SET DEFAULT nextval('public.ventas_venta_id_seq'::regclass);


--
-- TOC entry 4945 (class 0 OID 16663)
-- Dependencies: 220
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categorias (categoria_id, nombre_categoria) FROM stdin;
1	Amargo
2	Con Leche
3	Rellenos
\.


--
-- TOC entry 4947 (class 0 OID 16672)
-- Dependencies: 222
-- Data for Name: chocolates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chocolates (chocolate_id, nombre, descripcion, precio, stock, categoria_id) FROM stdin;
1	Barra 70% Cacao	\N	5.50	50	1
2	Bombón de Avellana	\N	1.20	100	3
3	Chocolate Blanco con Oreo	\N	4.00	30	2
\.


--
-- TOC entry 4949 (class 0 OID 16690)
-- Dependencies: 224
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clientes (cliente_id, nombre_completo, email, telefono) FROM stdin;
1	Andrés Mendoza	andres@email.com	\N
\.


--
-- TOC entry 4953 (class 0 OID 16715)
-- Dependencies: 228
-- Data for Name: detalle_ventas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.detalle_ventas (detalle_id, venta_id, chocolate_id, cantidad, precio_unitario) FROM stdin;
\.


--
-- TOC entry 4951 (class 0 OID 16701)
-- Dependencies: 226
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ventas (venta_id, fecha_venta, cliente_id, total_venta) FROM stdin;
\.


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 219
-- Name: categorias_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categorias_categoria_id_seq', 3, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 221
-- Name: chocolates_chocolate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.chocolates_chocolate_id_seq', 3, true);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 223
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 1, true);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 227
-- Name: detalle_ventas_detalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.detalle_ventas_detalle_id_seq', 1, false);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 225
-- Name: ventas_venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ventas_venta_id_seq', 1, false);


--
-- TOC entry 4782 (class 2606 OID 16670)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (categoria_id);


--
-- TOC entry 4784 (class 2606 OID 16683)
-- Name: chocolates chocolates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chocolates
    ADD CONSTRAINT chocolates_pkey PRIMARY KEY (chocolate_id);


--
-- TOC entry 4786 (class 2606 OID 16699)
-- Name: clientes clientes_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);


--
-- TOC entry 4788 (class 2606 OID 16697)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);


--
-- TOC entry 4792 (class 2606 OID 16723)
-- Name: detalle_ventas detalle_ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_pkey PRIMARY KEY (detalle_id);


--
-- TOC entry 4790 (class 2606 OID 16708)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (venta_id);


--
-- TOC entry 4793 (class 2606 OID 16684)
-- Name: chocolates chocolates_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chocolates
    ADD CONSTRAINT chocolates_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categorias(categoria_id);


--
-- TOC entry 4795 (class 2606 OID 16729)
-- Name: detalle_ventas detalle_ventas_chocolate_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_chocolate_id_fkey FOREIGN KEY (chocolate_id) REFERENCES public.chocolates(chocolate_id);


--
-- TOC entry 4796 (class 2606 OID 16724)
-- Name: detalle_ventas detalle_ventas_venta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_venta_id_fkey FOREIGN KEY (venta_id) REFERENCES public.ventas(venta_id);


--
-- TOC entry 4794 (class 2606 OID 16709)
-- Name: ventas ventas_cliente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(cliente_id);


-- Completed on 2026-05-07 00:59:35

--
-- PostgreSQL database dump complete
--

\unrestrict OYPiVaTnIwbsQ9ccufJ0CxSDYPhoFd7Wv67Asykq7feZk18uMgUHOhyhhOUZiRn

