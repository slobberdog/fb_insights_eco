--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-27 09:37:42

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
-- TOC entry 2994 (class 0 OID 65569)
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


-- Completed on 2021-10-27 09:37:42

--
-- PostgreSQL database dump complete
--

