--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-27 08:30:35

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
-- TOC entry 203 (class 1259 OID 73749)
-- Name: bkup_employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkup_employees (
    employee_id smallint,
    last_name character varying(20),
    first_name character varying(10),
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);


ALTER TABLE public.bkup_employees OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 65569)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id smallint NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4)
);


ALTER TABLE public.employees OWNER TO postgres;

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
-- TOC entry 202 (class 1259 OID 73743)
-- Name: humanresources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.humanresources (
    employee_id smallint,
    last_name character varying(20),
    birth_date date,
    hire_date date,
    country character varying(15),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255),
    salary bigint,
    commstructure integer
);


ALTER TABLE public.humanresources OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 73755)
-- Name: slidingscalecomm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slidingscalecomm (
    value_id integer NOT NULL,
    commlower numeric(5,2) NOT NULL,
    commhigher numeric(5,2)
);


ALTER TABLE public.slidingscalecomm OWNER TO postgres;

--
-- TOC entry 3004 (class 0 OID 73749)
-- Dependencies: 203
-- Data for Name: bkup_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', '\x', 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL, 'http://accweb/emmployees/fuller.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '1963-08-30', '1992-04-01', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', '\x', 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2, 'http://accweb/emmployees/leverling.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '1937-09-19', '1993-05-03', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', '\x', 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2, 'http://accweb/emmployees/peacock.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04', '1993-10-17', '14 Garrett Hill', 'London', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', '\x', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management.  He is fluent in French.', 2, 'http://accweb/emmployees/buchanan.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '1963-07-02', '1993-10-17', 'Coventry House\nMiner Rd.', 'London', NULL, 'EC2 7JR', 'UK', '(71) 555-7773', '428', '\x', 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional.  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (7, 'King', 'Robert', 'Sales Representative', 'Mr.', '1960-05-29', '1994-01-02', 'Edgeham Hollow\nWinchester Way', 'London', NULL, 'RG1 9SP', 'UK', '(71) 555-5598', '465', '\x', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled Selling in Europe, he was transferred to the London office in March 1993.', 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1958-01-09', '1994-03-05', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', '\x', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1966-01-27', '1994-11-15', '7 Houndstooth Rd.', 'London', NULL, 'WG2 7LT', 'UK', '(71) 555-4444', '452', '\x', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) VALUES (1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1948-12-08', '1992-05-01', '507 - 20th Ave. E.\nApt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467', '\x', 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed The Art of the Cold Call.  Nancy is a member of Toastmasters International.', 2, 'http://accweb/emmployees/davolio.bmp');


--
-- TOC entry 3002 (class 0 OID 65569)
-- Dependencies: 201
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '14 Garrett Hill', 'London', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', 'Coventry House\nMiner Rd.', 'London', NULL, 'EC2 7JR', 'UK', '(71) 555-7773', '428');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (7, 'King', 'Robert', 'Sales Representative', 'Mr.', 'Edgeham Hollow\nWinchester Way', 'London', NULL, 'RG1 9SP', 'UK', '(71) 555-5598', '465');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '7 Houndstooth Rd.', 'London', NULL, 'WG2 7LT', 'UK', '(71) 555-4444', '452');
INSERT INTO public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) VALUES (1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '507 - 20th Ave. E.\nApt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467');


--
-- TOC entry 3001 (class 0 OID 65537)
-- Dependencies: 200
-- Data for Name: fb_ecomain; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (6, 'https://www.facebook.com/laney.ecoworkshops/posts/4795728657139256                                                              ', 'Sir David Attenborough there is urgency hope at the Earthshot Prize Awards', 'SharedVideo', '2021-10-17', 21, 21, 0, 21, 21, 1, 0, 0, 20, 20, 0, 1, 5, 181, 1, NULL, 3);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (18, 'https://www.facebook.com/laney.ecoworkshops/posts/4784193851626070                                                              ', 'https://twitter.com/Jura_Harris/status/1448625025624510464?s=20', 'Link', '2021-10-14', 28, 28, 0, 28, 28, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (2, 'https://www.facebook.com/laney.ecoworkshops/posts/4801043846607737                                                              ', 'Big brother meercat protects his sibling', 'Photo', '2021-10-19', 48, 48, 0, 48, 48, 3, 0, 0, 47, 47, 0, 3, 0, 0, 3, NULL, 1);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (21, 'https://www.facebook.com/laney.ecoworkshops/posts/4781997878512334                                                              ', 'This leopard is playing a dangerous game!', 'Photo', '2021-10-13', 49, 49, 0, 49, 49, 2, 1, 1, 48, 48, 0, 2, 0, 0, 1, 1, 1);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (23, 'https://www.facebook.com/laney.ecoworkshops/posts/4778212015557587                                                              ', 'Namibia’s lion population shows steady growth', 'Photo', '2021-10-19', 53, 53, 0, 53, 53, 2, 0, 0, 52, 52, 0, 2, 0, 0, 2, NULL, 1);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (26, 'https://www.facebook.com/laney.ecoworkshops/posts/4770388569673265                                                              ', 'Chilean scientist plans to clean up mining with ''metal eating'' bacteria', 'Link', '2021-10-17', 43, 43, 0, 43, 43, 1, 1, 1, 40, 40, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (10, 'https://www.facebook.com/laney.ecoworkshops/posts/4792183607493761                                                              ', 'Award winning photo - when its cold enough to see the melody', 'Photo', '2021-10-16', 34, 34, 0, 34, 34, 1, 1, 1, 33, 33, 0, 1, 0, 0, 0, NULL, 4);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (11, 'https://www.facebook.com/laney.ecoworkshops/posts/4790671330978322                                                              ', 'Female elephant gives birth', 'Link', '2021-10-16', 128, 128, 0, 130, 130, 12, 7, 7, 125, 123, 0, 12, 60, 60047, 6, NULL, 4);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (17, 'https://www.facebook.com/laney.ecoworkshops/posts/4784570141588441                                                              ', 'https://www.timeslive.co.za/sunday-times/lifestyle/2021-10-14-william-says-worlds-greatest-minds-should-focus-on-saving-earth-not-space-travel/?utm_term=Autofeed&amp,utm_medium=Social&amp,utm_source=Twitter#Echobox=1634222703', 'Link', '2021-10-14', 31, 31, 0, 31, 31, 4, 1, 1, 29, 29, 0, 1, 0, 0, 3, 1, 5);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (8, 'https://www.facebook.com/laney.ecoworkshops/posts/4793386167373505                                                              ', 'Calanthe tricarinata (monkey orchid) native to southeast and east Asia', 'Photo', '2021-10-17', 74, 74, 0, 74, 74, 2, 2, 2, 72, 72, 0, 2, 0, 0, NULL, NULL, 6);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (14, 'https://www.facebook.com/laney.ecoworkshops/posts/4786777374701051                                                              ', 'The giant crab of Tasmania is a crustacean inhabiting the seas of South Australia', 'Photo', '2021-10-15', 72, 72, 0, 72, 72, 2, 0, 0, 71, 71, 0, 2, 0, 0, 2, NULL, 6);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (20, 'https://www.facebook.com/laney.ecoworkshops/posts/4782978925080896                                                              ', 'Endangered bandicoot back from the brink of extinction', 'Link', '2021-10-13', 33, 33, 0, 33, 33, 0, 0, 0, 32, 32, 0, 0, 0, 0, NULL, NULL, 6);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (24, 'https://www.facebook.com/laney.ecoworkshops/posts/4775221862523269                                                              ', 'The bees are hungry. Please plant flowers!', 'Photo', '2021-10-19', 94, 94, 0, 94, 94, 3, 0, 0, 92, 92, 0, 3, 0, 0, 3, NULL, 6);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (3, 'https://www.facebook.com/laney.ecoworkshops/posts/4796388623739926                                                              ', 'Greenpeace Africa. Please support our movement. Sign up today!', 'SharedVideo', '2021-10-18', 17, 17, 0, 17, 17, 0, 0, 0, 16, 16, 0, 0, 2, 54165, 0, NULL, 7);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (9, 'https://www.facebook.com/laney.ecoworkshops/posts/4792184780826977                                                              ', 'Here Are Some Animal Species That You Probably Never Heard Of', 'Link', '2021-10-16', 31, 31, 0, 31, 31, 2, 2, 2, 30, 30, 0, 2, 0, 0, 0, NULL, 7);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (19, 'https://www.facebook.com/laney.ecoworkshops/posts/4783978908314231                                                              ', 'The Cherokee would tell winter tales by the woolly worms', 'Photo', '2021-10-14', 74, 74, 0, 75, 75, 1, 0, 0, 72, 71, 0, 1, 0, 0, 1, 1, 7);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (4, 'https://www.facebook.com/laney.ecoworkshops/posts/4795852773793511                                                              ', 'Spectacular view of the Victoria Falls - Zimbabwe', 'Photo', '2021-10-17', 103, 103, 0, 103, 103, 3, 2, 2, 99, 99, 0, 3, 0, 0, 1, NULL, 8);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (16, 'https://www.facebook.com/laney.ecoworkshops/posts/4784987378213384                                                              ', 'Monkey swing - youngsters will be youngsters!', 'Photo', '2021-10-14', 136, 136, 0, 136, 136, 8, 3, 3, 132, 132, 0, 8, 0, 0, 5, 2, 8);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (22, 'https://www.facebook.com/laney.ecoworkshops/posts/4781731995205589                                                              ', 'https://twitter.com/DailyMirror/status/1448341009742671879?s=20', 'Link', '2021-10-13', 33, 33, 0, 33, 33, 0, 0, 0, 32, 32, 0, 0, 0, 0, 0, NULL, 8);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (13, 'https://www.facebook.com/laney.ecoworkshops/posts/4787488491296606                                                              ', 'The Puffin is an amazing fisherman', 'Photo', '2021-10-15', 58, 58, 0, 58, 58, 2, 2, 2, 56, 56, 0, 2, 0, 0, 0, NULL, 9);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (15, 'https://www.facebook.com/laney.ecoworkshops/posts/4786355418076580                                                              ', 'Western Rosella (Platycercus icterotis) in Australia', 'Photo', '2021-10-14', 73, 73, 0, 73, 73, 3, 0, 0, 72, 72, 0, 3, 0, 0, 3, 1, 9);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (7, 'https://www.facebook.com/laney.ecoworkshops/posts/4794915187220603                                                              ', 'Grazers on the red oat grass plains of the greater Masai Mara and Serengeti', 'Photo', '2021-10-17', 161, 161, 0, 162, 162, 8, 5, 5, 158, 157, 0, 8, 0, 0, 4, NULL, 2);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (12, 'https://www.facebook.com/laney.ecoworkshops/posts/4788876891157766                                                              ', 'Thank you to alI rangers world-wide for carrying out such dangerous work. RIP dear Virunga ranger', 'Link', '2021-10-15', 56, 56, 0, 57, 57, 2, 1, 1, 54, 53, 0, 2, 0, 0, 1, NULL, 2);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (25, 'https://www.facebook.com/laney.ecoworkshops/posts/4770826489629473                                                              ', 'The Guarб wolf is the largest canid in South America', 'SharedVideo', '2021-10-18', 85, 85, 0, 85, 85, 9, 8, 8, 83, 84, 0, 9, 44, 18005, 1, NULL, 2);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (1, 'https://www.facebook.com/laney.ecoworkshops/posts/4801056749939780                                                              ', 'This is a Water Lily Frog. Isn’t it just cute?', 'Photo', '2021-10-19', 60, 60, 0, 61, 61, 1, 0, 0, 60, 59, 0, 1, 0, 0, 1, NULL, 3);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (28, 'https://www.facebook.com/laney.ecoworkshops/posts/4769174036461385                                                              ', 'Brave mama kestrel protects her nest with fierce determination', 'SharedVideo', '2021-10-17', 60, 60, 0, 60, 60, 5, 4, 5, 59, 59, 0, 5, 28, 270165, 1, NULL, 3);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (30, 'https://www.facebook.com/laney.ecoworkshops/posts/4760057824039673                                                              ', 'Cheetah Sees Photographer Napping Under A Tree And Joined Him', 'Link', '2021-10-17', 28, 28, 0, 28, 28, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (36, 'https://www.facebook.com/laney.ecoworkshops/posts/4751913484854107                                                              ', 'Ghost mantis grows to about 45 - 50 mm (1.8 - 2.0 in) long camouflaged as dead withered leaves', 'Photo', '2021-10-15', 48, 48, 0, 50, 50, 0, 0, 0, 47, 46, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (5, 'https://www.facebook.com/laney.ecoworkshops/posts/4795824037129718                                                              ', 'Eco Workshops shared an episode of Three Minutes of Nature.', 'SharedVideo', '2021-10-17', 62, 62, 0, 63, 63, 6, 4, 4, 61, 60, 0, 6, 24, 215314, 2, NULL, 5);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (32, 'https://www.facebook.com/laney.ecoworkshops/posts/4758293847549404                                                              ', 'Mother Wolf spider carrying her babies', 'Photo', '2021-10-16', 64, 64, 0, 65, 65, 0, 0, 0, 62, 61, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (34, 'https://www.facebook.com/laney.ecoworkshops/posts/4758025810909541                                                              ', 'https://twitter.com/asmaaan208/status/1445256142016454657?t=V1Bv8D1QX_n0Zup20Elg2g&amp,s=19', 'Link', '2021-10-15', 23, 23, 0, 23, 23, 0, 0, 0, 22, 22, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (29, 'https://www.facebook.com/laney.ecoworkshops/posts/4769144549797667                                                              ', 'Let’s help keep our oceans clean and save more sea turtles + sharks!', 'SharedVideo', '2021-10-17', 20, 20, 0, 20, 20, 1, 1, 1, 19, 19, 0, 1, 9, 49557, 0, NULL, 7);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (33, 'https://www.facebook.com/laney.ecoworkshops/posts/4758219957556793                                                              ', 'From climate change and plastic pollution to mining the threats facing our ocean wildlife are getting more worse every day', 'SharedVideo', '2021-10-16', 11, 11, 0, 11, 11, 0, 0, 0, 10, 10, 0, 0, 4, 59710, 0, NULL, 8);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (27, 'https://www.facebook.com/laney.ecoworkshops/posts/4769933313052124                                                              ', 'The bee lives for less than 40 days and visits a thousand flowers', 'Status', '2021-10-17', 49, 49, 0, 49, 49, 0, 0, 0, 46, 46, 0, 0, 0, 0, NULL, NULL, 9);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (31, 'https://www.facebook.com/laney.ecoworkshops/posts/4758771120835010                                                              ', 'https://twitter.com/MetroUK/status/1445756013169168399?s=20', 'Link', '2021-10-16', 26, 26, 0, 26, 26, 0, 0, 0, 25, 25, 0, 0, 0, 0, 0, NULL, 9);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (35, 'https://www.facebook.com/laney.ecoworkshops/posts/4756328617745927                                                              ', 'https://nuwejaars.com/an-army-of-micro-frogs-an-exciting-nuwejaars-wetlands-discovery/', 'Link', '2021-10-15', 36, 36, 0, 36, 36, 0, 0, 0, 33, 33, 0, 0, 0, 0, 0, NULL, 2);
INSERT INTO public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) VALUES (37, 'https://www.facebook.com/laney.ecoworkshops/posts/4751904118188377                                                              ', 'A Giraffe''s spots are much like human fingerprints. No two individual Giraffe  have exactly the same pattern', 'Photo', '2021-10-14', 80, 80, 0, 81, 81, 2, 1, 1, 78, 77, 0, 2, 0, 0, 1, NULL, 2);


--
-- TOC entry 3003 (class 0 OID 73743)
-- Dependencies: 202
-- Data for Name: humanresources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (2, 'Fuller', '1952-02-19', '1992-08-14', 'USA', '\x', 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL, 'http://accweb/emmployees/fuller.bmp', 120000, NULL);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (5, 'Buchanan', '1955-03-04', '1993-10-17', 'UK', '\x', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management.  He is fluent in French.', 2, 'http://accweb/emmployees/buchanan.bmp', 95000, 1);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (4, 'Peacock', '1937-09-19', '1993-05-03', 'USA', '\x', 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2, 'http://accweb/emmployees/peacock.bmp', 95000, 2);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (6, 'Suyama', '1963-07-02', '1993-10-17', 'UK', '\x', 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional.  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, 'http://accweb/emmployees/davolio.bmp', 98000, 2);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (7, 'King', '1960-05-29', '1994-01-02', 'UK', '\x', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled Selling in Europe, he was transferred to the London office in March 1993.', 5, 'http://accweb/emmployees/davolio.bmp', 92000, 2);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (1, 'Davolio', '1948-12-08', '1992-05-01', 'USA', '\x', 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed The Art of the Cold Call.  Nancy is a member of Toastmasters International.', 2, 'http://accweb/emmployees/davolio.bmp', 95000, 3);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (8, 'Callahan', '1958-01-09', '1994-03-05', 'USA', '\x', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, 'http://accweb/emmployees/davolio.bmp', 88000, 3);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (3, 'Leverling', '1963-08-30', '1992-04-01', 'USA', '\x', 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2, 'http://accweb/emmployees/leverling.bmp', 95000, 4);
INSERT INTO public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) VALUES (9, 'Dodsworth', '1966-01-27', '1994-11-15', 'UK', '\x', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, 'http://accweb/emmployees/davolio.bmp', 84000, 4);


--
-- TOC entry 3005 (class 0 OID 73755)
-- Dependencies: 204
-- Data for Name: slidingscalecomm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (1, 20.00, 25.00);
INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (2, 25.00, 30.00);
INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (3, 30.00, 35.00);
INSERT INTO public.slidingscalecomm (value_id, commlower, commhigher) VALUES (4, 35.00, 40.00);


--
-- TOC entry 2870 (class 2606 OID 65576)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 2868 (class 2606 OID 81925)
-- Name: fb_ecomain fb_ecomain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fb_ecomain
    ADD CONSTRAINT fb_ecomain_pkey PRIMARY KEY (postid);


-- Completed on 2021-10-27 08:30:35

--
-- PostgreSQL database dump complete
--

