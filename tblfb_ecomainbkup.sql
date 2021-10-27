--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-27 09:39:49

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
-- TOC entry 200 (class 1259 OID 65537)
-- Name: fb_ecomain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fb_ecomain (
    postid integer NOT NULL,
    permalink character(128) NOT NULL,
    postmessage character varying(256),
    type character varying(12),
    datepost date,
    lt_posttotreach integer,
    lt_postorgreach integer,
    lt_postpdreach integer,
    lt_posttotimp integer,
    lt_postorgimp integer,
    lt_engusers integer,
    lt_targetaud integer,
    lt_targetcon integer,
    lt_targetlike integer,
    lt_postlikepage integer,
    lt_postadstory integer,
    lt_postengclick integer,
    lt_videoview3sec integer,
    lt_videolen integer,
    lt_poststory integer,
    lt_poststoryshare integer,
    emp_id integer
);


ALTER TABLE public.fb_ecomain OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 65537)
-- Dependencies: 200
-- Data for Name: fb_ecomain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) FROM stdin;
6	https://www.facebook.com/laney.ecoworkshops/posts/4795728657139256                                                              	Sir David Attenborough there is urgency hope at the Earthshot Prize Awards	SharedVideo	2021-10-17	21	21	0	21	21	1	0	0	20	20	0	1	5	181	1	\N	3
18	https://www.facebook.com/laney.ecoworkshops/posts/4784193851626070                                                              	https://twitter.com/Jura_Harris/status/1448625025624510464?s=20	Link	2021-10-14	28	28	0	28	28	0	0	0	27	27	0	0	0	0	0	\N	3
2	https://www.facebook.com/laney.ecoworkshops/posts/4801043846607737                                                              	Big brother meercat protects his sibling	Photo	2021-10-19	48	48	0	48	48	3	0	0	47	47	0	3	0	0	3	\N	1
21	https://www.facebook.com/laney.ecoworkshops/posts/4781997878512334                                                              	This leopard is playing a dangerous game!	Photo	2021-10-13	49	49	0	49	49	2	1	1	48	48	0	2	0	0	1	1	1
23	https://www.facebook.com/laney.ecoworkshops/posts/4778212015557587                                                              	Namibia’s lion population shows steady growth	Photo	2021-10-19	53	53	0	53	53	2	0	0	52	52	0	2	0	0	2	\N	1
26	https://www.facebook.com/laney.ecoworkshops/posts/4770388569673265                                                              	Chilean scientist plans to clean up mining with 'metal eating' bacteria	Link	2021-10-17	43	43	0	43	43	1	1	1	40	40	0	0	0	0	0	\N	1
10	https://www.facebook.com/laney.ecoworkshops/posts/4792183607493761                                                              	Award winning photo - when its cold enough to see the melody	Photo	2021-10-16	34	34	0	34	34	1	1	1	33	33	0	1	0	0	0	\N	4
11	https://www.facebook.com/laney.ecoworkshops/posts/4790671330978322                                                              	Female elephant gives birth	Link	2021-10-16	128	128	0	130	130	12	7	7	125	123	0	12	60	60047	6	\N	4
17	https://www.facebook.com/laney.ecoworkshops/posts/4784570141588441                                                              	https://www.timeslive.co.za/sunday-times/lifestyle/2021-10-14-william-says-worlds-greatest-minds-should-focus-on-saving-earth-not-space-travel/?utm_term=Autofeed&amp,utm_medium=Social&amp,utm_source=Twitter#Echobox=1634222703	Link	2021-10-14	31	31	0	31	31	4	1	1	29	29	0	1	0	0	3	1	5
8	https://www.facebook.com/laney.ecoworkshops/posts/4793386167373505                                                              	Calanthe tricarinata (monkey orchid) native to southeast and east Asia	Photo	2021-10-17	74	74	0	74	74	2	2	2	72	72	0	2	0	0	\N	\N	6
14	https://www.facebook.com/laney.ecoworkshops/posts/4786777374701051                                                              	The giant crab of Tasmania is a crustacean inhabiting the seas of South Australia	Photo	2021-10-15	72	72	0	72	72	2	0	0	71	71	0	2	0	0	2	\N	6
20	https://www.facebook.com/laney.ecoworkshops/posts/4782978925080896                                                              	Endangered bandicoot back from the brink of extinction	Link	2021-10-13	33	33	0	33	33	0	0	0	32	32	0	0	0	0	\N	\N	6
24	https://www.facebook.com/laney.ecoworkshops/posts/4775221862523269                                                              	The bees are hungry. Please plant flowers!	Photo	2021-10-19	94	94	0	94	94	3	0	0	92	92	0	3	0	0	3	\N	6
3	https://www.facebook.com/laney.ecoworkshops/posts/4796388623739926                                                              	Greenpeace Africa. Please support our movement. Sign up today!	SharedVideo	2021-10-18	17	17	0	17	17	0	0	0	16	16	0	0	2	54165	0	\N	7
9	https://www.facebook.com/laney.ecoworkshops/posts/4792184780826977                                                              	Here Are Some Animal Species That You Probably Never Heard Of	Link	2021-10-16	31	31	0	31	31	2	2	2	30	30	0	2	0	0	0	\N	7
19	https://www.facebook.com/laney.ecoworkshops/posts/4783978908314231                                                              	The Cherokee would tell winter tales by the woolly worms	Photo	2021-10-14	74	74	0	75	75	1	0	0	72	71	0	1	0	0	1	1	7
4	https://www.facebook.com/laney.ecoworkshops/posts/4795852773793511                                                              	Spectacular view of the Victoria Falls - Zimbabwe	Photo	2021-10-17	103	103	0	103	103	3	2	2	99	99	0	3	0	0	1	\N	8
16	https://www.facebook.com/laney.ecoworkshops/posts/4784987378213384                                                              	Monkey swing - youngsters will be youngsters!	Photo	2021-10-14	136	136	0	136	136	8	3	3	132	132	0	8	0	0	5	2	8
22	https://www.facebook.com/laney.ecoworkshops/posts/4781731995205589                                                              	https://twitter.com/DailyMirror/status/1448341009742671879?s=20	Link	2021-10-13	33	33	0	33	33	0	0	0	32	32	0	0	0	0	0	\N	8
13	https://www.facebook.com/laney.ecoworkshops/posts/4787488491296606                                                              	The Puffin is an amazing fisherman	Photo	2021-10-15	58	58	0	58	58	2	2	2	56	56	0	2	0	0	0	\N	9
15	https://www.facebook.com/laney.ecoworkshops/posts/4786355418076580                                                              	Western Rosella (Platycercus icterotis) in Australia	Photo	2021-10-14	73	73	0	73	73	3	0	0	72	72	0	3	0	0	3	1	9
7	https://www.facebook.com/laney.ecoworkshops/posts/4794915187220603                                                              	Grazers on the red oat grass plains of the greater Masai Mara and Serengeti	Photo	2021-10-17	161	161	0	162	162	8	5	5	158	157	0	8	0	0	4	\N	2
12	https://www.facebook.com/laney.ecoworkshops/posts/4788876891157766                                                              	Thank you to alI rangers world-wide for carrying out such dangerous work. RIP dear Virunga ranger	Link	2021-10-15	56	56	0	57	57	2	1	1	54	53	0	2	0	0	1	\N	2
25	https://www.facebook.com/laney.ecoworkshops/posts/4770826489629473                                                              	The Guarб wolf is the largest canid in South America	SharedVideo	2021-10-18	85	85	0	85	85	9	8	8	83	84	0	9	44	18005	1	\N	2
1	https://www.facebook.com/laney.ecoworkshops/posts/4801056749939780                                                              	This is a Water Lily Frog. Isn’t it just cute?	Photo	2021-10-19	60	60	0	61	61	1	0	0	60	59	0	1	0	0	1	\N	3
28	https://www.facebook.com/laney.ecoworkshops/posts/4769174036461385                                                              	Brave mama kestrel protects her nest with fierce determination	SharedVideo	2021-10-17	60	60	0	60	60	5	4	5	59	59	0	5	28	270165	1	\N	3
30	https://www.facebook.com/laney.ecoworkshops/posts/4760057824039673                                                              	Cheetah Sees Photographer Napping Under A Tree And Joined Him	Link	2021-10-17	28	28	0	28	28	0	0	0	27	27	0	0	0	0	0	\N	4
36	https://www.facebook.com/laney.ecoworkshops/posts/4751913484854107                                                              	Ghost mantis grows to about 45 - 50 mm (1.8 - 2.0 in) long camouflaged as dead withered leaves	Photo	2021-10-15	48	48	0	50	50	0	0	0	47	46	0	0	0	0	0	\N	4
5	https://www.facebook.com/laney.ecoworkshops/posts/4795824037129718                                                              	Eco Workshops shared an episode of Three Minutes of Nature.	SharedVideo	2021-10-17	62	62	0	63	63	6	4	4	61	60	0	6	24	215314	2	\N	5
32	https://www.facebook.com/laney.ecoworkshops/posts/4758293847549404                                                              	Mother Wolf spider carrying her babies	Photo	2021-10-16	64	64	0	65	65	0	0	0	62	61	0	0	0	0	0	\N	5
34	https://www.facebook.com/laney.ecoworkshops/posts/4758025810909541                                                              	https://twitter.com/asmaaan208/status/1445256142016454657?t=V1Bv8D1QX_n0Zup20Elg2g&amp,s=19	Link	2021-10-15	23	23	0	23	23	0	0	0	22	22	0	0	0	0	0	\N	5
29	https://www.facebook.com/laney.ecoworkshops/posts/4769144549797667                                                              	Let’s help keep our oceans clean and save more sea turtles + sharks!	SharedVideo	2021-10-17	20	20	0	20	20	1	1	1	19	19	0	1	9	49557	0	\N	7
33	https://www.facebook.com/laney.ecoworkshops/posts/4758219957556793                                                              	From climate change and plastic pollution to mining the threats facing our ocean wildlife are getting more worse every day	SharedVideo	2021-10-16	11	11	0	11	11	0	0	0	10	10	0	0	4	59710	0	\N	8
27	https://www.facebook.com/laney.ecoworkshops/posts/4769933313052124                                                              	The bee lives for less than 40 days and visits a thousand flowers	Status	2021-10-17	49	49	0	49	49	0	0	0	46	46	0	0	0	0	\N	\N	9
31	https://www.facebook.com/laney.ecoworkshops/posts/4758771120835010                                                              	https://twitter.com/MetroUK/status/1445756013169168399?s=20	Link	2021-10-16	26	26	0	26	26	0	0	0	25	25	0	0	0	0	0	\N	9
35	https://www.facebook.com/laney.ecoworkshops/posts/4756328617745927                                                              	https://nuwejaars.com/an-army-of-micro-frogs-an-exciting-nuwejaars-wetlands-discovery/	Link	2021-10-15	36	36	0	36	36	0	0	0	33	33	0	0	0	0	0	\N	2
37	https://www.facebook.com/laney.ecoworkshops/posts/4751904118188377                                                              	A Giraffe's spots are much like human fingerprints. No two individual Giraffe  have exactly the same pattern	Photo	2021-10-14	80	80	0	81	81	2	1	1	78	77	0	2	0	0	1	\N	2
\.


--
-- TOC entry 2863 (class 2606 OID 81925)
-- Name: fb_ecomain fb_ecomain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fb_ecomain
    ADD CONSTRAINT fb_ecomain_pkey PRIMARY KEY (postid);


-- Completed on 2021-10-27 09:39:49

--
-- PostgreSQL database dump complete
--

