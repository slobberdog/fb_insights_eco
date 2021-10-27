--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-27 09:44:11

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
-- TOC entry 2992 (class 0 OID 73755)
-- Dependencies: 204
-- Data for Name: slidingscalecomm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (1, 20.00, 25.00);
INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (2, 25.00, 30.00);
INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (3, 30.00, 35.00);
INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (4, 35.00, 40.00);


-- Completed on 2021-10-27 09:44:11

--
-- PostgreSQL database dump complete
--

