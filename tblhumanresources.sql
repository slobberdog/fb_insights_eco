--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-10-27 09:42:29

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
-- TOC entry 2992 (class 0 OID 73743)
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


-- Completed on 2021-10-27 09:42:30

--
-- PostgreSQL database dump complete
--

