--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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

--
-- Name: calendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calendar (
    region text NOT NULL,
    zip text,
    area text NOT NULL,
    station text,
    waste_type text NOT NULL,
    col_date timestamp with time zone NOT NULL
);


ALTER TABLE public.calendar OWNER TO postgres;

--
-- Name: station; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.station (
    region text NOT NULL,
    zip text,
    name text NOT NULL,
    oil boolean,
    metal boolean,
    glass boolean,
    textile boolean
);


ALTER TABLE public.station OWNER TO postgres;

--
-- Data for Name: calendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calendar (region, zip, area, station, waste_type, col_date) FROM stdin;
basel		F		waste	2020-03-16 00:00:00+00
basel		F		waste	2020-03-26 00:00:00+00
basel		F		waste	2020-04-02 00:00:00+00
basel		F		waste	2020-04-09 00:00:00+00
basel		F		waste	2020-04-16 00:00:00+00
basel		F		waste	2020-05-18 00:00:00+00
basel		F		waste	2020-06-18 00:00:00+00
basel		F		waste	2020-06-22 00:00:00+00
basel		F		waste	2020-06-29 00:00:00+00
basel		F		waste	2020-07-06 00:00:00+00
basel		F		waste	2020-07-09 00:00:00+00
basel		F		waste	2020-07-23 00:00:00+00
basel		F		waste	2020-07-30 00:00:00+00
basel		F		waste	2020-08-17 00:00:00+00
basel		F		waste	2020-08-20 00:00:00+00
basel		F		waste	2020-08-31 00:00:00+00
basel		F		waste	2020-09-07 00:00:00+00
basel		F		waste	2020-09-10 00:00:00+00
basel		F		waste	2020-09-24 00:00:00+00
basel		F		waste	2020-10-05 00:00:00+00
basel		F		waste	2020-10-08 00:00:00+00
basel		F		waste	2020-11-02 00:00:00+00
basel		F		waste	2020-11-09 00:00:00+00
basel		F		waste	2020-11-19 00:00:00+00
basel		F		waste	2020-11-26 00:00:00+00
basel		F		waste	2020-12-21 00:00:00+00
basel		F		waste	2020-12-31 00:00:00+00
basel		G		waste	2020-01-06 00:00:00+00
basel		G		waste	2020-01-09 00:00:00+00
basel		G		waste	2020-01-20 00:00:00+00
basel		G		waste	2020-01-23 00:00:00+00
basel		G		waste	2020-01-30 00:00:00+00
basel		G		waste	2020-02-20 00:00:00+00
basel		G		waste	2020-02-24 00:00:00+00
basel		G		waste	2020-03-09 00:00:00+00
basel		G		waste	2020-03-26 00:00:00+00
basel		G		waste	2020-03-30 00:00:00+00
basel		G		waste	2020-04-20 00:00:00+00
basel		G		waste	2020-04-27 00:00:00+00
basel		G		waste	2020-05-07 00:00:00+00
basel		G		waste	2020-06-18 00:00:00+00
basel		G		waste	2020-06-22 00:00:00+00
basel		G		waste	2020-07-20 00:00:00+00
basel		G		waste	2020-07-27 00:00:00+00
basel		G		waste	2020-08-10 00:00:00+00
basel		G		waste	2020-08-13 00:00:00+00
basel		G		waste	2020-08-20 00:00:00+00
basel		G		waste	2020-09-03 00:00:00+00
basel		G		waste	2020-09-10 00:00:00+00
basel		G		waste	2020-09-21 00:00:00+00
basel		G		waste	2020-09-24 00:00:00+00
basel		G		waste	2020-09-28 00:00:00+00
basel		G		waste	2020-10-05 00:00:00+00
basel		G		waste	2020-10-22 00:00:00+00
basel		G		waste	2020-11-02 00:00:00+00
basel		G		waste	2020-11-19 00:00:00+00
basel		G		waste	2020-11-23 00:00:00+00
basel		G		waste	2020-11-30 00:00:00+00
basel		G		waste	2020-12-31 00:00:00+00
basel		H		waste	2020-01-24 00:00:00+00
basel		H		waste	2020-02-11 00:00:00+00
basel		H		waste	2020-03-03 00:00:00+00
basel		H		waste	2020-03-20 00:00:00+00
basel		H		waste	2020-03-24 00:00:00+00
basel		H		waste	2020-04-03 00:00:00+00
basel		H		waste	2020-04-24 00:00:00+00
basel		H		waste	2020-05-08 00:00:00+00
basel		H		waste	2020-05-12 00:00:00+00
basel		H		waste	2020-05-22 00:00:00+00
basel		H		waste	2020-05-29 00:00:00+00
basel		H		waste	2020-06-09 00:00:00+00
basel		H		waste	2020-06-12 00:00:00+00
basel		H		waste	2020-07-24 00:00:00+00
basel		H		waste	2020-08-04 00:00:00+00
basel		H		waste	2020-08-11 00:00:00+00
basel		H		waste	2020-08-14 00:00:00+00
basel		H		waste	2020-09-11 00:00:00+00
basel		H		waste	2020-09-15 00:00:00+00
basel		H		waste	2020-09-18 00:00:00+00
basel		H		waste	2020-09-25 00:00:00+00
basel		H		waste	2020-10-09 00:00:00+00
basel		H		waste	2020-10-13 00:00:00+00
basel		H		waste	2020-10-16 00:00:00+00
basel		H		waste	2020-10-30 00:00:00+00
basel		H		waste	2020-11-10 00:00:00+00
basel		H		waste	2020-11-13 00:00:00+00
basel		H		waste	2020-11-17 00:00:00+00
basel		H		waste	2020-11-20 00:00:00+00
basel		H		waste	2020-12-01 00:00:00+00
basel		H		waste	2020-12-11 00:00:00+00
basel		A		metal	2020-02-20 00:00:00+00
basel		B		metal	2020-01-24 00:00:00+00
basel		B		metal	2020-02-21 00:00:00+00
basel		B		metal	2020-03-03 00:00:00+00
basel		B		metal	2020-09-08 00:00:00+00
basel		C		metal	2020-01-06 00:00:00+00
basel		C		metal	2020-02-03 00:00:00+00
basel		D		metal	2020-01-09 00:00:00+00
basel		D		metal	2020-03-24 00:00:00+00
basel		D		metal	2020-05-04 00:00:00+00
basel		E		metal	2020-06-03 00:00:00+00
basel		E		metal	2020-10-19 00:00:00+00
basel		G		metal	2020-01-10 00:00:00+00
basel		G		metal	2020-02-07 00:00:00+00
basel		G		metal	2020-09-14 00:00:00+00
basel		H		metal	2020-05-06 00:00:00+00
basel		A		paper	2020-01-08 00:00:00+00
basel		A		paper	2020-03-11 00:00:00+00
basel		A		paper	2020-05-06 00:00:00+00
basel		A		paper	2020-09-23 00:00:00+00
basel		B		paper	2020-02-05 00:00:00+00
basel		B		paper	2020-04-08 00:00:00+00
basel		B		paper	2020-06-03 00:00:00+00
basel		B		paper	2020-07-01 00:00:00+00
basel		B		paper	2020-08-26 00:00:00+00
basel		B		paper	2020-09-23 00:00:00+00
basel		B		paper	2020-11-18 00:00:00+00
basel		C		paper	2020-04-01 00:00:00+00
basel		C		paper	2020-04-29 00:00:00+00
basel		C		paper	2020-06-24 00:00:00+00
basel		C		paper	2020-07-22 00:00:00+00
basel		C		paper	2020-10-14 00:00:00+00
basel		D		paper	2020-01-29 00:00:00+00
basel		D		paper	2020-02-26 00:00:00+00
basel		D		paper	2020-09-16 00:00:00+00
basel		E		paper	2020-05-13 00:00:00+00
basel		E		paper	2020-06-10 00:00:00+00
basel		E		paper	2020-12-23 00:00:00+00
basel		F		paper	2020-04-15 00:00:00+00
basel		F		paper	2020-06-10 00:00:00+00
basel		F		paper	2020-08-05 00:00:00+00
basel		F		paper	2020-10-28 00:00:00+00
basel		F		paper	2020-11-25 00:00:00+00
basel		F		paper	2020-12-23 00:00:00+00
basel		G		paper	2020-04-22 00:00:00+00
basel		G		paper	2020-09-09 00:00:00+00
basel		H		paper	2020-06-17 00:00:00+00
basel		H		paper	2020-08-12 00:00:00+00
basel		H		paper	2020-10-07 00:00:00+00
basel		H		paper	2020-11-04 00:00:00+00
basel		H		paper	2020-12-02 00:00:00+00
basel		H		paper	2020-12-30 00:00:00+00
basel		A		incombustibles	2020-02-10 00:00:00+00
basel		A		incombustibles	2020-03-09 00:00:00+00
basel		A		incombustibles	2020-08-17 00:00:00+00
basel		A		incombustibles	2020-11-16 00:00:00+00
basel		B		incombustibles	2020-01-07 00:00:00+00
basel		B		incombustibles	2020-06-11 00:00:00+00
basel		B		incombustibles	2020-07-16 00:00:00+00
basel		B		incombustibles	2020-10-23 00:00:00+00
basel		C		incombustibles	2020-12-01 00:00:00+00
basel		D		incombustibles	2020-01-06 00:00:00+00
basel		D		incombustibles	2020-05-18 00:00:00+00
basel		D		incombustibles	2020-06-29 00:00:00+00
basel		D		incombustibles	2020-07-10 00:00:00+00
basel		D		incombustibles	2020-11-30 00:00:00+00
basel		E		incombustibles	2020-06-19 00:00:00+00
basel		E		incombustibles	2020-07-20 00:00:00+00
basel		E		incombustibles	2020-09-14 00:00:00+00
basel		E		incombustibles	2020-12-21 00:00:00+00
basel		F		incombustibles	2020-06-26 00:00:00+00
basel		F		incombustibles	2020-10-22 00:00:00+00
basel		F		incombustibles	2020-11-12 00:00:00+00
basel		G		incombustibles	2020-02-04 00:00:00+00
basel		G		incombustibles	2020-04-07 00:00:00+00
basel		G		incombustibles	2020-05-04 00:00:00+00
basel		G		incombustibles	2020-12-04 00:00:00+00
basel		H		incombustibles	2020-04-16 00:00:00+00
basel		H		incombustibles	2020-11-26 00:00:00+00
basel		A		chipping_service	2020-09-14 00:00:00+00
basel		B		chipping_service	2020-02-24 00:00:00+00
basel		B		chipping_service	2020-04-06 00:00:00+00
basel		B		chipping_service	2020-11-23 00:00:00+00
basel		C		chipping_service	2020-04-06 00:00:00+00
basel		C		chipping_service	2020-09-14 00:00:00+00
basel		E		chipping_service	2020-04-08 00:00:00+00
basel		F		chipping_service	2020-04-08 00:00:00+00
basel		F		chipping_service	2020-06-17 00:00:00+00
basel		F		chipping_service	2020-09-16 00:00:00+00
basel		G		chipping_service	2020-04-07 00:00:00+00
basel		G		chipping_service	2020-06-16 00:00:00+00
basel		G		chipping_service	2020-09-15 00:00:00+00
basel		H		chipping_service	2020-02-25 00:00:00+00
basel		H		chipping_service	2020-04-07 00:00:00+00
basel		H		chipping_service	2020-06-16 00:00:00+00
basel		A		waste	2021-01-12 00:00:00+00
basel		A		waste	2021-01-19 00:00:00+00
basel		A		waste	2021-01-22 00:00:00+00
basel		A		waste	2021-01-26 00:00:00+00
basel		A		waste	2021-02-02 00:00:00+00
basel		A		waste	2021-02-09 00:00:00+00
basel		A		waste	2021-02-12 00:00:00+00
basel		A		waste	2021-02-16 00:00:00+00
basel		A		waste	2021-02-26 00:00:00+00
basel		A		waste	2021-03-05 00:00:00+00
basel		A		waste	2021-03-12 00:00:00+00
basel		A		waste	2021-03-16 00:00:00+00
basel		A		waste	2021-04-09 00:00:00+00
basel		A		waste	2021-04-13 00:00:00+00
basel		A		waste	2021-04-16 00:00:00+00
basel		A		waste	2021-04-20 00:00:00+00
basel		A		waste	2021-05-21 00:00:00+00
basel		A		waste	2021-05-28 00:00:00+00
basel		A		waste	2021-06-18 00:00:00+00
basel		A		waste	2021-06-22 00:00:00+00
basel		A		waste	2021-07-23 00:00:00+00
basel		A		waste	2021-07-27 00:00:00+00
basel		A		waste	2021-08-10 00:00:00+00
basel		A		waste	2021-09-10 00:00:00+00
basel		A		waste	2021-09-14 00:00:00+00
basel		A		waste	2021-09-28 00:00:00+00
basel		A		waste	2021-10-01 00:00:00+00
basel		A		waste	2021-10-12 00:00:00+00
basel		A		waste	2021-10-19 00:00:00+00
basel		A		waste	2021-10-26 00:00:00+00
basel		A		waste	2021-11-05 00:00:00+00
basel		A		waste	2021-11-09 00:00:00+00
basel		A		waste	2021-11-16 00:00:00+00
basel		A		waste	2021-12-28 00:00:00+00
basel		B		waste	2021-01-04 00:00:00+00
basel		B		waste	2021-01-07 00:00:00+00
basel		B		waste	2021-02-15 00:00:00+00
basel		B		waste	2021-02-18 00:00:00+00
basel		B		waste	2021-03-22 00:00:00+00
basel		B		waste	2021-03-29 00:00:00+00
basel		B		waste	2021-04-01 00:00:00+00
basel		B		waste	2021-04-05 00:00:00+00
basel		B		waste	2021-04-12 00:00:00+00
basel		B		waste	2021-04-26 00:00:00+00
basel		B		waste	2021-05-06 00:00:00+00
basel		B		waste	2021-05-10 00:00:00+00
basel		B		waste	2021-05-13 00:00:00+00
basel		B		waste	2021-05-17 00:00:00+00
basel		B		waste	2021-05-20 00:00:00+00
basel		B		waste	2021-05-27 00:00:00+00
basel		B		waste	2021-06-17 00:00:00+00
basel		B		waste	2021-06-24 00:00:00+00
basel		B		waste	2021-06-28 00:00:00+00
basel		B		waste	2021-07-05 00:00:00+00
basel		B		waste	2021-07-08 00:00:00+00
basel		B		waste	2021-07-22 00:00:00+00
basel		B		waste	2021-07-29 00:00:00+00
basel		B		waste	2021-08-30 00:00:00+00
basel		B		waste	2021-09-13 00:00:00+00
basel		B		waste	2021-09-27 00:00:00+00
basel		B		waste	2021-09-30 00:00:00+00
basel		B		waste	2021-10-04 00:00:00+00
basel		B		waste	2021-10-11 00:00:00+00
basel		B		waste	2021-10-14 00:00:00+00
basel		B		waste	2021-10-21 00:00:00+00
basel		B		waste	2021-10-25 00:00:00+00
basel		B		waste	2021-10-28 00:00:00+00
basel		B		waste	2021-11-01 00:00:00+00
basel		B		waste	2021-11-04 00:00:00+00
basel		B		waste	2021-11-18 00:00:00+00
basel		B		waste	2021-11-25 00:00:00+00
basel		B		waste	2021-11-29 00:00:00+00
basel		B		waste	2021-12-23 00:00:00+00
basel		C		waste	2021-01-07 00:00:00+00
basel		C		waste	2021-01-14 00:00:00+00
basel		C		waste	2021-02-08 00:00:00+00
basel		C		waste	2021-02-11 00:00:00+00
basel		C		waste	2021-03-22 00:00:00+00
basel		C		waste	2021-03-25 00:00:00+00
basel		C		waste	2021-04-05 00:00:00+00
basel		C		waste	2021-04-12 00:00:00+00
basel		C		waste	2021-04-26 00:00:00+00
basel		C		waste	2021-05-10 00:00:00+00
basel		C		waste	2021-05-13 00:00:00+00
basel		C		waste	2021-05-20 00:00:00+00
basel		C		waste	2021-06-10 00:00:00+00
basel		C		waste	2021-06-17 00:00:00+00
basel		C		waste	2021-07-08 00:00:00+00
basel		C		waste	2021-07-15 00:00:00+00
basel		C		waste	2021-08-16 00:00:00+00
basel		C		waste	2021-08-23 00:00:00+00
basel		C		waste	2021-08-30 00:00:00+00
basel		C		waste	2021-09-09 00:00:00+00
basel		C		waste	2021-10-07 00:00:00+00
basel		C		waste	2021-10-25 00:00:00+00
basel		C		waste	2021-11-01 00:00:00+00
basel		C		waste	2021-11-08 00:00:00+00
basel		C		waste	2021-11-22 00:00:00+00
basel		C		waste	2021-11-29 00:00:00+00
basel		C		waste	2021-12-02 00:00:00+00
basel		C		waste	2021-12-09 00:00:00+00
basel		C		waste	2021-12-13 00:00:00+00
basel		C		waste	2021-12-20 00:00:00+00
basel		C		waste	2021-12-23 00:00:00+00
basel		C		waste	2021-12-27 00:00:00+00
basel		C		waste	2021-12-30 00:00:00+00
basel		D		waste	2021-01-29 00:00:00+00
basel		D		waste	2021-02-09 00:00:00+00
basel		D		waste	2021-02-19 00:00:00+00
basel		D		waste	2021-03-02 00:00:00+00
basel		D		waste	2021-03-05 00:00:00+00
basel		D		waste	2021-03-12 00:00:00+00
basel		D		waste	2021-04-06 00:00:00+00
basel		D		waste	2021-05-11 00:00:00+00
basel		D		waste	2021-05-14 00:00:00+00
basel		D		waste	2021-05-18 00:00:00+00
basel		D		waste	2021-06-04 00:00:00+00
basel		D		waste	2021-06-08 00:00:00+00
basel		D		waste	2021-06-11 00:00:00+00
basel		D		waste	2021-06-22 00:00:00+00
basel		D		waste	2021-06-25 00:00:00+00
basel		D		waste	2021-06-29 00:00:00+00
basel		D		waste	2021-07-06 00:00:00+00
basel		D		waste	2021-07-13 00:00:00+00
basel		D		waste	2021-07-27 00:00:00+00
basel		D		waste	2021-08-03 00:00:00+00
basel		D		waste	2021-08-06 00:00:00+00
basel		D		waste	2021-08-13 00:00:00+00
basel		D		waste	2021-08-17 00:00:00+00
basel		D		waste	2021-08-20 00:00:00+00
basel		D		waste	2021-08-27 00:00:00+00
basel		D		waste	2021-08-31 00:00:00+00
basel		D		waste	2021-09-10 00:00:00+00
basel		D		waste	2021-09-14 00:00:00+00
basel		D		waste	2021-09-21 00:00:00+00
basel		D		waste	2021-09-24 00:00:00+00
basel		D		waste	2021-10-26 00:00:00+00
basel		D		waste	2021-11-02 00:00:00+00
basel		D		waste	2021-11-16 00:00:00+00
basel		D		waste	2021-12-03 00:00:00+00
basel		D		waste	2021-12-10 00:00:00+00
basel		D		waste	2021-12-17 00:00:00+00
basel		D		waste	2021-12-31 00:00:00+00
basel		E		waste	2021-01-12 00:00:00+00
basel		E		waste	2021-01-15 00:00:00+00
basel		E		waste	2021-01-29 00:00:00+00
basel		E		waste	2021-02-19 00:00:00+00
basel		E		waste	2021-02-26 00:00:00+00
basel		E		waste	2021-03-05 00:00:00+00
basel		E		waste	2021-03-12 00:00:00+00
basel		E		waste	2021-04-02 00:00:00+00
basel		E		waste	2021-05-11 00:00:00+00
basel		E		waste	2021-05-14 00:00:00+00
basel		E		waste	2021-05-18 00:00:00+00
basel		E		waste	2021-05-21 00:00:00+00
basel		E		waste	2021-05-25 00:00:00+00
basel		E		waste	2021-05-28 00:00:00+00
basel		E		waste	2021-06-01 00:00:00+00
basel		E		waste	2021-06-15 00:00:00+00
basel		E		waste	2021-07-02 00:00:00+00
basel		E		waste	2021-07-20 00:00:00+00
basel		E		waste	2021-07-23 00:00:00+00
basel		E		waste	2021-07-27 00:00:00+00
basel		E		waste	2021-08-03 00:00:00+00
basel		E		waste	2021-08-20 00:00:00+00
basel		E		waste	2021-08-27 00:00:00+00
basel		E		waste	2021-08-31 00:00:00+00
basel		E		waste	2021-09-07 00:00:00+00
basel		E		waste	2021-09-10 00:00:00+00
basel		E		waste	2021-10-15 00:00:00+00
basel		E		waste	2021-10-19 00:00:00+00
basel		E		waste	2021-11-12 00:00:00+00
basel		E		waste	2021-11-19 00:00:00+00
basel		E		waste	2021-11-26 00:00:00+00
basel		E		waste	2021-11-30 00:00:00+00
basel		E		waste	2021-12-03 00:00:00+00
basel		E		waste	2021-12-21 00:00:00+00
basel		E		waste	2021-12-31 00:00:00+00
basel		F		waste	2021-01-11 00:00:00+00
basel		F		waste	2021-01-25 00:00:00+00
basel		F		waste	2021-01-28 00:00:00+00
basel		F		waste	2021-02-08 00:00:00+00
basel		F		waste	2021-02-11 00:00:00+00
basel		F		waste	2021-03-04 00:00:00+00
basel		F		waste	2021-03-25 00:00:00+00
basel		F		waste	2021-03-29 00:00:00+00
basel		F		waste	2021-04-01 00:00:00+00
basel		F		waste	2021-04-26 00:00:00+00
basel		F		waste	2021-05-10 00:00:00+00
basel		F		waste	2021-05-13 00:00:00+00
basel		F		waste	2021-05-20 00:00:00+00
basel		F		waste	2021-06-03 00:00:00+00
basel		F		waste	2021-06-07 00:00:00+00
basel		F		waste	2021-06-10 00:00:00+00
basel		F		waste	2021-06-21 00:00:00+00
basel		F		waste	2021-06-24 00:00:00+00
basel		F		waste	2021-06-28 00:00:00+00
basel		F		waste	2021-07-01 00:00:00+00
basel		F		waste	2021-07-05 00:00:00+00
basel		F		waste	2021-07-19 00:00:00+00
basel		F		waste	2021-07-29 00:00:00+00
basel		F		waste	2021-08-05 00:00:00+00
basel		F		waste	2021-08-12 00:00:00+00
basel		F		waste	2021-08-19 00:00:00+00
basel		F		waste	2021-08-23 00:00:00+00
basel		F		waste	2021-08-26 00:00:00+00
basel		F		waste	2021-09-16 00:00:00+00
basel		F		waste	2021-09-20 00:00:00+00
basel		F		waste	2021-09-27 00:00:00+00
basel		F		waste	2021-10-07 00:00:00+00
basel		F		waste	2021-10-11 00:00:00+00
basel		F		waste	2021-11-08 00:00:00+00
basel		F		waste	2021-11-11 00:00:00+00
basel		F		waste	2021-11-22 00:00:00+00
basel		F		waste	2021-12-02 00:00:00+00
basel		F		waste	2021-12-09 00:00:00+00
basel		F		waste	2021-12-27 00:00:00+00
basel		F		waste	2021-12-30 00:00:00+00
basel		G		waste	2021-01-07 00:00:00+00
basel		G		waste	2021-01-21 00:00:00+00
basel		G		waste	2021-01-28 00:00:00+00
basel		G		waste	2021-02-01 00:00:00+00
basel		G		waste	2021-02-22 00:00:00+00
basel		G		waste	2021-02-25 00:00:00+00
basel		G		waste	2021-03-04 00:00:00+00
basel		G		waste	2021-03-11 00:00:00+00
basel		G		waste	2021-04-01 00:00:00+00
basel		G		waste	2021-04-05 00:00:00+00
basel		G		waste	2021-04-15 00:00:00+00
basel		G		waste	2021-04-22 00:00:00+00
basel		G		waste	2021-05-03 00:00:00+00
basel		G		waste	2021-05-13 00:00:00+00
basel		G		waste	2021-05-20 00:00:00+00
basel		G		waste	2021-07-08 00:00:00+00
basel		G		waste	2021-07-12 00:00:00+00
basel		G		waste	2021-07-19 00:00:00+00
basel		G		waste	2021-07-22 00:00:00+00
basel		G		waste	2021-08-09 00:00:00+00
basel		G		waste	2021-08-12 00:00:00+00
basel		G		waste	2021-09-02 00:00:00+00
basel		G		waste	2021-09-13 00:00:00+00
basel		G		waste	2021-09-20 00:00:00+00
basel		G		waste	2021-09-30 00:00:00+00
basel		G		waste	2021-10-07 00:00:00+00
basel		G		waste	2021-10-28 00:00:00+00
basel		G		waste	2021-11-04 00:00:00+00
basel		G		waste	2021-11-15 00:00:00+00
basel		G		waste	2021-12-02 00:00:00+00
basel		G		waste	2021-12-16 00:00:00+00
basel		H		waste	2021-01-12 00:00:00+00
basel		H		waste	2021-01-22 00:00:00+00
basel		H		waste	2021-02-05 00:00:00+00
basel		H		waste	2021-02-09 00:00:00+00
basel		H		waste	2021-03-05 00:00:00+00
basel		H		waste	2021-03-19 00:00:00+00
basel		H		waste	2021-03-30 00:00:00+00
basel		H		waste	2021-04-20 00:00:00+00
basel		H		waste	2021-04-23 00:00:00+00
basel		H		waste	2021-04-30 00:00:00+00
basel		H		waste	2021-05-07 00:00:00+00
basel		H		waste	2021-05-21 00:00:00+00
basel		H		waste	2021-05-25 00:00:00+00
basel		H		waste	2021-06-04 00:00:00+00
basel		H		waste	2021-06-08 00:00:00+00
basel		H		waste	2021-06-11 00:00:00+00
basel		H		waste	2021-06-15 00:00:00+00
basel		H		waste	2021-06-25 00:00:00+00
basel		H		waste	2021-06-29 00:00:00+00
basel		H		waste	2021-07-23 00:00:00+00
basel		H		waste	2021-07-27 00:00:00+00
basel		H		waste	2021-08-03 00:00:00+00
basel		H		waste	2021-08-10 00:00:00+00
basel		H		waste	2021-08-24 00:00:00+00
basel		H		waste	2021-09-10 00:00:00+00
basel		H		waste	2021-09-14 00:00:00+00
basel		H		waste	2021-09-24 00:00:00+00
basel		H		waste	2021-10-15 00:00:00+00
basel		H		waste	2021-10-19 00:00:00+00
basel		H		waste	2021-10-22 00:00:00+00
basel		H		waste	2021-10-29 00:00:00+00
basel		H		waste	2021-11-02 00:00:00+00
basel		H		waste	2021-11-26 00:00:00+00
basel		H		waste	2021-12-03 00:00:00+00
basel		H		waste	2021-12-10 00:00:00+00
basel		H		waste	2021-12-17 00:00:00+00
basel		H		waste	2021-12-21 00:00:00+00
basel		H		waste	2021-12-28 00:00:00+00
basel		H		waste	2021-12-31 00:00:00+00
basel		A		organic	2021-02-04 00:00:00+00
basel		A		organic	2021-02-18 00:00:00+00
basel		A		organic	2021-03-04 00:00:00+00
basel		A		organic	2021-04-08 00:00:00+00
basel		A		organic	2021-04-15 00:00:00+00
basel		A		organic	2021-04-29 00:00:00+00
basel		A		organic	2021-05-06 00:00:00+00
basel		A		organic	2021-06-10 00:00:00+00
basel		A		organic	2021-07-08 00:00:00+00
basel		A		organic	2021-07-15 00:00:00+00
basel		A		organic	2021-10-07 00:00:00+00
basel		A		organic	2021-11-11 00:00:00+00
basel		A		organic	2021-12-23 00:00:00+00
basel		B		organic	2021-03-04 00:00:00+00
basel		B		organic	2021-04-29 00:00:00+00
basel		B		organic	2021-06-03 00:00:00+00
basel		B		organic	2021-07-01 00:00:00+00
basel		B		organic	2021-07-22 00:00:00+00
basel		B		organic	2021-08-05 00:00:00+00
basel		B		organic	2021-08-12 00:00:00+00
basel		B		organic	2021-08-19 00:00:00+00
basel		B		organic	2021-08-26 00:00:00+00
basel		B		organic	2021-09-09 00:00:00+00
basel		B		organic	2021-09-23 00:00:00+00
basel		B		organic	2021-10-07 00:00:00+00
basel		B		organic	2021-10-14 00:00:00+00
basel		B		organic	2021-12-09 00:00:00+00
basel		B		organic	2021-12-23 00:00:00+00
basel		C		organic	2021-02-19 00:00:00+00
basel		C		organic	2021-06-11 00:00:00+00
basel		C		organic	2021-06-18 00:00:00+00
basel		C		organic	2021-07-09 00:00:00+00
basel		C		organic	2021-07-16 00:00:00+00
basel		C		organic	2021-07-23 00:00:00+00
basel		C		organic	2021-08-06 00:00:00+00
basel		C		organic	2021-11-26 00:00:00+00
basel		C		organic	2021-12-24 00:00:00+00
basel		D		organic	2021-01-07 00:00:00+00
basel		D		organic	2021-01-21 00:00:00+00
basel		D		organic	2021-03-11 00:00:00+00
basel		D		organic	2021-04-08 00:00:00+00
basel		D		organic	2021-06-17 00:00:00+00
basel		D		organic	2021-07-08 00:00:00+00
basel		D		organic	2021-07-22 00:00:00+00
basel		D		organic	2021-08-12 00:00:00+00
basel		D		organic	2021-09-16 00:00:00+00
basel		D		organic	2021-09-30 00:00:00+00
basel		D		organic	2021-10-07 00:00:00+00
basel		D		organic	2021-10-21 00:00:00+00
basel		D		organic	2021-12-23 00:00:00+00
basel		E		organic	2021-03-04 00:00:00+00
basel		E		organic	2021-04-22 00:00:00+00
basel		E		organic	2021-04-29 00:00:00+00
basel		E		organic	2021-06-17 00:00:00+00
basel		E		organic	2021-06-24 00:00:00+00
basel		E		organic	2021-07-15 00:00:00+00
basel		E		organic	2021-08-12 00:00:00+00
basel		E		organic	2021-09-02 00:00:00+00
basel		E		organic	2021-09-23 00:00:00+00
basel		E		organic	2021-10-07 00:00:00+00
basel		E		organic	2021-11-11 00:00:00+00
basel		E		organic	2021-12-09 00:00:00+00
basel		F		organic	2021-03-16 00:00:00+00
basel		F		organic	2021-03-30 00:00:00+00
basel		F		organic	2021-04-06 00:00:00+00
basel		F		organic	2021-05-04 00:00:00+00
basel		F		organic	2021-06-01 00:00:00+00
basel		F		organic	2021-06-08 00:00:00+00
basel		F		organic	2021-06-29 00:00:00+00
basel		F		organic	2021-07-13 00:00:00+00
basel		F		organic	2021-08-03 00:00:00+00
basel		F		organic	2021-08-24 00:00:00+00
basel		F		organic	2021-08-31 00:00:00+00
basel		F		organic	2021-09-14 00:00:00+00
basel		F		organic	2021-10-05 00:00:00+00
basel		F		organic	2021-10-12 00:00:00+00
basel		F		organic	2021-10-26 00:00:00+00
basel		F		organic	2021-11-02 00:00:00+00
basel		F		organic	2021-11-16 00:00:00+00
basel		F		organic	2021-12-07 00:00:00+00
basel		G		organic	2021-02-19 00:00:00+00
basel		G		organic	2021-03-05 00:00:00+00
basel		G		organic	2021-04-09 00:00:00+00
basel		G		organic	2021-06-04 00:00:00+00
basel		G		organic	2021-06-11 00:00:00+00
basel		G		organic	2021-06-25 00:00:00+00
basel		G		organic	2021-07-02 00:00:00+00
basel		G		organic	2021-07-09 00:00:00+00
basel		G		organic	2021-08-06 00:00:00+00
basel		G		organic	2021-08-13 00:00:00+00
basel		G		organic	2021-09-03 00:00:00+00
basel		G		organic	2021-09-10 00:00:00+00
basel		G		organic	2021-10-08 00:00:00+00
basel		G		organic	2021-12-24 00:00:00+00
basel		H		organic	2021-01-04 00:00:00+00
basel		H		organic	2021-01-18 00:00:00+00
basel		H		organic	2021-03-15 00:00:00+00
basel		H		organic	2021-04-12 00:00:00+00
basel		H		organic	2021-05-10 00:00:00+00
basel		H		organic	2021-07-19 00:00:00+00
basel		H		organic	2021-07-26 00:00:00+00
basel		H		organic	2021-08-02 00:00:00+00
basel		H		organic	2021-08-09 00:00:00+00
basel		H		organic	2021-09-06 00:00:00+00
basel		H		organic	2021-10-11 00:00:00+00
basel		H		organic	2021-11-15 00:00:00+00
basel		H		organic	2021-12-06 00:00:00+00
basel		A		metal	2021-10-20 00:00:00+00
basel		C		metal	2021-12-14 00:00:00+00
basel		D		metal	2021-02-25 00:00:00+00
basel		D		metal	2021-06-16 00:00:00+00
basel		D		metal	2021-12-30 00:00:00+00
basel		F		metal	2021-09-22 00:00:00+00
basel		F		metal	2021-12-31 00:00:00+00
basel		G		metal	2021-08-11 00:00:00+00
basel		H		metal	2021-08-25 00:00:00+00
basel		A		bulky_goods	2021-02-17 00:00:00+00
basel		A		bulky_goods	2021-03-31 00:00:00+00
basel		A		bulky_goods	2021-05-26 00:00:00+00
basel		A		bulky_goods	2021-12-01 00:00:00+00
basel		B		bulky_goods	2021-01-20 00:00:00+00
basel		B		bulky_goods	2021-02-17 00:00:00+00
basel		B		bulky_goods	2021-09-15 00:00:00+00
basel		B		bulky_goods	2021-10-13 00:00:00+00
basel		B		bulky_goods	2021-12-29 00:00:00+00
basel		C		bulky_goods	2021-01-13 00:00:00+00
basel		C		bulky_goods	2021-02-24 00:00:00+00
basel		C		bulky_goods	2021-09-15 00:00:00+00
basel		D		bulky_goods	2021-02-10 00:00:00+00
basel		D		bulky_goods	2021-03-03 00:00:00+00
basel		D		bulky_goods	2021-05-26 00:00:00+00
basel		D		bulky_goods	2021-07-21 00:00:00+00
basel		D		bulky_goods	2021-08-18 00:00:00+00
basel		D		bulky_goods	2021-11-10 00:00:00+00
basel		D		bulky_goods	2021-11-24 00:00:00+00
basel		E		bulky_goods	2021-02-10 00:00:00+00
basel		E		bulky_goods	2021-05-12 00:00:00+00
basel		E		bulky_goods	2021-08-04 00:00:00+00
basel		E		bulky_goods	2021-09-01 00:00:00+00
basel		E		bulky_goods	2021-11-24 00:00:00+00
basel		E		bulky_goods	2021-12-08 00:00:00+00
basel		F		bulky_goods	2021-01-27 00:00:00+00
basel		F		bulky_goods	2021-02-10 00:00:00+00
basel		F		bulky_goods	2021-03-17 00:00:00+00
basel		F		bulky_goods	2021-04-14 00:00:00+00
basel		F		bulky_goods	2021-07-07 00:00:00+00
basel		F		bulky_goods	2021-09-01 00:00:00+00
basel		F		bulky_goods	2021-11-24 00:00:00+00
basel		F		bulky_goods	2021-12-08 00:00:00+00
basel		F		bulky_goods	2021-12-22 00:00:00+00
basel		G		bulky_goods	2021-02-03 00:00:00+00
basel		G		bulky_goods	2021-03-17 00:00:00+00
basel		G		bulky_goods	2021-05-12 00:00:00+00
basel		G		bulky_goods	2021-06-09 00:00:00+00
basel		H		bulky_goods	2021-02-17 00:00:00+00
basel		H		bulky_goods	2021-04-14 00:00:00+00
basel		H		bulky_goods	2021-06-09 00:00:00+00
basel		H		bulky_goods	2021-09-01 00:00:00+00
basel		H		bulky_goods	2021-10-27 00:00:00+00
basel		H		bulky_goods	2021-12-15 00:00:00+00
basel		A		paper	2021-03-17 00:00:00+00
basel		A		paper	2021-06-09 00:00:00+00
basel		A		paper	2021-09-29 00:00:00+00
basel		A		paper	2021-11-24 00:00:00+00
basel		B		paper	2021-10-27 00:00:00+00
basel		B		paper	2021-11-24 00:00:00+00
basel		B		paper	2021-12-22 00:00:00+00
basel		C		paper	2021-01-06 00:00:00+00
basel		C		paper	2021-04-07 00:00:00+00
basel		D		paper	2021-04-07 00:00:00+00
basel		D		paper	2021-07-28 00:00:00+00
basel		D		paper	2021-08-25 00:00:00+00
basel		D		paper	2021-11-17 00:00:00+00
basel		E		paper	2021-01-20 00:00:00+00
basel		E		paper	2021-04-21 00:00:00+00
basel		E		paper	2021-06-16 00:00:00+00
basel		E		paper	2021-07-14 00:00:00+00
basel		E		paper	2021-08-11 00:00:00+00
basel		E		paper	2021-09-08 00:00:00+00
basel		F		paper	2021-04-21 00:00:00+00
basel		F		paper	2021-05-19 00:00:00+00
basel		F		paper	2021-08-11 00:00:00+00
basel		F		paper	2021-10-06 00:00:00+00
basel		F		paper	2021-11-03 00:00:00+00
basel		G		paper	2021-01-27 00:00:00+00
basel		H		paper	2021-04-28 00:00:00+00
basel		H		paper	2021-06-23 00:00:00+00
basel		H		paper	2021-10-13 00:00:00+00
basel		H		paper	2021-11-10 00:00:00+00
basel		H		paper	2021-12-08 00:00:00+00
basel		A		incombustibles	2021-04-19 00:00:00+00
basel		A		incombustibles	2021-09-27 00:00:00+00
basel		A		incombustibles	2021-11-15 00:00:00+00
basel		B		incombustibles	2021-06-08 00:00:00+00
basel		B		incombustibles	2021-10-19 00:00:00+00
basel		C		incombustibles	2021-01-19 00:00:00+00
basel		C		incombustibles	2021-02-12 00:00:00+00
basel		C		incombustibles	2021-07-20 00:00:00+00
basel		D		incombustibles	2021-01-04 00:00:00+00
basel		D		incombustibles	2021-06-28 00:00:00+00
basel		D		incombustibles	2021-09-20 00:00:00+00
basel		E		incombustibles	2021-01-25 00:00:00+00
basel		E		incombustibles	2021-06-14 00:00:00+00
basel		E		incombustibles	2021-10-04 00:00:00+00
basel		E		incombustibles	2021-11-08 00:00:00+00
basel		E		incombustibles	2021-12-20 00:00:00+00
basel		F		incombustibles	2021-03-19 00:00:00+00
basel		F		incombustibles	2021-04-23 00:00:00+00
basel		F		incombustibles	2021-06-25 00:00:00+00
basel		F		incombustibles	2021-10-29 00:00:00+00
basel		F		incombustibles	2021-11-12 00:00:00+00
basel		G		incombustibles	2021-02-02 00:00:00+00
basel		G		incombustibles	2021-03-16 00:00:00+00
basel		G		incombustibles	2021-07-06 00:00:00+00
basel		G		incombustibles	2021-08-10 00:00:00+00
basel		G		incombustibles	2021-10-26 00:00:00+00
basel		H		incombustibles	2021-03-25 00:00:00+00
basel		H		incombustibles	2021-06-03 00:00:00+00
basel		A		chipping_service	2021-02-15 00:00:00+00
basel		A		chipping_service	2021-04-12 00:00:00+00
basel		A		chipping_service	2021-09-06 00:00:00+00
basel		C		chipping_service	2021-09-06 00:00:00+00
basel		C		chipping_service	2021-11-22 00:00:00+00
basel		D		chipping_service	2021-09-06 00:00:00+00
basel		E		chipping_service	2021-11-24 00:00:00+00
basel		F		chipping_service	2021-06-16 00:00:00+00
basel		G		chipping_service	2021-04-13 00:00:00+00
basel		G		chipping_service	2021-06-15 00:00:00+00
basel		H		chipping_service	2021-06-15 00:00:00+00
basel		A		waste	2022-01-14 00:00:00+00
basel		A		waste	2022-01-25 00:00:00+00
basel		A		waste	2022-01-28 00:00:00+00
basel		A		waste	2022-02-18 00:00:00+00
basel		A		waste	2022-02-22 00:00:00+00
basel		A		waste	2022-02-25 00:00:00+00
basel		A		waste	2022-03-18 00:00:00+00
basel		A		waste	2022-03-22 00:00:00+00
basel		A		waste	2022-04-08 00:00:00+00
basel		A		waste	2022-04-12 00:00:00+00
basel		A		waste	2022-04-19 00:00:00+00
basel		A		waste	2022-04-26 00:00:00+00
basel		A		waste	2022-05-03 00:00:00+00
basel		A		waste	2022-05-06 00:00:00+00
basel		A		waste	2022-05-13 00:00:00+00
basel		A		waste	2022-05-31 00:00:00+00
basel		A		waste	2022-06-10 00:00:00+00
basel		A		waste	2022-06-24 00:00:00+00
basel		A		waste	2022-06-28 00:00:00+00
basel		A		waste	2022-07-12 00:00:00+00
basel		A		waste	2022-07-15 00:00:00+00
basel		A		waste	2022-08-09 00:00:00+00
basel		A		waste	2022-08-26 00:00:00+00
basel		A		waste	2022-09-06 00:00:00+00
basel		A		waste	2022-10-04 00:00:00+00
basel		A		waste	2022-11-11 00:00:00+00
basel		A		waste	2022-11-18 00:00:00+00
basel		A		waste	2022-11-22 00:00:00+00
basel		A		waste	2022-12-06 00:00:00+00
basel		A		waste	2022-12-09 00:00:00+00
basel		A		waste	2022-12-13 00:00:00+00
basel		A		waste	2022-12-16 00:00:00+00
basel		A		waste	2022-12-20 00:00:00+00
basel		A		waste	2022-12-30 00:00:00+00
basel		B		waste	2022-01-03 00:00:00+00
basel		B		waste	2022-01-06 00:00:00+00
basel		B		waste	2022-01-10 00:00:00+00
basel		B		waste	2022-02-03 00:00:00+00
basel		B		waste	2022-02-14 00:00:00+00
basel		B		waste	2022-02-28 00:00:00+00
basel		B		waste	2022-03-03 00:00:00+00
basel		B		waste	2022-03-21 00:00:00+00
basel		B		waste	2022-03-24 00:00:00+00
basel		B		waste	2022-04-11 00:00:00+00
basel		B		waste	2022-04-21 00:00:00+00
basel		B		waste	2022-05-02 00:00:00+00
basel		B		waste	2022-05-05 00:00:00+00
basel		B		waste	2022-05-19 00:00:00+00
basel		B		waste	2022-05-23 00:00:00+00
basel		B		waste	2022-06-20 00:00:00+00
basel		B		waste	2022-06-30 00:00:00+00
basel		B		waste	2022-07-11 00:00:00+00
basel		B		waste	2022-08-11 00:00:00+00
basel		B		waste	2022-08-22 00:00:00+00
basel		B		waste	2022-09-01 00:00:00+00
basel		B		waste	2022-09-05 00:00:00+00
basel		B		waste	2022-09-19 00:00:00+00
basel		B		waste	2022-09-29 00:00:00+00
basel		B		waste	2022-10-06 00:00:00+00
basel		B		waste	2022-10-13 00:00:00+00
basel		B		waste	2022-10-27 00:00:00+00
basel		B		waste	2022-10-31 00:00:00+00
basel		B		waste	2022-11-03 00:00:00+00
basel		B		waste	2022-11-07 00:00:00+00
basel		B		waste	2022-11-17 00:00:00+00
basel		B		waste	2022-11-21 00:00:00+00
basel		B		waste	2022-12-12 00:00:00+00
basel		B		waste	2022-12-19 00:00:00+00
basel		B		waste	2022-12-29 00:00:00+00
basel		C		waste	2022-01-13 00:00:00+00
basel		C		waste	2022-01-31 00:00:00+00
basel		C		waste	2022-02-17 00:00:00+00
basel		C		waste	2022-02-21 00:00:00+00
basel		C		waste	2022-03-03 00:00:00+00
basel		C		waste	2022-03-14 00:00:00+00
basel		C		waste	2022-03-17 00:00:00+00
basel		C		waste	2022-03-31 00:00:00+00
basel		C		waste	2022-04-25 00:00:00+00
basel		C		waste	2022-05-05 00:00:00+00
basel		C		waste	2022-05-12 00:00:00+00
basel		C		waste	2022-05-30 00:00:00+00
basel		C		waste	2022-06-13 00:00:00+00
basel		C		waste	2022-06-30 00:00:00+00
basel		C		waste	2022-07-04 00:00:00+00
basel		C		waste	2022-07-18 00:00:00+00
basel		C		waste	2022-08-18 00:00:00+00
basel		C		waste	2022-08-22 00:00:00+00
basel		C		waste	2022-11-03 00:00:00+00
basel		C		waste	2022-11-10 00:00:00+00
basel		C		waste	2022-11-21 00:00:00+00
basel		C		waste	2022-11-24 00:00:00+00
basel		C		waste	2022-12-12 00:00:00+00
basel		C		waste	2022-12-19 00:00:00+00
basel		D		waste	2022-01-18 00:00:00+00
basel		D		waste	2022-01-21 00:00:00+00
basel		D		waste	2022-01-25 00:00:00+00
basel		D		waste	2022-01-28 00:00:00+00
basel		D		waste	2022-02-01 00:00:00+00
basel		D		waste	2022-02-11 00:00:00+00
basel		D		waste	2022-02-15 00:00:00+00
basel		D		waste	2022-03-04 00:00:00+00
basel		D		waste	2022-03-25 00:00:00+00
basel		D		waste	2022-04-01 00:00:00+00
basel		D		waste	2022-04-05 00:00:00+00
basel		D		waste	2022-04-08 00:00:00+00
basel		D		waste	2022-04-12 00:00:00+00
basel		D		waste	2022-04-19 00:00:00+00
basel		D		waste	2022-04-26 00:00:00+00
basel		D		waste	2022-05-17 00:00:00+00
basel		D		waste	2022-05-24 00:00:00+00
basel		D		waste	2022-05-27 00:00:00+00
basel		D		waste	2022-06-03 00:00:00+00
basel		D		waste	2022-06-10 00:00:00+00
basel		D		waste	2022-06-14 00:00:00+00
basel		D		waste	2022-06-17 00:00:00+00
basel		D		waste	2022-06-28 00:00:00+00
basel		D		waste	2022-07-05 00:00:00+00
basel		D		waste	2022-07-12 00:00:00+00
basel		D		waste	2022-07-22 00:00:00+00
basel		D		waste	2022-07-26 00:00:00+00
basel		D		waste	2022-07-29 00:00:00+00
basel		D		waste	2022-08-05 00:00:00+00
basel		D		waste	2022-08-12 00:00:00+00
basel		D		waste	2022-10-14 00:00:00+00
basel		D		waste	2022-10-18 00:00:00+00
basel		D		waste	2022-10-25 00:00:00+00
basel		D		waste	2022-10-28 00:00:00+00
basel		D		waste	2022-11-04 00:00:00+00
basel		D		waste	2022-11-18 00:00:00+00
basel		D		waste	2022-11-29 00:00:00+00
basel		D		waste	2022-12-09 00:00:00+00
basel		D		waste	2022-12-13 00:00:00+00
basel		D		waste	2022-12-23 00:00:00+00
basel		E		waste	2022-01-07 00:00:00+00
basel		E		waste	2022-01-18 00:00:00+00
basel		E		waste	2022-02-01 00:00:00+00
basel		E		waste	2022-02-11 00:00:00+00
basel		E		waste	2022-02-15 00:00:00+00
basel		E		waste	2022-03-04 00:00:00+00
basel		E		waste	2022-03-08 00:00:00+00
basel		E		waste	2022-03-18 00:00:00+00
basel		E		waste	2022-04-08 00:00:00+00
basel		E		waste	2022-04-19 00:00:00+00
basel		E		waste	2022-04-29 00:00:00+00
basel		E		waste	2022-05-03 00:00:00+00
basel		E		waste	2022-06-03 00:00:00+00
basel		E		waste	2022-06-07 00:00:00+00
basel		E		waste	2022-06-14 00:00:00+00
basel		E		waste	2022-06-17 00:00:00+00
basel		E		waste	2022-06-21 00:00:00+00
basel		E		waste	2022-06-28 00:00:00+00
basel		E		waste	2022-07-29 00:00:00+00
basel		E		waste	2022-08-02 00:00:00+00
basel		E		waste	2022-08-05 00:00:00+00
basel		E		waste	2022-08-09 00:00:00+00
basel		E		waste	2022-08-16 00:00:00+00
basel		E		waste	2022-08-26 00:00:00+00
basel		E		waste	2022-09-16 00:00:00+00
basel		E		waste	2022-10-04 00:00:00+00
basel		E		waste	2022-10-14 00:00:00+00
basel		E		waste	2022-10-18 00:00:00+00
basel		E		waste	2022-10-21 00:00:00+00
basel		E		waste	2022-10-25 00:00:00+00
basel		E		waste	2022-11-01 00:00:00+00
basel		E		waste	2022-11-11 00:00:00+00
basel		E		waste	2022-12-09 00:00:00+00
basel		E		waste	2022-12-30 00:00:00+00
basel		F		waste	2022-01-06 00:00:00+00
basel		F		waste	2022-01-13 00:00:00+00
basel		F		waste	2022-01-27 00:00:00+00
basel		F		waste	2022-01-31 00:00:00+00
basel		F		waste	2022-02-07 00:00:00+00
basel		F		waste	2022-02-21 00:00:00+00
basel		F		waste	2022-02-24 00:00:00+00
basel		F		waste	2022-03-21 00:00:00+00
basel		F		waste	2022-03-28 00:00:00+00
basel		F		waste	2022-04-07 00:00:00+00
basel		F		waste	2022-04-11 00:00:00+00
basel		F		waste	2022-05-02 00:00:00+00
basel		F		waste	2022-05-16 00:00:00+00
basel		F		waste	2022-05-30 00:00:00+00
basel		F		waste	2022-06-02 00:00:00+00
basel		F		waste	2022-06-13 00:00:00+00
basel		F		waste	2022-06-23 00:00:00+00
basel		F		waste	2022-06-30 00:00:00+00
basel		F		waste	2022-07-18 00:00:00+00
basel		F		waste	2022-07-28 00:00:00+00
basel		F		waste	2022-08-15 00:00:00+00
basel		F		waste	2022-08-18 00:00:00+00
basel		F		waste	2022-08-22 00:00:00+00
basel		F		waste	2022-10-03 00:00:00+00
basel		F		waste	2022-10-06 00:00:00+00
basel		F		waste	2022-10-13 00:00:00+00
basel		F		waste	2022-10-24 00:00:00+00
basel		F		waste	2022-12-22 00:00:00+00
basel		F		waste	2022-12-29 00:00:00+00
basel		G		waste	2022-01-03 00:00:00+00
basel		G		waste	2022-02-17 00:00:00+00
basel		G		waste	2022-03-03 00:00:00+00
basel		G		waste	2022-03-10 00:00:00+00
basel		G		waste	2022-03-14 00:00:00+00
basel		G		waste	2022-04-25 00:00:00+00
basel		G		waste	2022-05-05 00:00:00+00
basel		G		waste	2022-05-09 00:00:00+00
basel		G		waste	2022-05-12 00:00:00+00
basel		G		waste	2022-06-02 00:00:00+00
basel		G		waste	2022-06-13 00:00:00+00
basel		G		waste	2022-06-23 00:00:00+00
basel		G		waste	2022-06-27 00:00:00+00
basel		G		waste	2022-07-11 00:00:00+00
basel		G		waste	2022-07-25 00:00:00+00
basel		G		waste	2022-08-04 00:00:00+00
basel		G		waste	2022-08-08 00:00:00+00
basel		G		waste	2022-08-18 00:00:00+00
basel		G		waste	2022-08-22 00:00:00+00
basel		G		waste	2022-08-25 00:00:00+00
basel		G		waste	2022-09-01 00:00:00+00
basel		G		waste	2022-09-12 00:00:00+00
basel		G		waste	2022-10-13 00:00:00+00
basel		G		waste	2022-10-24 00:00:00+00
basel		G		waste	2022-10-27 00:00:00+00
basel		G		waste	2022-11-10 00:00:00+00
basel		G		waste	2022-11-14 00:00:00+00
basel		G		waste	2022-11-17 00:00:00+00
basel		G		waste	2022-11-24 00:00:00+00
basel		G		waste	2022-11-28 00:00:00+00
basel		G		waste	2022-12-29 00:00:00+00
basel		H		waste	2022-01-04 00:00:00+00
basel		H		waste	2022-01-14 00:00:00+00
basel		H		waste	2022-01-28 00:00:00+00
basel		H		waste	2022-02-01 00:00:00+00
basel		H		waste	2022-02-18 00:00:00+00
basel		H		waste	2022-03-08 00:00:00+00
basel		H		waste	2022-03-11 00:00:00+00
basel		H		waste	2022-04-01 00:00:00+00
basel		H		waste	2022-04-05 00:00:00+00
basel		H		waste	2022-04-22 00:00:00+00
basel		H		waste	2022-04-29 00:00:00+00
basel		H		waste	2022-05-13 00:00:00+00
basel		H		waste	2022-05-17 00:00:00+00
basel		H		waste	2022-05-27 00:00:00+00
basel		H		waste	2022-06-10 00:00:00+00
basel		H		waste	2022-06-14 00:00:00+00
basel		H		waste	2022-06-17 00:00:00+00
basel		H		waste	2022-07-05 00:00:00+00
basel		H		waste	2022-07-08 00:00:00+00
basel		H		waste	2022-07-12 00:00:00+00
basel		H		waste	2022-07-19 00:00:00+00
basel		H		waste	2022-07-29 00:00:00+00
basel		H		waste	2022-09-02 00:00:00+00
basel		H		waste	2022-09-06 00:00:00+00
basel		H		waste	2022-09-16 00:00:00+00
basel		H		waste	2022-09-23 00:00:00+00
basel		H		waste	2022-09-27 00:00:00+00
basel		H		waste	2022-10-07 00:00:00+00
basel		H		waste	2022-10-14 00:00:00+00
basel		H		waste	2022-10-18 00:00:00+00
basel		H		waste	2022-10-21 00:00:00+00
basel		H		waste	2022-11-01 00:00:00+00
basel		H		waste	2022-11-04 00:00:00+00
basel		H		waste	2022-11-22 00:00:00+00
basel		H		waste	2022-11-29 00:00:00+00
basel		H		waste	2022-12-13 00:00:00+00
basel		H		waste	2022-12-20 00:00:00+00
basel		H		waste	2022-12-27 00:00:00+00
basel		A		organic	2022-01-06 00:00:00+00
basel		A		organic	2022-01-20 00:00:00+00
basel		A		organic	2022-03-17 00:00:00+00
basel		A		organic	2022-04-14 00:00:00+00
basel		A		organic	2022-04-21 00:00:00+00
basel		A		organic	2022-05-05 00:00:00+00
basel		A		organic	2022-05-12 00:00:00+00
basel		A		organic	2022-06-09 00:00:00+00
basel		A		organic	2022-06-23 00:00:00+00
basel		A		organic	2022-06-30 00:00:00+00
basel		A		organic	2022-07-07 00:00:00+00
basel		A		organic	2022-07-21 00:00:00+00
basel		A		organic	2022-08-11 00:00:00+00
basel		A		organic	2022-08-18 00:00:00+00
basel		A		organic	2022-09-01 00:00:00+00
basel		A		organic	2022-09-22 00:00:00+00
basel		A		organic	2022-09-29 00:00:00+00
basel		A		organic	2022-10-27 00:00:00+00
basel		A		organic	2022-12-08 00:00:00+00
basel		A		organic	2022-12-22 00:00:00+00
basel		B		organic	2022-02-03 00:00:00+00
basel		B		organic	2022-03-03 00:00:00+00
basel		B		organic	2022-03-10 00:00:00+00
basel		B		organic	2022-04-14 00:00:00+00
basel		B		organic	2022-05-19 00:00:00+00
basel		B		organic	2022-06-02 00:00:00+00
basel		B		organic	2022-07-14 00:00:00+00
basel		B		organic	2022-08-04 00:00:00+00
basel		B		organic	2022-08-11 00:00:00+00
basel		B		organic	2022-08-25 00:00:00+00
basel		B		organic	2022-09-08 00:00:00+00
basel		B		organic	2022-09-22 00:00:00+00
basel		B		organic	2022-11-17 00:00:00+00
basel		B		organic	2022-12-22 00:00:00+00
basel		C		organic	2022-01-07 00:00:00+00
basel		C		organic	2022-03-11 00:00:00+00
basel		C		organic	2022-03-25 00:00:00+00
basel		C		organic	2022-04-01 00:00:00+00
basel		C		organic	2022-04-08 00:00:00+00
basel		C		organic	2022-04-22 00:00:00+00
basel		C		organic	2022-04-29 00:00:00+00
basel		C		organic	2022-05-20 00:00:00+00
basel		C		organic	2022-06-10 00:00:00+00
basel		C		organic	2022-07-08 00:00:00+00
basel		C		organic	2022-08-05 00:00:00+00
basel		C		organic	2022-08-12 00:00:00+00
basel		C		organic	2022-09-16 00:00:00+00
basel		C		organic	2022-09-23 00:00:00+00
basel		C		organic	2022-10-28 00:00:00+00
basel		C		organic	2022-12-09 00:00:00+00
basel		D		organic	2022-02-03 00:00:00+00
basel		D		organic	2022-03-10 00:00:00+00
basel		D		organic	2022-03-17 00:00:00+00
basel		D		organic	2022-03-24 00:00:00+00
basel		D		organic	2022-04-21 00:00:00+00
basel		D		organic	2022-04-28 00:00:00+00
basel		D		organic	2022-05-12 00:00:00+00
basel		D		organic	2022-06-02 00:00:00+00
basel		D		organic	2022-07-14 00:00:00+00
basel		D		organic	2022-07-28 00:00:00+00
basel		D		organic	2022-08-04 00:00:00+00
basel		D		organic	2022-08-11 00:00:00+00
basel		D		organic	2022-08-25 00:00:00+00
basel		D		organic	2022-09-15 00:00:00+00
basel		D		organic	2022-09-22 00:00:00+00
basel		D		organic	2022-09-29 00:00:00+00
basel		D		organic	2022-10-06 00:00:00+00
basel		D		organic	2022-11-03 00:00:00+00
basel		D		organic	2022-12-08 00:00:00+00
basel		D		organic	2022-12-22 00:00:00+00
basel		E		organic	2022-03-10 00:00:00+00
basel		E		organic	2022-04-14 00:00:00+00
basel		E		organic	2022-04-21 00:00:00+00
basel		E		organic	2022-05-12 00:00:00+00
basel		E		organic	2022-06-02 00:00:00+00
basel		E		organic	2022-06-09 00:00:00+00
basel		E		organic	2022-07-07 00:00:00+00
basel		E		organic	2022-08-18 00:00:00+00
basel		E		organic	2022-09-08 00:00:00+00
basel		E		organic	2022-10-13 00:00:00+00
basel		E		organic	2022-11-24 00:00:00+00
basel		E		organic	2022-12-22 00:00:00+00
basel		F		organic	2022-01-04 00:00:00+00
basel		F		organic	2022-01-18 00:00:00+00
basel		F		organic	2022-02-01 00:00:00+00
basel		F		organic	2022-03-08 00:00:00+00
basel		F		organic	2022-03-22 00:00:00+00
basel		F		organic	2022-04-12 00:00:00+00
basel		F		organic	2022-05-10 00:00:00+00
basel		F		organic	2022-06-28 00:00:00+00
basel		F		organic	2022-08-16 00:00:00+00
basel		F		organic	2022-09-13 00:00:00+00
basel		F		organic	2022-11-01 00:00:00+00
basel		F		organic	2022-11-15 00:00:00+00
basel		F		organic	2022-12-06 00:00:00+00
basel		G		organic	2022-01-21 00:00:00+00
basel		G		organic	2022-03-04 00:00:00+00
basel		G		organic	2022-05-27 00:00:00+00
basel		G		organic	2022-07-29 00:00:00+00
basel		G		organic	2022-09-23 00:00:00+00
basel		G		organic	2022-10-21 00:00:00+00
basel		G		organic	2022-11-04 00:00:00+00
basel		G		organic	2022-11-11 00:00:00+00
basel		G		organic	2022-12-09 00:00:00+00
basel		H		organic	2022-01-17 00:00:00+00
basel		H		organic	2022-02-14 00:00:00+00
basel		H		organic	2022-02-28 00:00:00+00
basel		H		organic	2022-03-07 00:00:00+00
basel		H		organic	2022-03-21 00:00:00+00
basel		H		organic	2022-04-04 00:00:00+00
basel		H		organic	2022-04-11 00:00:00+00
basel		H		organic	2022-04-25 00:00:00+00
basel		H		organic	2022-05-09 00:00:00+00
basel		H		organic	2022-05-23 00:00:00+00
basel		H		organic	2022-05-30 00:00:00+00
basel		H		organic	2022-06-20 00:00:00+00
basel		H		organic	2022-06-27 00:00:00+00
basel		H		organic	2022-08-15 00:00:00+00
basel		H		organic	2022-08-22 00:00:00+00
basel		H		organic	2022-09-05 00:00:00+00
basel		H		organic	2022-09-26 00:00:00+00
basel		H		organic	2022-10-03 00:00:00+00
basel		H		organic	2022-11-07 00:00:00+00
basel		H		organic	2022-11-21 00:00:00+00
basel		H		organic	2022-12-05 00:00:00+00
basel		H		organic	2022-12-19 00:00:00+00
basel		H		metal	2022-02-21 00:00:00+00
basel		C		metal	2022-04-06 00:00:00+00
basel		D		metal	2022-06-01 00:00:00+00
basel		B		metal	2022-08-24 00:00:00+00
basel		C		metal	2022-11-16 00:00:00+00
basel		H		metal	2022-11-28 00:00:00+00
basel		D		metal	2022-12-01 00:00:00+00
basel		C		metal	2022-12-13 00:00:00+00
basel		B		metal	2022-12-27 00:00:00+00
basel		A		bulky_goods	2022-01-26 00:00:00+00
basel		A		bulky_goods	2022-02-09 00:00:00+00
basel		A		bulky_goods	2022-02-23 00:00:00+00
basel		A		bulky_goods	2022-03-02 00:00:00+00
basel		A		bulky_goods	2022-05-25 00:00:00+00
basel		A		bulky_goods	2022-06-22 00:00:00+00
basel		A		bulky_goods	2022-08-17 00:00:00+00
basel		B		bulky_goods	2022-02-09 00:00:00+00
basel		B		bulky_goods	2022-03-02 00:00:00+00
basel		B		bulky_goods	2022-05-25 00:00:00+00
basel		B		bulky_goods	2022-06-22 00:00:00+00
basel		B		bulky_goods	2022-07-20 00:00:00+00
basel		B		bulky_goods	2022-09-14 00:00:00+00
basel		B		bulky_goods	2022-11-09 00:00:00+00
basel		B		bulky_goods	2022-12-07 00:00:00+00
basel		C		bulky_goods	2022-01-05 00:00:00+00
basel		C		bulky_goods	2022-06-22 00:00:00+00
basel		C		bulky_goods	2022-11-30 00:00:00+00
basel		C		bulky_goods	2022-12-28 00:00:00+00
basel		D		bulky_goods	2022-01-05 00:00:00+00
basel		D		bulky_goods	2022-03-30 00:00:00+00
basel		D		bulky_goods	2022-11-09 00:00:00+00
basel		D		bulky_goods	2022-11-30 00:00:00+00
basel		D		bulky_goods	2022-12-14 00:00:00+00
basel		E		bulky_goods	2022-04-13 00:00:00+00
basel		E		bulky_goods	2022-05-11 00:00:00+00
basel		E		bulky_goods	2022-07-06 00:00:00+00
basel		E		bulky_goods	2022-08-03 00:00:00+00
basel		E		bulky_goods	2022-10-26 00:00:00+00
basel		E		bulky_goods	2022-11-30 00:00:00+00
basel		F		bulky_goods	2022-01-05 00:00:00+00
basel		F		bulky_goods	2022-02-02 00:00:00+00
basel		F		bulky_goods	2022-07-06 00:00:00+00
basel		F		bulky_goods	2022-08-31 00:00:00+00
basel		F		bulky_goods	2022-09-28 00:00:00+00
basel		G		bulky_goods	2022-02-09 00:00:00+00
basel		G		bulky_goods	2022-07-06 00:00:00+00
basel		G		bulky_goods	2022-11-23 00:00:00+00
basel		G		bulky_goods	2022-12-07 00:00:00+00
basel		H		bulky_goods	2022-01-12 00:00:00+00
basel		H		bulky_goods	2022-02-09 00:00:00+00
basel		H		bulky_goods	2022-03-16 00:00:00+00
basel		H		bulky_goods	2022-07-06 00:00:00+00
basel		H		bulky_goods	2022-10-26 00:00:00+00
basel		H		bulky_goods	2022-12-07 00:00:00+00
basel		H		bulky_goods	2022-12-21 00:00:00+00
basel		A		paper	2022-02-16 00:00:00+00
basel		A		paper	2022-07-13 00:00:00+00
basel		B		paper	2022-02-16 00:00:00+00
basel		B		paper	2022-04-20 00:00:00+00
basel		C		paper	2022-02-09 00:00:00+00
basel		C		paper	2022-08-31 00:00:00+00
basel		C		paper	2022-12-21 00:00:00+00
basel		D		paper	2022-05-11 00:00:00+00
basel		D		paper	2022-10-26 00:00:00+00
basel		D		paper	2022-11-23 00:00:00+00
basel		E		paper	2022-03-30 00:00:00+00
basel		E		paper	2022-07-20 00:00:00+00
basel		E		paper	2022-09-14 00:00:00+00
basel		E		paper	2022-11-09 00:00:00+00
basel		E		paper	2022-12-07 00:00:00+00
basel		F		paper	2022-03-30 00:00:00+00
basel		F		paper	2022-04-27 00:00:00+00
basel		F		paper	2022-08-17 00:00:00+00
basel		F		paper	2022-11-09 00:00:00+00
basel		G		paper	2022-05-04 00:00:00+00
basel		G		paper	2022-06-29 00:00:00+00
basel		G		paper	2022-09-21 00:00:00+00
basel		G		paper	2022-10-19 00:00:00+00
basel		H		paper	2022-01-05 00:00:00+00
basel		H		paper	2022-05-04 00:00:00+00
basel		H		paper	2022-06-01 00:00:00+00
basel		H		paper	2022-09-21 00:00:00+00
basel		H		paper	2022-10-19 00:00:00+00
basel		A		incombustibles	2022-01-05 00:00:00+00
basel		A		incombustibles	2022-03-16 00:00:00+00
basel		A		incombustibles	2022-04-13 00:00:00+00
basel		A		incombustibles	2022-06-08 00:00:00+00
basel		A		incombustibles	2022-07-06 00:00:00+00
basel		A		incombustibles	2022-08-03 00:00:00+00
basel		A		incombustibles	2022-10-26 00:00:00+00
basel		B		incombustibles	2022-02-02 00:00:00+00
basel		B		incombustibles	2022-03-16 00:00:00+00
basel		B		incombustibles	2022-05-11 00:00:00+00
basel		B		incombustibles	2022-07-06 00:00:00+00
basel		B		incombustibles	2022-08-31 00:00:00+00
basel		B		incombustibles	2022-11-23 00:00:00+00
basel		C		incombustibles	2022-07-13 00:00:00+00
basel		C		incombustibles	2022-12-07 00:00:00+00
basel		D		incombustibles	2022-03-23 00:00:00+00
basel		D		incombustibles	2022-07-13 00:00:00+00
basel		D		incombustibles	2022-08-10 00:00:00+00
basel		D		incombustibles	2022-12-07 00:00:00+00
basel		E		incombustibles	2022-03-09 00:00:00+00
basel		E		incombustibles	2022-05-04 00:00:00+00
basel		E		incombustibles	2022-08-24 00:00:00+00
basel		E		incombustibles	2022-10-19 00:00:00+00
basel		E		incombustibles	2022-12-21 00:00:00+00
basel		F		incombustibles	2022-05-04 00:00:00+00
basel		F		incombustibles	2022-10-19 00:00:00+00
basel		F		incombustibles	2022-11-16 00:00:00+00
basel		G		incombustibles	2022-01-19 00:00:00+00
basel		G		incombustibles	2022-02-16 00:00:00+00
basel		G		incombustibles	2022-05-25 00:00:00+00
basel		G		incombustibles	2022-06-22 00:00:00+00
basel		G		incombustibles	2022-07-20 00:00:00+00
basel		H		incombustibles	2022-04-27 00:00:00+00
basel		H		incombustibles	2022-09-14 00:00:00+00
basel		H		incombustibles	2022-10-12 00:00:00+00
basel		H		incombustibles	2022-11-09 00:00:00+00
basel		H		incombustibles	2022-11-30 00:00:00+00
basel		H		incombustibles	2022-12-28 00:00:00+00
basel		B		chipping_service	2022-02-21 00:00:00+00
basel		B		chipping_service	2022-04-11 00:00:00+00
basel		C		chipping_service	2022-11-21 00:00:00+00
basel		D		chipping_service	2022-09-05 00:00:00+00
basel		D		chipping_service	2022-11-21 00:00:00+00
basel		E		chipping_service	2022-02-23 00:00:00+00
basel		F		chipping_service	2022-11-23 00:00:00+00
basel		G		chipping_service	2022-02-22 00:00:00+00
basel		G		chipping_service	2022-04-12 00:00:00+00
basel		G		chipping_service	2022-09-06 00:00:00+00
basel		H		chipping_service	2022-02-22 00:00:00+00
basel		H		chipping_service	2022-09-06 00:00:00+00
basel		H		chipping_service	2022-11-22 00:00:00+00
basel		A		metal	2023-05-29 00:00:00+00
basel		B		organic	2023-05-18 00:00:00+00
basel		B		waste	2023-04-10 00:00:00+00
basel		B		waste	2023-05-01 00:00:00+00
basel		B		waste	2023-05-18 00:00:00+00
basel		C		organic	2023-04-07 00:00:00+00
basel		C		waste	2023-04-10 00:00:00+00
basel		C		waste	2023-05-18 00:00:00+00
basel		C		waste	2023-05-29 00:00:00+00
basel		D		organic	2023-05-18 00:00:00+00
basel		D		waste	2023-08-01 00:00:00+00
basel		D		metal	2023-05-18 00:00:00+00
basel		E		waste	2023-04-07 00:00:00+00
basel		E		waste	2023-08-01 00:00:00+00
basel		E		waste	2023-12-26 00:00:00+00
basel		F		organic	2023-12-26 00:00:00+00
basel		F		waste	2023-04-10 00:00:00+00
basel		F		waste	2023-05-01 00:00:00+00
basel		F		waste	2023-12-25 00:00:00+00
basel		G		waste	2023-04-10 00:00:00+00
basel		G		waste	2023-05-18 00:00:00+00
basel		G		waste	2023-12-25 00:00:00+00
basel		H		waste	2023-08-01 00:00:00+00
basel		A		bulky_goods	2023-01-18 00:00:00+00
basel		H		bulky_goods	2023-01-18 00:00:00+00
basel		G		bulky_goods	2023-02-01 00:00:00+00
basel		D		bulky_goods	2023-02-08 00:00:00+00
basel		B		bulky_goods	2023-02-15 00:00:00+00
basel		C		bulky_goods	2023-02-22 00:00:00+00
basel		D		bulky_goods	2023-02-22 00:00:00+00
basel		H		bulky_goods	2023-03-01 00:00:00+00
basel		D		bulky_goods	2023-03-15 00:00:00+00
basel		E		bulky_goods	2023-03-29 00:00:00+00
basel		A		bulky_goods	2023-04-12 00:00:00+00
basel		C		bulky_goods	2023-04-12 00:00:00+00
basel		E		bulky_goods	2023-04-26 00:00:00+00
basel		G		bulky_goods	2023-04-26 00:00:00+00
basel		H		bulky_goods	2023-04-26 00:00:00+00
basel		B		bulky_goods	2023-05-10 00:00:00+00
basel		C		bulky_goods	2023-05-10 00:00:00+00
basel		D		bulky_goods	2023-05-10 00:00:00+00
basel		H		bulky_goods	2023-05-24 00:00:00+00
basel		E		bulky_goods	2023-06-21 00:00:00+00
basel		F		bulky_goods	2023-06-21 00:00:00+00
basel		E		bulky_goods	2023-07-19 00:00:00+00
basel		G		bulky_goods	2023-07-19 00:00:00+00
basel		D		bulky_goods	2023-08-02 00:00:00+00
basel		H		bulky_goods	2023-08-16 00:00:00+00
basel		F		bulky_goods	2023-09-13 00:00:00+00
basel		A		bulky_goods	2023-09-27 00:00:00+00
basel		C		bulky_goods	2023-09-27 00:00:00+00
basel		E		bulky_goods	2023-10-11 00:00:00+00
basel		C		bulky_goods	2023-10-25 00:00:00+00
basel		F		bulky_goods	2023-11-08 00:00:00+00
basel		D		bulky_goods	2023-12-06 00:00:00+00
basel		C		bulky_goods	2023-12-20 00:00:00+00
basel		A		bulky_goods	2023-12-27 00:00:00+00
basel		B		bulky_goods	2023-01-04 00:00:00+00
basel		C		bulky_goods	2023-01-11 00:00:00+00
basel		D		bulky_goods	2023-01-11 00:00:00+00
basel		A		bulky_goods	2023-12-13 00:00:00+00
basel		G		bulky_goods	2023-12-13 00:00:00+00
basel		F		organic	2023-01-31 00:00:00+00
basel		F		organic	2023-02-28 00:00:00+00
basel		F		organic	2023-03-21 00:00:00+00
basel		F		organic	2023-04-25 00:00:00+00
basel		F		organic	2023-05-02 00:00:00+00
basel		F		organic	2023-05-16 00:00:00+00
basel		F		organic	2023-05-23 00:00:00+00
basel		F		organic	2023-06-27 00:00:00+00
basel		F		organic	2023-07-18 00:00:00+00
basel		F		organic	2023-09-12 00:00:00+00
basel		F		organic	2023-09-26 00:00:00+00
basel		F		organic	2023-10-03 00:00:00+00
basel		F		organic	2023-11-07 00:00:00+00
basel		F		organic	2023-11-28 00:00:00+00
basel		F		organic	2023-05-30 00:00:00+00
basel		D		organic	2023-01-05 00:00:00+00
basel		A		organic	2023-01-19 00:00:00+00
basel		B		organic	2023-01-19 00:00:00+00
basel		D		organic	2023-01-19 00:00:00+00
basel		E		organic	2023-03-02 00:00:00+00
basel		D		organic	2023-03-09 00:00:00+00
basel		E		organic	2023-03-09 00:00:00+00
basel		D		organic	2023-03-23 00:00:00+00
basel		E		organic	2023-04-13 00:00:00+00
basel		B		organic	2023-04-20 00:00:00+00
basel		D		organic	2023-04-20 00:00:00+00
basel		E		organic	2023-04-20 00:00:00+00
basel		B		organic	2023-04-27 00:00:00+00
basel		D		organic	2023-04-27 00:00:00+00
basel		B		organic	2023-05-04 00:00:00+00
basel		E		organic	2023-05-04 00:00:00+00
basel		E		organic	2023-05-11 00:00:00+00
basel		D		organic	2023-06-01 00:00:00+00
basel		B		organic	2023-06-15 00:00:00+00
basel		A		organic	2023-06-22 00:00:00+00
basel		B		organic	2023-06-29 00:00:00+00
basel		E		organic	2023-06-29 00:00:00+00
basel		E		organic	2023-07-06 00:00:00+00
basel		A		organic	2023-07-13 00:00:00+00
basel		B		organic	2023-07-20 00:00:00+00
basel		E		organic	2023-07-20 00:00:00+00
basel		B		organic	2023-07-27 00:00:00+00
basel		B		organic	2023-08-03 00:00:00+00
basel		D		organic	2023-08-03 00:00:00+00
basel		E		organic	2023-08-17 00:00:00+00
basel		B		organic	2023-08-24 00:00:00+00
basel		E		organic	2023-08-24 00:00:00+00
basel		A		organic	2023-09-07 00:00:00+00
basel		A		organic	2023-09-14 00:00:00+00
basel		B		organic	2023-09-14 00:00:00+00
basel		E		organic	2023-09-14 00:00:00+00
basel		A		organic	2023-09-21 00:00:00+00
basel		A		organic	2023-09-28 00:00:00+00
basel		D		organic	2023-09-28 00:00:00+00
basel		D		organic	2023-10-12 00:00:00+00
basel		D		organic	2023-10-19 00:00:00+00
basel		A		organic	2023-10-26 00:00:00+00
basel		D		organic	2023-10-26 00:00:00+00
basel		A		organic	2023-11-02 00:00:00+00
basel		B		organic	2023-11-02 00:00:00+00
basel		D		organic	2023-11-09 00:00:00+00
basel		E		organic	2023-11-09 00:00:00+00
basel		B		organic	2023-11-16 00:00:00+00
basel		E		organic	2023-11-16 00:00:00+00
basel		A		organic	2023-11-23 00:00:00+00
basel		A		organic	2023-11-30 00:00:00+00
basel		B		organic	2023-11-30 00:00:00+00
basel		D		organic	2023-11-30 00:00:00+00
basel		D		organic	2023-12-14 00:00:00+00
basel		B		organic	2023-12-28 00:00:00+00
basel		G		organic	2023-01-20 00:00:00+00
basel		G		organic	2023-02-17 00:00:00+00
basel		G		organic	2023-03-10 00:00:00+00
basel		C		organic	2023-04-21 00:00:00+00
basel		G		organic	2023-04-21 00:00:00+00
basel		G		organic	2023-04-28 00:00:00+00
basel		C		organic	2023-05-05 00:00:00+00
basel		G		organic	2023-05-05 00:00:00+00
basel		G		organic	2023-05-12 00:00:00+00
basel		C		organic	2023-05-19 00:00:00+00
basel		G		organic	2023-05-19 00:00:00+00
basel		C		organic	2023-06-02 00:00:00+00
basel		G		organic	2023-06-02 00:00:00+00
basel		G		organic	2023-06-23 00:00:00+00
basel		C		organic	2023-06-30 00:00:00+00
basel		G		organic	2023-07-21 00:00:00+00
basel		C		organic	2023-08-04 00:00:00+00
basel		C		organic	2023-08-11 00:00:00+00
basel		C		organic	2023-08-25 00:00:00+00
basel		G		organic	2023-08-25 00:00:00+00
basel		C		organic	2023-09-01 00:00:00+00
basel		C		organic	2023-09-15 00:00:00+00
basel		G		organic	2023-09-22 00:00:00+00
basel		C		organic	2023-09-29 00:00:00+00
basel		G		organic	2023-09-29 00:00:00+00
basel		C		organic	2023-10-13 00:00:00+00
basel		C		organic	2023-10-20 00:00:00+00
basel		C		organic	2023-10-27 00:00:00+00
basel		H		organic	2023-01-02 00:00:00+00
basel		H		organic	2023-02-27 00:00:00+00
basel		H		organic	2023-03-13 00:00:00+00
basel		H		organic	2023-03-20 00:00:00+00
basel		H		organic	2023-04-03 00:00:00+00
basel		H		organic	2023-06-05 00:00:00+00
basel		H		organic	2023-06-19 00:00:00+00
basel		H		organic	2023-07-03 00:00:00+00
basel		H		organic	2023-07-17 00:00:00+00
basel		H		organic	2023-08-07 00:00:00+00
basel		H		organic	2023-08-21 00:00:00+00
basel		H		organic	2023-10-09 00:00:00+00
basel		H		organic	2023-10-16 00:00:00+00
basel		H		organic	2023-11-06 00:00:00+00
basel		H		organic	2023-11-13 00:00:00+00
basel		H		organic	2023-11-27 00:00:00+00
basel		H		organic	2023-12-11 00:00:00+00
basel		H		chipping_service	2023-02-21 00:00:00+00
basel		G		chipping_service	2023-06-20 00:00:00+00
basel		H		chipping_service	2023-06-20 00:00:00+00
basel		H		chipping_service	2023-11-28 00:00:00+00
basel		E		chipping_service	2023-09-13 00:00:00+00
basel		F		chipping_service	2023-09-13 00:00:00+00
basel		E		chipping_service	2023-11-29 00:00:00+00
basel		F		chipping_service	2023-11-29 00:00:00+00
basel		B		chipping_service	2023-02-20 00:00:00+00
basel		C		chipping_service	2023-02-20 00:00:00+00
basel		D		chipping_service	2023-02-20 00:00:00+00
basel		B		chipping_service	2023-04-17 00:00:00+00
basel		C		chipping_service	2023-06-19 00:00:00+00
basel		B		chipping_service	2023-09-11 00:00:00+00
basel		C		chipping_service	2023-09-11 00:00:00+00
basel		D		chipping_service	2023-09-11 00:00:00+00
basel		D		waste	2023-01-31 00:00:00+00
basel		H		waste	2023-01-31 00:00:00+00
basel		A		waste	2023-02-07 00:00:00+00
basel		D		waste	2023-02-14 00:00:00+00
basel		E		waste	2023-02-14 00:00:00+00
basel		D		waste	2023-02-21 00:00:00+00
basel		E		waste	2023-02-21 00:00:00+00
basel		A		waste	2023-03-14 00:00:00+00
basel		A		waste	2023-03-21 00:00:00+00
basel		H		waste	2023-03-28 00:00:00+00
basel		H		waste	2023-04-04 00:00:00+00
basel		A		waste	2023-04-11 00:00:00+00
basel		E		waste	2023-04-11 00:00:00+00
basel		A		waste	2023-04-18 00:00:00+00
basel		E		waste	2023-04-18 00:00:00+00
basel		H		waste	2023-04-18 00:00:00+00
basel		A		waste	2023-04-25 00:00:00+00
basel		E		waste	2023-05-02 00:00:00+00
basel		H		waste	2023-05-02 00:00:00+00
basel		A		waste	2023-05-09 00:00:00+00
basel		A		waste	2023-05-16 00:00:00+00
basel		E		waste	2023-05-16 00:00:00+00
basel		E		waste	2023-05-23 00:00:00+00
basel		D		waste	2023-06-27 00:00:00+00
basel		D		waste	2023-07-04 00:00:00+00
basel		E		waste	2023-07-04 00:00:00+00
basel		D		waste	2023-07-11 00:00:00+00
basel		D		waste	2023-07-18 00:00:00+00
basel		H		waste	2023-07-18 00:00:00+00
basel		D		waste	2023-07-25 00:00:00+00
basel		H		waste	2023-07-25 00:00:00+00
basel		A		waste	2023-08-08 00:00:00+00
basel		H		waste	2023-08-08 00:00:00+00
basel		E		waste	2023-08-15 00:00:00+00
basel		A		waste	2023-08-22 00:00:00+00
basel		H		waste	2023-08-22 00:00:00+00
basel		A		waste	2023-09-05 00:00:00+00
basel		A		waste	2023-09-19 00:00:00+00
basel		D		waste	2023-09-19 00:00:00+00
basel		H		waste	2023-09-19 00:00:00+00
basel		H		waste	2023-09-26 00:00:00+00
basel		A		waste	2023-10-24 00:00:00+00
basel		E		waste	2023-10-24 00:00:00+00
basel		A		waste	2023-10-31 00:00:00+00
basel		D		waste	2023-10-31 00:00:00+00
basel		A		waste	2023-11-07 00:00:00+00
basel		H		waste	2023-11-07 00:00:00+00
basel		H		waste	2023-11-21 00:00:00+00
basel		A		waste	2023-12-05 00:00:00+00
basel		A		waste	2023-12-12 00:00:00+00
basel		E		waste	2023-12-12 00:00:00+00
basel		D		waste	2023-12-19 00:00:00+00
basel		E		waste	2023-01-03 00:00:00+00
basel		H		waste	2023-01-03 00:00:00+00
basel		D		waste	2023-01-10 00:00:00+00
basel		E		waste	2023-01-10 00:00:00+00
basel		A		waste	2023-05-30 00:00:00+00
basel		D		waste	2023-05-30 00:00:00+00
basel		H		waste	2023-06-06 00:00:00+00
basel		C		waste	2023-01-05 00:00:00+00
basel		G		waste	2023-01-12 00:00:00+00
basel		F		waste	2023-01-19 00:00:00+00
basel		G		waste	2023-01-19 00:00:00+00
basel		F		waste	2023-01-26 00:00:00+00
basel		B		waste	2023-02-09 00:00:00+00
basel		C		waste	2023-02-09 00:00:00+00
basel		G		waste	2023-02-16 00:00:00+00
basel		B		waste	2023-02-23 00:00:00+00
basel		C		waste	2023-02-23 00:00:00+00
basel		F		waste	2023-02-23 00:00:00+00
basel		B		waste	2023-03-02 00:00:00+00
basel		B		waste	2023-03-09 00:00:00+00
basel		C		waste	2023-03-09 00:00:00+00
basel		C		waste	2023-03-16 00:00:00+00
basel		B		waste	2023-03-30 00:00:00+00
basel		C		waste	2023-03-30 00:00:00+00
basel		F		waste	2023-03-30 00:00:00+00
basel		G		waste	2023-03-30 00:00:00+00
basel		G		waste	2023-04-06 00:00:00+00
basel		G		waste	2023-04-13 00:00:00+00
basel		C		waste	2023-05-04 00:00:00+00
basel		F		waste	2023-05-11 00:00:00+00
basel		C		waste	2023-05-25 00:00:00+00
basel		G		waste	2023-05-25 00:00:00+00
basel		B		waste	2023-06-08 00:00:00+00
basel		C		waste	2023-06-08 00:00:00+00
basel		B		waste	2023-06-15 00:00:00+00
basel		C		waste	2023-06-15 00:00:00+00
basel		G		waste	2023-06-15 00:00:00+00
basel		G		waste	2023-06-22 00:00:00+00
basel		C		waste	2023-06-29 00:00:00+00
basel		G		waste	2023-06-29 00:00:00+00
basel		G		waste	2023-07-06 00:00:00+00
basel		F		waste	2023-07-20 00:00:00+00
basel		G		waste	2023-07-20 00:00:00+00
basel		C		waste	2023-07-27 00:00:00+00
basel		F		waste	2023-07-27 00:00:00+00
basel		C		waste	2023-08-03 00:00:00+00
basel		C		waste	2023-08-10 00:00:00+00
basel		B		waste	2023-08-17 00:00:00+00
basel		G		waste	2023-08-17 00:00:00+00
basel		C		waste	2023-08-24 00:00:00+00
basel		F		waste	2023-08-24 00:00:00+00
basel		G		waste	2023-08-24 00:00:00+00
basel		C		waste	2023-08-31 00:00:00+00
basel		G		waste	2023-08-31 00:00:00+00
basel		B		waste	2023-09-07 00:00:00+00
basel		C		waste	2023-09-07 00:00:00+00
basel		C		waste	2023-09-21 00:00:00+00
basel		F		waste	2023-09-21 00:00:00+00
basel		G		waste	2023-09-21 00:00:00+00
basel		G		waste	2023-09-28 00:00:00+00
basel		C		waste	2023-10-05 00:00:00+00
basel		G		waste	2023-10-05 00:00:00+00
basel		B		waste	2023-10-12 00:00:00+00
basel		G		waste	2023-10-19 00:00:00+00
basel		B		waste	2023-10-26 00:00:00+00
basel		G		waste	2023-11-02 00:00:00+00
basel		B		waste	2023-11-09 00:00:00+00
basel		C		waste	2023-11-09 00:00:00+00
basel		G		waste	2023-11-16 00:00:00+00
basel		B		waste	2023-11-23 00:00:00+00
basel		C		waste	2023-11-23 00:00:00+00
basel		G		waste	2023-11-23 00:00:00+00
basel		B		waste	2023-12-07 00:00:00+00
basel		C		waste	2023-12-07 00:00:00+00
basel		G		waste	2023-12-07 00:00:00+00
basel		C		waste	2023-12-21 00:00:00+00
basel		F		waste	2023-12-21 00:00:00+00
basel		B		waste	2023-12-28 00:00:00+00
basel		E		waste	2023-01-06 00:00:00+00
basel		D		waste	2023-01-13 00:00:00+00
basel		E		waste	2023-01-13 00:00:00+00
basel		D		waste	2023-01-20 00:00:00+00
basel		E		waste	2023-01-20 00:00:00+00
basel		H		waste	2023-01-20 00:00:00+00
basel		E		waste	2023-01-27 00:00:00+00
basel		A		waste	2023-02-10 00:00:00+00
basel		H		waste	2023-02-10 00:00:00+00
basel		A		waste	2023-02-17 00:00:00+00
basel		D		waste	2023-02-17 00:00:00+00
basel		E		waste	2023-02-24 00:00:00+00
basel		D		waste	2023-03-03 00:00:00+00
basel		H		waste	2023-03-03 00:00:00+00
basel		A		waste	2023-03-17 00:00:00+00
basel		H		waste	2023-03-17 00:00:00+00
basel		E		waste	2023-03-24 00:00:00+00
basel		A		waste	2023-03-31 00:00:00+00
basel		D		waste	2023-03-31 00:00:00+00
basel		H		waste	2023-03-31 00:00:00+00
basel		A		waste	2023-04-14 00:00:00+00
basel		H		waste	2023-04-14 00:00:00+00
basel		E		waste	2023-04-21 00:00:00+00
basel		E		waste	2023-04-28 00:00:00+00
basel		H		waste	2023-04-28 00:00:00+00
basel		E		waste	2023-05-05 00:00:00+00
basel		H		waste	2023-05-19 00:00:00+00
basel		D		waste	2023-05-26 00:00:00+00
basel		E		waste	2023-06-02 00:00:00+00
basel		H		waste	2023-06-02 00:00:00+00
basel		A		waste	2023-06-16 00:00:00+00
basel		E		waste	2023-06-16 00:00:00+00
basel		A		waste	2023-07-07 00:00:00+00
basel		E		waste	2023-07-21 00:00:00+00
basel		D		waste	2023-07-28 00:00:00+00
basel		E		waste	2023-07-28 00:00:00+00
basel		E		waste	2023-08-04 00:00:00+00
basel		A		waste	2023-08-11 00:00:00+00
basel		H		waste	2023-08-11 00:00:00+00
basel		A		waste	2023-08-25 00:00:00+00
basel		E		waste	2023-08-25 00:00:00+00
basel		E		waste	2023-09-01 00:00:00+00
basel		A		waste	2023-09-08 00:00:00+00
basel		E		waste	2023-09-08 00:00:00+00
basel		E		waste	2023-09-29 00:00:00+00
basel		A		waste	2023-10-06 00:00:00+00
basel		D		waste	2023-10-06 00:00:00+00
basel		D		waste	2023-10-13 00:00:00+00
basel		E		waste	2023-10-13 00:00:00+00
basel		A		waste	2023-10-20 00:00:00+00
basel		E		waste	2023-10-20 00:00:00+00
basel		D		waste	2023-10-27 00:00:00+00
basel		D		waste	2023-11-10 00:00:00+00
basel		H		waste	2023-11-10 00:00:00+00
basel		A		waste	2023-11-17 00:00:00+00
basel		H		waste	2023-11-17 00:00:00+00
basel		E		waste	2023-11-24 00:00:00+00
basel		D		waste	2023-12-01 00:00:00+00
basel		D		waste	2023-12-08 00:00:00+00
basel		E		waste	2023-12-08 00:00:00+00
basel		H		waste	2023-12-08 00:00:00+00
basel		D		waste	2023-12-22 00:00:00+00
basel		H		waste	2023-12-22 00:00:00+00
basel		E		waste	2023-12-29 00:00:00+00
basel		B		waste	2023-01-02 00:00:00+00
basel		C		waste	2023-01-02 00:00:00+00
basel		F		waste	2023-01-02 00:00:00+00
basel		G		waste	2023-01-02 00:00:00+00
basel		G		waste	2023-01-09 00:00:00+00
basel		B		waste	2023-01-16 00:00:00+00
basel		F		waste	2023-01-16 00:00:00+00
basel		G		waste	2023-01-16 00:00:00+00
basel		F		waste	2023-01-23 00:00:00+00
basel		F		waste	2023-01-30 00:00:00+00
basel		G		waste	2023-02-06 00:00:00+00
basel		G		waste	2023-02-13 00:00:00+00
basel		F		waste	2023-02-20 00:00:00+00
basel		G		waste	2023-02-20 00:00:00+00
basel		G		waste	2023-02-27 00:00:00+00
basel		C		waste	2023-03-20 00:00:00+00
basel		G		waste	2023-03-20 00:00:00+00
basel		B		waste	2023-03-27 00:00:00+00
basel		G		waste	2023-03-27 00:00:00+00
basel		F		waste	2023-04-17 00:00:00+00
basel		G		waste	2023-04-17 00:00:00+00
basel		B		waste	2023-05-08 00:00:00+00
basel		G		waste	2023-05-08 00:00:00+00
basel		F		waste	2023-05-15 00:00:00+00
basel		G		waste	2023-05-15 00:00:00+00
basel		C		waste	2023-05-22 00:00:00+00
basel		F		waste	2023-05-22 00:00:00+00
basel		C		waste	2023-06-05 00:00:00+00
basel		B		waste	2023-06-12 00:00:00+00
basel		G		waste	2023-06-12 00:00:00+00
basel		F		waste	2023-06-19 00:00:00+00
basel		C		waste	2023-06-26 00:00:00+00
basel		F		waste	2023-06-26 00:00:00+00
basel		G		waste	2023-06-26 00:00:00+00
basel		F		waste	2023-07-03 00:00:00+00
basel		B		waste	2023-07-24 00:00:00+00
basel		F		waste	2023-07-24 00:00:00+00
basel		G		waste	2023-07-24 00:00:00+00
basel		B		waste	2023-07-31 00:00:00+00
basel		C		waste	2023-08-07 00:00:00+00
basel		F		waste	2023-08-07 00:00:00+00
basel		F		waste	2023-08-14 00:00:00+00
basel		B		waste	2023-08-21 00:00:00+00
basel		C		waste	2023-08-21 00:00:00+00
basel		G		waste	2023-08-21 00:00:00+00
basel		C		waste	2023-09-04 00:00:00+00
basel		F		waste	2023-09-11 00:00:00+00
basel		C		waste	2023-09-18 00:00:00+00
basel		F		waste	2023-09-18 00:00:00+00
basel		C		waste	2023-09-25 00:00:00+00
basel		C		waste	2023-10-02 00:00:00+00
basel		C		waste	2023-10-09 00:00:00+00
basel		F		waste	2023-10-09 00:00:00+00
basel		B		waste	2023-10-23 00:00:00+00
basel		G		waste	2023-10-30 00:00:00+00
basel		F		waste	2023-11-06 00:00:00+00
basel		G		waste	2023-11-06 00:00:00+00
basel		B		waste	2023-11-13 00:00:00+00
basel		G		waste	2023-11-13 00:00:00+00
basel		G		waste	2023-11-20 00:00:00+00
basel		C		waste	2023-11-27 00:00:00+00
basel		F		waste	2023-11-27 00:00:00+00
basel		G		waste	2023-11-27 00:00:00+00
basel		F		waste	2023-12-04 00:00:00+00
basel		G		waste	2023-12-04 00:00:00+00
basel		B		waste	2023-12-18 00:00:00+00
basel		G		waste	2023-12-18 00:00:00+00
basel		C		metal	2023-02-07 00:00:00+00
basel		B		metal	2023-02-21 00:00:00+00
basel		C		metal	2023-12-19 00:00:00+00
basel		D		metal	2023-02-23 00:00:00+00
basel		D		metal	2023-12-07 00:00:00+00
basel		E		metal	2023-12-21 00:00:00+00
basel		G		metal	2023-01-13 00:00:00+00
basel		F		metal	2023-01-27 00:00:00+00
basel		G		metal	2023-12-22 00:00:00+00
basel		A		metal	2023-03-08 00:00:00+00
basel		C		metal	2023-04-05 00:00:00+00
basel		G		metal	2023-04-19 00:00:00+00
basel		B		metal	2023-05-03 00:00:00+00
basel		F		metal	2023-05-17 00:00:00+00
basel		A		metal	2023-06-28 00:00:00+00
basel		C		metal	2023-07-26 00:00:00+00
basel		G		metal	2023-08-09 00:00:00+00
basel		F		metal	2023-09-06 00:00:00+00
basel		H		metal	2023-10-04 00:00:00+00
basel		A		metal	2023-10-18 00:00:00+00
basel		E		metal	2023-11-01 00:00:00+00
basel		D		metal	2023-05-31 00:00:00+00
basel		A		metal	2023-12-18 00:00:00+00
basel		C		paper	2023-01-18 00:00:00+00
basel		D		paper	2023-01-18 00:00:00+00
basel		B		paper	2023-02-22 00:00:00+00
basel		E		paper	2023-03-08 00:00:00+00
basel		E		paper	2023-04-05 00:00:00+00
basel		C		paper	2023-04-19 00:00:00+00
basel		A		paper	2023-04-26 00:00:00+00
basel		B		paper	2023-04-26 00:00:00+00
basel		G		paper	2023-05-10 00:00:00+00
basel		A		paper	2023-05-24 00:00:00+00
basel		F		paper	2023-06-28 00:00:00+00
basel		G		paper	2023-07-05 00:00:00+00
basel		C		paper	2023-07-12 00:00:00+00
basel		D		paper	2023-07-12 00:00:00+00
basel		A		paper	2023-07-19 00:00:00+00
basel		F		paper	2023-07-26 00:00:00+00
basel		D		paper	2023-08-09 00:00:00+00
basel		A		paper	2023-08-16 00:00:00+00
basel		C		paper	2023-09-06 00:00:00+00
basel		A		paper	2023-09-13 00:00:00+00
basel		F		paper	2023-10-18 00:00:00+00
basel		C		paper	2023-11-01 00:00:00+00
basel		F		paper	2023-11-15 00:00:00+00
basel		E		paper	2023-01-04 00:00:00+00
basel		F		paper	2023-01-04 00:00:00+00
basel		H		paper	2023-01-11 00:00:00+00
basel		E		paper	2023-05-31 00:00:00+00
basel		D		paper	2023-06-14 00:00:00+00
basel		H		incombustibles	2023-01-25 00:00:00+00
basel		G		incombustibles	2023-02-22 00:00:00+00
basel		H		incombustibles	2023-02-22 00:00:00+00
basel		C		incombustibles	2023-03-01 00:00:00+00
basel		G		incombustibles	2023-03-08 00:00:00+00
basel		E		incombustibles	2023-03-15 00:00:00+00
basel		A		incombustibles	2023-03-22 00:00:00+00
basel		B		incombustibles	2023-03-22 00:00:00+00
basel		G		incombustibles	2023-04-05 00:00:00+00
basel		B		incombustibles	2023-04-19 00:00:00+00
basel		F		incombustibles	2023-05-10 00:00:00+00
basel		B		incombustibles	2023-05-17 00:00:00+00
basel		C		incombustibles	2023-05-24 00:00:00+00
basel		G		incombustibles	2023-06-28 00:00:00+00
basel		H		incombustibles	2023-06-28 00:00:00+00
basel		F		incombustibles	2023-07-05 00:00:00+00
basel		H		incombustibles	2023-07-26 00:00:00+00
basel		A		incombustibles	2023-08-09 00:00:00+00
basel		D		incombustibles	2023-08-16 00:00:00+00
basel		G		incombustibles	2023-08-23 00:00:00+00
basel		H		incombustibles	2023-08-23 00:00:00+00
basel		E		incombustibles	2023-08-30 00:00:00+00
basel		A		incombustibles	2023-09-06 00:00:00+00
basel		C		incombustibles	2023-09-13 00:00:00+00
basel		E		incombustibles	2023-09-27 00:00:00+00
basel		B		incombustibles	2023-10-04 00:00:00+00
basel		D		incombustibles	2023-10-11 00:00:00+00
basel		G		incombustibles	2023-10-18 00:00:00+00
basel		H		incombustibles	2023-10-18 00:00:00+00
basel		F		incombustibles	2023-10-25 00:00:00+00
basel		C		incombustibles	2023-11-08 00:00:00+00
basel		G		incombustibles	2023-11-15 00:00:00+00
basel		E		incombustibles	2023-11-22 00:00:00+00
basel		A		incombustibles	2023-12-20 00:00:00+00
basel		E		incombustibles	2023-12-27 00:00:00+00
basel		F		incombustibles	2023-12-27 00:00:00+00
basel		C		incombustibles	2023-01-04 00:00:00+00
basel		G		incombustibles	2023-05-31 00:00:00+00
basel		E		incombustibles	2023-06-07 00:00:00+00
basel		A		bulky_goods	2020-01-15 00:00:00+00
basel		A		bulky_goods	2020-01-29 00:00:00+00
basel		A		bulky_goods	2020-04-15 00:00:00+00
basel		A		bulky_goods	2020-06-10 00:00:00+00
basel		A		bulky_goods	2020-06-17 00:00:00+00
basel		A		bulky_goods	2020-08-05 00:00:00+00
basel		A		bulky_goods	2020-09-02 00:00:00+00
basel		A		bulky_goods	2020-10-28 00:00:00+00
basel		A		bulky_goods	2020-11-11 00:00:00+00
basel		B		bulky_goods	2020-02-12 00:00:00+00
basel		B		bulky_goods	2020-05-13 00:00:00+00
basel		B		bulky_goods	2020-06-17 00:00:00+00
basel		B		bulky_goods	2020-08-05 00:00:00+00
basel		B		bulky_goods	2020-09-02 00:00:00+00
basel		B		bulky_goods	2020-09-30 00:00:00+00
basel		B		bulky_goods	2020-11-11 00:00:00+00
basel		C		bulky_goods	2020-03-25 00:00:00+00
basel		C		bulky_goods	2020-12-16 00:00:00+00
basel		D		bulky_goods	2020-02-19 00:00:00+00
basel		E		bulky_goods	2020-03-11 00:00:00+00
basel		E		bulky_goods	2020-04-29 00:00:00+00
basel		E		bulky_goods	2020-05-27 00:00:00+00
basel		F		bulky_goods	2020-01-08 00:00:00+00
basel		F		bulky_goods	2020-02-19 00:00:00+00
basel		F		bulky_goods	2020-03-11 00:00:00+00
basel		F		bulky_goods	2020-05-27 00:00:00+00
basel		F		bulky_goods	2020-06-24 00:00:00+00
basel		F		bulky_goods	2020-07-22 00:00:00+00
basel		F		bulky_goods	2020-08-19 00:00:00+00
basel		G		bulky_goods	2020-01-29 00:00:00+00
basel		G		bulky_goods	2020-03-11 00:00:00+00
basel		G		bulky_goods	2020-06-10 00:00:00+00
basel		G		bulky_goods	2020-07-22 00:00:00+00
basel		G		bulky_goods	2020-09-16 00:00:00+00
basel		G		bulky_goods	2020-11-25 00:00:00+00
basel		G		bulky_goods	2020-12-09 00:00:00+00
basel		H		bulky_goods	2020-02-12 00:00:00+00
basel		H		bulky_goods	2020-08-19 00:00:00+00
basel		H		bulky_goods	2020-11-25 00:00:00+00
basel		A		organic	2020-03-12 00:00:00+00
basel		A		organic	2020-03-19 00:00:00+00
basel		A		organic	2020-04-09 00:00:00+00
basel		A		organic	2020-04-16 00:00:00+00
basel		A		organic	2020-04-23 00:00:00+00
basel		A		organic	2020-04-30 00:00:00+00
basel		A		organic	2020-05-14 00:00:00+00
basel		A		organic	2020-06-18 00:00:00+00
basel		A		organic	2020-06-25 00:00:00+00
basel		A		organic	2020-07-09 00:00:00+00
basel		A		organic	2020-07-16 00:00:00+00
basel		A		organic	2020-09-17 00:00:00+00
basel		A		organic	2020-10-01 00:00:00+00
basel		A		organic	2020-12-10 00:00:00+00
basel		B		organic	2020-01-03 00:00:00+00
basel		B		organic	2020-01-31 00:00:00+00
basel		B		organic	2020-03-20 00:00:00+00
basel		B		organic	2020-04-03 00:00:00+00
basel		B		organic	2020-04-17 00:00:00+00
basel		B		organic	2020-05-15 00:00:00+00
basel		B		organic	2020-06-05 00:00:00+00
basel		B		organic	2020-06-12 00:00:00+00
basel		B		organic	2020-06-19 00:00:00+00
basel		B		organic	2020-06-26 00:00:00+00
basel		B		organic	2020-08-14 00:00:00+00
basel		B		organic	2020-09-25 00:00:00+00
basel		B		organic	2020-10-23 00:00:00+00
basel		B		organic	2020-11-13 00:00:00+00
basel		B		organic	2020-11-20 00:00:00+00
basel		C		organic	2020-01-17 00:00:00+00
basel		C		organic	2020-02-14 00:00:00+00
basel		C		organic	2020-02-28 00:00:00+00
basel		C		organic	2020-03-20 00:00:00+00
basel		C		organic	2020-04-03 00:00:00+00
basel		C		organic	2020-04-17 00:00:00+00
basel		C		organic	2020-05-08 00:00:00+00
basel		C		organic	2020-05-15 00:00:00+00
basel		C		organic	2020-06-26 00:00:00+00
basel		C		organic	2020-07-03 00:00:00+00
basel		C		organic	2020-07-10 00:00:00+00
basel		C		organic	2020-07-24 00:00:00+00
basel		C		organic	2020-09-11 00:00:00+00
basel		C		organic	2020-10-09 00:00:00+00
basel		C		organic	2020-11-06 00:00:00+00
basel		C		organic	2020-11-20 00:00:00+00
basel		C		organic	2020-11-27 00:00:00+00
basel		D		organic	2020-01-16 00:00:00+00
basel		D		organic	2020-01-30 00:00:00+00
basel		D		organic	2020-03-19 00:00:00+00
basel		D		organic	2020-05-14 00:00:00+00
basel		D		organic	2020-06-25 00:00:00+00
basel		D		organic	2020-07-09 00:00:00+00
basel		D		organic	2020-07-16 00:00:00+00
basel		D		organic	2020-07-23 00:00:00+00
basel		D		organic	2020-07-30 00:00:00+00
basel		D		organic	2020-08-06 00:00:00+00
basel		D		organic	2020-08-13 00:00:00+00
basel		D		organic	2020-08-20 00:00:00+00
basel		D		organic	2020-08-27 00:00:00+00
basel		D		organic	2020-10-01 00:00:00+00
basel		E		organic	2020-01-02 00:00:00+00
basel		E		organic	2020-01-16 00:00:00+00
basel		E		organic	2020-02-13 00:00:00+00
basel		E		organic	2020-02-27 00:00:00+00
basel		E		organic	2020-03-12 00:00:00+00
basel		E		organic	2020-03-19 00:00:00+00
basel		E		organic	2020-04-16 00:00:00+00
basel		E		organic	2020-06-11 00:00:00+00
basel		E		organic	2020-06-18 00:00:00+00
basel		E		organic	2020-06-25 00:00:00+00
basel		E		organic	2020-07-09 00:00:00+00
basel		E		organic	2020-07-16 00:00:00+00
basel		E		organic	2020-08-13 00:00:00+00
basel		E		organic	2020-08-27 00:00:00+00
basel		E		organic	2020-09-24 00:00:00+00
basel		E		organic	2020-11-12 00:00:00+00
basel		F		organic	2020-01-14 00:00:00+00
basel		F		organic	2020-03-10 00:00:00+00
basel		F		organic	2020-04-07 00:00:00+00
basel		F		organic	2020-06-09 00:00:00+00
basel		F		organic	2020-06-30 00:00:00+00
basel		F		organic	2020-07-07 00:00:00+00
basel		F		organic	2020-09-01 00:00:00+00
basel		F		organic	2020-09-15 00:00:00+00
basel		F		organic	2020-10-06 00:00:00+00
basel		F		organic	2020-10-27 00:00:00+00
basel		F		organic	2020-11-17 00:00:00+00
basel		F		organic	2020-12-22 00:00:00+00
basel		G		organic	2020-01-03 00:00:00+00
basel		G		organic	2020-02-14 00:00:00+00
basel		G		organic	2020-03-13 00:00:00+00
basel		G		organic	2020-03-27 00:00:00+00
basel		G		organic	2020-04-03 00:00:00+00
basel		G		organic	2020-04-24 00:00:00+00
basel		G		organic	2020-05-15 00:00:00+00
basel		G		organic	2020-07-10 00:00:00+00
basel		G		organic	2020-07-24 00:00:00+00
basel		G		organic	2020-08-14 00:00:00+00
basel		G		organic	2020-09-18 00:00:00+00
basel		G		organic	2020-10-09 00:00:00+00
basel		G		organic	2020-10-16 00:00:00+00
basel		G		organic	2020-11-27 00:00:00+00
basel		G		organic	2020-12-11 00:00:00+00
basel		H		organic	2020-01-13 00:00:00+00
basel		H		organic	2020-04-06 00:00:00+00
basel		H		organic	2020-06-08 00:00:00+00
basel		H		organic	2020-06-15 00:00:00+00
basel		H		organic	2020-06-29 00:00:00+00
basel		H		organic	2020-07-06 00:00:00+00
basel		H		organic	2020-07-27 00:00:00+00
basel		H		organic	2020-08-17 00:00:00+00
basel		H		organic	2020-08-31 00:00:00+00
basel		H		organic	2020-09-14 00:00:00+00
basel		H		organic	2020-10-05 00:00:00+00
basel		H		organic	2020-10-19 00:00:00+00
basel		H		organic	2020-10-26 00:00:00+00
basel		A		waste	2020-01-31 00:00:00+00
basel		A		waste	2020-02-04 00:00:00+00
basel		A		waste	2020-02-07 00:00:00+00
basel		A		waste	2020-02-18 00:00:00+00
basel		A		waste	2020-02-25 00:00:00+00
basel		A		waste	2020-02-28 00:00:00+00
basel		A		waste	2020-03-03 00:00:00+00
basel		A		waste	2020-03-10 00:00:00+00
basel		A		waste	2020-03-17 00:00:00+00
basel		A		waste	2020-03-20 00:00:00+00
basel		A		waste	2020-04-21 00:00:00+00
basel		A		waste	2020-05-08 00:00:00+00
basel		A		waste	2020-05-12 00:00:00+00
basel		A		waste	2020-05-15 00:00:00+00
basel		A		waste	2020-05-26 00:00:00+00
basel		A		waste	2020-05-29 00:00:00+00
basel		A		waste	2020-06-12 00:00:00+00
basel		A		waste	2020-06-23 00:00:00+00
basel		A		waste	2020-06-30 00:00:00+00
basel		A		waste	2020-07-07 00:00:00+00
basel		A		waste	2020-07-14 00:00:00+00
basel		A		waste	2020-07-21 00:00:00+00
basel		A		waste	2020-08-04 00:00:00+00
basel		A		waste	2020-08-18 00:00:00+00
basel		A		waste	2020-08-28 00:00:00+00
basel		A		waste	2020-09-01 00:00:00+00
basel		A		waste	2020-09-08 00:00:00+00
basel		A		waste	2020-09-29 00:00:00+00
basel		A		waste	2020-10-16 00:00:00+00
basel		A		waste	2020-11-03 00:00:00+00
basel		A		waste	2020-11-10 00:00:00+00
basel		A		waste	2020-11-13 00:00:00+00
basel		A		waste	2020-11-17 00:00:00+00
basel		A		waste	2020-12-15 00:00:00+00
basel		A		waste	2020-12-22 00:00:00+00
basel		B		waste	2020-01-02 00:00:00+00
basel		B		waste	2020-01-16 00:00:00+00
basel		B		waste	2020-01-20 00:00:00+00
basel		B		waste	2020-01-23 00:00:00+00
basel		B		waste	2020-01-30 00:00:00+00
basel		B		waste	2020-02-13 00:00:00+00
basel		B		waste	2020-02-27 00:00:00+00
basel		B		waste	2020-03-12 00:00:00+00
basel		B		waste	2020-03-16 00:00:00+00
basel		B		waste	2020-03-26 00:00:00+00
basel		B		waste	2020-03-30 00:00:00+00
basel		B		waste	2020-04-09 00:00:00+00
basel		B		waste	2020-04-16 00:00:00+00
basel		B		waste	2020-04-20 00:00:00+00
basel		B		waste	2020-04-23 00:00:00+00
basel		B		waste	2020-04-30 00:00:00+00
basel		B		waste	2020-05-07 00:00:00+00
basel		B		waste	2020-05-25 00:00:00+00
basel		B		waste	2020-06-08 00:00:00+00
basel		B		waste	2020-06-11 00:00:00+00
basel		B		waste	2020-06-18 00:00:00+00
basel		B		waste	2020-06-22 00:00:00+00
basel		B		waste	2020-07-09 00:00:00+00
basel		B		waste	2020-07-27 00:00:00+00
basel		B		waste	2020-08-06 00:00:00+00
basel		B		waste	2020-08-17 00:00:00+00
basel		B		waste	2020-09-17 00:00:00+00
basel		B		waste	2020-09-24 00:00:00+00
basel		B		waste	2020-10-19 00:00:00+00
basel		B		waste	2020-10-22 00:00:00+00
basel		B		waste	2020-11-02 00:00:00+00
basel		B		waste	2020-11-16 00:00:00+00
basel		B		waste	2020-11-23 00:00:00+00
basel		B		waste	2020-12-07 00:00:00+00
basel		B		waste	2020-12-14 00:00:00+00
basel		B		waste	2020-12-21 00:00:00+00
basel		B		waste	2020-12-28 00:00:00+00
basel		B		waste	2020-12-31 00:00:00+00
basel		C		waste	2020-01-02 00:00:00+00
basel		C		waste	2020-01-09 00:00:00+00
basel		C		waste	2020-01-13 00:00:00+00
basel		C		waste	2020-02-13 00:00:00+00
basel		C		waste	2020-02-17 00:00:00+00
basel		C		waste	2020-02-20 00:00:00+00
basel		C		waste	2020-03-02 00:00:00+00
basel		C		waste	2020-03-19 00:00:00+00
basel		C		waste	2020-03-30 00:00:00+00
basel		C		waste	2020-04-06 00:00:00+00
basel		C		waste	2020-04-20 00:00:00+00
basel		C		waste	2020-04-27 00:00:00+00
basel		C		waste	2020-05-04 00:00:00+00
basel		C		waste	2020-05-18 00:00:00+00
basel		C		waste	2020-06-15 00:00:00+00
basel		C		waste	2020-06-18 00:00:00+00
basel		C		waste	2020-06-25 00:00:00+00
basel		C		waste	2020-07-06 00:00:00+00
basel		C		waste	2020-08-17 00:00:00+00
basel		C		waste	2020-08-20 00:00:00+00
basel		C		waste	2020-08-27 00:00:00+00
basel		C		waste	2020-09-03 00:00:00+00
basel		C		waste	2020-09-07 00:00:00+00
basel		C		waste	2020-09-14 00:00:00+00
basel		C		waste	2020-10-12 00:00:00+00
basel		C		waste	2020-10-15 00:00:00+00
basel		C		waste	2020-10-19 00:00:00+00
basel		C		waste	2020-11-05 00:00:00+00
basel		C		waste	2020-11-09 00:00:00+00
basel		C		waste	2020-11-16 00:00:00+00
basel		C		waste	2020-12-10 00:00:00+00
basel		C		waste	2020-12-14 00:00:00+00
basel		C		waste	2020-12-21 00:00:00+00
basel		C		waste	2020-12-24 00:00:00+00
basel		D		waste	2020-01-07 00:00:00+00
basel		D		waste	2020-01-21 00:00:00+00
basel		D		waste	2020-02-04 00:00:00+00
basel		D		waste	2020-02-18 00:00:00+00
basel		D		waste	2020-02-21 00:00:00+00
basel		D		waste	2020-02-28 00:00:00+00
basel		D		waste	2020-03-10 00:00:00+00
basel		D		waste	2020-04-03 00:00:00+00
basel		D		waste	2020-04-07 00:00:00+00
basel		D		waste	2020-04-24 00:00:00+00
basel		D		waste	2020-05-12 00:00:00+00
basel		D		waste	2020-05-15 00:00:00+00
basel		D		waste	2020-05-19 00:00:00+00
basel		D		waste	2020-06-19 00:00:00+00
basel		D		waste	2020-06-23 00:00:00+00
basel		D		waste	2020-06-30 00:00:00+00
basel		D		waste	2020-07-03 00:00:00+00
basel		D		waste	2020-07-07 00:00:00+00
basel		D		waste	2020-07-10 00:00:00+00
basel		D		waste	2020-07-17 00:00:00+00
basel		D		waste	2020-07-21 00:00:00+00
basel		D		waste	2020-07-24 00:00:00+00
basel		D		waste	2020-08-21 00:00:00+00
basel		D		waste	2020-08-25 00:00:00+00
basel		D		waste	2020-08-28 00:00:00+00
basel		D		waste	2020-09-01 00:00:00+00
basel		D		waste	2020-09-18 00:00:00+00
basel		D		waste	2020-10-16 00:00:00+00
basel		D		waste	2020-10-30 00:00:00+00
basel		D		waste	2020-11-10 00:00:00+00
basel		D		waste	2020-11-17 00:00:00+00
basel		D		waste	2020-12-18 00:00:00+00
basel		D		waste	2020-12-22 00:00:00+00
basel		E		waste	2020-01-14 00:00:00+00
basel		E		waste	2020-01-17 00:00:00+00
basel		E		waste	2020-01-31 00:00:00+00
basel		E		waste	2020-02-04 00:00:00+00
basel		E		waste	2020-02-18 00:00:00+00
basel		E		waste	2020-02-28 00:00:00+00
basel		E		waste	2020-03-06 00:00:00+00
basel		E		waste	2020-03-13 00:00:00+00
basel		E		waste	2020-03-17 00:00:00+00
basel		E		waste	2020-03-24 00:00:00+00
basel		E		waste	2020-03-27 00:00:00+00
basel		E		waste	2020-03-31 00:00:00+00
basel		E		waste	2020-04-03 00:00:00+00
basel		E		waste	2020-06-09 00:00:00+00
basel		E		waste	2020-06-23 00:00:00+00
basel		E		waste	2020-06-26 00:00:00+00
basel		E		waste	2020-07-03 00:00:00+00
basel		E		waste	2020-07-07 00:00:00+00
basel		E		waste	2020-08-21 00:00:00+00
basel		E		waste	2020-09-04 00:00:00+00
basel		E		waste	2020-09-11 00:00:00+00
basel		E		waste	2020-09-15 00:00:00+00
basel		E		waste	2020-09-18 00:00:00+00
basel		E		waste	2020-10-13 00:00:00+00
basel		E		waste	2020-10-16 00:00:00+00
basel		E		waste	2020-10-20 00:00:00+00
basel		E		waste	2020-10-27 00:00:00+00
basel		E		waste	2020-11-13 00:00:00+00
basel		E		waste	2020-11-20 00:00:00+00
basel		E		waste	2020-11-24 00:00:00+00
basel		E		waste	2020-11-27 00:00:00+00
basel		E		waste	2020-12-01 00:00:00+00
basel		E		waste	2020-12-22 00:00:00+00
basel		F		waste	2020-01-13 00:00:00+00
basel		F		waste	2020-01-23 00:00:00+00
basel		F		waste	2020-01-30 00:00:00+00
basel		F		waste	2020-02-13 00:00:00+00
basel		F		waste	2020-02-20 00:00:00+00
basel		F		waste	2020-02-24 00:00:00+00
basel		F		waste	2020-02-27 00:00:00+00
basel		F		waste	2020-03-02 00:00:00+00
basel		F		waste	2020-03-19 00:00:00+00
basel		F		waste	2020-03-30 00:00:00+00
basel		F		waste	2020-04-06 00:00:00+00
basel		F		waste	2020-04-27 00:00:00+00
basel		F		waste	2020-04-30 00:00:00+00
basel		F		waste	2020-05-04 00:00:00+00
basel		F		waste	2020-05-11 00:00:00+00
basel		F		waste	2020-05-25 00:00:00+00
basel		F		waste	2020-06-04 00:00:00+00
basel		F		waste	2020-06-08 00:00:00+00
basel		F		waste	2020-06-11 00:00:00+00
basel		F		waste	2020-06-15 00:00:00+00
basel		F		waste	2020-07-27 00:00:00+00
basel		F		waste	2020-08-03 00:00:00+00
basel		F		waste	2020-08-10 00:00:00+00
basel		F		waste	2020-08-13 00:00:00+00
basel		F		waste	2020-08-27 00:00:00+00
basel		F		waste	2020-09-03 00:00:00+00
basel		F		waste	2020-09-14 00:00:00+00
basel		F		waste	2020-09-17 00:00:00+00
basel		F		waste	2020-09-28 00:00:00+00
basel		F		waste	2020-10-01 00:00:00+00
basel		F		waste	2020-10-12 00:00:00+00
basel		F		waste	2020-10-15 00:00:00+00
basel		F		waste	2020-10-26 00:00:00+00
basel		F		waste	2020-10-29 00:00:00+00
basel		F		waste	2020-11-12 00:00:00+00
basel		F		waste	2020-11-16 00:00:00+00
basel		F		waste	2020-12-07 00:00:00+00
basel		F		waste	2020-12-10 00:00:00+00
basel		F		waste	2020-12-14 00:00:00+00
basel		F		waste	2020-12-24 00:00:00+00
basel		G		waste	2020-01-02 00:00:00+00
basel		G		waste	2020-02-03 00:00:00+00
basel		G		waste	2020-02-06 00:00:00+00
basel		G		waste	2020-03-02 00:00:00+00
basel		G		waste	2020-03-12 00:00:00+00
basel		G		waste	2020-03-19 00:00:00+00
basel		G		waste	2020-03-23 00:00:00+00
basel		G		waste	2020-04-02 00:00:00+00
basel		G		waste	2020-04-09 00:00:00+00
basel		G		waste	2020-04-23 00:00:00+00
basel		G		waste	2020-05-11 00:00:00+00
basel		G		waste	2020-05-14 00:00:00+00
basel		G		waste	2020-05-25 00:00:00+00
basel		G		waste	2020-06-08 00:00:00+00
basel		G		waste	2020-06-11 00:00:00+00
basel		G		waste	2020-06-29 00:00:00+00
basel		G		waste	2020-07-13 00:00:00+00
basel		G		waste	2020-07-16 00:00:00+00
basel		G		waste	2020-07-23 00:00:00+00
basel		G		waste	2020-07-30 00:00:00+00
basel		G		waste	2020-08-03 00:00:00+00
basel		G		waste	2020-08-06 00:00:00+00
basel		G		waste	2020-08-17 00:00:00+00
basel		G		waste	2020-08-24 00:00:00+00
basel		G		waste	2020-08-27 00:00:00+00
basel		G		waste	2020-09-17 00:00:00+00
basel		G		waste	2020-10-01 00:00:00+00
basel		G		waste	2020-10-08 00:00:00+00
basel		G		waste	2020-10-15 00:00:00+00
basel		G		waste	2020-10-26 00:00:00+00
basel		G		waste	2020-11-12 00:00:00+00
basel		G		waste	2020-11-26 00:00:00+00
basel		G		waste	2020-12-03 00:00:00+00
basel		G		waste	2020-12-07 00:00:00+00
basel		G		waste	2020-12-10 00:00:00+00
basel		H		waste	2020-01-03 00:00:00+00
basel		H		waste	2020-01-10 00:00:00+00
basel		H		waste	2020-01-14 00:00:00+00
basel		H		waste	2020-01-21 00:00:00+00
basel		H		waste	2020-01-28 00:00:00+00
basel		H		waste	2020-01-31 00:00:00+00
basel		H		waste	2020-02-14 00:00:00+00
basel		H		waste	2020-02-18 00:00:00+00
basel		H		waste	2020-03-06 00:00:00+00
basel		H		waste	2020-03-13 00:00:00+00
basel		H		waste	2020-03-17 00:00:00+00
basel		H		waste	2020-04-07 00:00:00+00
basel		H		waste	2020-04-17 00:00:00+00
basel		H		waste	2020-04-21 00:00:00+00
basel		H		waste	2020-05-05 00:00:00+00
basel		H		waste	2020-05-26 00:00:00+00
basel		H		waste	2020-06-02 00:00:00+00
basel		H		waste	2020-06-05 00:00:00+00
basel		H		waste	2020-06-16 00:00:00+00
basel		H		waste	2020-06-19 00:00:00+00
basel		H		waste	2020-06-30 00:00:00+00
basel		H		waste	2020-07-03 00:00:00+00
basel		H		waste	2020-07-07 00:00:00+00
basel		H		waste	2020-07-10 00:00:00+00
basel		H		waste	2020-07-17 00:00:00+00
basel		H		waste	2020-07-21 00:00:00+00
basel		H		waste	2020-07-28 00:00:00+00
basel		H		waste	2020-08-07 00:00:00+00
basel		H		waste	2020-08-18 00:00:00+00
basel		H		waste	2020-08-21 00:00:00+00
basel		H		waste	2020-08-25 00:00:00+00
basel		H		waste	2020-09-01 00:00:00+00
basel		H		waste	2020-09-04 00:00:00+00
basel		H		waste	2020-09-22 00:00:00+00
basel		H		waste	2020-10-06 00:00:00+00
basel		H		waste	2020-10-20 00:00:00+00
basel		H		waste	2020-10-23 00:00:00+00
basel		H		waste	2020-10-27 00:00:00+00
basel		H		waste	2020-11-03 00:00:00+00
basel		H		waste	2020-11-06 00:00:00+00
basel		H		waste	2020-11-24 00:00:00+00
basel		H		waste	2020-12-08 00:00:00+00
basel		H		waste	2020-12-22 00:00:00+00
basel		A		metal	2020-05-11 00:00:00+00
basel		B		metal	2020-05-20 00:00:00+00
basel		C		metal	2020-03-10 00:00:00+00
basel		C		metal	2020-09-23 00:00:00+00
basel		C		metal	2020-12-15 00:00:00+00
basel		E		metal	2020-02-17 00:00:00+00
basel		E		metal	2020-04-20 00:00:00+00
basel		E		metal	2020-08-17 00:00:00+00
basel		F		metal	2020-02-18 00:00:00+00
basel		F		metal	2020-07-01 00:00:00+00
basel		F		metal	2020-10-07 00:00:00+00
basel		G		metal	2020-04-08 00:00:00+00
basel		G		metal	2020-11-17 00:00:00+00
basel		H		metal	2020-01-07 00:00:00+00
basel		H		metal	2020-03-02 00:00:00+00
basel		H		metal	2020-12-01 00:00:00+00
basel		A		paper	2020-02-05 00:00:00+00
basel		A		paper	2020-06-03 00:00:00+00
basel		A		paper	2020-07-29 00:00:00+00
basel		A		paper	2020-10-21 00:00:00+00
basel		B		paper	2020-01-08 00:00:00+00
basel		B		paper	2020-03-11 00:00:00+00
basel		B		paper	2020-05-06 00:00:00+00
basel		B		paper	2020-07-29 00:00:00+00
basel		B		paper	2020-12-16 00:00:00+00
basel		C		paper	2020-05-27 00:00:00+00
basel		C		paper	2020-09-16 00:00:00+00
basel		C		paper	2020-11-11 00:00:00+00
basel		C		paper	2020-12-09 00:00:00+00
basel		D		paper	2020-04-01 00:00:00+00
basel		D		paper	2020-04-29 00:00:00+00
basel		D		paper	2020-05-27 00:00:00+00
basel		D		paper	2020-06-24 00:00:00+00
basel		D		paper	2020-08-19 00:00:00+00
basel		D		paper	2020-10-14 00:00:00+00
basel		E		paper	2020-01-15 00:00:00+00
basel		E		paper	2020-09-02 00:00:00+00
basel		F		paper	2020-01-15 00:00:00+00
basel		F		paper	2020-05-13 00:00:00+00
basel		G		paper	2020-01-22 00:00:00+00
basel		G		paper	2020-03-25 00:00:00+00
basel		G		paper	2020-08-12 00:00:00+00
basel		G		paper	2020-10-07 00:00:00+00
basel		G		paper	2020-11-04 00:00:00+00
basel		H		paper	2020-01-22 00:00:00+00
basel		H		paper	2020-03-25 00:00:00+00
basel		H		paper	2020-04-22 00:00:00+00
basel		H		paper	2020-05-20 00:00:00+00
basel		H		paper	2020-09-09 00:00:00+00
basel		A		incombustibles	2020-06-22 00:00:00+00
basel		A		incombustibles	2020-10-02 00:00:00+00
basel		B		incombustibles	2020-03-06 00:00:00+00
basel		B		incombustibles	2020-04-28 00:00:00+00
basel		B		incombustibles	2020-08-06 00:00:00+00
basel		B		incombustibles	2020-11-06 00:00:00+00
basel		C		incombustibles	2020-01-21 00:00:00+00
basel		C		incombustibles	2020-07-07 00:00:00+00
basel		C		incombustibles	2020-08-04 00:00:00+00
basel		C		incombustibles	2020-09-08 00:00:00+00
basel		D		incombustibles	2020-02-17 00:00:00+00
basel		D		incombustibles	2020-08-24 00:00:00+00
basel		D		incombustibles	2020-09-24 00:00:00+00
basel		D		incombustibles	2020-10-19 00:00:00+00
basel		D		incombustibles	2020-12-17 00:00:00+00
basel		E		incombustibles	2020-01-27 00:00:00+00
basel		E		incombustibles	2020-02-20 00:00:00+00
basel		E		incombustibles	2020-05-25 00:00:00+00
basel		E		incombustibles	2020-10-01 00:00:00+00
basel		F		incombustibles	2020-01-17 00:00:00+00
basel		F		incombustibles	2020-02-21 00:00:00+00
basel		F		incombustibles	2020-03-20 00:00:00+00
basel		F		incombustibles	2020-04-09 00:00:00+00
basel		F		incombustibles	2020-07-31 00:00:00+00
basel		F		incombustibles	2020-09-18 00:00:00+00
basel		F		incombustibles	2020-12-11 00:00:00+00
basel		G		incombustibles	2020-08-11 00:00:00+00
basel		G		incombustibles	2020-09-21 00:00:00+00
basel		G		incombustibles	2020-11-10 00:00:00+00
basel		H		incombustibles	2020-01-16 00:00:00+00
basel		H		incombustibles	2020-03-19 00:00:00+00
basel		H		incombustibles	2020-05-07 00:00:00+00
basel		H		incombustibles	2020-06-04 00:00:00+00
basel		H		incombustibles	2020-08-13 00:00:00+00
basel		H		incombustibles	2020-09-17 00:00:00+00
basel		H		incombustibles	2020-12-28 00:00:00+00
basel		A		chipping_service	2020-02-24 00:00:00+00
basel		A		chipping_service	2020-06-15 00:00:00+00
basel		A		chipping_service	2020-11-23 00:00:00+00
basel		C		chipping_service	2020-06-15 00:00:00+00
basel		D		chipping_service	2020-06-15 00:00:00+00
basel		D		chipping_service	2020-09-14 00:00:00+00
basel		E		chipping_service	2020-09-16 00:00:00+00
basel		F		chipping_service	2020-11-25 00:00:00+00
basel		G		chipping_service	2020-02-25 00:00:00+00
basel		A		waste	2021-01-29 00:00:00+00
basel		A		waste	2021-02-19 00:00:00+00
basel		A		waste	2021-03-02 00:00:00+00
basel		A		waste	2021-03-19 00:00:00+00
basel		A		waste	2021-03-23 00:00:00+00
basel		A		waste	2021-03-30 00:00:00+00
basel		A		waste	2021-04-02 00:00:00+00
basel		A		waste	2021-04-27 00:00:00+00
basel		A		waste	2021-05-04 00:00:00+00
basel		A		waste	2021-05-07 00:00:00+00
basel		A		waste	2021-05-11 00:00:00+00
basel		A		waste	2021-06-04 00:00:00+00
basel		A		waste	2021-06-15 00:00:00+00
basel		A		waste	2021-06-29 00:00:00+00
basel		A		waste	2021-07-09 00:00:00+00
basel		A		waste	2021-07-16 00:00:00+00
basel		A		waste	2021-07-20 00:00:00+00
basel		A		waste	2021-07-30 00:00:00+00
basel		A		waste	2021-08-06 00:00:00+00
basel		A		waste	2021-08-17 00:00:00+00
basel		A		waste	2021-08-20 00:00:00+00
basel		A		waste	2021-09-03 00:00:00+00
basel		A		waste	2021-09-21 00:00:00+00
basel		A		waste	2021-09-24 00:00:00+00
basel		A		waste	2021-10-15 00:00:00+00
basel		A		waste	2021-10-22 00:00:00+00
basel		A		waste	2021-11-12 00:00:00+00
basel		A		waste	2021-11-26 00:00:00+00
basel		A		waste	2021-11-30 00:00:00+00
basel		A		waste	2021-12-03 00:00:00+00
basel		A		waste	2021-12-14 00:00:00+00
basel		A		waste	2021-12-17 00:00:00+00
basel		A		waste	2021-12-24 00:00:00+00
basel		A		waste	2021-12-31 00:00:00+00
basel		B		waste	2021-01-18 00:00:00+00
basel		B		waste	2021-01-21 00:00:00+00
basel		B		waste	2021-01-25 00:00:00+00
basel		B		waste	2021-02-01 00:00:00+00
basel		B		waste	2021-02-11 00:00:00+00
basel		B		waste	2021-02-22 00:00:00+00
basel		B		waste	2021-02-25 00:00:00+00
basel		B		waste	2021-03-01 00:00:00+00
basel		B		waste	2021-03-04 00:00:00+00
basel		B		waste	2021-03-11 00:00:00+00
basel		B		waste	2021-03-15 00:00:00+00
basel		B		waste	2021-03-18 00:00:00+00
basel		B		waste	2021-03-25 00:00:00+00
basel		B		waste	2021-04-22 00:00:00+00
basel		B		waste	2021-04-29 00:00:00+00
basel		B		waste	2021-05-31 00:00:00+00
basel		B		waste	2021-06-14 00:00:00+00
basel		B		waste	2021-07-01 00:00:00+00
basel		B		waste	2021-07-19 00:00:00+00
basel		B		waste	2021-08-09 00:00:00+00
basel		B		waste	2021-08-26 00:00:00+00
basel		B		waste	2021-09-09 00:00:00+00
basel		B		waste	2021-09-20 00:00:00+00
basel		B		waste	2021-09-23 00:00:00+00
basel		B		waste	2021-11-08 00:00:00+00
basel		B		waste	2021-11-11 00:00:00+00
basel		B		waste	2021-11-15 00:00:00+00
basel		B		waste	2021-12-06 00:00:00+00
basel		B		waste	2021-12-09 00:00:00+00
basel		B		waste	2021-12-20 00:00:00+00
basel		B		waste	2021-12-27 00:00:00+00
basel		C		waste	2021-01-28 00:00:00+00
basel		C		waste	2021-02-01 00:00:00+00
basel		C		waste	2021-02-04 00:00:00+00
basel		C		waste	2021-02-22 00:00:00+00
basel		C		waste	2021-02-25 00:00:00+00
basel		C		waste	2021-03-01 00:00:00+00
basel		C		waste	2021-03-08 00:00:00+00
basel		C		waste	2021-03-15 00:00:00+00
basel		C		waste	2021-04-01 00:00:00+00
basel		C		waste	2021-04-08 00:00:00+00
basel		C		waste	2021-04-15 00:00:00+00
basel		C		waste	2021-04-19 00:00:00+00
basel		C		waste	2021-04-22 00:00:00+00
basel		C		waste	2021-04-29 00:00:00+00
basel		C		waste	2021-05-06 00:00:00+00
basel		C		waste	2021-05-17 00:00:00+00
basel		C		waste	2021-06-14 00:00:00+00
basel		C		waste	2021-06-24 00:00:00+00
basel		C		waste	2021-07-12 00:00:00+00
basel		C		waste	2021-07-19 00:00:00+00
basel		C		waste	2021-07-22 00:00:00+00
basel		C		waste	2021-08-05 00:00:00+00
basel		C		waste	2021-08-09 00:00:00+00
basel		C		waste	2021-08-26 00:00:00+00
basel		C		waste	2021-09-13 00:00:00+00
basel		C		waste	2021-09-23 00:00:00+00
basel		C		waste	2021-10-21 00:00:00+00
basel		C		waste	2021-10-28 00:00:00+00
basel		C		waste	2021-11-04 00:00:00+00
basel		C		waste	2021-11-15 00:00:00+00
basel		C		waste	2021-11-18 00:00:00+00
basel		C		waste	2021-12-06 00:00:00+00
basel		C		waste	2021-12-16 00:00:00+00
basel		D		waste	2021-01-05 00:00:00+00
basel		D		waste	2021-01-08 00:00:00+00
basel		D		waste	2021-01-26 00:00:00+00
basel		D		waste	2021-02-02 00:00:00+00
basel		D		waste	2021-02-16 00:00:00+00
basel		D		waste	2021-02-23 00:00:00+00
basel		D		waste	2021-02-26 00:00:00+00
basel		D		waste	2021-03-23 00:00:00+00
basel		D		waste	2021-04-02 00:00:00+00
basel		D		waste	2021-04-09 00:00:00+00
basel		D		waste	2021-04-20 00:00:00+00
basel		D		waste	2021-05-25 00:00:00+00
basel		D		waste	2021-06-01 00:00:00+00
basel		D		waste	2021-06-15 00:00:00+00
basel		D		waste	2021-07-16 00:00:00+00
basel		D		waste	2021-07-20 00:00:00+00
basel		D		waste	2021-07-23 00:00:00+00
basel		D		waste	2021-09-07 00:00:00+00
basel		D		waste	2021-09-17 00:00:00+00
basel		D		waste	2021-09-28 00:00:00+00
basel		D		waste	2021-10-08 00:00:00+00
basel		D		waste	2021-10-12 00:00:00+00
basel		D		waste	2021-10-19 00:00:00+00
basel		D		waste	2021-11-09 00:00:00+00
basel		D		waste	2021-11-19 00:00:00+00
basel		D		waste	2021-11-23 00:00:00+00
basel		D		waste	2021-11-26 00:00:00+00
basel		D		waste	2021-12-07 00:00:00+00
basel		D		waste	2021-12-21 00:00:00+00
basel		D		waste	2021-12-24 00:00:00+00
basel		D		waste	2021-12-28 00:00:00+00
basel		E		waste	2021-01-05 00:00:00+00
basel		E		waste	2021-01-08 00:00:00+00
basel		E		waste	2021-01-22 00:00:00+00
basel		E		waste	2021-02-02 00:00:00+00
basel		E		waste	2021-02-12 00:00:00+00
basel		E		waste	2021-02-23 00:00:00+00
basel		E		waste	2021-03-19 00:00:00+00
basel		E		waste	2021-03-26 00:00:00+00
basel		E		waste	2021-03-30 00:00:00+00
basel		E		waste	2021-04-13 00:00:00+00
basel		E		waste	2021-04-30 00:00:00+00
basel		E		waste	2021-05-04 00:00:00+00
basel		E		waste	2021-06-04 00:00:00+00
basel		E		waste	2021-06-11 00:00:00+00
basel		E		waste	2021-06-18 00:00:00+00
basel		E		waste	2021-06-29 00:00:00+00
basel		E		waste	2021-07-30 00:00:00+00
basel		E		waste	2021-08-06 00:00:00+00
basel		E		waste	2021-08-13 00:00:00+00
basel		E		waste	2021-08-24 00:00:00+00
basel		E		waste	2021-09-14 00:00:00+00
basel		E		waste	2021-09-21 00:00:00+00
basel		E		waste	2021-09-28 00:00:00+00
basel		E		waste	2021-10-05 00:00:00+00
basel		E		waste	2021-10-26 00:00:00+00
basel		E		waste	2021-10-29 00:00:00+00
basel		E		waste	2021-11-02 00:00:00+00
basel		E		waste	2021-12-14 00:00:00+00
basel		E		waste	2021-12-17 00:00:00+00
basel		E		waste	2021-12-28 00:00:00+00
basel		F		waste	2021-01-04 00:00:00+00
basel		F		waste	2021-01-21 00:00:00+00
basel		F		waste	2021-02-04 00:00:00+00
basel		F		waste	2021-02-15 00:00:00+00
basel		F		waste	2021-02-18 00:00:00+00
basel		F		waste	2021-03-01 00:00:00+00
basel		F		waste	2021-03-15 00:00:00+00
basel		F		waste	2021-04-08 00:00:00+00
basel		F		waste	2021-04-12 00:00:00+00
basel		F		waste	2021-04-15 00:00:00+00
basel		F		waste	2021-04-19 00:00:00+00
basel		F		waste	2021-05-03 00:00:00+00
basel		F		waste	2021-05-24 00:00:00+00
basel		F		waste	2021-07-08 00:00:00+00
basel		F		waste	2021-07-12 00:00:00+00
basel		F		waste	2021-08-02 00:00:00+00
basel		F		waste	2021-08-30 00:00:00+00
basel		F		waste	2021-09-06 00:00:00+00
basel		F		waste	2021-09-09 00:00:00+00
basel		F		waste	2021-09-23 00:00:00+00
basel		F		waste	2021-10-18 00:00:00+00
basel		F		waste	2021-10-25 00:00:00+00
basel		F		waste	2021-11-04 00:00:00+00
basel		F		waste	2021-11-18 00:00:00+00
basel		F		waste	2021-11-25 00:00:00+00
basel		F		waste	2021-11-29 00:00:00+00
basel		G		waste	2021-01-04 00:00:00+00
basel		G		waste	2021-01-11 00:00:00+00
basel		G		waste	2021-01-14 00:00:00+00
basel		G		waste	2021-01-18 00:00:00+00
basel		G		waste	2021-02-04 00:00:00+00
basel		G		waste	2021-02-08 00:00:00+00
basel		G		waste	2021-02-11 00:00:00+00
basel		G		waste	2021-02-15 00:00:00+00
basel		G		waste	2021-02-18 00:00:00+00
basel		G		waste	2021-03-22 00:00:00+00
basel		G		waste	2021-03-25 00:00:00+00
basel		G		waste	2021-04-12 00:00:00+00
basel		G		waste	2021-04-19 00:00:00+00
basel		G		waste	2021-04-26 00:00:00+00
basel		G		waste	2021-05-06 00:00:00+00
basel		G		waste	2021-05-10 00:00:00+00
basel		G		waste	2021-05-17 00:00:00+00
basel		G		waste	2021-05-24 00:00:00+00
basel		G		waste	2021-06-10 00:00:00+00
basel		G		waste	2021-06-28 00:00:00+00
basel		G		waste	2021-07-05 00:00:00+00
basel		G		waste	2021-08-23 00:00:00+00
basel		G		waste	2021-08-30 00:00:00+00
basel		G		waste	2021-09-23 00:00:00+00
basel		G		waste	2021-10-11 00:00:00+00
basel		G		waste	2021-11-01 00:00:00+00
basel		G		waste	2021-11-08 00:00:00+00
basel		G		waste	2021-11-22 00:00:00+00
basel		G		waste	2021-11-25 00:00:00+00
basel		G		waste	2021-12-06 00:00:00+00
basel		G		waste	2021-12-27 00:00:00+00
basel		H		waste	2021-01-05 00:00:00+00
basel		H		waste	2021-01-19 00:00:00+00
basel		H		waste	2021-01-29 00:00:00+00
basel		H		waste	2021-02-12 00:00:00+00
basel		H		waste	2021-02-26 00:00:00+00
basel		H		waste	2021-03-02 00:00:00+00
basel		H		waste	2021-03-16 00:00:00+00
basel		H		waste	2021-03-23 00:00:00+00
basel		H		waste	2021-03-26 00:00:00+00
basel		H		waste	2021-04-02 00:00:00+00
basel		H		waste	2021-05-04 00:00:00+00
basel		H		waste	2021-05-11 00:00:00+00
basel		H		waste	2021-05-18 00:00:00+00
basel		H		waste	2021-05-28 00:00:00+00
basel		H		waste	2021-07-06 00:00:00+00
basel		H		waste	2021-07-20 00:00:00+00
basel		H		waste	2021-07-30 00:00:00+00
basel		H		waste	2021-08-20 00:00:00+00
basel		H		waste	2021-08-27 00:00:00+00
basel		H		waste	2021-08-31 00:00:00+00
basel		H		waste	2021-09-07 00:00:00+00
basel		H		waste	2021-10-01 00:00:00+00
basel		H		waste	2021-10-08 00:00:00+00
basel		H		waste	2021-10-12 00:00:00+00
basel		H		waste	2021-10-26 00:00:00+00
basel		H		waste	2021-11-12 00:00:00+00
basel		H		waste	2021-11-16 00:00:00+00
basel		H		waste	2021-11-23 00:00:00+00
basel		H		waste	2021-12-07 00:00:00+00
basel		H		waste	2021-12-14 00:00:00+00
basel		H		waste	2021-12-24 00:00:00+00
basel		A		organic	2021-01-21 00:00:00+00
basel		A		organic	2021-03-18 00:00:00+00
basel		A		organic	2021-04-01 00:00:00+00
basel		A		organic	2021-05-20 00:00:00+00
basel		A		organic	2021-06-17 00:00:00+00
basel		A		organic	2021-07-22 00:00:00+00
basel		A		organic	2021-08-19 00:00:00+00
basel		A		organic	2021-09-09 00:00:00+00
basel		A		organic	2021-09-23 00:00:00+00
basel		A		organic	2021-10-21 00:00:00+00
basel		A		organic	2021-11-25 00:00:00+00
basel		A		organic	2021-12-09 00:00:00+00
basel		B		organic	2021-02-04 00:00:00+00
basel		B		organic	2021-03-25 00:00:00+00
basel		B		organic	2021-04-01 00:00:00+00
basel		B		organic	2021-04-08 00:00:00+00
basel		B		organic	2021-04-15 00:00:00+00
basel		B		organic	2021-04-22 00:00:00+00
basel		B		organic	2021-05-27 00:00:00+00
basel		B		organic	2021-07-08 00:00:00+00
basel		B		organic	2021-07-15 00:00:00+00
basel		B		organic	2021-07-29 00:00:00+00
basel		B		organic	2021-09-02 00:00:00+00
basel		B		organic	2021-09-16 00:00:00+00
basel		B		organic	2021-10-28 00:00:00+00
basel		B		organic	2021-11-04 00:00:00+00
basel		B		organic	2021-11-18 00:00:00+00
basel		C		organic	2021-01-08 00:00:00+00
basel		C		organic	2021-02-05 00:00:00+00
basel		C		organic	2021-03-05 00:00:00+00
basel		C		organic	2021-03-12 00:00:00+00
basel		C		organic	2021-04-09 00:00:00+00
basel		C		organic	2021-04-23 00:00:00+00
basel		C		organic	2021-05-07 00:00:00+00
basel		C		organic	2021-05-21 00:00:00+00
basel		C		organic	2021-06-04 00:00:00+00
basel		C		organic	2021-06-25 00:00:00+00
basel		C		organic	2021-07-02 00:00:00+00
basel		C		organic	2021-07-30 00:00:00+00
basel		C		organic	2021-08-20 00:00:00+00
basel		C		organic	2021-09-03 00:00:00+00
basel		C		organic	2021-09-17 00:00:00+00
basel		C		organic	2021-10-01 00:00:00+00
basel		C		organic	2021-10-15 00:00:00+00
basel		C		organic	2021-10-29 00:00:00+00
basel		C		organic	2021-11-05 00:00:00+00
basel		C		organic	2021-11-19 00:00:00+00
basel		D		organic	2021-02-04 00:00:00+00
basel		D		organic	2021-03-04 00:00:00+00
basel		D		organic	2021-04-01 00:00:00+00
basel		D		organic	2021-04-22 00:00:00+00
basel		D		organic	2021-06-03 00:00:00+00
basel		D		organic	2021-06-10 00:00:00+00
basel		D		organic	2021-06-24 00:00:00+00
basel		D		organic	2021-07-29 00:00:00+00
basel		D		organic	2021-08-19 00:00:00+00
basel		D		organic	2021-08-26 00:00:00+00
basel		D		organic	2021-09-02 00:00:00+00
basel		D		organic	2021-10-14 00:00:00+00
basel		D		organic	2021-10-28 00:00:00+00
basel		D		organic	2021-11-18 00:00:00+00
basel		D		organic	2021-11-25 00:00:00+00
basel		E		organic	2021-01-07 00:00:00+00
basel		E		organic	2021-01-21 00:00:00+00
basel		E		organic	2021-02-18 00:00:00+00
basel		E		organic	2021-03-11 00:00:00+00
basel		E		organic	2021-03-18 00:00:00+00
basel		E		organic	2021-03-25 00:00:00+00
basel		E		organic	2021-04-01 00:00:00+00
basel		E		organic	2021-06-03 00:00:00+00
basel		E		organic	2021-07-01 00:00:00+00
basel		E		organic	2021-07-22 00:00:00+00
basel		E		organic	2021-08-19 00:00:00+00
basel		E		organic	2021-09-16 00:00:00+00
basel		E		organic	2021-10-14 00:00:00+00
basel		E		organic	2021-10-21 00:00:00+00
basel		E		organic	2021-10-28 00:00:00+00
basel		E		organic	2021-11-04 00:00:00+00
basel		E		organic	2021-11-25 00:00:00+00
basel		E		organic	2021-12-23 00:00:00+00
basel		F		organic	2021-01-05 00:00:00+00
basel		F		organic	2021-02-02 00:00:00+00
basel		F		organic	2021-02-16 00:00:00+00
basel		F		organic	2021-03-02 00:00:00+00
basel		F		organic	2021-03-23 00:00:00+00
basel		F		organic	2021-04-13 00:00:00+00
basel		F		organic	2021-04-20 00:00:00+00
basel		F		organic	2021-04-27 00:00:00+00
basel		F		organic	2021-05-11 00:00:00+00
basel		F		organic	2021-06-15 00:00:00+00
basel		F		organic	2021-06-22 00:00:00+00
basel		F		organic	2021-07-06 00:00:00+00
basel		F		organic	2021-07-20 00:00:00+00
basel		F		organic	2021-09-07 00:00:00+00
basel		F		organic	2021-09-28 00:00:00+00
basel		F		organic	2021-10-19 00:00:00+00
basel		F		organic	2021-11-23 00:00:00+00
basel		G		organic	2021-01-08 00:00:00+00
basel		G		organic	2021-03-12 00:00:00+00
basel		G		organic	2021-03-19 00:00:00+00
basel		G		organic	2021-03-26 00:00:00+00
basel		G		organic	2021-05-07 00:00:00+00
basel		G		organic	2021-05-14 00:00:00+00
basel		G		organic	2021-07-23 00:00:00+00
basel		G		organic	2021-08-20 00:00:00+00
basel		G		organic	2021-08-27 00:00:00+00
basel		G		organic	2021-10-01 00:00:00+00
basel		G		organic	2021-10-15 00:00:00+00
basel		G		organic	2021-10-29 00:00:00+00
basel		G		organic	2021-11-05 00:00:00+00
basel		H		organic	2021-02-01 00:00:00+00
basel		H		organic	2021-02-15 00:00:00+00
basel		H		organic	2021-03-01 00:00:00+00
basel		H		organic	2021-03-08 00:00:00+00
basel		H		organic	2021-04-26 00:00:00+00
basel		H		organic	2021-05-03 00:00:00+00
basel		H		organic	2021-06-14 00:00:00+00
basel		H		organic	2021-06-28 00:00:00+00
basel		H		organic	2021-07-05 00:00:00+00
basel		H		organic	2021-08-16 00:00:00+00
basel		H		organic	2021-08-23 00:00:00+00
basel		H		organic	2021-09-20 00:00:00+00
basel		H		organic	2021-11-08 00:00:00+00
basel		H		organic	2021-12-20 00:00:00+00
basel		A		metal	2021-01-11 00:00:00+00
basel		A		metal	2021-02-08 00:00:00+00
basel		A		metal	2021-03-10 00:00:00+00
basel		B		metal	2021-02-23 00:00:00+00
basel		B		metal	2021-09-08 00:00:00+00
basel		C		metal	2021-01-12 00:00:00+00
basel		C		metal	2021-02-09 00:00:00+00
basel		C		metal	2021-03-24 00:00:00+00
basel		C		metal	2021-07-14 00:00:00+00
basel		D		metal	2021-12-02 00:00:00+00
basel		E		metal	2021-02-11 00:00:00+00
basel		E		metal	2021-04-07 00:00:00+00
basel		E		metal	2021-07-28 00:00:00+00
basel		F		metal	2021-06-02 00:00:00+00
basel		H		metal	2021-01-25 00:00:00+00
basel		H		metal	2021-11-29 00:00:00+00
basel		H		metal	2021-12-27 00:00:00+00
basel		A		bulky_goods	2021-01-06 00:00:00+00
basel		A		bulky_goods	2021-12-29 00:00:00+00
basel		B		bulky_goods	2021-01-06 00:00:00+00
basel		B		bulky_goods	2021-11-10 00:00:00+00
basel		B		bulky_goods	2021-12-15 00:00:00+00
basel		C		bulky_goods	2021-01-27 00:00:00+00
basel		C		bulky_goods	2021-02-10 00:00:00+00
basel		C		bulky_goods	2021-03-03 00:00:00+00
basel		C		bulky_goods	2021-03-31 00:00:00+00
basel		C		bulky_goods	2021-05-26 00:00:00+00
basel		C		bulky_goods	2021-11-10 00:00:00+00
basel		C		bulky_goods	2021-11-24 00:00:00+00
basel		C		bulky_goods	2021-12-08 00:00:00+00
basel		C		bulky_goods	2021-12-22 00:00:00+00
basel		D		bulky_goods	2021-01-13 00:00:00+00
basel		D		bulky_goods	2021-02-24 00:00:00+00
basel		D		bulky_goods	2021-09-15 00:00:00+00
basel		D		bulky_goods	2021-10-13 00:00:00+00
basel		D		bulky_goods	2021-12-22 00:00:00+00
basel		E		bulky_goods	2021-01-13 00:00:00+00
basel		E		bulky_goods	2021-02-24 00:00:00+00
basel		E		bulky_goods	2021-03-17 00:00:00+00
basel		E		bulky_goods	2021-09-29 00:00:00+00
basel		E		bulky_goods	2021-10-27 00:00:00+00
basel		E		bulky_goods	2021-12-22 00:00:00+00
basel		F		bulky_goods	2021-01-13 00:00:00+00
basel		F		bulky_goods	2021-05-12 00:00:00+00
basel		F		bulky_goods	2021-10-27 00:00:00+00
basel		G		bulky_goods	2021-02-17 00:00:00+00
basel		G		bulky_goods	2021-07-07 00:00:00+00
basel		G		bulky_goods	2021-08-04 00:00:00+00
basel		G		bulky_goods	2021-12-01 00:00:00+00
basel		G		bulky_goods	2021-12-15 00:00:00+00
basel		G		bulky_goods	2021-12-29 00:00:00+00
basel		H		bulky_goods	2021-02-03 00:00:00+00
basel		H		bulky_goods	2021-05-12 00:00:00+00
basel		H		bulky_goods	2021-12-01 00:00:00+00
basel		A		paper	2021-02-10 00:00:00+00
basel		A		paper	2021-04-14 00:00:00+00
basel		A		paper	2021-05-12 00:00:00+00
basel		A		paper	2021-07-07 00:00:00+00
basel		A		paper	2021-10-27 00:00:00+00
basel		A		paper	2021-12-22 00:00:00+00
basel		B		paper	2021-01-13 00:00:00+00
basel		B		paper	2021-02-10 00:00:00+00
basel		B		paper	2021-05-12 00:00:00+00
basel		B		paper	2021-09-29 00:00:00+00
basel		C		paper	2021-05-05 00:00:00+00
basel		C		paper	2021-06-02 00:00:00+00
basel		C		paper	2021-09-22 00:00:00+00
basel		C		paper	2021-11-17 00:00:00+00
basel		C		paper	2021-12-15 00:00:00+00
basel		D		paper	2021-03-10 00:00:00+00
basel		D		paper	2021-10-20 00:00:00+00
basel		E		paper	2021-05-19 00:00:00+00
basel		E		paper	2021-12-01 00:00:00+00
basel		F		paper	2021-01-20 00:00:00+00
basel		F		paper	2021-02-17 00:00:00+00
basel		F		paper	2021-06-16 00:00:00+00
basel		F		paper	2021-07-14 00:00:00+00
basel		F		paper	2021-12-29 00:00:00+00
basel		G		paper	2021-03-31 00:00:00+00
basel		G		paper	2021-07-21 00:00:00+00
basel		G		paper	2021-09-15 00:00:00+00
basel		G		paper	2021-10-13 00:00:00+00
basel		G		paper	2021-12-08 00:00:00+00
basel		H		paper	2021-05-26 00:00:00+00
basel		H		paper	2021-09-15 00:00:00+00
basel		A		incombustibles	2021-03-08 00:00:00+00
basel		A		incombustibles	2021-05-10 00:00:00+00
basel		A		incombustibles	2021-07-12 00:00:00+00
basel		A		incombustibles	2021-10-11 00:00:00+00
basel		B		incombustibles	2021-01-05 00:00:00+00
basel		B		incombustibles	2021-03-02 00:00:00+00
basel		B		incombustibles	2021-04-27 00:00:00+00
basel		C		incombustibles	2021-08-03 00:00:00+00
basel		C		incombustibles	2021-12-07 00:00:00+00
basel		D		incombustibles	2021-02-08 00:00:00+00
basel		D		incombustibles	2021-04-14 00:00:00+00
basel		D		incombustibles	2021-07-26 00:00:00+00
basel		E		incombustibles	2021-02-15 00:00:00+00
basel		E		incombustibles	2021-03-29 00:00:00+00
basel		E		incombustibles	2021-05-31 00:00:00+00
basel		E		incombustibles	2021-07-19 00:00:00+00
basel		F		incombustibles	2021-01-15 00:00:00+00
basel		F		incombustibles	2021-02-23 00:00:00+00
basel		F		incombustibles	2021-07-30 00:00:00+00
basel		F		incombustibles	2021-08-27 00:00:00+00
basel		F		incombustibles	2021-12-24 00:00:00+00
basel		G		incombustibles	2021-06-01 00:00:00+00
basel		G		incombustibles	2021-09-28 00:00:00+00
basel		G		incombustibles	2021-11-24 00:00:00+00
basel		G		incombustibles	2021-12-28 00:00:00+00
basel		H		incombustibles	2021-01-21 00:00:00+00
basel		H		incombustibles	2021-07-01 00:00:00+00
basel		H		incombustibles	2021-08-12 00:00:00+00
basel		A		chipping_service	2021-06-14 00:00:00+00
basel		B		chipping_service	2021-02-15 00:00:00+00
basel		B		chipping_service	2021-04-12 00:00:00+00
basel		C		chipping_service	2021-02-15 00:00:00+00
basel		D		chipping_service	2021-02-15 00:00:00+00
basel		D		chipping_service	2021-04-12 00:00:00+00
basel		D		chipping_service	2021-11-22 00:00:00+00
basel		E		chipping_service	2021-02-17 00:00:00+00
basel		E		chipping_service	2021-06-16 00:00:00+00
basel		F		chipping_service	2021-02-17 00:00:00+00
basel		F		chipping_service	2021-04-14 00:00:00+00
basel		F		chipping_service	2021-09-08 00:00:00+00
basel		H		chipping_service	2021-02-16 00:00:00+00
basel		H		chipping_service	2021-04-13 00:00:00+00
basel		H		chipping_service	2021-09-07 00:00:00+00
basel		A		waste	2022-01-11 00:00:00+00
basel		A		waste	2022-02-04 00:00:00+00
basel		A		waste	2022-02-15 00:00:00+00
basel		A		waste	2022-03-15 00:00:00+00
basel		A		waste	2022-03-25 00:00:00+00
basel		A		waste	2022-04-01 00:00:00+00
basel		A		waste	2022-04-05 00:00:00+00
basel		A		waste	2022-04-22 00:00:00+00
basel		A		waste	2022-04-29 00:00:00+00
basel		A		waste	2022-05-17 00:00:00+00
basel		A		waste	2022-05-20 00:00:00+00
basel		A		waste	2022-06-07 00:00:00+00
basel		A		waste	2022-06-14 00:00:00+00
basel		A		waste	2022-06-17 00:00:00+00
basel		A		waste	2022-06-21 00:00:00+00
basel		A		waste	2022-07-01 00:00:00+00
basel		A		waste	2022-07-08 00:00:00+00
basel		A		waste	2022-07-22 00:00:00+00
basel		A		waste	2022-07-26 00:00:00+00
basel		A		waste	2022-08-05 00:00:00+00
basel		A		waste	2022-08-16 00:00:00+00
basel		A		waste	2022-08-19 00:00:00+00
basel		A		waste	2022-08-23 00:00:00+00
basel		A		waste	2022-08-30 00:00:00+00
basel		A		waste	2022-09-09 00:00:00+00
basel		A		waste	2022-09-16 00:00:00+00
basel		A		waste	2022-09-20 00:00:00+00
basel		A		waste	2022-10-11 00:00:00+00
basel		A		waste	2022-10-14 00:00:00+00
basel		A		waste	2022-10-18 00:00:00+00
basel		A		waste	2022-10-25 00:00:00+00
basel		A		waste	2022-10-28 00:00:00+00
basel		A		waste	2022-11-08 00:00:00+00
basel		A		waste	2022-11-29 00:00:00+00
basel		A		waste	2022-12-02 00:00:00+00
basel		A		waste	2022-12-23 00:00:00+00
basel		B		waste	2022-01-13 00:00:00+00
basel		B		waste	2022-01-17 00:00:00+00
basel		B		waste	2022-01-20 00:00:00+00
basel		B		waste	2022-01-31 00:00:00+00
basel		B		waste	2022-03-17 00:00:00+00
basel		B		waste	2022-03-31 00:00:00+00
basel		B		waste	2022-04-07 00:00:00+00
basel		B		waste	2022-04-25 00:00:00+00
basel		B		waste	2022-04-28 00:00:00+00
basel		B		waste	2022-05-09 00:00:00+00
basel		B		waste	2022-05-16 00:00:00+00
basel		B		waste	2022-05-30 00:00:00+00
basel		B		waste	2022-06-02 00:00:00+00
basel		B		waste	2022-06-13 00:00:00+00
basel		B		waste	2022-06-16 00:00:00+00
basel		B		waste	2022-06-23 00:00:00+00
basel		B		waste	2022-07-04 00:00:00+00
basel		B		waste	2022-07-07 00:00:00+00
basel		B		waste	2022-07-18 00:00:00+00
basel		B		waste	2022-07-21 00:00:00+00
basel		B		waste	2022-08-08 00:00:00+00
basel		B		waste	2022-08-18 00:00:00+00
basel		B		waste	2022-08-29 00:00:00+00
basel		B		waste	2022-09-08 00:00:00+00
basel		B		waste	2022-09-12 00:00:00+00
basel		B		waste	2022-09-15 00:00:00+00
basel		B		waste	2022-09-22 00:00:00+00
basel		B		waste	2022-10-03 00:00:00+00
basel		B		waste	2022-10-10 00:00:00+00
basel		B		waste	2022-10-20 00:00:00+00
basel		B		waste	2022-10-24 00:00:00+00
basel		B		waste	2022-11-10 00:00:00+00
basel		B		waste	2022-11-24 00:00:00+00
basel		B		waste	2022-11-28 00:00:00+00
basel		B		waste	2022-12-01 00:00:00+00
basel		B		waste	2022-12-05 00:00:00+00
basel		B		waste	2022-12-22 00:00:00+00
basel		C		waste	2022-01-03 00:00:00+00
basel		C		waste	2022-01-06 00:00:00+00
basel		C		waste	2022-01-10 00:00:00+00
basel		C		waste	2022-01-17 00:00:00+00
basel		C		waste	2022-02-28 00:00:00+00
basel		C		waste	2022-03-24 00:00:00+00
basel		C		waste	2022-03-28 00:00:00+00
basel		C		waste	2022-04-11 00:00:00+00
basel		C		waste	2022-04-14 00:00:00+00
basel		C		waste	2022-04-21 00:00:00+00
basel		C		waste	2022-05-09 00:00:00+00
basel		C		waste	2022-05-16 00:00:00+00
basel		C		waste	2022-05-23 00:00:00+00
basel		C		waste	2022-06-02 00:00:00+00
basel		C		waste	2022-06-16 00:00:00+00
basel		C		waste	2022-06-20 00:00:00+00
basel		C		waste	2022-06-23 00:00:00+00
basel		C		waste	2022-07-07 00:00:00+00
basel		C		waste	2022-07-11 00:00:00+00
basel		C		waste	2022-07-25 00:00:00+00
basel		C		waste	2022-08-11 00:00:00+00
basel		C		waste	2022-08-25 00:00:00+00
basel		C		waste	2022-09-08 00:00:00+00
basel		C		waste	2022-09-12 00:00:00+00
basel		C		waste	2022-09-15 00:00:00+00
basel		C		waste	2022-09-19 00:00:00+00
basel		C		waste	2022-09-26 00:00:00+00
basel		C		waste	2022-10-03 00:00:00+00
basel		C		waste	2022-10-06 00:00:00+00
basel		C		waste	2022-10-10 00:00:00+00
basel		C		waste	2022-10-17 00:00:00+00
basel		C		waste	2022-10-20 00:00:00+00
basel		C		waste	2022-10-24 00:00:00+00
basel		C		waste	2022-10-27 00:00:00+00
basel		C		waste	2022-11-07 00:00:00+00
basel		C		waste	2022-11-17 00:00:00+00
basel		C		waste	2022-12-15 00:00:00+00
basel		C		waste	2022-12-22 00:00:00+00
basel		C		waste	2022-12-29 00:00:00+00
basel		D		waste	2022-01-11 00:00:00+00
basel		D		waste	2022-02-04 00:00:00+00
basel		D		waste	2022-02-22 00:00:00+00
basel		D		waste	2022-03-01 00:00:00+00
basel		D		waste	2022-03-11 00:00:00+00
basel		D		waste	2022-03-22 00:00:00+00
basel		D		waste	2022-05-13 00:00:00+00
basel		D		waste	2022-05-20 00:00:00+00
basel		D		waste	2022-05-31 00:00:00+00
basel		D		waste	2022-06-21 00:00:00+00
basel		D		waste	2022-07-01 00:00:00+00
basel		D		waste	2022-07-15 00:00:00+00
basel		D		waste	2022-08-02 00:00:00+00
basel		D		waste	2022-08-23 00:00:00+00
basel		D		waste	2022-08-26 00:00:00+00
basel		D		waste	2022-09-16 00:00:00+00
basel		D		waste	2022-09-20 00:00:00+00
basel		D		waste	2022-09-27 00:00:00+00
basel		D		waste	2022-09-30 00:00:00+00
basel		D		waste	2022-10-07 00:00:00+00
basel		D		waste	2022-10-11 00:00:00+00
basel		D		waste	2022-10-21 00:00:00+00
basel		D		waste	2022-11-01 00:00:00+00
basel		D		waste	2022-11-22 00:00:00+00
basel		D		waste	2022-11-25 00:00:00+00
basel		D		waste	2022-12-16 00:00:00+00
basel		D		waste	2022-12-27 00:00:00+00
basel		E		waste	2022-01-04 00:00:00+00
basel		E		waste	2022-01-11 00:00:00+00
basel		E		waste	2022-01-21 00:00:00+00
basel		E		waste	2022-02-08 00:00:00+00
basel		E		waste	2022-02-18 00:00:00+00
basel		E		waste	2022-03-22 00:00:00+00
basel		E		waste	2022-04-05 00:00:00+00
basel		E		waste	2022-04-12 00:00:00+00
basel		E		waste	2022-04-26 00:00:00+00
basel		E		waste	2022-05-10 00:00:00+00
basel		E		waste	2022-05-13 00:00:00+00
basel		E		waste	2022-05-17 00:00:00+00
basel		E		waste	2022-05-24 00:00:00+00
basel		E		waste	2022-05-27 00:00:00+00
basel		E		waste	2022-06-10 00:00:00+00
basel		E		waste	2022-07-05 00:00:00+00
basel		E		waste	2022-07-08 00:00:00+00
basel		E		waste	2022-07-15 00:00:00+00
basel		E		waste	2022-07-19 00:00:00+00
basel		E		waste	2022-07-22 00:00:00+00
basel		E		waste	2022-07-26 00:00:00+00
basel		E		waste	2022-08-12 00:00:00+00
basel		E		waste	2022-08-19 00:00:00+00
basel		E		waste	2022-08-23 00:00:00+00
basel		E		waste	2022-08-30 00:00:00+00
basel		E		waste	2022-09-02 00:00:00+00
basel		E		waste	2022-09-06 00:00:00+00
basel		E		waste	2022-09-09 00:00:00+00
basel		E		waste	2022-09-13 00:00:00+00
basel		E		waste	2022-10-07 00:00:00+00
basel		E		waste	2022-10-11 00:00:00+00
basel		E		waste	2022-10-28 00:00:00+00
basel		E		waste	2022-11-08 00:00:00+00
basel		E		waste	2022-11-15 00:00:00+00
basel		E		waste	2022-11-18 00:00:00+00
basel		E		waste	2022-11-22 00:00:00+00
basel		E		waste	2022-12-02 00:00:00+00
basel		E		waste	2022-12-06 00:00:00+00
basel		E		waste	2022-12-13 00:00:00+00
basel		E		waste	2022-12-16 00:00:00+00
basel		E		waste	2022-12-20 00:00:00+00
basel		E		waste	2022-12-23 00:00:00+00
basel		F		waste	2022-01-03 00:00:00+00
basel		F		waste	2022-01-10 00:00:00+00
basel		F		waste	2022-02-28 00:00:00+00
basel		F		waste	2022-03-10 00:00:00+00
basel		F		waste	2022-03-14 00:00:00+00
basel		F		waste	2022-03-31 00:00:00+00
basel		F		waste	2022-04-04 00:00:00+00
basel		F		waste	2022-04-25 00:00:00+00
basel		F		waste	2022-05-09 00:00:00+00
basel		F		waste	2022-06-09 00:00:00+00
basel		F		waste	2022-06-16 00:00:00+00
basel		F		waste	2022-07-04 00:00:00+00
basel		F		waste	2022-07-07 00:00:00+00
basel		F		waste	2022-07-14 00:00:00+00
basel		F		waste	2022-07-21 00:00:00+00
basel		F		waste	2022-08-04 00:00:00+00
basel		F		waste	2022-08-08 00:00:00+00
basel		F		waste	2022-08-11 00:00:00+00
basel		F		waste	2022-08-25 00:00:00+00
basel		F		waste	2022-09-01 00:00:00+00
basel		F		waste	2022-09-05 00:00:00+00
basel		F		waste	2022-09-08 00:00:00+00
basel		F		waste	2022-09-12 00:00:00+00
basel		F		waste	2022-09-22 00:00:00+00
basel		F		waste	2022-10-10 00:00:00+00
basel		F		waste	2022-10-17 00:00:00+00
basel		F		waste	2022-10-20 00:00:00+00
basel		F		waste	2022-10-27 00:00:00+00
basel		F		waste	2022-11-03 00:00:00+00
basel		F		waste	2022-11-10 00:00:00+00
basel		F		waste	2022-11-17 00:00:00+00
basel		F		waste	2022-11-21 00:00:00+00
basel		F		waste	2022-11-28 00:00:00+00
basel		F		waste	2022-12-08 00:00:00+00
basel		G		waste	2022-01-06 00:00:00+00
basel		G		waste	2022-01-20 00:00:00+00
basel		G		waste	2022-01-24 00:00:00+00
basel		G		waste	2022-01-31 00:00:00+00
basel		G		waste	2022-02-07 00:00:00+00
basel		G		waste	2022-02-10 00:00:00+00
basel		G		waste	2022-02-24 00:00:00+00
basel		G		waste	2022-02-28 00:00:00+00
basel		G		waste	2022-03-07 00:00:00+00
basel		G		waste	2022-03-24 00:00:00+00
basel		G		waste	2022-03-31 00:00:00+00
basel		G		waste	2022-04-04 00:00:00+00
basel		G		waste	2022-04-11 00:00:00+00
basel		G		waste	2022-04-21 00:00:00+00
basel		G		waste	2022-04-28 00:00:00+00
basel		G		waste	2022-05-16 00:00:00+00
basel		G		waste	2022-06-16 00:00:00+00
basel		G		waste	2022-06-20 00:00:00+00
basel		G		waste	2022-06-30 00:00:00+00
basel		G		waste	2022-07-04 00:00:00+00
basel		G		waste	2022-07-07 00:00:00+00
basel		G		waste	2022-07-14 00:00:00+00
basel		G		waste	2022-07-21 00:00:00+00
basel		G		waste	2022-08-15 00:00:00+00
basel		G		waste	2022-09-15 00:00:00+00
basel		G		waste	2022-09-26 00:00:00+00
basel		G		waste	2022-09-29 00:00:00+00
basel		G		waste	2022-10-06 00:00:00+00
basel		G		waste	2022-10-20 00:00:00+00
basel		G		waste	2022-12-05 00:00:00+00
basel		G		waste	2022-12-12 00:00:00+00
basel		G		waste	2022-12-15 00:00:00+00
basel		G		waste	2022-12-22 00:00:00+00
basel		H		waste	2022-01-18 00:00:00+00
basel		H		waste	2022-02-04 00:00:00+00
basel		H		waste	2022-02-11 00:00:00+00
basel		H		waste	2022-02-25 00:00:00+00
basel		H		waste	2022-03-01 00:00:00+00
basel		H		waste	2022-03-04 00:00:00+00
basel		H		waste	2022-03-29 00:00:00+00
basel		H		waste	2022-04-08 00:00:00+00
basel		H		waste	2022-04-12 00:00:00+00
basel		H		waste	2022-04-26 00:00:00+00
basel		H		waste	2022-05-03 00:00:00+00
basel		H		waste	2022-05-06 00:00:00+00
basel		H		waste	2022-06-03 00:00:00+00
basel		H		waste	2022-06-07 00:00:00+00
basel		H		waste	2022-06-28 00:00:00+00
basel		H		waste	2022-07-01 00:00:00+00
basel		H		waste	2022-07-22 00:00:00+00
basel		H		waste	2022-08-02 00:00:00+00
basel		H		waste	2022-08-09 00:00:00+00
basel		H		waste	2022-08-12 00:00:00+00
basel		H		waste	2022-08-23 00:00:00+00
basel		H		waste	2022-08-26 00:00:00+00
basel		H		waste	2022-08-30 00:00:00+00
basel		H		waste	2022-09-09 00:00:00+00
basel		H		waste	2022-09-13 00:00:00+00
basel		H		waste	2022-09-20 00:00:00+00
basel		H		waste	2022-10-04 00:00:00+00
basel		H		waste	2022-10-11 00:00:00+00
basel		H		waste	2022-10-25 00:00:00+00
basel		H		waste	2022-11-11 00:00:00+00
basel		H		waste	2022-12-02 00:00:00+00
basel		H		waste	2022-12-09 00:00:00+00
basel		H		waste	2022-12-23 00:00:00+00
basel		A		organic	2022-02-03 00:00:00+00
basel		A		organic	2022-02-17 00:00:00+00
basel		A		organic	2022-03-03 00:00:00+00
basel		A		organic	2022-03-10 00:00:00+00
basel		A		organic	2022-03-24 00:00:00+00
basel		A		organic	2022-06-02 00:00:00+00
basel		A		organic	2022-07-14 00:00:00+00
basel		A		organic	2022-08-25 00:00:00+00
basel		A		organic	2022-10-06 00:00:00+00
basel		A		organic	2022-10-20 00:00:00+00
basel		A		organic	2022-11-10 00:00:00+00
basel		B		organic	2022-01-06 00:00:00+00
basel		B		organic	2022-02-17 00:00:00+00
basel		B		organic	2022-03-17 00:00:00+00
basel		B		organic	2022-03-31 00:00:00+00
basel		B		organic	2022-06-23 00:00:00+00
basel		B		organic	2022-06-30 00:00:00+00
basel		B		organic	2022-07-21 00:00:00+00
basel		B		organic	2022-08-18 00:00:00+00
basel		B		organic	2022-09-01 00:00:00+00
basel		B		organic	2022-09-29 00:00:00+00
basel		B		organic	2022-10-06 00:00:00+00
basel		B		organic	2022-10-20 00:00:00+00
basel		B		organic	2022-10-27 00:00:00+00
basel		B		organic	2022-11-03 00:00:00+00
basel		B		organic	2022-11-10 00:00:00+00
basel		B		organic	2022-11-24 00:00:00+00
basel		C		organic	2022-02-04 00:00:00+00
basel		C		organic	2022-03-18 00:00:00+00
basel		C		organic	2022-06-17 00:00:00+00
basel		C		organic	2022-06-24 00:00:00+00
basel		C		organic	2022-07-01 00:00:00+00
basel		C		organic	2022-07-15 00:00:00+00
basel		C		organic	2022-07-29 00:00:00+00
basel		C		organic	2022-09-02 00:00:00+00
basel		C		organic	2022-09-09 00:00:00+00
basel		C		organic	2022-10-07 00:00:00+00
basel		D		organic	2022-01-20 00:00:00+00
basel		D		organic	2022-02-17 00:00:00+00
basel		D		organic	2022-04-14 00:00:00+00
basel		D		organic	2022-05-05 00:00:00+00
basel		D		organic	2022-06-23 00:00:00+00
basel		D		organic	2022-06-30 00:00:00+00
basel		D		organic	2022-07-07 00:00:00+00
basel		D		organic	2022-07-21 00:00:00+00
basel		D		organic	2022-08-18 00:00:00+00
basel		D		organic	2022-09-08 00:00:00+00
basel		D		organic	2022-10-20 00:00:00+00
basel		D		organic	2022-10-27 00:00:00+00
basel		E		organic	2022-01-06 00:00:00+00
basel		E		organic	2022-01-20 00:00:00+00
basel		E		organic	2022-02-03 00:00:00+00
basel		E		organic	2022-02-17 00:00:00+00
basel		E		organic	2022-03-24 00:00:00+00
basel		E		organic	2022-03-31 00:00:00+00
basel		E		organic	2022-04-07 00:00:00+00
basel		E		organic	2022-04-28 00:00:00+00
basel		E		organic	2022-05-05 00:00:00+00
basel		E		organic	2022-06-16 00:00:00+00
basel		E		organic	2022-06-23 00:00:00+00
basel		E		organic	2022-07-28 00:00:00+00
basel		E		organic	2022-08-04 00:00:00+00
basel		E		organic	2022-09-01 00:00:00+00
basel		E		organic	2022-11-10 00:00:00+00
basel		F		organic	2022-02-15 00:00:00+00
basel		F		organic	2022-03-01 00:00:00+00
basel		F		organic	2022-04-05 00:00:00+00
basel		F		organic	2022-04-19 00:00:00+00
basel		F		organic	2022-04-26 00:00:00+00
basel		F		organic	2022-05-17 00:00:00+00
basel		F		organic	2022-05-24 00:00:00+00
basel		F		organic	2022-05-31 00:00:00+00
basel		F		organic	2022-06-07 00:00:00+00
basel		F		organic	2022-06-14 00:00:00+00
basel		F		organic	2022-06-21 00:00:00+00
basel		F		organic	2022-07-05 00:00:00+00
basel		F		organic	2022-07-19 00:00:00+00
basel		F		organic	2022-07-26 00:00:00+00
basel		F		organic	2022-08-02 00:00:00+00
basel		F		organic	2022-08-23 00:00:00+00
basel		F		organic	2022-08-30 00:00:00+00
basel		F		organic	2022-09-06 00:00:00+00
basel		F		organic	2022-09-20 00:00:00+00
basel		F		organic	2022-10-04 00:00:00+00
basel		F		organic	2022-10-18 00:00:00+00
basel		F		organic	2022-10-25 00:00:00+00
basel		G		organic	2022-02-04 00:00:00+00
basel		G		organic	2022-02-18 00:00:00+00
basel		G		organic	2022-03-25 00:00:00+00
basel		G		organic	2022-04-08 00:00:00+00
basel		G		organic	2022-04-29 00:00:00+00
basel		G		organic	2022-05-06 00:00:00+00
basel		G		organic	2022-05-13 00:00:00+00
basel		G		organic	2022-06-03 00:00:00+00
basel		G		organic	2022-06-10 00:00:00+00
basel		G		organic	2022-06-24 00:00:00+00
basel		G		organic	2022-07-22 00:00:00+00
basel		G		organic	2022-08-12 00:00:00+00
basel		G		organic	2022-09-02 00:00:00+00
basel		G		organic	2022-09-09 00:00:00+00
basel		G		organic	2022-10-07 00:00:00+00
basel		G		organic	2022-10-14 00:00:00+00
basel		G		organic	2022-11-18 00:00:00+00
basel		H		organic	2022-05-16 00:00:00+00
basel		H		organic	2022-08-08 00:00:00+00
basel		H		organic	2022-08-29 00:00:00+00
basel		H		organic	2022-10-17 00:00:00+00
basel		H		organic	2022-10-24 00:00:00+00
basel		H		organic	2022-10-31 00:00:00+00
basel		H		organic	2022-11-14 00:00:00+00
basel		G		metal	2022-01-14 00:00:00+00
basel		D		metal	2022-01-27 00:00:00+00
basel		C		metal	2022-02-08 00:00:00+00
basel		E		metal	2022-02-10 00:00:00+00
basel		B		metal	2022-02-22 00:00:00+00
basel		D		metal	2022-02-24 00:00:00+00
basel		A		metal	2022-03-09 00:00:00+00
basel		E		metal	2022-03-23 00:00:00+00
basel		B		metal	2022-05-04 00:00:00+00
basel		A		metal	2022-06-29 00:00:00+00
basel		E		metal	2022-07-13 00:00:00+00
basel		G		metal	2022-08-10 00:00:00+00
basel		D		metal	2022-09-21 00:00:00+00
basel		E		metal	2022-11-02 00:00:00+00
basel		B		metal	2022-11-29 00:00:00+00
basel		E		metal	2022-12-15 00:00:00+00
basel		G		metal	2022-12-16 00:00:00+00
basel		A		bulky_goods	2022-01-12 00:00:00+00
basel		A		bulky_goods	2022-03-30 00:00:00+00
basel		A		bulky_goods	2022-09-14 00:00:00+00
basel		A		bulky_goods	2022-10-12 00:00:00+00
basel		A		bulky_goods	2022-11-09 00:00:00+00
basel		A		bulky_goods	2022-12-21 00:00:00+00
basel		B		bulky_goods	2022-02-23 00:00:00+00
basel		B		bulky_goods	2022-10-12 00:00:00+00
basel		B		bulky_goods	2022-12-21 00:00:00+00
basel		C		bulky_goods	2022-02-02 00:00:00+00
basel		C		bulky_goods	2022-03-30 00:00:00+00
basel		C		bulky_goods	2022-08-17 00:00:00+00
basel		C		bulky_goods	2022-11-09 00:00:00+00
basel		C		bulky_goods	2022-12-14 00:00:00+00
basel		D		bulky_goods	2022-01-19 00:00:00+00
basel		D		bulky_goods	2022-02-16 00:00:00+00
basel		D		bulky_goods	2022-03-02 00:00:00+00
basel		D		bulky_goods	2022-04-27 00:00:00+00
basel		D		bulky_goods	2022-06-22 00:00:00+00
basel		D		bulky_goods	2022-07-20 00:00:00+00
basel		D		bulky_goods	2022-09-14 00:00:00+00
basel		D		bulky_goods	2022-12-28 00:00:00+00
basel		E		bulky_goods	2022-01-05 00:00:00+00
basel		E		bulky_goods	2022-02-02 00:00:00+00
basel		E		bulky_goods	2022-03-16 00:00:00+00
basel		E		bulky_goods	2022-06-08 00:00:00+00
basel		E		bulky_goods	2022-08-31 00:00:00+00
basel		E		bulky_goods	2022-11-23 00:00:00+00
basel		E		bulky_goods	2022-12-14 00:00:00+00
basel		F		bulky_goods	2022-02-16 00:00:00+00
basel		F		bulky_goods	2022-05-11 00:00:00+00
basel		F		bulky_goods	2022-08-03 00:00:00+00
basel		F		bulky_goods	2022-10-26 00:00:00+00
basel		F		bulky_goods	2022-11-23 00:00:00+00
basel		F		bulky_goods	2022-12-14 00:00:00+00
basel		F		bulky_goods	2022-12-28 00:00:00+00
basel		G		bulky_goods	2022-01-12 00:00:00+00
basel		G		bulky_goods	2022-01-26 00:00:00+00
basel		G		bulky_goods	2022-02-23 00:00:00+00
basel		G		bulky_goods	2022-03-16 00:00:00+00
basel		G		bulky_goods	2022-05-11 00:00:00+00
basel		G		bulky_goods	2022-08-03 00:00:00+00
basel		G		bulky_goods	2022-08-31 00:00:00+00
basel		G		bulky_goods	2022-09-28 00:00:00+00
basel		G		bulky_goods	2022-10-26 00:00:00+00
basel		H		bulky_goods	2022-02-23 00:00:00+00
basel		H		bulky_goods	2022-04-13 00:00:00+00
basel		H		bulky_goods	2022-06-08 00:00:00+00
basel		H		bulky_goods	2022-08-03 00:00:00+00
basel		H		bulky_goods	2022-08-31 00:00:00+00
basel		H		bulky_goods	2022-11-23 00:00:00+00
basel		A		paper	2022-01-19 00:00:00+00
basel		A		paper	2022-04-20 00:00:00+00
basel		A		paper	2022-05-18 00:00:00+00
basel		A		paper	2022-06-15 00:00:00+00
basel		A		paper	2022-10-05 00:00:00+00
basel		B		paper	2022-01-19 00:00:00+00
basel		B		paper	2022-05-18 00:00:00+00
basel		B		paper	2022-06-15 00:00:00+00
basel		B		paper	2022-09-07 00:00:00+00
basel		B		paper	2022-11-02 00:00:00+00
basel		B		paper	2022-11-30 00:00:00+00
basel		B		paper	2022-12-28 00:00:00+00
basel		C		paper	2022-01-12 00:00:00+00
basel		C		paper	2022-04-13 00:00:00+00
basel		C		paper	2022-06-08 00:00:00+00
basel		C		paper	2022-09-28 00:00:00+00
basel		C		paper	2022-10-26 00:00:00+00
basel		D		paper	2022-03-16 00:00:00+00
basel		D		paper	2022-04-13 00:00:00+00
basel		D		paper	2022-06-08 00:00:00+00
basel		D		paper	2022-09-28 00:00:00+00
basel		E		paper	2022-01-26 00:00:00+00
basel		E		paper	2022-05-25 00:00:00+00
basel		E		paper	2022-06-22 00:00:00+00
basel		E		paper	2022-08-17 00:00:00+00
basel		F		paper	2022-02-23 00:00:00+00
basel		F		paper	2022-05-25 00:00:00+00
basel		F		paper	2022-06-22 00:00:00+00
basel		F		paper	2022-07-20 00:00:00+00
basel		F		paper	2022-09-14 00:00:00+00
basel		F		paper	2022-10-12 00:00:00+00
basel		G		paper	2022-02-02 00:00:00+00
basel		G		paper	2022-03-02 00:00:00+00
basel		G		paper	2022-04-06 00:00:00+00
basel		G		paper	2022-06-01 00:00:00+00
basel		G		paper	2022-11-16 00:00:00+00
basel		H		paper	2022-02-02 00:00:00+00
basel		H		paper	2022-03-02 00:00:00+00
basel		H		paper	2022-04-06 00:00:00+00
basel		H		paper	2022-08-24 00:00:00+00
basel		A		incombustibles	2022-05-11 00:00:00+00
basel		A		incombustibles	2022-09-28 00:00:00+00
basel		A		incombustibles	2022-11-23 00:00:00+00
basel		A		incombustibles	2022-12-14 00:00:00+00
basel		B		incombustibles	2022-09-28 00:00:00+00
basel		B		incombustibles	2022-10-26 00:00:00+00
basel		B		incombustibles	2022-12-14 00:00:00+00
basel		C		incombustibles	2022-01-26 00:00:00+00
basel		C		incombustibles	2022-02-23 00:00:00+00
basel		C		incombustibles	2022-03-23 00:00:00+00
basel		C		incombustibles	2022-06-15 00:00:00+00
basel		C		incombustibles	2022-08-10 00:00:00+00
basel		C		incombustibles	2022-09-07 00:00:00+00
basel		C		incombustibles	2022-10-05 00:00:00+00
basel		D		incombustibles	2022-01-26 00:00:00+00
basel		D		incombustibles	2022-05-18 00:00:00+00
basel		D		incombustibles	2022-11-02 00:00:00+00
basel		E		incombustibles	2022-04-06 00:00:00+00
basel		E		incombustibles	2022-06-01 00:00:00+00
basel		E		incombustibles	2022-06-29 00:00:00+00
basel		E		incombustibles	2022-07-27 00:00:00+00
basel		F		incombustibles	2022-03-09 00:00:00+00
basel		F		incombustibles	2022-04-06 00:00:00+00
basel		F		incombustibles	2022-06-29 00:00:00+00
basel		F		incombustibles	2022-07-27 00:00:00+00
basel		F		incombustibles	2022-08-24 00:00:00+00
basel		F		incombustibles	2022-12-21 00:00:00+00
basel		G		incombustibles	2022-03-30 00:00:00+00
basel		G		incombustibles	2022-04-27 00:00:00+00
basel		G		incombustibles	2022-08-17 00:00:00+00
basel		G		incombustibles	2022-09-14 00:00:00+00
basel		H		incombustibles	2022-02-16 00:00:00+00
basel		H		incombustibles	2022-06-22 00:00:00+00
basel		A		chipping_service	2022-04-11 00:00:00+00
basel		A		chipping_service	2022-06-13 00:00:00+00
basel		A		chipping_service	2022-09-05 00:00:00+00
basel		B		chipping_service	2022-06-13 00:00:00+00
basel		B		chipping_service	2022-09-05 00:00:00+00
basel		C		chipping_service	2022-02-21 00:00:00+00
basel		C		chipping_service	2022-06-13 00:00:00+00
basel		C		chipping_service	2022-09-05 00:00:00+00
basel		D		chipping_service	2022-04-11 00:00:00+00
basel		E		chipping_service	2022-04-13 00:00:00+00
basel		E		chipping_service	2022-09-07 00:00:00+00
basel		E		chipping_service	2022-11-23 00:00:00+00
basel		F		chipping_service	2022-02-23 00:00:00+00
basel		F		chipping_service	2022-04-13 00:00:00+00
basel		F		chipping_service	2022-06-15 00:00:00+00
basel		F		chipping_service	2022-09-07 00:00:00+00
basel		G		chipping_service	2022-11-22 00:00:00+00
basel		H		chipping_service	2022-04-12 00:00:00+00
basel		A		waste	2023-04-07 00:00:00+00
basel		A		waste	2023-08-01 00:00:00+00
basel		A		waste	2023-12-26 00:00:00+00
basel		A		metal	2023-05-01 00:00:00+00
basel		A		metal	2023-12-25 00:00:00+00
basel		B		waste	2023-05-29 00:00:00+00
basel		B		waste	2023-12-25 00:00:00+00
basel		B		metal	2023-08-01 00:00:00+00
basel		B		metal	2023-12-26 00:00:00+00
basel		C		waste	2023-05-01 00:00:00+00
basel		C		waste	2023-12-25 00:00:00+00
basel		C		metal	2023-08-01 00:00:00+00
basel		E		organic	2023-05-18 00:00:00+00
basel		E		metal	2023-05-18 00:00:00+00
basel		G		organic	2023-04-07 00:00:00+00
basel		H		organic	2023-05-29 00:00:00+00
basel		H		organic	2023-12-25 00:00:00+00
basel		H		waste	2023-12-26 00:00:00+00
basel		H		metal	2023-04-10 00:00:00+00
basel		H		metal	2023-05-01 00:00:00+00
basel		H		metal	2023-05-29 00:00:00+00
basel		B		bulky_goods	2023-01-18 00:00:00+00
basel		C		bulky_goods	2023-01-25 00:00:00+00
basel		E		bulky_goods	2023-01-25 00:00:00+00
basel		A		bulky_goods	2023-02-01 00:00:00+00
basel		B		bulky_goods	2023-02-01 00:00:00+00
basel		C		bulky_goods	2023-02-08 00:00:00+00
basel		A		bulky_goods	2023-02-15 00:00:00+00
basel		G		bulky_goods	2023-02-15 00:00:00+00
basel		H		bulky_goods	2023-02-15 00:00:00+00
basel		E		bulky_goods	2023-02-22 00:00:00+00
basel		F		bulky_goods	2023-02-22 00:00:00+00
basel		F		bulky_goods	2023-03-01 00:00:00+00
basel		A		bulky_goods	2023-03-15 00:00:00+00
basel		C		bulky_goods	2023-03-15 00:00:00+00
basel		F		bulky_goods	2023-03-29 00:00:00+00
basel		H		bulky_goods	2023-03-29 00:00:00+00
basel		B		bulky_goods	2023-04-12 00:00:00+00
basel		D		bulky_goods	2023-04-12 00:00:00+00
basel		F		bulky_goods	2023-05-24 00:00:00+00
basel		G		bulky_goods	2023-05-24 00:00:00+00
basel		H		bulky_goods	2023-06-21 00:00:00+00
basel		H		bulky_goods	2023-07-19 00:00:00+00
basel		E		bulky_goods	2023-08-16 00:00:00+00
basel		G		bulky_goods	2023-08-16 00:00:00+00
basel		A		bulky_goods	2023-08-30 00:00:00+00
basel		C		bulky_goods	2023-08-30 00:00:00+00
basel		D		bulky_goods	2023-08-30 00:00:00+00
basel		E		bulky_goods	2023-09-13 00:00:00+00
basel		G		bulky_goods	2023-09-13 00:00:00+00
basel		H		bulky_goods	2023-09-13 00:00:00+00
basel		B		bulky_goods	2023-09-27 00:00:00+00
basel		D		bulky_goods	2023-09-27 00:00:00+00
basel		D		bulky_goods	2023-10-25 00:00:00+00
basel		B		bulky_goods	2023-11-22 00:00:00+00
basel		C		bulky_goods	2023-11-22 00:00:00+00
basel		B		bulky_goods	2023-12-27 00:00:00+00
basel		G		bulky_goods	2023-12-27 00:00:00+00
basel		H		bulky_goods	2023-12-27 00:00:00+00
basel		G		bulky_goods	2023-01-04 00:00:00+00
basel		A		bulky_goods	2023-06-07 00:00:00+00
basel		B		bulky_goods	2023-12-13 00:00:00+00
basel		F		organic	2023-02-14 00:00:00+00
basel		F		organic	2023-03-28 00:00:00+00
basel		F		organic	2023-04-18 00:00:00+00
basel		F		organic	2023-06-20 00:00:00+00
basel		F		organic	2023-07-04 00:00:00+00
basel		F		organic	2023-07-25 00:00:00+00
basel		F		organic	2023-08-08 00:00:00+00
basel		F		organic	2023-08-15 00:00:00+00
basel		F		organic	2023-08-29 00:00:00+00
basel		F		organic	2023-09-05 00:00:00+00
basel		F		organic	2023-10-10 00:00:00+00
basel		F		organic	2023-10-17 00:00:00+00
basel		F		organic	2023-11-14 00:00:00+00
basel		F		organic	2023-01-03 00:00:00+00
basel		E		organic	2023-01-19 00:00:00+00
basel		A		organic	2023-02-16 00:00:00+00
basel		B		organic	2023-02-16 00:00:00+00
basel		D		organic	2023-02-16 00:00:00+00
basel		E		organic	2023-02-16 00:00:00+00
basel		A		organic	2023-03-02 00:00:00+00
basel		A		organic	2023-03-09 00:00:00+00
basel		A		organic	2023-03-16 00:00:00+00
basel		D		organic	2023-03-16 00:00:00+00
basel		E		organic	2023-03-16 00:00:00+00
basel		A		organic	2023-03-30 00:00:00+00
basel		E		organic	2023-03-30 00:00:00+00
basel		A		organic	2023-04-06 00:00:00+00
basel		B		organic	2023-04-06 00:00:00+00
basel		D		organic	2023-04-06 00:00:00+00
basel		A		organic	2023-04-13 00:00:00+00
basel		B		organic	2023-04-13 00:00:00+00
basel		A		organic	2023-05-11 00:00:00+00
basel		B		organic	2023-05-11 00:00:00+00
basel		D		organic	2023-05-11 00:00:00+00
basel		A		organic	2023-05-25 00:00:00+00
basel		D		organic	2023-05-25 00:00:00+00
basel		A		organic	2023-06-01 00:00:00+00
basel		B		organic	2023-06-01 00:00:00+00
basel		A		organic	2023-06-08 00:00:00+00
basel		B		organic	2023-06-08 00:00:00+00
basel		D		organic	2023-06-08 00:00:00+00
basel		E		organic	2023-06-08 00:00:00+00
basel		A		organic	2023-06-15 00:00:00+00
basel		B		organic	2023-06-22 00:00:00+00
basel		D		organic	2023-06-22 00:00:00+00
basel		A		organic	2023-07-06 00:00:00+00
basel		B		organic	2023-07-06 00:00:00+00
basel		B		organic	2023-07-13 00:00:00+00
basel		E		organic	2023-07-13 00:00:00+00
basel		D		organic	2023-07-20 00:00:00+00
basel		A		organic	2023-07-27 00:00:00+00
basel		E		organic	2023-07-27 00:00:00+00
basel		E		organic	2023-08-03 00:00:00+00
basel		A		organic	2023-08-10 00:00:00+00
basel		B		organic	2023-08-10 00:00:00+00
basel		D		organic	2023-08-10 00:00:00+00
basel		E		organic	2023-08-10 00:00:00+00
basel		A		organic	2023-08-17 00:00:00+00
basel		D		organic	2023-09-07 00:00:00+00
basel		D		organic	2023-09-21 00:00:00+00
basel		B		organic	2023-09-28 00:00:00+00
basel		E		organic	2023-09-28 00:00:00+00
basel		B		organic	2023-10-05 00:00:00+00
basel		D		organic	2023-10-05 00:00:00+00
basel		E		organic	2023-10-05 00:00:00+00
basel		A		organic	2023-10-12 00:00:00+00
basel		E		organic	2023-10-12 00:00:00+00
basel		B		organic	2023-10-19 00:00:00+00
basel		E		organic	2023-10-19 00:00:00+00
basel		A		organic	2023-11-09 00:00:00+00
basel		B		organic	2023-11-09 00:00:00+00
basel		B		organic	2023-11-23 00:00:00+00
basel		E		organic	2023-11-23 00:00:00+00
basel		E		organic	2023-11-30 00:00:00+00
basel		B		organic	2023-12-14 00:00:00+00
basel		E		organic	2023-12-14 00:00:00+00
basel		A		organic	2023-12-28 00:00:00+00
basel		G		organic	2023-02-03 00:00:00+00
basel		C		organic	2023-02-17 00:00:00+00
basel		C		organic	2023-03-10 00:00:00+00
basel		C		organic	2023-03-17 00:00:00+00
basel		G		organic	2023-03-17 00:00:00+00
basel		C		organic	2023-03-24 00:00:00+00
basel		G		organic	2023-03-24 00:00:00+00
basel		C		organic	2023-05-12 00:00:00+00
basel		C		organic	2023-06-09 00:00:00+00
basel		C		organic	2023-06-16 00:00:00+00
basel		G		organic	2023-06-16 00:00:00+00
basel		C		organic	2023-06-23 00:00:00+00
basel		C		organic	2023-07-07 00:00:00+00
basel		G		organic	2023-07-14 00:00:00+00
basel		G		organic	2023-07-28 00:00:00+00
basel		C		organic	2023-08-18 00:00:00+00
basel		C		organic	2023-09-22 00:00:00+00
basel		G		organic	2023-10-06 00:00:00+00
basel		G		organic	2023-10-13 00:00:00+00
basel		G		organic	2023-10-20 00:00:00+00
basel		C		organic	2023-11-03 00:00:00+00
basel		C		organic	2023-11-17 00:00:00+00
basel		G		organic	2023-11-17 00:00:00+00
basel		C		organic	2023-11-24 00:00:00+00
basel		G		organic	2023-11-24 00:00:00+00
basel		C		organic	2023-12-01 00:00:00+00
basel		C		organic	2023-12-15 00:00:00+00
basel		G		organic	2023-12-15 00:00:00+00
basel		H		organic	2023-01-30 00:00:00+00
basel		H		organic	2023-04-24 00:00:00+00
basel		H		organic	2023-05-08 00:00:00+00
basel		H		organic	2023-05-22 00:00:00+00
basel		H		organic	2023-06-12 00:00:00+00
basel		H		organic	2023-07-10 00:00:00+00
basel		H		organic	2023-07-24 00:00:00+00
basel		H		organic	2023-08-28 00:00:00+00
basel		H		organic	2023-09-04 00:00:00+00
basel		H		organic	2023-09-11 00:00:00+00
basel		H		organic	2023-09-18 00:00:00+00
basel		H		chipping_service	2023-04-18 00:00:00+00
basel		G		chipping_service	2023-09-12 00:00:00+00
basel		H		chipping_service	2023-09-12 00:00:00+00
basel		G		chipping_service	2023-11-28 00:00:00+00
basel		E		chipping_service	2023-02-22 00:00:00+00
basel		F		chipping_service	2023-04-19 00:00:00+00
basel		E		chipping_service	2023-06-21 00:00:00+00
basel		A		chipping_service	2023-02-20 00:00:00+00
basel		A		chipping_service	2023-04-17 00:00:00+00
basel		D		chipping_service	2023-04-17 00:00:00+00
basel		A		chipping_service	2023-09-11 00:00:00+00
basel		H		waste	2023-01-17 00:00:00+00
basel		D		waste	2023-01-24 00:00:00+00
basel		H		waste	2023-01-24 00:00:00+00
basel		A		waste	2023-01-31 00:00:00+00
basel		E		waste	2023-01-31 00:00:00+00
basel		D		waste	2023-02-07 00:00:00+00
basel		E		waste	2023-02-07 00:00:00+00
basel		H		waste	2023-02-07 00:00:00+00
basel		A		waste	2023-02-14 00:00:00+00
basel		E		waste	2023-02-28 00:00:00+00
basel		H		waste	2023-02-28 00:00:00+00
basel		A		waste	2023-03-07 00:00:00+00
basel		D		waste	2023-03-14 00:00:00+00
basel		H		waste	2023-03-14 00:00:00+00
basel		A		waste	2023-03-28 00:00:00+00
basel		D		waste	2023-04-04 00:00:00+00
basel		E		waste	2023-04-04 00:00:00+00
basel		D		waste	2023-04-18 00:00:00+00
basel		D		waste	2023-04-25 00:00:00+00
basel		H		waste	2023-04-25 00:00:00+00
basel		E		waste	2023-05-09 00:00:00+00
basel		H		waste	2023-05-16 00:00:00+00
basel		D		waste	2023-05-23 00:00:00+00
basel		H		waste	2023-06-20 00:00:00+00
basel		A		waste	2023-06-27 00:00:00+00
basel		H		waste	2023-07-04 00:00:00+00
basel		H		waste	2023-07-11 00:00:00+00
basel		E		waste	2023-07-18 00:00:00+00
basel		E		waste	2023-07-25 00:00:00+00
basel		D		waste	2023-08-08 00:00:00+00
basel		D		waste	2023-08-15 00:00:00+00
basel		D		waste	2023-08-22 00:00:00+00
basel		A		waste	2023-08-29 00:00:00+00
basel		D		waste	2023-08-29 00:00:00+00
basel		D		waste	2023-09-05 00:00:00+00
basel		E		waste	2023-09-05 00:00:00+00
basel		H		waste	2023-09-12 00:00:00+00
basel		E		waste	2023-09-19 00:00:00+00
basel		D		waste	2023-09-26 00:00:00+00
basel		A		waste	2023-10-03 00:00:00+00
basel		E		waste	2023-10-03 00:00:00+00
basel		A		waste	2023-10-17 00:00:00+00
basel		D		waste	2023-10-17 00:00:00+00
basel		E		waste	2023-10-17 00:00:00+00
basel		E		waste	2023-10-31 00:00:00+00
basel		D		waste	2023-11-07 00:00:00+00
basel		H		waste	2023-11-14 00:00:00+00
basel		E		waste	2023-11-21 00:00:00+00
basel		D		waste	2023-11-28 00:00:00+00
basel		E		waste	2023-11-28 00:00:00+00
basel		D		waste	2023-12-12 00:00:00+00
basel		H		waste	2023-12-19 00:00:00+00
basel		D		waste	2023-01-03 00:00:00+00
basel		H		waste	2023-01-10 00:00:00+00
basel		A		waste	2023-06-06 00:00:00+00
basel		D		waste	2023-06-06 00:00:00+00
basel		D		waste	2023-06-13 00:00:00+00
basel		H		waste	2023-06-13 00:00:00+00
basel		B		waste	2023-01-05 00:00:00+00
basel		F		waste	2023-01-05 00:00:00+00
basel		G		waste	2023-01-05 00:00:00+00
basel		B		waste	2023-01-12 00:00:00+00
basel		F		waste	2023-01-12 00:00:00+00
basel		B		waste	2023-01-19 00:00:00+00
basel		C		waste	2023-01-19 00:00:00+00
basel		B		waste	2023-01-26 00:00:00+00
basel		C		waste	2023-01-26 00:00:00+00
basel		G		waste	2023-01-26 00:00:00+00
basel		B		waste	2023-02-02 00:00:00+00
basel		C		waste	2023-02-02 00:00:00+00
basel		G		waste	2023-02-02 00:00:00+00
basel		F		waste	2023-02-09 00:00:00+00
basel		G		waste	2023-02-09 00:00:00+00
basel		F		waste	2023-02-16 00:00:00+00
basel		G		waste	2023-02-23 00:00:00+00
basel		C		waste	2023-03-02 00:00:00+00
basel		G		waste	2023-03-02 00:00:00+00
basel		G		waste	2023-03-09 00:00:00+00
basel		B		waste	2023-03-16 00:00:00+00
basel		F		waste	2023-03-16 00:00:00+00
basel		F		waste	2023-03-23 00:00:00+00
basel		B		waste	2023-04-06 00:00:00+00
basel		C		waste	2023-04-13 00:00:00+00
basel		F		waste	2023-04-13 00:00:00+00
basel		C		waste	2023-04-20 00:00:00+00
basel		F		waste	2023-04-20 00:00:00+00
basel		C		waste	2023-04-27 00:00:00+00
basel		B		waste	2023-05-11 00:00:00+00
basel		B		waste	2023-05-25 00:00:00+00
basel		F		waste	2023-05-25 00:00:00+00
basel		B		waste	2023-06-01 00:00:00+00
basel		C		waste	2023-06-01 00:00:00+00
basel		F		waste	2023-06-01 00:00:00+00
basel		F		waste	2023-06-08 00:00:00+00
basel		F		waste	2023-06-15 00:00:00+00
basel		F		waste	2023-06-22 00:00:00+00
basel		F		waste	2023-06-29 00:00:00+00
basel		B		waste	2023-07-06 00:00:00+00
basel		C		waste	2023-07-06 00:00:00+00
basel		F		waste	2023-07-06 00:00:00+00
basel		C		waste	2023-07-13 00:00:00+00
basel		G		waste	2023-07-13 00:00:00+00
basel		B		waste	2023-07-20 00:00:00+00
basel		B		waste	2023-08-10 00:00:00+00
basel		G		waste	2023-08-10 00:00:00+00
basel		C		waste	2023-08-17 00:00:00+00
basel		B		waste	2023-08-24 00:00:00+00
basel		F		waste	2023-08-31 00:00:00+00
basel		F		waste	2023-09-07 00:00:00+00
basel		G		waste	2023-09-07 00:00:00+00
basel		B		waste	2023-09-14 00:00:00+00
basel		F		waste	2023-09-14 00:00:00+00
basel		G		waste	2023-09-14 00:00:00+00
basel		B		waste	2023-09-21 00:00:00+00
basel		B		waste	2023-09-28 00:00:00+00
basel		C		waste	2023-09-28 00:00:00+00
basel		F		waste	2023-09-28 00:00:00+00
basel		F		waste	2023-10-05 00:00:00+00
basel		C		waste	2023-10-12 00:00:00+00
basel		C		waste	2023-10-26 00:00:00+00
basel		F		waste	2023-10-26 00:00:00+00
basel		G		waste	2023-10-26 00:00:00+00
basel		B		waste	2023-11-02 00:00:00+00
basel		C		waste	2023-11-02 00:00:00+00
basel		F		waste	2023-11-16 00:00:00+00
basel		F		waste	2023-11-23 00:00:00+00
basel		B		waste	2023-11-30 00:00:00+00
basel		F		waste	2023-11-30 00:00:00+00
basel		F		waste	2023-12-07 00:00:00+00
basel		B		waste	2023-12-14 00:00:00+00
basel		F		waste	2023-12-14 00:00:00+00
basel		B		waste	2023-12-21 00:00:00+00
basel		G		waste	2023-12-21 00:00:00+00
basel		C		waste	2023-12-28 00:00:00+00
basel		F		waste	2023-12-28 00:00:00+00
basel		G		waste	2023-12-28 00:00:00+00
basel		A		waste	2023-01-06 00:00:00+00
basel		H		waste	2023-01-06 00:00:00+00
basel		A		waste	2023-01-13 00:00:00+00
basel		A		waste	2023-01-20 00:00:00+00
basel		A		waste	2023-01-27 00:00:00+00
basel		D		waste	2023-01-27 00:00:00+00
basel		H		waste	2023-01-27 00:00:00+00
basel		A		waste	2023-02-03 00:00:00+00
basel		E		waste	2023-02-03 00:00:00+00
basel		D		waste	2023-02-10 00:00:00+00
basel		H		waste	2023-02-17 00:00:00+00
basel		A		waste	2023-02-24 00:00:00+00
basel		A		waste	2023-03-03 00:00:00+00
basel		A		waste	2023-03-24 00:00:00+00
basel		D		waste	2023-03-24 00:00:00+00
basel		E		waste	2023-03-31 00:00:00+00
basel		D		waste	2023-04-14 00:00:00+00
basel		E		waste	2023-04-14 00:00:00+00
basel		H		waste	2023-04-21 00:00:00+00
basel		A		waste	2023-05-05 00:00:00+00
basel		H		waste	2023-05-05 00:00:00+00
basel		D		waste	2023-05-12 00:00:00+00
basel		A		waste	2023-05-19 00:00:00+00
basel		D		waste	2023-05-19 00:00:00+00
basel		E		waste	2023-05-19 00:00:00+00
basel		H		waste	2023-05-26 00:00:00+00
basel		A		waste	2023-06-02 00:00:00+00
basel		D		waste	2023-06-02 00:00:00+00
basel		D		waste	2023-06-09 00:00:00+00
basel		H		waste	2023-06-09 00:00:00+00
basel		D		waste	2023-06-23 00:00:00+00
basel		D		waste	2023-07-07 00:00:00+00
basel		E		waste	2023-07-07 00:00:00+00
basel		H		waste	2023-07-07 00:00:00+00
basel		A		waste	2023-07-21 00:00:00+00
basel		D		waste	2023-07-21 00:00:00+00
basel		H		waste	2023-07-21 00:00:00+00
basel		A		waste	2023-07-28 00:00:00+00
basel		E		waste	2023-08-11 00:00:00+00
basel		A		waste	2023-08-18 00:00:00+00
basel		D		waste	2023-08-18 00:00:00+00
basel		H		waste	2023-08-18 00:00:00+00
basel		D		waste	2023-08-25 00:00:00+00
basel		D		waste	2023-09-08 00:00:00+00
basel		E		waste	2023-09-15 00:00:00+00
basel		H		waste	2023-09-15 00:00:00+00
basel		A		waste	2023-09-22 00:00:00+00
basel		D		waste	2023-09-22 00:00:00+00
basel		D		waste	2023-09-29 00:00:00+00
basel		E		waste	2023-10-06 00:00:00+00
basel		A		waste	2023-10-13 00:00:00+00
basel		D		waste	2023-10-20 00:00:00+00
basel		A		waste	2023-10-27 00:00:00+00
basel		A		waste	2023-11-03 00:00:00+00
basel		E		waste	2023-11-03 00:00:00+00
basel		A		waste	2023-11-10 00:00:00+00
basel		E		waste	2023-11-10 00:00:00+00
basel		D		waste	2023-11-17 00:00:00+00
basel		A		waste	2023-12-01 00:00:00+00
basel		H		waste	2023-12-15 00:00:00+00
basel		A		waste	2023-12-29 00:00:00+00
basel		D		waste	2023-12-29 00:00:00+00
basel		B		waste	2023-01-09 00:00:00+00
basel		C		waste	2023-01-09 00:00:00+00
basel		F		waste	2023-01-09 00:00:00+00
basel		B		waste	2023-01-23 00:00:00+00
basel		B		waste	2023-01-30 00:00:00+00
basel		G		waste	2023-01-30 00:00:00+00
basel		C		waste	2023-02-06 00:00:00+00
basel		F		waste	2023-02-06 00:00:00+00
basel		F		waste	2023-02-13 00:00:00+00
basel		F		waste	2023-02-27 00:00:00+00
basel		C		waste	2023-03-06 00:00:00+00
basel		G		waste	2023-03-06 00:00:00+00
basel		B		waste	2023-03-13 00:00:00+00
basel		F		waste	2023-03-13 00:00:00+00
basel		G		waste	2023-03-13 00:00:00+00
basel		C		waste	2023-03-27 00:00:00+00
basel		F		waste	2023-03-27 00:00:00+00
basel		B		waste	2023-04-03 00:00:00+00
basel		F		waste	2023-04-03 00:00:00+00
basel		F		waste	2023-04-24 00:00:00+00
basel		G		waste	2023-04-24 00:00:00+00
basel		C		waste	2023-05-08 00:00:00+00
basel		F		waste	2023-05-08 00:00:00+00
basel		C		waste	2023-05-15 00:00:00+00
basel		F		waste	2023-06-05 00:00:00+00
basel		G		waste	2023-06-05 00:00:00+00
basel		C		waste	2023-06-12 00:00:00+00
basel		F		waste	2023-06-12 00:00:00+00
basel		B		waste	2023-06-19 00:00:00+00
basel		C		waste	2023-06-19 00:00:00+00
basel		B		waste	2023-07-03 00:00:00+00
basel		G		waste	2023-07-03 00:00:00+00
basel		B		waste	2023-07-10 00:00:00+00
basel		C		waste	2023-07-10 00:00:00+00
basel		F		waste	2023-07-10 00:00:00+00
basel		G		waste	2023-07-10 00:00:00+00
basel		B		waste	2023-07-17 00:00:00+00
basel		G		waste	2023-07-17 00:00:00+00
basel		C		waste	2023-07-31 00:00:00+00
basel		G		waste	2023-07-31 00:00:00+00
basel		B		waste	2023-08-07 00:00:00+00
basel		G		waste	2023-08-07 00:00:00+00
basel		B		waste	2023-08-14 00:00:00+00
basel		C		waste	2023-08-14 00:00:00+00
basel		G		waste	2023-08-14 00:00:00+00
basel		F		waste	2023-08-21 00:00:00+00
basel		B		waste	2023-08-28 00:00:00+00
basel		C		waste	2023-08-28 00:00:00+00
basel		F		waste	2023-08-28 00:00:00+00
basel		G		waste	2023-09-11 00:00:00+00
basel		B		waste	2023-09-18 00:00:00+00
basel		G		waste	2023-09-18 00:00:00+00
basel		B		waste	2023-09-25 00:00:00+00
basel		F		waste	2023-09-25 00:00:00+00
basel		B		waste	2023-10-02 00:00:00+00
basel		G		waste	2023-10-02 00:00:00+00
basel		B		waste	2023-10-09 00:00:00+00
basel		F		waste	2023-10-16 00:00:00+00
basel		F		waste	2023-10-23 00:00:00+00
basel		B		waste	2023-10-30 00:00:00+00
basel		B		waste	2023-11-06 00:00:00+00
basel		C		waste	2023-11-13 00:00:00+00
basel		F		waste	2023-11-20 00:00:00+00
basel		B		waste	2023-12-04 00:00:00+00
basel		C		waste	2023-12-04 00:00:00+00
basel		B		waste	2023-12-11 00:00:00+00
basel		C		waste	2023-12-11 00:00:00+00
basel		F		waste	2023-12-11 00:00:00+00
basel		G		waste	2023-12-11 00:00:00+00
basel		C		waste	2023-12-18 00:00:00+00
basel		F		waste	2023-12-18 00:00:00+00
basel		B		metal	2023-01-24 00:00:00+00
basel		C		metal	2023-01-10 00:00:00+00
basel		D		metal	2023-01-26 00:00:00+00
basel		G		metal	2023-02-10 00:00:00+00
basel		F		metal	2023-12-08 00:00:00+00
basel		E		metal	2023-07-12 00:00:00+00
basel		D		metal	2023-09-20 00:00:00+00
basel		C		metal	2023-11-15 00:00:00+00
basel		H		metal	2023-06-14 00:00:00+00
basel		A		metal	2023-01-09 00:00:00+00
basel		H		metal	2023-02-20 00:00:00+00
basel		H		metal	2023-12-04 00:00:00+00
basel		A		paper	2023-01-25 00:00:00+00
basel		F		paper	2023-02-01 00:00:00+00
basel		A		paper	2023-02-22 00:00:00+00
basel		H		paper	2023-03-15 00:00:00+00
basel		A		paper	2023-03-29 00:00:00+00
basel		B		paper	2023-03-29 00:00:00+00
basel		D		paper	2023-04-19 00:00:00+00
basel		H		paper	2023-05-10 00:00:00+00
basel		C		paper	2023-05-17 00:00:00+00
basel		B		paper	2023-06-21 00:00:00+00
basel		E		paper	2023-07-26 00:00:00+00
basel		G		paper	2023-08-02 00:00:00+00
basel		H		paper	2023-08-02 00:00:00+00
basel		C		paper	2023-08-09 00:00:00+00
basel		G		paper	2023-08-30 00:00:00+00
basel		D		paper	2023-09-06 00:00:00+00
basel		B		paper	2023-09-13 00:00:00+00
basel		E		paper	2023-09-20 00:00:00+00
basel		F		paper	2023-09-20 00:00:00+00
basel		G		paper	2023-09-27 00:00:00+00
basel		H		paper	2023-09-27 00:00:00+00
basel		C		paper	2023-10-04 00:00:00+00
basel		D		paper	2023-10-04 00:00:00+00
basel		A		paper	2023-10-11 00:00:00+00
basel		B		paper	2023-10-11 00:00:00+00
basel		G		paper	2023-10-25 00:00:00+00
basel		E		paper	2023-11-15 00:00:00+00
basel		G		paper	2023-11-22 00:00:00+00
basel		C		paper	2023-11-29 00:00:00+00
basel		D		paper	2023-11-29 00:00:00+00
basel		B		paper	2023-12-06 00:00:00+00
basel		G		paper	2023-12-20 00:00:00+00
basel		H		paper	2023-12-20 00:00:00+00
basel		D		paper	2023-12-27 00:00:00+00
basel		G		paper	2023-01-11 00:00:00+00
basel		G		paper	2023-06-07 00:00:00+00
basel		H		paper	2023-06-07 00:00:00+00
basel		E		paper	2023-12-13 00:00:00+00
basel		F		paper	2023-12-13 00:00:00+00
basel		E		incombustibles	2023-01-18 00:00:00+00
basel		G		incombustibles	2023-01-25 00:00:00+00
basel		C		incombustibles	2023-02-01 00:00:00+00
basel		D		incombustibles	2023-02-01 00:00:00+00
basel		E		incombustibles	2023-02-15 00:00:00+00
basel		F		incombustibles	2023-02-15 00:00:00+00
basel		F		incombustibles	2023-03-15 00:00:00+00
basel		E		incombustibles	2023-05-10 00:00:00+00
basel		C		incombustibles	2023-06-21 00:00:00+00
basel		E		incombustibles	2023-07-05 00:00:00+00
basel		A		incombustibles	2023-07-12 00:00:00+00
basel		B		incombustibles	2023-07-12 00:00:00+00
basel		C		incombustibles	2023-07-19 00:00:00+00
basel		D		incombustibles	2023-07-19 00:00:00+00
basel		G		incombustibles	2023-07-26 00:00:00+00
basel		E		incombustibles	2023-08-02 00:00:00+00
basel		B		incombustibles	2023-08-09 00:00:00+00
basel		C		incombustibles	2023-08-16 00:00:00+00
basel		D		incombustibles	2023-09-13 00:00:00+00
basel		G		incombustibles	2023-09-20 00:00:00+00
basel		H		incombustibles	2023-09-20 00:00:00+00
basel		F		incombustibles	2023-09-27 00:00:00+00
basel		A		incombustibles	2023-10-04 00:00:00+00
basel		C		incombustibles	2023-10-11 00:00:00+00
basel		B		incombustibles	2023-11-01 00:00:00+00
basel		D		incombustibles	2023-11-08 00:00:00+00
basel		H		incombustibles	2023-11-15 00:00:00+00
basel		F		incombustibles	2023-11-22 00:00:00+00
basel		B		incombustibles	2023-11-29 00:00:00+00
basel		D		incombustibles	2023-01-04 00:00:00+00
basel		A		incombustibles	2023-01-11 00:00:00+00
basel		H		incombustibles	2023-05-31 00:00:00+00
basel		F		incombustibles	2023-06-07 00:00:00+00
basel		B		incombustibles	2023-06-14 00:00:00+00
basel		A		bulky_goods	2020-03-25 00:00:00+00
basel		A		bulky_goods	2020-07-08 00:00:00+00
basel		A		bulky_goods	2020-09-30 00:00:00+00
basel		A		bulky_goods	2020-12-09 00:00:00+00
basel		B		bulky_goods	2020-01-29 00:00:00+00
basel		B		bulky_goods	2020-04-15 00:00:00+00
basel		B		bulky_goods	2020-04-22 00:00:00+00
basel		B		bulky_goods	2020-10-28 00:00:00+00
basel		B		bulky_goods	2020-12-23 00:00:00+00
basel		C		bulky_goods	2020-05-13 00:00:00+00
basel		C		bulky_goods	2020-06-17 00:00:00+00
basel		C		bulky_goods	2020-07-08 00:00:00+00
basel		C		bulky_goods	2020-08-05 00:00:00+00
basel		C		bulky_goods	2020-09-30 00:00:00+00
basel		C		bulky_goods	2020-10-28 00:00:00+00
basel		C		bulky_goods	2020-11-25 00:00:00+00
basel		D		bulky_goods	2020-02-05 00:00:00+00
basel		D		bulky_goods	2020-03-25 00:00:00+00
basel		D		bulky_goods	2020-04-15 00:00:00+00
basel		D		bulky_goods	2020-06-17 00:00:00+00
basel		D		bulky_goods	2020-07-08 00:00:00+00
basel		D		bulky_goods	2020-07-29 00:00:00+00
basel		D		bulky_goods	2020-10-28 00:00:00+00
basel		D		bulky_goods	2020-12-30 00:00:00+00
basel		E		bulky_goods	2020-01-08 00:00:00+00
basel		E		bulky_goods	2020-02-05 00:00:00+00
basel		E		bulky_goods	2020-06-24 00:00:00+00
basel		E		bulky_goods	2020-07-22 00:00:00+00
basel		E		bulky_goods	2020-11-18 00:00:00+00
basel		E		bulky_goods	2020-12-30 00:00:00+00
basel		F		bulky_goods	2020-02-05 00:00:00+00
basel		F		bulky_goods	2020-10-14 00:00:00+00
basel		F		bulky_goods	2020-11-18 00:00:00+00
basel		G		bulky_goods	2020-01-15 00:00:00+00
basel		G		bulky_goods	2020-04-29 00:00:00+00
basel		G		bulky_goods	2020-05-27 00:00:00+00
basel		G		bulky_goods	2020-06-24 00:00:00+00
basel		G		bulky_goods	2020-08-19 00:00:00+00
basel		G		bulky_goods	2020-10-14 00:00:00+00
basel		G		bulky_goods	2020-11-18 00:00:00+00
basel		G		bulky_goods	2020-12-23 00:00:00+00
basel		H		bulky_goods	2020-01-15 00:00:00+00
basel		H		bulky_goods	2020-04-29 00:00:00+00
basel		H		bulky_goods	2020-05-27 00:00:00+00
basel		H		bulky_goods	2020-06-10 00:00:00+00
basel		H		bulky_goods	2020-06-24 00:00:00+00
basel		H		bulky_goods	2020-09-16 00:00:00+00
basel		H		bulky_goods	2020-10-14 00:00:00+00
basel		H		bulky_goods	2020-11-18 00:00:00+00
basel		A		organic	2020-04-02 00:00:00+00
basel		A		organic	2020-05-28 00:00:00+00
basel		A		organic	2020-06-04 00:00:00+00
basel		A		organic	2020-07-02 00:00:00+00
basel		A		organic	2020-08-06 00:00:00+00
basel		A		organic	2020-08-13 00:00:00+00
basel		A		organic	2020-09-10 00:00:00+00
basel		A		organic	2020-10-08 00:00:00+00
basel		A		organic	2020-10-15 00:00:00+00
basel		A		organic	2020-10-22 00:00:00+00
basel		A		organic	2020-10-29 00:00:00+00
basel		A		organic	2020-11-05 00:00:00+00
basel		A		organic	2020-11-26 00:00:00+00
basel		A		organic	2020-12-24 00:00:00+00
basel		B		organic	2020-01-17 00:00:00+00
basel		B		organic	2020-02-28 00:00:00+00
basel		B		organic	2020-03-13 00:00:00+00
basel		B		organic	2020-05-08 00:00:00+00
basel		B		organic	2020-05-22 00:00:00+00
basel		B		organic	2020-05-29 00:00:00+00
basel		B		organic	2020-07-03 00:00:00+00
basel		B		organic	2020-07-10 00:00:00+00
basel		B		organic	2020-07-17 00:00:00+00
basel		B		organic	2020-07-31 00:00:00+00
basel		B		organic	2020-08-28 00:00:00+00
basel		B		organic	2020-10-02 00:00:00+00
basel		B		organic	2020-10-09 00:00:00+00
basel		B		organic	2020-12-11 00:00:00+00
basel		C		organic	2020-03-13 00:00:00+00
basel		C		organic	2020-05-22 00:00:00+00
basel		C		organic	2020-08-07 00:00:00+00
basel		C		organic	2020-08-14 00:00:00+00
basel		C		organic	2020-09-04 00:00:00+00
basel		C		organic	2020-09-25 00:00:00+00
basel		C		organic	2020-10-02 00:00:00+00
basel		C		organic	2020-10-16 00:00:00+00
basel		C		organic	2020-10-23 00:00:00+00
basel		C		organic	2020-11-13 00:00:00+00
basel		C		organic	2020-12-11 00:00:00+00
basel		D		organic	2020-02-13 00:00:00+00
basel		D		organic	2020-03-12 00:00:00+00
basel		D		organic	2020-04-23 00:00:00+00
basel		D		organic	2020-04-30 00:00:00+00
basel		D		organic	2020-05-28 00:00:00+00
basel		D		organic	2020-07-02 00:00:00+00
basel		D		organic	2020-10-08 00:00:00+00
basel		D		organic	2020-10-29 00:00:00+00
basel		D		organic	2020-11-26 00:00:00+00
basel		D		organic	2020-12-10 00:00:00+00
basel		D		organic	2020-12-24 00:00:00+00
basel		E		organic	2020-03-26 00:00:00+00
basel		E		organic	2020-04-02 00:00:00+00
basel		E		organic	2020-05-07 00:00:00+00
basel		E		organic	2020-05-28 00:00:00+00
basel		E		organic	2020-06-04 00:00:00+00
basel		E		organic	2020-07-30 00:00:00+00
basel		E		organic	2020-08-20 00:00:00+00
basel		E		organic	2020-09-17 00:00:00+00
basel		E		organic	2020-10-15 00:00:00+00
basel		E		organic	2020-10-22 00:00:00+00
basel		E		organic	2020-10-29 00:00:00+00
basel		E		organic	2020-11-05 00:00:00+00
basel		E		organic	2020-11-19 00:00:00+00
basel		E		organic	2020-12-10 00:00:00+00
basel		F		organic	2020-02-25 00:00:00+00
basel		F		organic	2020-03-17 00:00:00+00
basel		F		organic	2020-03-24 00:00:00+00
basel		F		organic	2020-03-31 00:00:00+00
basel		F		organic	2020-04-14 00:00:00+00
basel		F		organic	2020-04-28 00:00:00+00
basel		F		organic	2020-06-23 00:00:00+00
basel		F		organic	2020-07-14 00:00:00+00
basel		F		organic	2020-07-28 00:00:00+00
basel		F		organic	2020-08-04 00:00:00+00
basel		F		organic	2020-08-11 00:00:00+00
basel		F		organic	2020-08-25 00:00:00+00
basel		F		organic	2020-10-20 00:00:00+00
basel		F		organic	2020-11-10 00:00:00+00
basel		F		organic	2020-11-24 00:00:00+00
basel		F		organic	2020-12-08 00:00:00+00
basel		G		organic	2020-01-31 00:00:00+00
basel		G		organic	2020-02-28 00:00:00+00
basel		G		organic	2020-03-20 00:00:00+00
basel		G		organic	2020-04-17 00:00:00+00
basel		G		organic	2020-05-08 00:00:00+00
basel		G		organic	2020-05-22 00:00:00+00
basel		G		organic	2020-05-29 00:00:00+00
basel		G		organic	2020-06-05 00:00:00+00
basel		G		organic	2020-06-12 00:00:00+00
basel		G		organic	2020-07-31 00:00:00+00
basel		G		organic	2020-08-07 00:00:00+00
basel		G		organic	2020-09-04 00:00:00+00
basel		G		organic	2020-09-11 00:00:00+00
basel		G		organic	2020-09-25 00:00:00+00
basel		G		organic	2020-10-02 00:00:00+00
basel		G		organic	2020-10-23 00:00:00+00
basel		G		organic	2020-10-30 00:00:00+00
basel		G		organic	2020-11-13 00:00:00+00
basel		H		organic	2020-01-27 00:00:00+00
basel		H		organic	2020-02-10 00:00:00+00
basel		H		organic	2020-02-24 00:00:00+00
basel		H		organic	2020-03-09 00:00:00+00
basel		H		organic	2020-03-16 00:00:00+00
basel		H		organic	2020-03-30 00:00:00+00
basel		H		organic	2020-04-27 00:00:00+00
basel		H		organic	2020-05-11 00:00:00+00
basel		H		organic	2020-05-18 00:00:00+00
basel		H		organic	2020-06-22 00:00:00+00
basel		H		organic	2020-07-13 00:00:00+00
basel		H		organic	2020-07-20 00:00:00+00
basel		H		organic	2020-08-10 00:00:00+00
basel		H		organic	2020-11-09 00:00:00+00
basel		H		organic	2020-11-16 00:00:00+00
basel		H		organic	2020-11-23 00:00:00+00
basel		H		organic	2020-12-07 00:00:00+00
basel		A		waste	2020-01-03 00:00:00+00
basel		A		waste	2020-01-07 00:00:00+00
basel		A		waste	2020-01-14 00:00:00+00
basel		A		waste	2020-01-21 00:00:00+00
basel		A		waste	2020-01-24 00:00:00+00
basel		A		waste	2020-01-28 00:00:00+00
basel		A		waste	2020-02-11 00:00:00+00
basel		A		waste	2020-02-14 00:00:00+00
basel		A		waste	2020-03-13 00:00:00+00
basel		A		waste	2020-03-31 00:00:00+00
basel		A		waste	2020-04-24 00:00:00+00
basel		A		waste	2020-05-19 00:00:00+00
basel		A		waste	2020-06-02 00:00:00+00
basel		A		waste	2020-06-05 00:00:00+00
basel		A		waste	2020-06-09 00:00:00+00
basel		A		waste	2020-07-10 00:00:00+00
basel		A		waste	2020-07-24 00:00:00+00
basel		A		waste	2020-08-07 00:00:00+00
basel		A		waste	2020-08-25 00:00:00+00
basel		A		waste	2020-09-11 00:00:00+00
basel		A		waste	2020-09-18 00:00:00+00
basel		A		waste	2020-09-25 00:00:00+00
basel		A		waste	2020-10-06 00:00:00+00
basel		A		waste	2020-10-13 00:00:00+00
basel		A		waste	2020-12-04 00:00:00+00
basel		A		waste	2020-12-18 00:00:00+00
basel		A		waste	2020-12-29 00:00:00+00
basel		B		waste	2020-01-09 00:00:00+00
basel		B		waste	2020-01-13 00:00:00+00
basel		B		waste	2020-02-06 00:00:00+00
basel		B		waste	2020-02-24 00:00:00+00
basel		B		waste	2020-03-02 00:00:00+00
basel		B		waste	2020-03-05 00:00:00+00
basel		B		waste	2020-03-09 00:00:00+00
basel		B		waste	2020-03-23 00:00:00+00
basel		B		waste	2020-05-18 00:00:00+00
basel		B		waste	2020-06-29 00:00:00+00
basel		B		waste	2020-07-06 00:00:00+00
basel		B		waste	2020-07-13 00:00:00+00
basel		B		waste	2020-07-30 00:00:00+00
basel		B		waste	2020-08-10 00:00:00+00
basel		B		waste	2020-08-24 00:00:00+00
basel		B		waste	2020-08-31 00:00:00+00
basel		B		waste	2020-09-10 00:00:00+00
basel		B		waste	2020-09-21 00:00:00+00
basel		B		waste	2020-10-26 00:00:00+00
basel		B		waste	2020-10-29 00:00:00+00
basel		B		waste	2020-11-12 00:00:00+00
basel		B		waste	2020-11-19 00:00:00+00
basel		B		waste	2020-11-26 00:00:00+00
basel		B		waste	2020-12-10 00:00:00+00
basel		B		waste	2020-12-24 00:00:00+00
basel		C		waste	2020-01-20 00:00:00+00
basel		C		waste	2020-01-27 00:00:00+00
basel		C		waste	2020-01-30 00:00:00+00
basel		C		waste	2020-02-03 00:00:00+00
basel		C		waste	2020-02-27 00:00:00+00
basel		C		waste	2020-03-05 00:00:00+00
basel		C		waste	2020-03-12 00:00:00+00
basel		C		waste	2020-04-09 00:00:00+00
basel		C		waste	2020-04-23 00:00:00+00
basel		C		waste	2020-05-07 00:00:00+00
basel		C		waste	2020-05-14 00:00:00+00
basel		C		waste	2020-05-25 00:00:00+00
basel		C		waste	2020-06-11 00:00:00+00
basel		C		waste	2020-06-22 00:00:00+00
basel		C		waste	2020-07-09 00:00:00+00
basel		C		waste	2020-07-13 00:00:00+00
basel		C		waste	2020-07-20 00:00:00+00
basel		C		waste	2020-07-23 00:00:00+00
basel		C		waste	2020-07-27 00:00:00+00
basel		C		waste	2020-07-30 00:00:00+00
basel		C		waste	2020-08-06 00:00:00+00
basel		C		waste	2020-08-10 00:00:00+00
basel		C		waste	2020-08-13 00:00:00+00
basel		C		waste	2020-08-24 00:00:00+00
basel		C		waste	2020-09-21 00:00:00+00
basel		C		waste	2020-10-05 00:00:00+00
basel		C		waste	2020-10-08 00:00:00+00
basel		C		waste	2020-10-26 00:00:00+00
basel		C		waste	2020-11-02 00:00:00+00
basel		C		waste	2020-11-12 00:00:00+00
basel		C		waste	2020-11-19 00:00:00+00
basel		C		waste	2020-11-26 00:00:00+00
basel		C		waste	2020-12-03 00:00:00+00
basel		C		waste	2020-12-07 00:00:00+00
basel		C		waste	2020-12-17 00:00:00+00
basel		D		waste	2020-01-14 00:00:00+00
basel		D		waste	2020-01-17 00:00:00+00
basel		D		waste	2020-01-24 00:00:00+00
basel		D		waste	2020-01-28 00:00:00+00
basel		D		waste	2020-03-03 00:00:00+00
basel		D		waste	2020-03-06 00:00:00+00
basel		D		waste	2020-03-13 00:00:00+00
basel		D		waste	2020-03-17 00:00:00+00
basel		D		waste	2020-03-27 00:00:00+00
basel		D		waste	2020-03-31 00:00:00+00
basel		D		waste	2020-04-14 00:00:00+00
basel		D		waste	2020-04-17 00:00:00+00
basel		D		waste	2020-05-05 00:00:00+00
basel		D		waste	2020-05-22 00:00:00+00
basel		D		waste	2020-05-26 00:00:00+00
basel		D		waste	2020-06-05 00:00:00+00
basel		D		waste	2020-06-16 00:00:00+00
basel		D		waste	2020-06-26 00:00:00+00
basel		D		waste	2020-07-14 00:00:00+00
basel		D		waste	2020-08-07 00:00:00+00
basel		D		waste	2020-08-18 00:00:00+00
basel		D		waste	2020-09-08 00:00:00+00
basel		D		waste	2020-09-11 00:00:00+00
basel		D		waste	2020-09-15 00:00:00+00
basel		D		waste	2020-09-22 00:00:00+00
basel		D		waste	2020-09-25 00:00:00+00
basel		D		waste	2020-09-29 00:00:00+00
basel		D		waste	2020-10-09 00:00:00+00
basel		D		waste	2020-10-13 00:00:00+00
basel		D		waste	2020-10-23 00:00:00+00
basel		D		waste	2020-10-27 00:00:00+00
basel		D		waste	2020-11-03 00:00:00+00
basel		D		waste	2020-11-20 00:00:00+00
basel		D		waste	2020-11-24 00:00:00+00
basel		D		waste	2020-12-04 00:00:00+00
basel		D		waste	2020-12-08 00:00:00+00
basel		D		waste	2020-12-15 00:00:00+00
basel		E		waste	2020-01-03 00:00:00+00
basel		E		waste	2020-01-10 00:00:00+00
basel		E		waste	2020-01-21 00:00:00+00
basel		E		waste	2020-01-28 00:00:00+00
basel		E		waste	2020-02-11 00:00:00+00
basel		E		waste	2020-03-10 00:00:00+00
basel		E		waste	2020-04-14 00:00:00+00
basel		E		waste	2020-04-21 00:00:00+00
basel		E		waste	2020-04-28 00:00:00+00
basel		E		waste	2020-05-12 00:00:00+00
basel		E		waste	2020-05-15 00:00:00+00
basel		E		waste	2020-05-22 00:00:00+00
basel		E		waste	2020-05-26 00:00:00+00
basel		E		waste	2020-06-02 00:00:00+00
basel		E		waste	2020-06-05 00:00:00+00
basel		E		waste	2020-06-16 00:00:00+00
basel		E		waste	2020-07-17 00:00:00+00
basel		E		waste	2020-07-21 00:00:00+00
basel		E		waste	2020-07-28 00:00:00+00
basel		E		waste	2020-07-31 00:00:00+00
basel		E		waste	2020-08-04 00:00:00+00
basel		E		waste	2020-08-11 00:00:00+00
basel		E		waste	2020-08-25 00:00:00+00
basel		E		waste	2020-09-01 00:00:00+00
basel		E		waste	2020-09-25 00:00:00+00
basel		E		waste	2020-10-06 00:00:00+00
basel		E		waste	2020-10-09 00:00:00+00
basel		E		waste	2020-10-23 00:00:00+00
basel		E		waste	2020-10-30 00:00:00+00
basel		E		waste	2020-11-03 00:00:00+00
basel		E		waste	2020-11-06 00:00:00+00
basel		E		waste	2020-11-17 00:00:00+00
basel		E		waste	2020-12-08 00:00:00+00
basel		E		waste	2020-12-11 00:00:00+00
basel		E		waste	2020-12-18 00:00:00+00
basel		F		waste	2020-01-06 00:00:00+00
basel		F		waste	2020-01-16 00:00:00+00
basel		F		waste	2020-02-03 00:00:00+00
basel		F		waste	2020-02-06 00:00:00+00
basel		F		waste	2020-02-10 00:00:00+00
basel		A		bulky_goods	2020-02-12 00:00:00+00
basel		A		bulky_goods	2020-04-22 00:00:00+00
basel		A		bulky_goods	2020-05-13 00:00:00+00
basel		A		bulky_goods	2020-12-23 00:00:00+00
basel		B		bulky_goods	2020-01-15 00:00:00+00
basel		B		bulky_goods	2020-03-25 00:00:00+00
basel		B		bulky_goods	2020-06-10 00:00:00+00
basel		B		bulky_goods	2020-07-08 00:00:00+00
basel		B		bulky_goods	2020-12-09 00:00:00+00
basel		C		bulky_goods	2020-01-08 00:00:00+00
basel		C		bulky_goods	2020-01-22 00:00:00+00
basel		C		bulky_goods	2020-02-05 00:00:00+00
basel		C		bulky_goods	2020-02-19 00:00:00+00
basel		C		bulky_goods	2020-04-15 00:00:00+00
basel		C		bulky_goods	2020-07-29 00:00:00+00
basel		C		bulky_goods	2020-09-02 00:00:00+00
basel		C		bulky_goods	2020-12-30 00:00:00+00
basel		D		bulky_goods	2020-01-08 00:00:00+00
basel		D		bulky_goods	2020-01-22 00:00:00+00
basel		D		bulky_goods	2020-05-13 00:00:00+00
basel		D		bulky_goods	2020-08-05 00:00:00+00
basel		D		bulky_goods	2020-09-02 00:00:00+00
basel		D		bulky_goods	2020-09-30 00:00:00+00
basel		D		bulky_goods	2020-11-25 00:00:00+00
basel		D		bulky_goods	2020-12-16 00:00:00+00
basel		E		bulky_goods	2020-01-22 00:00:00+00
basel		E		bulky_goods	2020-02-19 00:00:00+00
basel		E		bulky_goods	2020-04-22 00:00:00+00
basel		E		bulky_goods	2020-08-19 00:00:00+00
basel		E		bulky_goods	2020-09-16 00:00:00+00
basel		E		bulky_goods	2020-10-14 00:00:00+00
basel		E		bulky_goods	2020-11-11 00:00:00+00
basel		E		bulky_goods	2020-12-16 00:00:00+00
basel		F		bulky_goods	2020-01-22 00:00:00+00
basel		F		bulky_goods	2020-04-22 00:00:00+00
basel		F		bulky_goods	2020-04-29 00:00:00+00
basel		F		bulky_goods	2020-09-16 00:00:00+00
basel		F		bulky_goods	2020-11-11 00:00:00+00
basel		F		bulky_goods	2020-12-16 00:00:00+00
basel		F		bulky_goods	2020-12-30 00:00:00+00
basel		G		bulky_goods	2020-02-12 00:00:00+00
basel		G		bulky_goods	2020-07-29 00:00:00+00
basel		H		bulky_goods	2020-01-29 00:00:00+00
basel		H		bulky_goods	2020-03-11 00:00:00+00
basel		H		bulky_goods	2020-07-22 00:00:00+00
basel		H		bulky_goods	2020-07-29 00:00:00+00
basel		H		bulky_goods	2020-12-09 00:00:00+00
basel		H		bulky_goods	2020-12-23 00:00:00+00
basel		A		organic	2020-01-02 00:00:00+00
basel		A		organic	2020-01-16 00:00:00+00
basel		A		organic	2020-01-30 00:00:00+00
basel		A		organic	2020-02-13 00:00:00+00
basel		A		organic	2020-02-27 00:00:00+00
basel		A		organic	2020-03-26 00:00:00+00
basel		A		organic	2020-05-07 00:00:00+00
basel		A		organic	2020-06-11 00:00:00+00
basel		A		organic	2020-07-23 00:00:00+00
basel		A		organic	2020-07-30 00:00:00+00
basel		A		organic	2020-08-20 00:00:00+00
basel		A		organic	2020-08-27 00:00:00+00
basel		A		organic	2020-09-03 00:00:00+00
basel		A		organic	2020-09-24 00:00:00+00
basel		A		organic	2020-11-12 00:00:00+00
basel		A		organic	2020-11-19 00:00:00+00
basel		B		organic	2020-02-14 00:00:00+00
basel		B		organic	2020-03-27 00:00:00+00
basel		B		organic	2020-04-24 00:00:00+00
basel		B		organic	2020-07-24 00:00:00+00
basel		B		organic	2020-08-07 00:00:00+00
basel		B		organic	2020-08-21 00:00:00+00
basel		B		organic	2020-09-04 00:00:00+00
basel		B		organic	2020-09-11 00:00:00+00
basel		B		organic	2020-09-18 00:00:00+00
basel		B		organic	2020-10-16 00:00:00+00
basel		B		organic	2020-10-30 00:00:00+00
basel		B		organic	2020-11-06 00:00:00+00
basel		B		organic	2020-11-27 00:00:00+00
basel		C		organic	2020-01-03 00:00:00+00
basel		C		organic	2020-01-31 00:00:00+00
basel		C		organic	2020-03-27 00:00:00+00
basel		C		organic	2020-04-24 00:00:00+00
basel		C		organic	2020-05-29 00:00:00+00
basel		C		organic	2020-06-05 00:00:00+00
basel		C		organic	2020-06-12 00:00:00+00
basel		C		organic	2020-06-19 00:00:00+00
basel		C		organic	2020-07-17 00:00:00+00
basel		C		organic	2020-07-31 00:00:00+00
basel		C		organic	2020-08-21 00:00:00+00
basel		C		organic	2020-08-28 00:00:00+00
basel		C		organic	2020-09-18 00:00:00+00
basel		C		organic	2020-10-30 00:00:00+00
basel		D		organic	2020-01-02 00:00:00+00
basel		D		organic	2020-02-27 00:00:00+00
basel		D		organic	2020-03-26 00:00:00+00
basel		D		organic	2020-04-02 00:00:00+00
basel		D		organic	2020-04-09 00:00:00+00
basel		D		organic	2020-04-16 00:00:00+00
basel		D		organic	2020-05-07 00:00:00+00
basel		D		organic	2020-06-04 00:00:00+00
basel		D		organic	2020-06-11 00:00:00+00
basel		D		organic	2020-06-18 00:00:00+00
basel		D		organic	2020-09-03 00:00:00+00
basel		D		organic	2020-09-10 00:00:00+00
basel		D		organic	2020-09-17 00:00:00+00
basel		D		organic	2020-09-24 00:00:00+00
basel		D		organic	2020-10-15 00:00:00+00
basel		D		organic	2020-10-22 00:00:00+00
basel		D		organic	2020-11-05 00:00:00+00
basel		D		organic	2020-11-12 00:00:00+00
basel		D		organic	2020-11-19 00:00:00+00
basel		E		organic	2020-01-30 00:00:00+00
basel		E		organic	2020-04-09 00:00:00+00
basel		E		organic	2020-04-23 00:00:00+00
basel		E		organic	2020-04-30 00:00:00+00
basel		E		organic	2020-05-14 00:00:00+00
basel		E		organic	2020-07-02 00:00:00+00
basel		E		organic	2020-07-23 00:00:00+00
basel		E		organic	2020-08-06 00:00:00+00
basel		E		organic	2020-09-03 00:00:00+00
basel		E		organic	2020-09-10 00:00:00+00
basel		E		organic	2020-10-01 00:00:00+00
basel		E		organic	2020-10-08 00:00:00+00
basel		E		organic	2020-11-26 00:00:00+00
basel		E		organic	2020-12-24 00:00:00+00
basel		F		organic	2020-01-28 00:00:00+00
basel		F		organic	2020-02-11 00:00:00+00
basel		F		organic	2020-04-21 00:00:00+00
basel		F		organic	2020-05-05 00:00:00+00
basel		F		organic	2020-05-12 00:00:00+00
basel		F		organic	2020-05-19 00:00:00+00
basel		F		organic	2020-05-26 00:00:00+00
basel		F		organic	2020-06-02 00:00:00+00
basel		F		organic	2020-06-16 00:00:00+00
basel		F		organic	2020-07-21 00:00:00+00
basel		F		organic	2020-08-18 00:00:00+00
basel		F		organic	2020-09-08 00:00:00+00
basel		F		organic	2020-09-22 00:00:00+00
basel		F		organic	2020-09-29 00:00:00+00
basel		F		organic	2020-10-13 00:00:00+00
basel		F		organic	2020-11-03 00:00:00+00
basel		G		organic	2020-01-17 00:00:00+00
basel		G		organic	2020-06-19 00:00:00+00
basel		G		organic	2020-06-26 00:00:00+00
basel		G		organic	2020-07-03 00:00:00+00
basel		G		organic	2020-07-17 00:00:00+00
basel		G		organic	2020-08-21 00:00:00+00
basel		G		organic	2020-08-28 00:00:00+00
basel		G		organic	2020-11-06 00:00:00+00
basel		G		organic	2020-11-20 00:00:00+00
basel		H		organic	2020-03-23 00:00:00+00
basel		H		organic	2020-04-20 00:00:00+00
basel		H		organic	2020-05-04 00:00:00+00
basel		H		organic	2020-05-25 00:00:00+00
basel		H		organic	2020-08-03 00:00:00+00
basel		H		organic	2020-08-24 00:00:00+00
basel		H		organic	2020-09-07 00:00:00+00
basel		H		organic	2020-09-21 00:00:00+00
basel		H		organic	2020-09-28 00:00:00+00
basel		H		organic	2020-10-12 00:00:00+00
basel		H		organic	2020-11-02 00:00:00+00
basel		H		organic	2020-12-21 00:00:00+00
basel		A		waste	2020-01-10 00:00:00+00
basel		A		waste	2020-01-17 00:00:00+00
basel		A		waste	2020-02-21 00:00:00+00
basel		A		waste	2020-03-06 00:00:00+00
basel		A		waste	2020-03-24 00:00:00+00
basel		A		waste	2020-03-27 00:00:00+00
basel		A		waste	2020-04-03 00:00:00+00
basel		A		waste	2020-04-07 00:00:00+00
basel		A		waste	2020-04-14 00:00:00+00
basel		A		waste	2020-04-17 00:00:00+00
basel		A		waste	2020-04-28 00:00:00+00
basel		A		waste	2020-05-05 00:00:00+00
basel		A		waste	2020-05-22 00:00:00+00
basel		A		waste	2020-06-16 00:00:00+00
basel		A		waste	2020-06-19 00:00:00+00
basel		A		waste	2020-06-26 00:00:00+00
basel		A		waste	2020-07-03 00:00:00+00
basel		A		waste	2020-07-17 00:00:00+00
basel		A		waste	2020-07-28 00:00:00+00
basel		A		waste	2020-07-31 00:00:00+00
basel		A		waste	2020-08-11 00:00:00+00
basel		A		waste	2020-08-14 00:00:00+00
basel		A		waste	2020-08-21 00:00:00+00
basel		A		waste	2020-09-04 00:00:00+00
basel		A		waste	2020-09-15 00:00:00+00
basel		A		waste	2020-09-22 00:00:00+00
basel		A		waste	2020-10-02 00:00:00+00
basel		A		waste	2020-10-09 00:00:00+00
basel		A		waste	2020-10-20 00:00:00+00
basel		A		waste	2020-10-23 00:00:00+00
basel		A		waste	2020-10-27 00:00:00+00
basel		A		waste	2020-10-30 00:00:00+00
basel		A		waste	2020-11-06 00:00:00+00
basel		A		waste	2020-11-20 00:00:00+00
basel		A		waste	2020-11-24 00:00:00+00
basel		A		waste	2020-11-27 00:00:00+00
basel		A		waste	2020-12-01 00:00:00+00
basel		A		waste	2020-12-08 00:00:00+00
basel		A		waste	2020-12-11 00:00:00+00
basel		B		waste	2020-01-06 00:00:00+00
basel		B		waste	2020-01-27 00:00:00+00
basel		B		waste	2020-02-03 00:00:00+00
basel		B		waste	2020-02-10 00:00:00+00
basel		B		waste	2020-02-17 00:00:00+00
basel		B		waste	2020-02-20 00:00:00+00
basel		B		waste	2020-03-19 00:00:00+00
basel		B		waste	2020-04-02 00:00:00+00
basel		B		waste	2020-04-06 00:00:00+00
basel		B		waste	2020-04-27 00:00:00+00
basel		B		waste	2020-05-04 00:00:00+00
basel		B		waste	2020-05-11 00:00:00+00
basel		B		waste	2020-05-14 00:00:00+00
basel		B		waste	2020-05-28 00:00:00+00
basel		B		waste	2020-06-04 00:00:00+00
basel		B		waste	2020-06-15 00:00:00+00
basel		B		waste	2020-06-25 00:00:00+00
basel		B		waste	2020-07-02 00:00:00+00
basel		B		waste	2020-07-16 00:00:00+00
basel		B		waste	2020-07-20 00:00:00+00
basel		B		waste	2020-07-23 00:00:00+00
basel		B		waste	2020-08-03 00:00:00+00
basel		B		waste	2020-08-13 00:00:00+00
basel		B		waste	2020-08-20 00:00:00+00
basel		B		waste	2020-08-27 00:00:00+00
basel		B		waste	2020-09-03 00:00:00+00
basel		B		waste	2020-09-07 00:00:00+00
basel		B		waste	2020-09-14 00:00:00+00
basel		B		waste	2020-09-28 00:00:00+00
basel		B		waste	2020-10-01 00:00:00+00
basel		B		waste	2020-10-05 00:00:00+00
basel		B		waste	2020-10-08 00:00:00+00
basel		B		waste	2020-10-12 00:00:00+00
basel		B		waste	2020-10-15 00:00:00+00
basel		B		waste	2020-11-05 00:00:00+00
basel		B		waste	2020-11-09 00:00:00+00
basel		B		waste	2020-11-30 00:00:00+00
basel		B		waste	2020-12-03 00:00:00+00
basel		B		waste	2020-12-17 00:00:00+00
basel		C		waste	2020-01-06 00:00:00+00
basel		C		waste	2020-01-16 00:00:00+00
basel		C		waste	2020-01-23 00:00:00+00
basel		C		waste	2020-02-06 00:00:00+00
basel		C		waste	2020-02-10 00:00:00+00
basel		C		waste	2020-02-24 00:00:00+00
basel		C		waste	2020-03-09 00:00:00+00
basel		C		waste	2020-03-16 00:00:00+00
basel		C		waste	2020-03-23 00:00:00+00
basel		C		waste	2020-03-26 00:00:00+00
basel		C		waste	2020-04-02 00:00:00+00
basel		C		waste	2020-04-16 00:00:00+00
basel		C		waste	2020-04-30 00:00:00+00
basel		C		waste	2020-05-11 00:00:00+00
basel		C		waste	2020-05-28 00:00:00+00
basel		C		waste	2020-06-04 00:00:00+00
basel		C		waste	2020-06-08 00:00:00+00
basel		C		waste	2020-06-29 00:00:00+00
basel		C		waste	2020-07-02 00:00:00+00
basel		C		waste	2020-07-16 00:00:00+00
basel		C		waste	2020-08-03 00:00:00+00
basel		C		waste	2020-08-31 00:00:00+00
basel		C		waste	2020-09-10 00:00:00+00
basel		C		waste	2020-09-17 00:00:00+00
basel		C		waste	2020-09-24 00:00:00+00
basel		C		waste	2020-09-28 00:00:00+00
basel		C		waste	2020-10-01 00:00:00+00
basel		C		waste	2020-10-22 00:00:00+00
basel		C		waste	2020-10-29 00:00:00+00
basel		C		waste	2020-11-23 00:00:00+00
basel		C		waste	2020-11-30 00:00:00+00
basel		C		waste	2020-12-28 00:00:00+00
basel		C		waste	2020-12-31 00:00:00+00
basel		D		waste	2020-01-03 00:00:00+00
basel		D		waste	2020-01-10 00:00:00+00
basel		D		waste	2020-01-31 00:00:00+00
basel		D		waste	2020-02-07 00:00:00+00
basel		D		waste	2020-02-11 00:00:00+00
basel		D		waste	2020-02-14 00:00:00+00
basel		D		waste	2020-02-25 00:00:00+00
basel		D		waste	2020-03-20 00:00:00+00
basel		D		waste	2020-03-24 00:00:00+00
basel		D		waste	2020-04-21 00:00:00+00
basel		D		waste	2020-04-28 00:00:00+00
basel		D		waste	2020-05-08 00:00:00+00
basel		D		waste	2020-05-29 00:00:00+00
basel		D		waste	2020-06-02 00:00:00+00
basel		D		waste	2020-06-09 00:00:00+00
basel		D		waste	2020-06-12 00:00:00+00
basel		D		waste	2020-07-28 00:00:00+00
basel		D		waste	2020-07-31 00:00:00+00
basel		D		waste	2020-08-04 00:00:00+00
basel		D		waste	2020-08-11 00:00:00+00
basel		D		waste	2020-08-14 00:00:00+00
basel		D		waste	2020-09-04 00:00:00+00
basel		D		waste	2020-10-02 00:00:00+00
basel		D		waste	2020-10-06 00:00:00+00
basel		D		waste	2020-10-20 00:00:00+00
basel		D		waste	2020-11-06 00:00:00+00
basel		D		waste	2020-11-13 00:00:00+00
basel		D		waste	2020-11-27 00:00:00+00
basel		D		waste	2020-12-01 00:00:00+00
basel		D		waste	2020-12-11 00:00:00+00
basel		D		waste	2020-12-29 00:00:00+00
basel		E		waste	2020-01-07 00:00:00+00
basel		E		waste	2020-01-24 00:00:00+00
basel		E		waste	2020-02-07 00:00:00+00
basel		E		waste	2020-02-14 00:00:00+00
basel		E		waste	2020-02-21 00:00:00+00
basel		E		waste	2020-02-25 00:00:00+00
basel		E		waste	2020-03-03 00:00:00+00
basel		E		waste	2020-03-20 00:00:00+00
basel		E		waste	2020-04-07 00:00:00+00
basel		E		waste	2020-04-17 00:00:00+00
basel		E		waste	2020-04-24 00:00:00+00
basel		E		waste	2020-05-05 00:00:00+00
basel		E		waste	2020-05-08 00:00:00+00
basel		E		waste	2020-05-19 00:00:00+00
basel		E		waste	2020-05-29 00:00:00+00
basel		E		waste	2020-06-12 00:00:00+00
basel		E		waste	2020-06-19 00:00:00+00
basel		E		waste	2020-06-30 00:00:00+00
basel		E		waste	2020-07-10 00:00:00+00
basel		E		waste	2020-07-14 00:00:00+00
basel		E		waste	2020-07-24 00:00:00+00
basel		E		waste	2020-08-07 00:00:00+00
basel		E		waste	2020-08-14 00:00:00+00
basel		E		waste	2020-08-18 00:00:00+00
basel		E		waste	2020-08-28 00:00:00+00
basel		E		waste	2020-09-08 00:00:00+00
basel		E		waste	2020-09-22 00:00:00+00
basel		E		waste	2020-09-29 00:00:00+00
basel		E		waste	2020-10-02 00:00:00+00
basel		E		waste	2020-11-10 00:00:00+00
basel		E		waste	2020-12-04 00:00:00+00
basel		E		waste	2020-12-15 00:00:00+00
basel		E		waste	2020-12-29 00:00:00+00
basel		F		waste	2020-01-02 00:00:00+00
basel		F		waste	2020-01-09 00:00:00+00
basel		F		waste	2020-01-20 00:00:00+00
basel		F		waste	2020-01-27 00:00:00+00
basel		F		waste	2020-02-17 00:00:00+00
basel		F		waste	2020-03-05 00:00:00+00
basel		F		waste	2020-03-09 00:00:00+00
basel		F		waste	2020-03-12 00:00:00+00
basel		F		waste	2020-03-23 00:00:00+00
basel		F		waste	2020-04-20 00:00:00+00
basel		F		waste	2020-04-23 00:00:00+00
basel		F		waste	2020-05-07 00:00:00+00
basel		F		waste	2020-05-14 00:00:00+00
basel		F		waste	2020-05-28 00:00:00+00
basel		F		waste	2020-06-25 00:00:00+00
basel		F		waste	2020-07-02 00:00:00+00
basel		F		waste	2020-07-13 00:00:00+00
basel		F		waste	2020-07-16 00:00:00+00
basel		F		waste	2020-07-20 00:00:00+00
basel		F		waste	2020-08-06 00:00:00+00
basel		F		waste	2020-08-24 00:00:00+00
basel		F		waste	2020-09-21 00:00:00+00
basel		F		waste	2020-10-19 00:00:00+00
basel		F		waste	2020-10-22 00:00:00+00
basel		F		waste	2020-11-05 00:00:00+00
basel		F		waste	2020-11-23 00:00:00+00
basel		F		waste	2020-11-30 00:00:00+00
basel		F		waste	2020-12-03 00:00:00+00
basel		F		waste	2020-12-17 00:00:00+00
basel		F		waste	2020-12-28 00:00:00+00
basel		G		waste	2020-01-13 00:00:00+00
basel		G		waste	2020-01-16 00:00:00+00
basel		G		waste	2020-01-27 00:00:00+00
basel		G		waste	2020-02-10 00:00:00+00
basel		G		waste	2020-02-13 00:00:00+00
basel		G		waste	2020-02-17 00:00:00+00
basel		G		waste	2020-02-27 00:00:00+00
basel		G		waste	2020-03-05 00:00:00+00
basel		G		waste	2020-03-16 00:00:00+00
basel		G		waste	2020-04-06 00:00:00+00
basel		G		waste	2020-04-16 00:00:00+00
basel		G		waste	2020-04-30 00:00:00+00
basel		G		waste	2020-05-04 00:00:00+00
basel		G		waste	2020-05-18 00:00:00+00
basel		G		waste	2020-05-28 00:00:00+00
basel		G		waste	2020-06-04 00:00:00+00
basel		G		waste	2020-06-15 00:00:00+00
basel		G		waste	2020-06-25 00:00:00+00
basel		G		waste	2020-07-02 00:00:00+00
basel		G		waste	2020-07-06 00:00:00+00
basel		G		waste	2020-07-09 00:00:00+00
basel		G		waste	2020-08-31 00:00:00+00
basel		G		waste	2020-09-07 00:00:00+00
basel		G		waste	2020-09-14 00:00:00+00
basel		G		waste	2020-10-12 00:00:00+00
basel		G		waste	2020-10-19 00:00:00+00
basel		G		waste	2020-10-29 00:00:00+00
basel		G		waste	2020-11-05 00:00:00+00
basel		G		waste	2020-11-09 00:00:00+00
basel		G		waste	2020-11-16 00:00:00+00
basel		G		waste	2020-12-14 00:00:00+00
basel		G		waste	2020-12-17 00:00:00+00
basel		G		waste	2020-12-21 00:00:00+00
basel		G		waste	2020-12-24 00:00:00+00
basel		G		waste	2020-12-28 00:00:00+00
basel		H		waste	2020-01-07 00:00:00+00
basel		H		waste	2020-01-17 00:00:00+00
basel		H		waste	2020-02-04 00:00:00+00
basel		H		waste	2020-02-07 00:00:00+00
basel		H		waste	2020-02-21 00:00:00+00
basel		H		waste	2020-02-25 00:00:00+00
basel		H		waste	2020-02-28 00:00:00+00
basel		H		waste	2020-03-10 00:00:00+00
basel		H		waste	2020-03-27 00:00:00+00
basel		H		waste	2020-03-31 00:00:00+00
basel		H		waste	2020-04-14 00:00:00+00
basel		H		waste	2020-04-28 00:00:00+00
basel		H		waste	2020-05-15 00:00:00+00
basel		H		waste	2020-05-19 00:00:00+00
basel		H		waste	2020-06-23 00:00:00+00
basel		H		waste	2020-06-26 00:00:00+00
basel		H		waste	2020-07-14 00:00:00+00
basel		H		waste	2020-07-31 00:00:00+00
basel		H		waste	2020-08-28 00:00:00+00
basel		H		waste	2020-09-08 00:00:00+00
basel		H		waste	2020-09-29 00:00:00+00
basel		H		waste	2020-10-02 00:00:00+00
basel		H		waste	2020-11-27 00:00:00+00
basel		H		waste	2020-12-04 00:00:00+00
basel		H		waste	2020-12-15 00:00:00+00
basel		H		waste	2020-12-18 00:00:00+00
basel		H		waste	2020-12-29 00:00:00+00
basel		A		metal	2020-01-23 00:00:00+00
basel		A		metal	2020-08-12 00:00:00+00
basel		A		metal	2020-11-30 00:00:00+00
basel		A		metal	2020-12-28 00:00:00+00
basel		B		metal	2020-12-31 00:00:00+00
basel		C		metal	2020-06-16 00:00:00+00
basel		C		metal	2020-10-21 00:00:00+00
basel		D		metal	2020-07-14 00:00:00+00
basel		D		metal	2020-09-07 00:00:00+00
basel		D		metal	2020-11-04 00:00:00+00
basel		D		metal	2020-12-17 00:00:00+00
basel		E		metal	2020-01-20 00:00:00+00
basel		E		metal	2020-12-04 00:00:00+00
basel		F		metal	2020-01-21 00:00:00+00
basel		F		metal	2020-03-06 00:00:00+00
basel		F		metal	2020-12-14 00:00:00+00
basel		G		metal	2020-07-28 00:00:00+00
basel		H		metal	2020-08-26 00:00:00+00
basel		H		metal	2020-10-05 00:00:00+00
basel		A		paper	2020-04-08 00:00:00+00
basel		A		paper	2020-07-01 00:00:00+00
basel		A		paper	2020-08-26 00:00:00+00
basel		A		paper	2020-11-18 00:00:00+00
basel		A		paper	2020-12-16 00:00:00+00
basel		B		paper	2020-10-21 00:00:00+00
basel		C		paper	2020-01-29 00:00:00+00
basel		C		paper	2020-02-26 00:00:00+00
basel		C		paper	2020-08-19 00:00:00+00
basel		D		paper	2020-07-22 00:00:00+00
basel		D		paper	2020-11-11 00:00:00+00
basel		D		paper	2020-12-09 00:00:00+00
basel		E		paper	2020-02-12 00:00:00+00
basel		E		paper	2020-03-18 00:00:00+00
basel		E		paper	2020-04-15 00:00:00+00
basel		E		paper	2020-07-08 00:00:00+00
basel		E		paper	2020-08-05 00:00:00+00
basel		E		paper	2020-09-30 00:00:00+00
basel		E		paper	2020-10-28 00:00:00+00
basel		E		paper	2020-11-25 00:00:00+00
basel		F		paper	2020-02-12 00:00:00+00
basel		F		paper	2020-03-18 00:00:00+00
basel		F		paper	2020-07-08 00:00:00+00
basel		F		paper	2020-09-02 00:00:00+00
basel		F		paper	2020-09-30 00:00:00+00
basel		G		paper	2020-02-19 00:00:00+00
basel		G		paper	2020-05-20 00:00:00+00
basel		G		paper	2020-06-17 00:00:00+00
basel		G		paper	2020-07-15 00:00:00+00
basel		G		paper	2020-12-02 00:00:00+00
basel		G		paper	2020-12-30 00:00:00+00
basel		H		paper	2020-02-19 00:00:00+00
basel		H		paper	2020-07-15 00:00:00+00
basel		A		incombustibles	2020-01-20 00:00:00+00
basel		A		incombustibles	2020-04-20 00:00:00+00
basel		A		incombustibles	2020-07-13 00:00:00+00
basel		A		incombustibles	2020-09-25 00:00:00+00
basel		A		incombustibles	2020-12-14 00:00:00+00
basel		B		incombustibles	2020-05-19 00:00:00+00
basel		B		incombustibles	2020-09-11 00:00:00+00
basel		B		incombustibles	2020-12-08 00:00:00+00
basel		C		incombustibles	2020-02-11 00:00:00+00
basel		C		incombustibles	2020-03-24 00:00:00+00
basel		C		incombustibles	2020-04-21 00:00:00+00
basel		C		incombustibles	2020-06-16 00:00:00+00
basel		C		incombustibles	2020-10-13 00:00:00+00
basel		C		incombustibles	2020-11-17 00:00:00+00
basel		D		incombustibles	2020-04-06 00:00:00+00
basel		E		incombustibles	2020-03-30 00:00:00+00
basel		E		incombustibles	2020-04-23 00:00:00+00
basel		E		incombustibles	2020-11-09 00:00:00+00
basel		F		incombustibles	2020-08-28 00:00:00+00
basel		G		incombustibles	2020-03-17 00:00:00+00
basel		G		incombustibles	2020-06-02 00:00:00+00
basel		G		incombustibles	2020-07-06 00:00:00+00
basel		G		incombustibles	2020-10-06 00:00:00+00
basel		H		incombustibles	2020-02-13 00:00:00+00
basel		H		incombustibles	2020-07-28 00:00:00+00
basel		A		chipping_service	2020-04-06 00:00:00+00
basel		B		chipping_service	2020-06-15 00:00:00+00
basel		B		chipping_service	2020-09-14 00:00:00+00
basel		C		chipping_service	2020-02-24 00:00:00+00
basel		C		chipping_service	2020-11-23 00:00:00+00
basel		D		chipping_service	2020-02-24 00:00:00+00
basel		D		chipping_service	2020-04-06 00:00:00+00
basel		D		chipping_service	2020-11-23 00:00:00+00
basel		E		chipping_service	2020-02-26 00:00:00+00
basel		E		chipping_service	2020-06-17 00:00:00+00
basel		E		chipping_service	2020-11-25 00:00:00+00
basel		F		chipping_service	2020-02-26 00:00:00+00
basel		G		chipping_service	2020-11-24 00:00:00+00
basel		H		chipping_service	2020-09-15 00:00:00+00
basel		H		chipping_service	2020-11-24 00:00:00+00
basel		A		waste	2021-01-05 00:00:00+00
basel		A		waste	2021-01-08 00:00:00+00
basel		A		waste	2021-01-15 00:00:00+00
basel		A		waste	2021-02-05 00:00:00+00
basel		A		waste	2021-02-23 00:00:00+00
basel		A		waste	2021-03-09 00:00:00+00
basel		A		waste	2021-03-26 00:00:00+00
basel		A		waste	2021-04-06 00:00:00+00
basel		A		waste	2021-04-23 00:00:00+00
basel		A		waste	2021-04-30 00:00:00+00
basel		A		waste	2021-05-14 00:00:00+00
basel		A		waste	2021-05-18 00:00:00+00
basel		A		waste	2021-05-25 00:00:00+00
basel		A		waste	2021-06-01 00:00:00+00
basel		A		waste	2021-06-08 00:00:00+00
basel		A		waste	2021-06-11 00:00:00+00
basel		A		waste	2021-06-25 00:00:00+00
basel		A		waste	2021-07-02 00:00:00+00
basel		A		waste	2021-07-06 00:00:00+00
basel		A		waste	2021-07-13 00:00:00+00
basel		A		waste	2021-08-03 00:00:00+00
basel		A		waste	2021-08-13 00:00:00+00
basel		A		waste	2021-08-24 00:00:00+00
basel		A		waste	2021-08-27 00:00:00+00
basel		A		waste	2021-08-31 00:00:00+00
basel		A		waste	2021-09-07 00:00:00+00
basel		A		waste	2021-09-17 00:00:00+00
basel		A		waste	2021-10-05 00:00:00+00
basel		A		waste	2021-10-08 00:00:00+00
basel		A		waste	2021-10-29 00:00:00+00
basel		A		waste	2021-11-02 00:00:00+00
basel		A		waste	2021-11-19 00:00:00+00
basel		A		waste	2021-11-23 00:00:00+00
basel		A		waste	2021-12-07 00:00:00+00
basel		A		waste	2021-12-10 00:00:00+00
basel		A		waste	2021-12-21 00:00:00+00
basel		B		waste	2021-01-11 00:00:00+00
basel		B		waste	2021-01-14 00:00:00+00
basel		B		waste	2021-01-28 00:00:00+00
basel		B		waste	2021-02-04 00:00:00+00
basel		B		waste	2021-02-08 00:00:00+00
basel		B		waste	2021-03-08 00:00:00+00
basel		B		waste	2021-04-08 00:00:00+00
basel		B		waste	2021-04-15 00:00:00+00
basel		B		waste	2021-04-19 00:00:00+00
basel		B		waste	2021-05-03 00:00:00+00
basel		B		waste	2021-05-24 00:00:00+00
basel		B		waste	2021-06-03 00:00:00+00
basel		B		waste	2021-06-07 00:00:00+00
basel		B		waste	2021-06-10 00:00:00+00
basel		B		waste	2021-06-21 00:00:00+00
basel		B		waste	2021-07-12 00:00:00+00
basel		B		waste	2021-07-15 00:00:00+00
basel		B		waste	2021-07-26 00:00:00+00
basel		B		waste	2021-08-02 00:00:00+00
basel		B		waste	2021-08-05 00:00:00+00
basel		B		waste	2021-08-12 00:00:00+00
basel		B		waste	2021-08-16 00:00:00+00
basel		B		waste	2021-08-19 00:00:00+00
basel		B		waste	2021-08-23 00:00:00+00
basel		B		waste	2021-09-02 00:00:00+00
basel		B		waste	2021-09-06 00:00:00+00
basel		B		waste	2021-09-16 00:00:00+00
basel		B		waste	2021-10-07 00:00:00+00
basel		B		waste	2021-10-18 00:00:00+00
basel		B		waste	2021-11-22 00:00:00+00
basel		B		waste	2021-12-02 00:00:00+00
basel		B		waste	2021-12-13 00:00:00+00
basel		B		waste	2021-12-16 00:00:00+00
basel		B		waste	2021-12-30 00:00:00+00
basel		C		waste	2021-01-04 00:00:00+00
basel		C		waste	2021-01-11 00:00:00+00
basel		C		waste	2021-01-18 00:00:00+00
basel		C		waste	2021-01-21 00:00:00+00
basel		C		waste	2021-01-25 00:00:00+00
basel		C		waste	2021-02-15 00:00:00+00
basel		C		waste	2021-02-18 00:00:00+00
basel		C		waste	2021-03-04 00:00:00+00
basel		C		waste	2021-03-11 00:00:00+00
basel		C		waste	2021-03-18 00:00:00+00
basel		C		waste	2021-03-29 00:00:00+00
basel		C		waste	2021-05-03 00:00:00+00
basel		C		waste	2021-05-24 00:00:00+00
basel		C		waste	2021-05-27 00:00:00+00
basel		C		waste	2021-05-31 00:00:00+00
basel		C		waste	2021-06-03 00:00:00+00
basel		C		waste	2021-06-07 00:00:00+00
basel		C		waste	2021-06-21 00:00:00+00
basel		C		waste	2021-06-28 00:00:00+00
basel		C		waste	2021-07-01 00:00:00+00
basel		C		waste	2021-07-05 00:00:00+00
basel		C		waste	2021-07-26 00:00:00+00
basel		C		waste	2021-07-29 00:00:00+00
basel		C		waste	2021-08-02 00:00:00+00
basel		C		waste	2021-08-12 00:00:00+00
basel		C		waste	2021-08-19 00:00:00+00
basel		C		waste	2021-09-02 00:00:00+00
basel		C		waste	2021-09-06 00:00:00+00
basel		C		waste	2021-09-16 00:00:00+00
basel		C		waste	2021-09-20 00:00:00+00
basel		C		waste	2021-09-27 00:00:00+00
basel		C		waste	2021-09-30 00:00:00+00
basel		C		waste	2021-10-04 00:00:00+00
basel		C		waste	2021-10-11 00:00:00+00
basel		C		waste	2021-10-14 00:00:00+00
basel		C		waste	2021-10-18 00:00:00+00
basel		C		waste	2021-11-11 00:00:00+00
basel		C		waste	2021-11-25 00:00:00+00
basel		D		waste	2021-01-12 00:00:00+00
basel		D		waste	2021-01-15 00:00:00+00
basel		D		waste	2021-01-19 00:00:00+00
basel		D		waste	2021-01-22 00:00:00+00
basel		D		waste	2021-02-05 00:00:00+00
basel		D		waste	2021-02-12 00:00:00+00
basel		D		waste	2021-03-09 00:00:00+00
basel		D		waste	2021-03-16 00:00:00+00
basel		D		waste	2021-03-19 00:00:00+00
basel		D		waste	2021-03-26 00:00:00+00
basel		D		waste	2021-03-30 00:00:00+00
basel		D		waste	2021-04-13 00:00:00+00
basel		D		waste	2021-04-16 00:00:00+00
basel		D		waste	2021-04-23 00:00:00+00
basel		D		waste	2021-04-27 00:00:00+00
basel		D		waste	2021-04-30 00:00:00+00
basel		D		waste	2021-05-04 00:00:00+00
basel		D		waste	2021-05-07 00:00:00+00
basel		D		waste	2021-05-21 00:00:00+00
basel		D		waste	2021-05-28 00:00:00+00
basel		D		waste	2021-06-18 00:00:00+00
basel		D		waste	2021-07-02 00:00:00+00
basel		D		waste	2021-07-09 00:00:00+00
basel		D		waste	2021-07-30 00:00:00+00
basel		D		waste	2021-08-10 00:00:00+00
basel		D		waste	2021-08-24 00:00:00+00
basel		D		waste	2021-09-03 00:00:00+00
basel		D		waste	2021-10-01 00:00:00+00
basel		D		waste	2021-10-05 00:00:00+00
basel		D		waste	2021-10-15 00:00:00+00
basel		D		waste	2021-10-22 00:00:00+00
basel		D		waste	2021-10-29 00:00:00+00
basel		D		waste	2021-11-05 00:00:00+00
basel		D		waste	2021-11-12 00:00:00+00
basel		D		waste	2021-11-30 00:00:00+00
basel		D		waste	2021-12-14 00:00:00+00
basel		E		waste	2021-01-19 00:00:00+00
basel		E		waste	2021-01-26 00:00:00+00
basel		E		waste	2021-02-05 00:00:00+00
basel		E		waste	2021-02-09 00:00:00+00
basel		E		waste	2021-02-16 00:00:00+00
basel		E		waste	2021-03-02 00:00:00+00
basel		E		waste	2021-03-09 00:00:00+00
basel		E		waste	2021-03-16 00:00:00+00
basel		E		waste	2021-03-23 00:00:00+00
basel		E		waste	2021-04-06 00:00:00+00
basel		E		waste	2021-04-09 00:00:00+00
basel		E		waste	2021-04-16 00:00:00+00
basel		E		waste	2021-04-20 00:00:00+00
basel		E		waste	2021-04-23 00:00:00+00
basel		E		waste	2021-04-27 00:00:00+00
basel		E		waste	2021-05-07 00:00:00+00
basel		E		waste	2021-06-08 00:00:00+00
basel		E		waste	2021-06-22 00:00:00+00
basel		E		waste	2021-06-25 00:00:00+00
basel		E		waste	2021-07-06 00:00:00+00
basel		E		waste	2021-07-09 00:00:00+00
basel		E		waste	2021-07-13 00:00:00+00
basel		E		waste	2021-07-16 00:00:00+00
basel		E		waste	2021-08-10 00:00:00+00
basel		E		waste	2021-08-17 00:00:00+00
basel		E		waste	2021-09-03 00:00:00+00
basel		E		waste	2021-09-17 00:00:00+00
basel		E		waste	2021-09-24 00:00:00+00
basel		E		waste	2021-10-01 00:00:00+00
basel		E		waste	2021-10-08 00:00:00+00
basel		E		waste	2021-10-12 00:00:00+00
basel		E		waste	2021-10-22 00:00:00+00
basel		E		waste	2021-11-05 00:00:00+00
basel		E		waste	2021-11-09 00:00:00+00
basel		E		waste	2021-11-16 00:00:00+00
basel		E		waste	2021-11-23 00:00:00+00
basel		E		waste	2021-12-07 00:00:00+00
basel		E		waste	2021-12-10 00:00:00+00
basel		E		waste	2021-12-24 00:00:00+00
basel		F		waste	2021-01-07 00:00:00+00
basel		F		waste	2021-01-14 00:00:00+00
basel		F		waste	2021-01-18 00:00:00+00
basel		F		waste	2021-02-01 00:00:00+00
basel		F		waste	2021-02-22 00:00:00+00
basel		F		waste	2021-02-25 00:00:00+00
basel		F		waste	2021-03-08 00:00:00+00
basel		F		waste	2021-03-11 00:00:00+00
basel		F		waste	2021-03-18 00:00:00+00
basel		F		waste	2021-03-22 00:00:00+00
basel		F		waste	2021-04-05 00:00:00+00
basel		F		waste	2021-04-22 00:00:00+00
basel		F		waste	2021-04-29 00:00:00+00
basel		F		waste	2021-05-06 00:00:00+00
basel		F		waste	2021-05-17 00:00:00+00
basel		F		waste	2021-05-27 00:00:00+00
basel		F		waste	2021-05-31 00:00:00+00
basel		F		waste	2021-06-14 00:00:00+00
basel		F		waste	2021-06-17 00:00:00+00
basel		F		waste	2021-07-15 00:00:00+00
basel		F		waste	2021-07-22 00:00:00+00
basel		F		waste	2021-07-26 00:00:00+00
basel		F		waste	2021-08-09 00:00:00+00
basel		F		waste	2021-08-16 00:00:00+00
basel		F		waste	2021-09-02 00:00:00+00
basel		F		waste	2021-09-13 00:00:00+00
basel		F		waste	2021-09-30 00:00:00+00
basel		F		waste	2021-10-04 00:00:00+00
basel		F		waste	2021-10-14 00:00:00+00
basel		F		waste	2021-10-21 00:00:00+00
basel		F		waste	2021-10-28 00:00:00+00
basel		F		waste	2021-11-01 00:00:00+00
basel		F		waste	2021-11-15 00:00:00+00
basel		F		waste	2021-12-06 00:00:00+00
basel		F		waste	2021-12-13 00:00:00+00
basel		F		waste	2021-12-16 00:00:00+00
basel		F		waste	2021-12-20 00:00:00+00
basel		F		waste	2021-12-23 00:00:00+00
basel		G		waste	2021-01-25 00:00:00+00
basel		G		waste	2021-03-01 00:00:00+00
basel		G		waste	2021-03-08 00:00:00+00
basel		G		waste	2021-03-15 00:00:00+00
basel		G		waste	2021-03-18 00:00:00+00
basel		G		waste	2021-03-29 00:00:00+00
basel		G		waste	2021-04-08 00:00:00+00
basel		G		waste	2021-04-29 00:00:00+00
basel		G		waste	2021-05-27 00:00:00+00
basel		G		waste	2021-05-31 00:00:00+00
basel		G		waste	2021-06-03 00:00:00+00
basel		G		waste	2021-06-07 00:00:00+00
basel		G		waste	2021-06-14 00:00:00+00
basel		G		waste	2021-06-17 00:00:00+00
basel		G		waste	2021-06-21 00:00:00+00
basel		G		waste	2021-06-24 00:00:00+00
basel		G		waste	2021-07-01 00:00:00+00
basel		G		waste	2021-07-15 00:00:00+00
basel		G		waste	2021-07-26 00:00:00+00
basel		G		waste	2021-07-29 00:00:00+00
basel		G		waste	2021-08-02 00:00:00+00
basel		G		waste	2021-08-05 00:00:00+00
basel		G		waste	2021-08-16 00:00:00+00
basel		G		waste	2021-08-19 00:00:00+00
basel		G		waste	2021-08-26 00:00:00+00
basel		G		waste	2021-09-06 00:00:00+00
basel		G		waste	2021-09-09 00:00:00+00
basel		G		waste	2021-09-16 00:00:00+00
basel		G		waste	2021-09-27 00:00:00+00
basel		G		waste	2021-10-04 00:00:00+00
basel		G		waste	2021-10-14 00:00:00+00
basel		G		waste	2021-10-18 00:00:00+00
basel		G		waste	2021-10-21 00:00:00+00
basel		G		waste	2021-10-25 00:00:00+00
basel		G		waste	2021-11-11 00:00:00+00
basel		G		waste	2021-11-18 00:00:00+00
basel		G		waste	2021-11-29 00:00:00+00
basel		G		waste	2021-12-09 00:00:00+00
basel		G		waste	2021-12-13 00:00:00+00
basel		G		waste	2021-12-20 00:00:00+00
basel		G		waste	2021-12-23 00:00:00+00
basel		G		waste	2021-12-30 00:00:00+00
basel		H		waste	2021-01-08 00:00:00+00
basel		H		waste	2021-01-15 00:00:00+00
basel		H		waste	2021-01-26 00:00:00+00
basel		H		waste	2021-02-02 00:00:00+00
basel		H		waste	2021-02-16 00:00:00+00
basel		H		waste	2021-02-19 00:00:00+00
basel		H		waste	2021-02-23 00:00:00+00
basel		H		waste	2021-03-09 00:00:00+00
basel		H		waste	2021-03-12 00:00:00+00
basel		H		waste	2021-04-06 00:00:00+00
basel		H		waste	2021-04-09 00:00:00+00
basel		H		waste	2021-04-13 00:00:00+00
basel		H		waste	2021-04-16 00:00:00+00
basel		H		waste	2021-04-27 00:00:00+00
basel		H		waste	2021-05-14 00:00:00+00
basel		H		waste	2021-06-01 00:00:00+00
basel		H		waste	2021-06-18 00:00:00+00
basel		H		waste	2021-06-22 00:00:00+00
basel		H		waste	2021-07-02 00:00:00+00
basel		H		waste	2021-07-09 00:00:00+00
basel		H		waste	2021-07-13 00:00:00+00
basel		H		waste	2021-07-16 00:00:00+00
basel		H		waste	2021-08-06 00:00:00+00
basel		H		waste	2021-08-13 00:00:00+00
basel		H		waste	2021-08-17 00:00:00+00
basel		H		waste	2021-09-03 00:00:00+00
basel		H		waste	2021-09-17 00:00:00+00
basel		H		waste	2021-09-21 00:00:00+00
basel		H		waste	2021-09-28 00:00:00+00
basel		H		waste	2021-10-05 00:00:00+00
basel		H		waste	2021-11-05 00:00:00+00
basel		H		waste	2021-11-09 00:00:00+00
basel		H		waste	2021-11-19 00:00:00+00
basel		H		waste	2021-11-30 00:00:00+00
basel		A		organic	2021-01-07 00:00:00+00
basel		A		organic	2021-03-11 00:00:00+00
basel		A		organic	2021-03-25 00:00:00+00
basel		A		organic	2021-04-22 00:00:00+00
basel		A		organic	2021-05-27 00:00:00+00
basel		A		organic	2021-06-03 00:00:00+00
basel		A		organic	2021-06-24 00:00:00+00
basel		A		organic	2021-07-01 00:00:00+00
basel		A		organic	2021-07-29 00:00:00+00
basel		A		organic	2021-08-05 00:00:00+00
basel		A		organic	2021-08-12 00:00:00+00
basel		A		organic	2021-08-26 00:00:00+00
basel		A		organic	2021-09-02 00:00:00+00
basel		A		organic	2021-09-16 00:00:00+00
basel		A		organic	2021-09-30 00:00:00+00
basel		A		organic	2021-10-14 00:00:00+00
basel		A		organic	2021-10-28 00:00:00+00
basel		A		organic	2021-11-04 00:00:00+00
basel		A		organic	2021-11-18 00:00:00+00
basel		B		organic	2021-01-07 00:00:00+00
basel		B		organic	2021-01-21 00:00:00+00
basel		B		organic	2021-02-18 00:00:00+00
basel		B		organic	2021-03-11 00:00:00+00
basel		B		organic	2021-03-18 00:00:00+00
basel		B		organic	2021-05-06 00:00:00+00
basel		B		organic	2021-05-20 00:00:00+00
basel		B		organic	2021-06-10 00:00:00+00
basel		B		organic	2021-06-17 00:00:00+00
basel		B		organic	2021-06-24 00:00:00+00
basel		B		organic	2021-09-30 00:00:00+00
basel		B		organic	2021-10-21 00:00:00+00
basel		B		organic	2021-11-11 00:00:00+00
basel		B		organic	2021-11-25 00:00:00+00
basel		C		organic	2021-01-22 00:00:00+00
basel		C		organic	2021-03-19 00:00:00+00
basel		C		organic	2021-03-26 00:00:00+00
basel		C		organic	2021-04-16 00:00:00+00
basel		C		organic	2021-04-30 00:00:00+00
basel		C		organic	2021-05-14 00:00:00+00
basel		C		organic	2021-05-28 00:00:00+00
basel		C		organic	2021-08-13 00:00:00+00
basel		C		organic	2021-08-27 00:00:00+00
basel		C		organic	2021-09-10 00:00:00+00
basel		C		organic	2021-09-24 00:00:00+00
basel		C		organic	2021-10-08 00:00:00+00
basel		C		organic	2021-10-22 00:00:00+00
basel		C		organic	2021-11-12 00:00:00+00
basel		C		organic	2021-12-10 00:00:00+00
basel		D		organic	2021-02-18 00:00:00+00
basel		D		organic	2021-03-18 00:00:00+00
basel		D		organic	2021-03-25 00:00:00+00
basel		D		organic	2021-04-15 00:00:00+00
basel		D		organic	2021-04-29 00:00:00+00
basel		D		organic	2021-05-06 00:00:00+00
basel		D		organic	2021-05-20 00:00:00+00
basel		D		organic	2021-05-27 00:00:00+00
basel		D		organic	2021-07-01 00:00:00+00
basel		D		organic	2021-07-15 00:00:00+00
basel		D		organic	2021-08-05 00:00:00+00
basel		D		organic	2021-09-09 00:00:00+00
basel		D		organic	2021-09-23 00:00:00+00
basel		D		organic	2021-11-04 00:00:00+00
basel		D		organic	2021-11-11 00:00:00+00
basel		D		organic	2021-12-09 00:00:00+00
basel		E		organic	2021-02-04 00:00:00+00
basel		E		organic	2021-04-08 00:00:00+00
basel		E		organic	2021-04-15 00:00:00+00
basel		E		organic	2021-05-06 00:00:00+00
basel		E		organic	2021-05-20 00:00:00+00
basel		E		organic	2021-05-27 00:00:00+00
basel		E		organic	2021-06-10 00:00:00+00
basel		E		organic	2021-07-08 00:00:00+00
basel		E		organic	2021-07-29 00:00:00+00
basel		E		organic	2021-08-05 00:00:00+00
basel		E		organic	2021-08-26 00:00:00+00
basel		E		organic	2021-09-09 00:00:00+00
basel		E		organic	2021-09-30 00:00:00+00
basel		E		organic	2021-11-18 00:00:00+00
basel		F		organic	2021-01-19 00:00:00+00
basel		F		organic	2021-03-09 00:00:00+00
basel		F		organic	2021-05-18 00:00:00+00
basel		F		organic	2021-05-25 00:00:00+00
basel		F		organic	2021-07-27 00:00:00+00
basel		F		organic	2021-08-10 00:00:00+00
basel		F		organic	2021-08-17 00:00:00+00
basel		F		organic	2021-09-21 00:00:00+00
basel		F		organic	2021-11-09 00:00:00+00
basel		F		organic	2021-12-21 00:00:00+00
basel		G		organic	2021-01-22 00:00:00+00
basel		G		organic	2021-02-05 00:00:00+00
basel		G		organic	2021-04-16 00:00:00+00
basel		G		organic	2021-04-23 00:00:00+00
basel		G		organic	2021-04-30 00:00:00+00
basel		G		organic	2021-05-21 00:00:00+00
basel		G		organic	2021-05-28 00:00:00+00
basel		G		organic	2021-06-18 00:00:00+00
basel		G		organic	2021-07-16 00:00:00+00
basel		G		organic	2021-07-30 00:00:00+00
basel		G		organic	2021-09-17 00:00:00+00
basel		G		organic	2021-09-24 00:00:00+00
basel		G		organic	2021-10-22 00:00:00+00
basel		G		organic	2021-11-12 00:00:00+00
basel		G		organic	2021-11-19 00:00:00+00
basel		G		organic	2021-11-26 00:00:00+00
basel		G		organic	2021-12-10 00:00:00+00
basel		H		organic	2021-03-22 00:00:00+00
basel		H		organic	2021-03-29 00:00:00+00
basel		H		organic	2021-04-19 00:00:00+00
basel		H		organic	2021-05-17 00:00:00+00
basel		H		organic	2021-05-31 00:00:00+00
basel		H		organic	2021-06-07 00:00:00+00
basel		H		organic	2021-06-21 00:00:00+00
basel		H		organic	2021-07-12 00:00:00+00
basel		H		organic	2021-08-30 00:00:00+00
basel		H		organic	2021-09-13 00:00:00+00
basel		H		organic	2021-09-27 00:00:00+00
basel		H		organic	2021-10-04 00:00:00+00
basel		H		organic	2021-10-18 00:00:00+00
basel		H		organic	2021-10-25 00:00:00+00
basel		H		organic	2021-11-01 00:00:00+00
basel		H		organic	2021-11-22 00:00:00+00
basel		A		metal	2021-06-30 00:00:00+00
basel		A		metal	2021-12-13 00:00:00+00
basel		B		metal	2021-01-26 00:00:00+00
basel		B		metal	2021-05-19 00:00:00+00
basel		B		metal	2021-11-30 00:00:00+00
basel		B		metal	2021-12-28 00:00:00+00
basel		C		metal	2021-11-03 00:00:00+00
basel		D		metal	2021-01-28 00:00:00+00
basel		D		metal	2021-10-06 00:00:00+00
basel		E		metal	2021-01-14 00:00:00+00
basel		E		metal	2021-11-17 00:00:00+00
basel		E		metal	2021-12-16 00:00:00+00
basel		F		metal	2021-01-29 00:00:00+00
basel		F		metal	2021-02-26 00:00:00+00
basel		F		metal	2021-12-03 00:00:00+00
basel		G		metal	2021-01-15 00:00:00+00
basel		G		metal	2021-02-12 00:00:00+00
basel		G		metal	2021-04-21 00:00:00+00
basel		G		metal	2021-12-17 00:00:00+00
basel		H		metal	2021-02-22 00:00:00+00
basel		H		metal	2021-05-05 00:00:00+00
basel		A		bulky_goods	2021-01-20 00:00:00+00
basel		A		bulky_goods	2021-02-03 00:00:00+00
basel		A		bulky_goods	2021-03-03 00:00:00+00
basel		A		bulky_goods	2021-04-28 00:00:00+00
basel		A		bulky_goods	2021-06-23 00:00:00+00
basel		A		bulky_goods	2021-07-21 00:00:00+00
basel		A		bulky_goods	2021-08-18 00:00:00+00
basel		A		bulky_goods	2021-09-15 00:00:00+00
basel		A		bulky_goods	2021-10-13 00:00:00+00
basel		A		bulky_goods	2021-11-10 00:00:00+00
basel		A		bulky_goods	2021-12-15 00:00:00+00
basel		B		bulky_goods	2021-02-03 00:00:00+00
basel		B		bulky_goods	2021-03-03 00:00:00+00
basel		B		bulky_goods	2021-03-31 00:00:00+00
basel		B		bulky_goods	2021-04-28 00:00:00+00
basel		B		bulky_goods	2021-05-26 00:00:00+00
basel		B		bulky_goods	2021-06-23 00:00:00+00
basel		B		bulky_goods	2021-07-21 00:00:00+00
basel		B		bulky_goods	2021-08-18 00:00:00+00
basel		B		bulky_goods	2021-12-01 00:00:00+00
basel		C		bulky_goods	2021-04-28 00:00:00+00
basel		C		bulky_goods	2021-06-23 00:00:00+00
basel		C		bulky_goods	2021-07-21 00:00:00+00
basel		C		bulky_goods	2021-08-18 00:00:00+00
basel		C		bulky_goods	2021-10-13 00:00:00+00
basel		D		bulky_goods	2021-01-27 00:00:00+00
basel		D		bulky_goods	2021-03-31 00:00:00+00
basel		D		bulky_goods	2021-04-28 00:00:00+00
basel		D		bulky_goods	2021-06-23 00:00:00+00
basel		D		bulky_goods	2021-12-08 00:00:00+00
basel		E		bulky_goods	2021-01-27 00:00:00+00
basel		E		bulky_goods	2021-04-14 00:00:00+00
basel		E		bulky_goods	2021-06-09 00:00:00+00
basel		E		bulky_goods	2021-07-07 00:00:00+00
basel		F		bulky_goods	2021-02-24 00:00:00+00
basel		F		bulky_goods	2021-06-09 00:00:00+00
basel		F		bulky_goods	2021-08-04 00:00:00+00
basel		F		bulky_goods	2021-09-29 00:00:00+00
basel		G		bulky_goods	2021-01-06 00:00:00+00
basel		G		bulky_goods	2021-01-20 00:00:00+00
basel		G		bulky_goods	2021-04-14 00:00:00+00
basel		G		bulky_goods	2021-09-01 00:00:00+00
basel		G		bulky_goods	2021-09-29 00:00:00+00
basel		G		bulky_goods	2021-10-27 00:00:00+00
basel		H		bulky_goods	2021-01-06 00:00:00+00
basel		H		bulky_goods	2021-01-20 00:00:00+00
basel		H		bulky_goods	2021-03-17 00:00:00+00
basel		H		bulky_goods	2021-07-07 00:00:00+00
basel		H		bulky_goods	2021-08-04 00:00:00+00
basel		H		bulky_goods	2021-09-29 00:00:00+00
basel		H		bulky_goods	2021-12-29 00:00:00+00
basel		A		paper	2021-01-13 00:00:00+00
basel		A		paper	2021-08-04 00:00:00+00
basel		A		paper	2021-09-01 00:00:00+00
basel		B		paper	2021-03-17 00:00:00+00
basel		B		paper	2021-04-14 00:00:00+00
basel		B		paper	2021-06-09 00:00:00+00
basel		B		paper	2021-07-07 00:00:00+00
basel		B		paper	2021-08-04 00:00:00+00
basel		B		paper	2021-09-01 00:00:00+00
basel		C		paper	2021-02-03 00:00:00+00
basel		C		paper	2021-03-10 00:00:00+00
basel		C		paper	2021-06-30 00:00:00+00
basel		C		paper	2021-07-28 00:00:00+00
basel		C		paper	2021-08-25 00:00:00+00
basel		C		paper	2021-10-20 00:00:00+00
basel		D		paper	2021-01-06 00:00:00+00
basel		D		paper	2021-02-03 00:00:00+00
basel		D		paper	2021-05-05 00:00:00+00
basel		D		paper	2021-06-02 00:00:00+00
basel		D		paper	2021-06-30 00:00:00+00
basel		D		paper	2021-09-22 00:00:00+00
basel		D		paper	2021-12-15 00:00:00+00
basel		E		paper	2021-02-17 00:00:00+00
basel		E		paper	2021-03-24 00:00:00+00
basel		E		paper	2021-10-06 00:00:00+00
basel		E		paper	2021-11-03 00:00:00+00
basel		E		paper	2021-12-29 00:00:00+00
basel		F		paper	2021-03-24 00:00:00+00
basel		F		paper	2021-09-08 00:00:00+00
basel		F		paper	2021-12-01 00:00:00+00
basel		G		paper	2021-03-03 00:00:00+00
basel		G		paper	2021-04-28 00:00:00+00
basel		G		paper	2021-05-26 00:00:00+00
basel		G		paper	2021-06-23 00:00:00+00
basel		G		paper	2021-08-18 00:00:00+00
basel		G		paper	2021-11-10 00:00:00+00
basel		H		paper	2021-01-27 00:00:00+00
basel		H		paper	2021-03-03 00:00:00+00
basel		H		paper	2021-03-31 00:00:00+00
basel		H		paper	2021-07-21 00:00:00+00
basel		H		paper	2021-08-18 00:00:00+00
basel		A		incombustibles	2021-01-28 00:00:00+00
basel		A		incombustibles	2021-06-21 00:00:00+00
basel		A		incombustibles	2021-08-16 00:00:00+00
basel		A		incombustibles	2021-12-27 00:00:00+00
basel		B		incombustibles	2021-05-18 00:00:00+00
basel		B		incombustibles	2021-07-13 00:00:00+00
basel		B		incombustibles	2021-08-17 00:00:00+00
basel		B		incombustibles	2021-09-14 00:00:00+00
basel		B		incombustibles	2021-11-23 00:00:00+00
basel		B		incombustibles	2021-12-31 00:00:00+00
basel		C		incombustibles	2021-03-23 00:00:00+00
basel		C		incombustibles	2021-04-20 00:00:00+00
basel		C		incombustibles	2021-06-15 00:00:00+00
basel		C		incombustibles	2021-09-07 00:00:00+00
basel		C		incombustibles	2021-10-12 00:00:00+00
basel		C		incombustibles	2021-11-16 00:00:00+00
basel		D		incombustibles	2021-05-17 00:00:00+00
basel		D		incombustibles	2021-08-30 00:00:00+00
basel		D		incombustibles	2021-10-18 00:00:00+00
basel		D		incombustibles	2021-11-29 00:00:00+00
basel		D		incombustibles	2021-12-16 00:00:00+00
basel		E		incombustibles	2021-04-26 00:00:00+00
basel		E		incombustibles	2021-09-13 00:00:00+00
basel		F		incombustibles	2021-09-17 00:00:00+00
basel		G		incombustibles	2021-04-06 00:00:00+00
basel		G		incombustibles	2021-05-04 00:00:00+00
basel		H		incombustibles	2021-02-25 00:00:00+00
basel		H		incombustibles	2021-04-29 00:00:00+00
basel		H		incombustibles	2021-09-09 00:00:00+00
basel		H		incombustibles	2021-10-07 00:00:00+00
basel		H		incombustibles	2021-11-25 00:00:00+00
basel		H		incombustibles	2021-12-30 00:00:00+00
basel		A		chipping_service	2021-11-22 00:00:00+00
basel		B		chipping_service	2021-06-14 00:00:00+00
basel		B		chipping_service	2021-09-06 00:00:00+00
basel		B		chipping_service	2021-11-22 00:00:00+00
basel		C		chipping_service	2021-04-12 00:00:00+00
basel		C		chipping_service	2021-06-14 00:00:00+00
basel		D		chipping_service	2021-06-14 00:00:00+00
basel		E		chipping_service	2021-04-14 00:00:00+00
basel		E		chipping_service	2021-09-08 00:00:00+00
basel		F		chipping_service	2021-11-24 00:00:00+00
basel		G		chipping_service	2021-02-16 00:00:00+00
basel		G		chipping_service	2021-09-07 00:00:00+00
basel		G		chipping_service	2021-11-23 00:00:00+00
basel		H		chipping_service	2021-11-23 00:00:00+00
basel		A		waste	2022-01-04 00:00:00+00
basel		A		waste	2022-01-07 00:00:00+00
basel		A		waste	2022-01-18 00:00:00+00
basel		A		waste	2022-01-21 00:00:00+00
basel		A		waste	2022-02-01 00:00:00+00
basel		A		waste	2022-02-08 00:00:00+00
basel		A		waste	2022-02-11 00:00:00+00
basel		A		waste	2022-03-01 00:00:00+00
basel		A		waste	2022-03-04 00:00:00+00
basel		A		waste	2022-03-08 00:00:00+00
basel		A		waste	2022-03-11 00:00:00+00
basel		A		waste	2022-03-29 00:00:00+00
basel		A		waste	2022-05-10 00:00:00+00
basel		A		waste	2022-05-24 00:00:00+00
basel		A		waste	2022-05-27 00:00:00+00
basel		A		waste	2022-06-03 00:00:00+00
basel		A		waste	2022-07-05 00:00:00+00
basel		A		waste	2022-07-19 00:00:00+00
basel		A		waste	2022-07-29 00:00:00+00
basel		A		waste	2022-08-02 00:00:00+00
basel		A		waste	2022-08-12 00:00:00+00
basel		A		waste	2022-09-02 00:00:00+00
basel		A		waste	2022-09-13 00:00:00+00
basel		A		waste	2022-09-23 00:00:00+00
basel		A		waste	2022-09-27 00:00:00+00
basel		A		waste	2022-09-30 00:00:00+00
basel		A		waste	2022-10-07 00:00:00+00
basel		A		waste	2022-10-21 00:00:00+00
basel		A		waste	2022-11-01 00:00:00+00
basel		A		waste	2022-11-04 00:00:00+00
basel		A		waste	2022-11-15 00:00:00+00
basel		A		waste	2022-11-25 00:00:00+00
basel		A		waste	2022-12-27 00:00:00+00
basel		B		waste	2022-01-24 00:00:00+00
basel		B		waste	2022-01-27 00:00:00+00
basel		B		waste	2022-02-07 00:00:00+00
basel		B		waste	2022-02-10 00:00:00+00
basel		B		waste	2022-02-17 00:00:00+00
basel		B		waste	2022-02-21 00:00:00+00
basel		B		waste	2022-02-24 00:00:00+00
basel		B		waste	2022-03-07 00:00:00+00
basel		B		waste	2022-03-10 00:00:00+00
basel		B		waste	2022-03-14 00:00:00+00
basel		B		waste	2022-03-28 00:00:00+00
basel		B		waste	2022-04-04 00:00:00+00
basel		B		waste	2022-04-14 00:00:00+00
basel		B		waste	2022-05-12 00:00:00+00
basel		B		waste	2022-06-09 00:00:00+00
basel		B		waste	2022-06-27 00:00:00+00
basel		B		waste	2022-07-14 00:00:00+00
basel		B		waste	2022-07-25 00:00:00+00
basel		B		waste	2022-07-28 00:00:00+00
basel		B		waste	2022-08-04 00:00:00+00
basel		B		waste	2022-08-15 00:00:00+00
basel		B		waste	2022-08-25 00:00:00+00
basel		B		waste	2022-09-26 00:00:00+00
basel		B		waste	2022-10-17 00:00:00+00
basel		B		waste	2022-11-14 00:00:00+00
basel		B		waste	2022-12-08 00:00:00+00
basel		B		waste	2022-12-15 00:00:00+00
basel		C		waste	2022-01-20 00:00:00+00
basel		C		waste	2022-01-24 00:00:00+00
basel		C		waste	2022-01-27 00:00:00+00
basel		C		waste	2022-02-03 00:00:00+00
basel		C		waste	2022-02-07 00:00:00+00
basel		C		waste	2022-02-10 00:00:00+00
basel		C		waste	2022-02-14 00:00:00+00
basel		C		waste	2022-02-24 00:00:00+00
basel		C		waste	2022-03-07 00:00:00+00
basel		C		waste	2022-03-10 00:00:00+00
basel		C		waste	2022-03-21 00:00:00+00
basel		C		waste	2022-04-04 00:00:00+00
basel		C		waste	2022-04-07 00:00:00+00
basel		C		waste	2022-04-28 00:00:00+00
basel		C		waste	2022-05-02 00:00:00+00
basel		C		waste	2022-05-19 00:00:00+00
basel		C		waste	2022-06-09 00:00:00+00
basel		C		waste	2022-06-27 00:00:00+00
basel		C		waste	2022-07-14 00:00:00+00
basel		C		waste	2022-07-21 00:00:00+00
basel		C		waste	2022-07-28 00:00:00+00
basel		C		waste	2022-08-04 00:00:00+00
basel		C		waste	2022-08-08 00:00:00+00
basel		C		waste	2022-08-15 00:00:00+00
basel		C		waste	2022-08-29 00:00:00+00
basel		C		waste	2022-09-01 00:00:00+00
basel		C		waste	2022-09-05 00:00:00+00
basel		C		waste	2022-09-22 00:00:00+00
basel		C		waste	2022-09-29 00:00:00+00
basel		C		waste	2022-10-13 00:00:00+00
basel		C		waste	2022-10-31 00:00:00+00
basel		C		waste	2022-11-14 00:00:00+00
basel		C		waste	2022-11-28 00:00:00+00
basel		C		waste	2022-12-01 00:00:00+00
basel		C		waste	2022-12-05 00:00:00+00
basel		C		waste	2022-12-08 00:00:00+00
basel		D		waste	2022-01-04 00:00:00+00
basel		D		waste	2022-01-07 00:00:00+00
basel		D		waste	2022-01-14 00:00:00+00
basel		D		waste	2022-02-08 00:00:00+00
basel		D		waste	2022-02-18 00:00:00+00
basel		D		waste	2022-02-25 00:00:00+00
basel		D		waste	2022-03-08 00:00:00+00
basel		D		waste	2022-03-15 00:00:00+00
basel		D		waste	2022-03-18 00:00:00+00
basel		D		waste	2022-03-29 00:00:00+00
basel		D		waste	2022-04-22 00:00:00+00
basel		D		waste	2022-04-29 00:00:00+00
basel		D		waste	2022-05-03 00:00:00+00
basel		D		waste	2022-05-06 00:00:00+00
basel		D		waste	2022-05-10 00:00:00+00
basel		D		waste	2022-06-07 00:00:00+00
basel		D		waste	2022-06-24 00:00:00+00
basel		D		waste	2022-07-08 00:00:00+00
basel		D		waste	2022-07-19 00:00:00+00
basel		D		waste	2022-08-09 00:00:00+00
basel		D		waste	2022-08-16 00:00:00+00
basel		D		waste	2022-08-19 00:00:00+00
basel		D		waste	2022-08-30 00:00:00+00
basel		D		waste	2022-09-02 00:00:00+00
basel		D		waste	2022-09-06 00:00:00+00
basel		D		waste	2022-09-09 00:00:00+00
basel		D		waste	2022-09-13 00:00:00+00
basel		D		waste	2022-09-23 00:00:00+00
basel		D		waste	2022-10-04 00:00:00+00
basel		D		waste	2022-11-08 00:00:00+00
basel		D		waste	2022-11-11 00:00:00+00
basel		D		waste	2022-11-15 00:00:00+00
basel		D		waste	2022-12-02 00:00:00+00
basel		D		waste	2022-12-06 00:00:00+00
basel		D		waste	2022-12-20 00:00:00+00
basel		D		waste	2022-12-30 00:00:00+00
basel		E		waste	2022-01-14 00:00:00+00
basel		E		waste	2022-01-25 00:00:00+00
basel		E		waste	2022-01-28 00:00:00+00
basel		E		waste	2022-02-04 00:00:00+00
basel		E		waste	2022-02-22 00:00:00+00
basel		E		waste	2022-02-25 00:00:00+00
basel		E		waste	2022-03-01 00:00:00+00
basel		E		waste	2022-03-11 00:00:00+00
basel		E		waste	2022-03-15 00:00:00+00
basel		E		waste	2022-03-25 00:00:00+00
basel		E		waste	2022-03-29 00:00:00+00
basel		E		waste	2022-04-01 00:00:00+00
basel		E		waste	2022-04-22 00:00:00+00
basel		E		waste	2022-05-06 00:00:00+00
basel		E		waste	2022-05-20 00:00:00+00
basel		E		waste	2022-05-31 00:00:00+00
basel		E		waste	2022-06-24 00:00:00+00
basel		E		waste	2022-07-01 00:00:00+00
basel		E		waste	2022-07-12 00:00:00+00
basel		E		waste	2022-09-20 00:00:00+00
basel		E		waste	2022-09-23 00:00:00+00
basel		E		waste	2022-09-27 00:00:00+00
basel		E		waste	2022-09-30 00:00:00+00
basel		E		waste	2022-11-04 00:00:00+00
basel		E		waste	2022-11-25 00:00:00+00
basel		E		waste	2022-11-29 00:00:00+00
basel		E		waste	2022-12-27 00:00:00+00
basel		F		waste	2022-01-17 00:00:00+00
basel		F		waste	2022-01-20 00:00:00+00
basel		F		waste	2022-01-24 00:00:00+00
basel		F		waste	2022-02-03 00:00:00+00
basel		F		waste	2022-02-10 00:00:00+00
basel		F		waste	2022-02-14 00:00:00+00
basel		F		waste	2022-02-17 00:00:00+00
basel		F		waste	2022-03-03 00:00:00+00
basel		F		waste	2022-03-07 00:00:00+00
basel		F		waste	2022-03-17 00:00:00+00
basel		F		waste	2022-03-24 00:00:00+00
basel		F		waste	2022-04-14 00:00:00+00
basel		F		waste	2022-04-21 00:00:00+00
basel		F		waste	2022-04-28 00:00:00+00
basel		F		waste	2022-05-05 00:00:00+00
basel		F		waste	2022-05-12 00:00:00+00
basel		F		waste	2022-05-19 00:00:00+00
basel		F		waste	2022-05-23 00:00:00+00
basel		F		waste	2022-06-20 00:00:00+00
basel		F		waste	2022-06-27 00:00:00+00
basel		F		waste	2022-07-11 00:00:00+00
basel		F		waste	2022-07-25 00:00:00+00
basel		F		waste	2022-08-29 00:00:00+00
basel		F		waste	2022-09-15 00:00:00+00
basel		F		waste	2022-09-19 00:00:00+00
basel		F		waste	2022-09-26 00:00:00+00
basel		F		waste	2022-09-29 00:00:00+00
basel		F		waste	2022-10-31 00:00:00+00
basel		F		waste	2022-11-07 00:00:00+00
basel		F		waste	2022-11-14 00:00:00+00
basel		F		waste	2022-11-24 00:00:00+00
basel		F		waste	2022-12-01 00:00:00+00
basel		F		waste	2022-12-05 00:00:00+00
basel		F		waste	2022-12-12 00:00:00+00
basel		F		waste	2022-12-15 00:00:00+00
basel		F		waste	2022-12-19 00:00:00+00
basel		G		waste	2022-01-10 00:00:00+00
basel		G		waste	2022-01-13 00:00:00+00
basel		G		waste	2022-01-17 00:00:00+00
basel		G		waste	2022-01-27 00:00:00+00
basel		G		waste	2022-02-03 00:00:00+00
basel		G		waste	2022-02-14 00:00:00+00
basel		G		waste	2022-02-21 00:00:00+00
basel		G		waste	2022-03-17 00:00:00+00
basel		G		waste	2022-03-21 00:00:00+00
basel		G		waste	2022-03-28 00:00:00+00
basel		G		waste	2022-04-07 00:00:00+00
basel		G		waste	2022-04-14 00:00:00+00
basel		G		waste	2022-05-02 00:00:00+00
basel		G		waste	2022-05-19 00:00:00+00
basel		G		waste	2022-05-23 00:00:00+00
basel		G		waste	2022-05-30 00:00:00+00
basel		G		waste	2022-06-09 00:00:00+00
basel		G		waste	2022-07-18 00:00:00+00
basel		G		waste	2022-07-28 00:00:00+00
basel		G		waste	2022-08-11 00:00:00+00
basel		G		waste	2022-08-29 00:00:00+00
basel		G		waste	2022-09-05 00:00:00+00
basel		G		waste	2022-09-08 00:00:00+00
basel		G		waste	2022-09-19 00:00:00+00
basel		G		waste	2022-09-22 00:00:00+00
basel		G		waste	2022-10-03 00:00:00+00
basel		G		waste	2022-10-10 00:00:00+00
basel		G		waste	2022-10-17 00:00:00+00
basel		G		waste	2022-10-31 00:00:00+00
basel		G		waste	2022-11-03 00:00:00+00
basel		G		waste	2022-11-07 00:00:00+00
basel		G		waste	2022-11-21 00:00:00+00
basel		G		waste	2022-12-01 00:00:00+00
basel		G		waste	2022-12-08 00:00:00+00
basel		G		waste	2022-12-19 00:00:00+00
basel		H		waste	2022-01-07 00:00:00+00
basel		H		waste	2022-01-11 00:00:00+00
basel		H		waste	2022-01-21 00:00:00+00
basel		H		waste	2022-01-25 00:00:00+00
basel		H		waste	2022-02-08 00:00:00+00
basel		H		waste	2022-02-15 00:00:00+00
basel		H		waste	2022-02-22 00:00:00+00
basel		H		waste	2022-03-15 00:00:00+00
basel		H		waste	2022-03-18 00:00:00+00
basel		H		waste	2022-03-22 00:00:00+00
basel		H		waste	2022-03-25 00:00:00+00
basel		H		waste	2022-04-19 00:00:00+00
basel		H		waste	2022-05-10 00:00:00+00
basel		H		waste	2022-05-20 00:00:00+00
basel		H		waste	2022-05-24 00:00:00+00
basel		H		waste	2022-05-31 00:00:00+00
basel		H		waste	2022-06-21 00:00:00+00
basel		H		waste	2022-06-24 00:00:00+00
basel		H		waste	2022-07-15 00:00:00+00
basel		H		waste	2022-07-26 00:00:00+00
basel		H		waste	2022-08-05 00:00:00+00
basel		H		waste	2022-08-16 00:00:00+00
basel		H		waste	2022-08-19 00:00:00+00
basel		H		waste	2022-09-30 00:00:00+00
basel		H		waste	2022-10-28 00:00:00+00
basel		H		waste	2022-11-08 00:00:00+00
basel		H		waste	2022-11-15 00:00:00+00
basel		H		waste	2022-11-18 00:00:00+00
basel		H		waste	2022-11-25 00:00:00+00
basel		H		waste	2022-12-06 00:00:00+00
basel		H		waste	2022-12-16 00:00:00+00
basel		H		waste	2022-12-30 00:00:00+00
basel		A		organic	2022-03-31 00:00:00+00
basel		A		organic	2022-04-07 00:00:00+00
basel		A		organic	2022-04-28 00:00:00+00
basel		A		organic	2022-05-19 00:00:00+00
basel		A		organic	2022-06-16 00:00:00+00
basel		A		organic	2022-07-28 00:00:00+00
basel		A		organic	2022-08-04 00:00:00+00
basel		A		organic	2022-09-08 00:00:00+00
basel		A		organic	2022-09-15 00:00:00+00
basel		A		organic	2022-10-13 00:00:00+00
basel		A		organic	2022-11-03 00:00:00+00
basel		A		organic	2022-11-17 00:00:00+00
basel		A		organic	2022-11-24 00:00:00+00
basel		B		organic	2022-01-20 00:00:00+00
basel		B		organic	2022-03-24 00:00:00+00
basel		B		organic	2022-04-07 00:00:00+00
basel		B		organic	2022-04-21 00:00:00+00
basel		B		organic	2022-04-28 00:00:00+00
basel		B		organic	2022-05-05 00:00:00+00
basel		B		organic	2022-05-12 00:00:00+00
basel		B		organic	2022-06-09 00:00:00+00
basel		B		organic	2022-06-16 00:00:00+00
basel		B		organic	2022-07-07 00:00:00+00
basel		B		organic	2022-07-28 00:00:00+00
basel		B		organic	2022-09-15 00:00:00+00
basel		B		organic	2022-10-13 00:00:00+00
basel		B		organic	2022-12-08 00:00:00+00
basel		C		organic	2022-01-21 00:00:00+00
basel		C		organic	2022-02-18 00:00:00+00
basel		C		organic	2022-03-04 00:00:00+00
basel		C		organic	2022-05-06 00:00:00+00
basel		C		organic	2022-05-13 00:00:00+00
basel		C		organic	2022-05-27 00:00:00+00
basel		C		organic	2022-06-03 00:00:00+00
basel		C		organic	2022-07-22 00:00:00+00
basel		C		organic	2022-08-19 00:00:00+00
basel		C		organic	2022-08-26 00:00:00+00
basel		C		organic	2022-09-30 00:00:00+00
basel		C		organic	2022-10-14 00:00:00+00
basel		C		organic	2022-10-21 00:00:00+00
basel		C		organic	2022-11-04 00:00:00+00
basel		C		organic	2022-11-11 00:00:00+00
basel		C		organic	2022-11-18 00:00:00+00
basel		C		organic	2022-11-25 00:00:00+00
basel		C		organic	2022-12-23 00:00:00+00
basel		D		organic	2022-01-06 00:00:00+00
basel		D		organic	2022-03-03 00:00:00+00
basel		D		organic	2022-03-31 00:00:00+00
basel		D		organic	2022-04-07 00:00:00+00
basel		D		organic	2022-05-19 00:00:00+00
basel		D		organic	2022-06-09 00:00:00+00
basel		D		organic	2022-06-16 00:00:00+00
basel		D		organic	2022-09-01 00:00:00+00
basel		D		organic	2022-10-13 00:00:00+00
basel		D		organic	2022-11-10 00:00:00+00
basel		D		organic	2022-11-17 00:00:00+00
basel		D		organic	2022-11-24 00:00:00+00
basel		E		organic	2022-03-03 00:00:00+00
basel		E		organic	2022-03-17 00:00:00+00
basel		E		organic	2022-05-19 00:00:00+00
basel		E		organic	2022-06-30 00:00:00+00
basel		E		organic	2022-07-14 00:00:00+00
basel		E		organic	2022-07-21 00:00:00+00
basel		E		organic	2022-08-11 00:00:00+00
basel		E		organic	2022-08-25 00:00:00+00
basel		E		organic	2022-09-15 00:00:00+00
basel		E		organic	2022-09-22 00:00:00+00
basel		E		organic	2022-09-29 00:00:00+00
basel		E		organic	2022-10-06 00:00:00+00
basel		E		organic	2022-10-20 00:00:00+00
basel		E		organic	2022-10-27 00:00:00+00
basel		E		organic	2022-11-03 00:00:00+00
basel		E		organic	2022-11-17 00:00:00+00
basel		E		organic	2022-12-08 00:00:00+00
basel		F		organic	2022-03-15 00:00:00+00
basel		F		organic	2022-03-29 00:00:00+00
basel		F		organic	2022-05-03 00:00:00+00
basel		F		organic	2022-07-12 00:00:00+00
basel		F		organic	2022-08-09 00:00:00+00
basel		F		organic	2022-09-27 00:00:00+00
basel		F		organic	2022-10-11 00:00:00+00
basel		F		organic	2022-11-08 00:00:00+00
basel		F		organic	2022-11-22 00:00:00+00
basel		F		organic	2022-12-20 00:00:00+00
basel		G		organic	2022-01-07 00:00:00+00
basel		G		organic	2022-03-11 00:00:00+00
basel		G		organic	2022-03-18 00:00:00+00
basel		G		organic	2022-04-01 00:00:00+00
basel		G		organic	2022-04-22 00:00:00+00
basel		G		organic	2022-05-20 00:00:00+00
basel		G		organic	2022-06-17 00:00:00+00
basel		G		organic	2022-07-01 00:00:00+00
basel		G		organic	2022-07-08 00:00:00+00
basel		G		organic	2022-07-15 00:00:00+00
basel		G		organic	2022-08-05 00:00:00+00
basel		G		organic	2022-08-19 00:00:00+00
basel		G		organic	2022-08-26 00:00:00+00
basel		G		organic	2022-09-16 00:00:00+00
basel		G		organic	2022-09-30 00:00:00+00
basel		G		organic	2022-10-28 00:00:00+00
basel		G		organic	2022-11-25 00:00:00+00
basel		G		organic	2022-12-23 00:00:00+00
basel		H		organic	2022-01-03 00:00:00+00
basel		H		organic	2022-01-31 00:00:00+00
basel		H		organic	2022-03-14 00:00:00+00
basel		H		organic	2022-03-28 00:00:00+00
basel		H		organic	2022-05-02 00:00:00+00
basel		H		organic	2022-06-13 00:00:00+00
basel		H		organic	2022-07-04 00:00:00+00
basel		H		organic	2022-07-11 00:00:00+00
basel		H		organic	2022-07-18 00:00:00+00
basel		H		organic	2022-07-25 00:00:00+00
basel		H		organic	2022-09-12 00:00:00+00
basel		H		organic	2022-09-19 00:00:00+00
basel		H		organic	2022-10-10 00:00:00+00
basel		A		metal	2022-01-10 00:00:00+00
basel		C		metal	2022-01-11 00:00:00+00
basel		E		metal	2022-01-13 00:00:00+00
basel		H		metal	2022-01-24 00:00:00+00
basel		B		metal	2022-01-25 00:00:00+00
basel		F		metal	2022-01-28 00:00:00+00
basel		A		metal	2022-02-07 00:00:00+00
basel		G		metal	2022-02-11 00:00:00+00
basel		F		metal	2022-02-25 00:00:00+00
basel		G		metal	2022-04-20 00:00:00+00
basel		H		metal	2022-05-18 00:00:00+00
basel		F		metal	2022-06-15 00:00:00+00
basel		C		metal	2022-07-27 00:00:00+00
basel		H		metal	2022-09-07 00:00:00+00
basel		F		metal	2022-10-05 00:00:00+00
basel		A		metal	2022-10-19 00:00:00+00
basel		F		metal	2022-12-02 00:00:00+00
basel		A		metal	2022-12-12 00:00:00+00
basel		D		metal	2022-12-29 00:00:00+00
basel		F		metal	2022-12-30 00:00:00+00
basel		A		bulky_goods	2022-04-27 00:00:00+00
basel		A		bulky_goods	2022-07-20 00:00:00+00
basel		A		bulky_goods	2022-12-07 00:00:00+00
basel		B		bulky_goods	2022-01-12 00:00:00+00
basel		B		bulky_goods	2022-01-26 00:00:00+00
basel		B		bulky_goods	2022-03-30 00:00:00+00
basel		B		bulky_goods	2022-04-27 00:00:00+00
basel		B		bulky_goods	2022-08-17 00:00:00+00
basel		C		bulky_goods	2022-01-19 00:00:00+00
basel		C		bulky_goods	2022-02-16 00:00:00+00
basel		C		bulky_goods	2022-03-02 00:00:00+00
basel		C		bulky_goods	2022-04-27 00:00:00+00
basel		C		bulky_goods	2022-05-25 00:00:00+00
basel		C		bulky_goods	2022-07-20 00:00:00+00
basel		C		bulky_goods	2022-09-14 00:00:00+00
basel		C		bulky_goods	2022-10-12 00:00:00+00
basel		D		bulky_goods	2022-02-02 00:00:00+00
basel		D		bulky_goods	2022-05-25 00:00:00+00
basel		D		bulky_goods	2022-08-17 00:00:00+00
basel		D		bulky_goods	2022-10-12 00:00:00+00
basel		E		bulky_goods	2022-01-19 00:00:00+00
basel		E		bulky_goods	2022-02-16 00:00:00+00
basel		E		bulky_goods	2022-09-28 00:00:00+00
basel		E		bulky_goods	2022-12-28 00:00:00+00
basel		F		bulky_goods	2022-01-19 00:00:00+00
basel		F		bulky_goods	2022-03-16 00:00:00+00
basel		F		bulky_goods	2022-04-13 00:00:00+00
basel		F		bulky_goods	2022-06-08 00:00:00+00
basel		F		bulky_goods	2022-11-30 00:00:00+00
basel		G		bulky_goods	2022-04-13 00:00:00+00
basel		G		bulky_goods	2022-06-08 00:00:00+00
basel		G		bulky_goods	2022-12-21 00:00:00+00
basel		H		bulky_goods	2022-01-26 00:00:00+00
basel		H		bulky_goods	2022-05-11 00:00:00+00
basel		H		bulky_goods	2022-09-28 00:00:00+00
basel		A		paper	2022-03-23 00:00:00+00
basel		A		paper	2022-08-10 00:00:00+00
basel		A		paper	2022-09-07 00:00:00+00
basel		A		paper	2022-11-02 00:00:00+00
basel		A		paper	2022-11-30 00:00:00+00
basel		A		paper	2022-12-28 00:00:00+00
basel		B		paper	2022-03-23 00:00:00+00
basel		B		paper	2022-07-13 00:00:00+00
basel		B		paper	2022-08-10 00:00:00+00
basel		B		paper	2022-10-05 00:00:00+00
basel		C		paper	2022-03-16 00:00:00+00
basel		C		paper	2022-05-11 00:00:00+00
basel		C		paper	2022-07-06 00:00:00+00
basel		C		paper	2022-08-03 00:00:00+00
basel		C		paper	2022-11-23 00:00:00+00
basel		D		paper	2022-01-12 00:00:00+00
basel		D		paper	2022-02-09 00:00:00+00
basel		D		paper	2022-07-06 00:00:00+00
basel		D		paper	2022-08-03 00:00:00+00
basel		D		paper	2022-08-31 00:00:00+00
basel		D		paper	2022-12-21 00:00:00+00
basel		E		paper	2022-02-23 00:00:00+00
basel		E		paper	2022-04-27 00:00:00+00
basel		E		paper	2022-10-12 00:00:00+00
basel		F		paper	2022-01-26 00:00:00+00
basel		F		paper	2022-12-07 00:00:00+00
basel		G		paper	2022-01-05 00:00:00+00
basel		G		paper	2022-07-27 00:00:00+00
basel		G		paper	2022-08-24 00:00:00+00
basel		G		paper	2022-12-14 00:00:00+00
basel		H		paper	2022-06-29 00:00:00+00
basel		H		paper	2022-07-27 00:00:00+00
basel		H		paper	2022-11-16 00:00:00+00
basel		H		paper	2022-12-14 00:00:00+00
basel		A		incombustibles	2022-02-02 00:00:00+00
basel		A		incombustibles	2022-08-31 00:00:00+00
basel		B		incombustibles	2022-01-05 00:00:00+00
basel		B		incombustibles	2022-04-13 00:00:00+00
basel		B		incombustibles	2022-06-08 00:00:00+00
basel		B		incombustibles	2022-08-03 00:00:00+00
basel		C		incombustibles	2022-04-20 00:00:00+00
basel		C		incombustibles	2022-05-18 00:00:00+00
basel		C		incombustibles	2022-11-02 00:00:00+00
basel		D		incombustibles	2022-02-23 00:00:00+00
basel		D		incombustibles	2022-04-20 00:00:00+00
basel		D		incombustibles	2022-06-15 00:00:00+00
basel		D		incombustibles	2022-09-07 00:00:00+00
basel		D		incombustibles	2022-10-05 00:00:00+00
basel		E		incombustibles	2022-01-12 00:00:00+00
basel		E		incombustibles	2022-02-09 00:00:00+00
basel		E		incombustibles	2022-09-21 00:00:00+00
basel		E		incombustibles	2022-11-16 00:00:00+00
basel		F		incombustibles	2022-01-12 00:00:00+00
basel		F		incombustibles	2022-02-09 00:00:00+00
basel		F		incombustibles	2022-06-01 00:00:00+00
basel		F		incombustibles	2022-09-21 00:00:00+00
basel		G		incombustibles	2022-10-12 00:00:00+00
basel		G		incombustibles	2022-11-09 00:00:00+00
basel		G		incombustibles	2022-11-30 00:00:00+00
basel		G		incombustibles	2022-12-28 00:00:00+00
basel		H		incombustibles	2022-01-19 00:00:00+00
basel		H		incombustibles	2022-03-30 00:00:00+00
basel		H		incombustibles	2022-05-25 00:00:00+00
basel		H		incombustibles	2022-07-20 00:00:00+00
basel		H		incombustibles	2022-08-17 00:00:00+00
basel		A		chipping_service	2022-02-21 00:00:00+00
basel		A		chipping_service	2022-11-21 00:00:00+00
basel		B		chipping_service	2022-11-21 00:00:00+00
basel		C		chipping_service	2022-04-11 00:00:00+00
basel		D		chipping_service	2022-02-21 00:00:00+00
basel		D		chipping_service	2022-06-13 00:00:00+00
basel		E		chipping_service	2022-06-15 00:00:00+00
basel		G		chipping_service	2022-06-14 00:00:00+00
basel		H		chipping_service	2022-06-14 00:00:00+00
basel		A		organic	2023-05-18 00:00:00+00
basel		A		metal	2023-04-10 00:00:00+00
basel		C		metal	2023-12-26 00:00:00+00
basel		D		waste	2023-04-07 00:00:00+00
basel		D		waste	2023-12-26 00:00:00+00
basel		F		organic	2023-08-01 00:00:00+00
basel		F		waste	2023-05-18 00:00:00+00
basel		F		waste	2023-05-29 00:00:00+00
basel		F		metal	2023-04-07 00:00:00+00
basel		G		waste	2023-05-01 00:00:00+00
basel		G		waste	2023-05-29 00:00:00+00
basel		G		metal	2023-04-07 00:00:00+00
basel		H		organic	2023-04-10 00:00:00+00
basel		H		organic	2023-05-01 00:00:00+00
basel		H		waste	2023-04-07 00:00:00+00
basel		H		metal	2023-12-25 00:00:00+00
basel		G		bulky_goods	2023-01-18 00:00:00+00
basel		D		bulky_goods	2023-01-25 00:00:00+00
basel		F		bulky_goods	2023-01-25 00:00:00+00
basel		H		bulky_goods	2023-02-01 00:00:00+00
basel		E		bulky_goods	2023-02-08 00:00:00+00
basel		F		bulky_goods	2023-02-08 00:00:00+00
basel		E		bulky_goods	2023-03-01 00:00:00+00
basel		G		bulky_goods	2023-03-01 00:00:00+00
basel		B		bulky_goods	2023-03-15 00:00:00+00
basel		G		bulky_goods	2023-03-29 00:00:00+00
basel		F		bulky_goods	2023-04-26 00:00:00+00
basel		A		bulky_goods	2023-05-10 00:00:00+00
basel		E		bulky_goods	2023-05-24 00:00:00+00
basel		G		bulky_goods	2023-06-21 00:00:00+00
basel		A		bulky_goods	2023-07-05 00:00:00+00
basel		B		bulky_goods	2023-07-05 00:00:00+00
basel		C		bulky_goods	2023-07-05 00:00:00+00
basel		D		bulky_goods	2023-07-05 00:00:00+00
basel		F		bulky_goods	2023-07-19 00:00:00+00
basel		A		bulky_goods	2023-08-02 00:00:00+00
basel		B		bulky_goods	2023-08-02 00:00:00+00
basel		C		bulky_goods	2023-08-02 00:00:00+00
basel		F		bulky_goods	2023-08-16 00:00:00+00
basel		B		bulky_goods	2023-08-30 00:00:00+00
basel		F		bulky_goods	2023-10-11 00:00:00+00
basel		G		bulky_goods	2023-10-11 00:00:00+00
basel		H		bulky_goods	2023-10-11 00:00:00+00
basel		A		bulky_goods	2023-10-25 00:00:00+00
basel		B		bulky_goods	2023-10-25 00:00:00+00
basel		E		bulky_goods	2023-11-08 00:00:00+00
basel		G		bulky_goods	2023-11-08 00:00:00+00
basel		H		bulky_goods	2023-11-08 00:00:00+00
basel		A		bulky_goods	2023-11-22 00:00:00+00
basel		D		bulky_goods	2023-11-22 00:00:00+00
basel		C		bulky_goods	2023-12-06 00:00:00+00
basel		E		bulky_goods	2023-12-06 00:00:00+00
basel		F		bulky_goods	2023-12-06 00:00:00+00
basel		D		bulky_goods	2023-12-20 00:00:00+00
basel		E		bulky_goods	2023-12-20 00:00:00+00
basel		F		bulky_goods	2023-12-20 00:00:00+00
basel		A		bulky_goods	2023-01-04 00:00:00+00
basel		H		bulky_goods	2023-01-04 00:00:00+00
basel		E		bulky_goods	2023-01-11 00:00:00+00
basel		F		bulky_goods	2023-01-11 00:00:00+00
basel		B		bulky_goods	2023-06-07 00:00:00+00
basel		C		bulky_goods	2023-06-07 00:00:00+00
basel		D		bulky_goods	2023-06-07 00:00:00+00
basel		H		bulky_goods	2023-12-13 00:00:00+00
basel		F		organic	2023-01-17 00:00:00+00
basel		F		organic	2023-03-07 00:00:00+00
basel		F		organic	2023-03-14 00:00:00+00
basel		F		organic	2023-04-04 00:00:00+00
basel		F		organic	2023-04-11 00:00:00+00
basel		F		organic	2023-05-09 00:00:00+00
basel		F		organic	2023-07-11 00:00:00+00
basel		F		organic	2023-08-22 00:00:00+00
basel		F		organic	2023-09-19 00:00:00+00
basel		F		organic	2023-10-24 00:00:00+00
basel		F		organic	2023-10-31 00:00:00+00
basel		F		organic	2023-11-21 00:00:00+00
basel		F		organic	2023-12-12 00:00:00+00
basel		F		organic	2023-06-06 00:00:00+00
basel		F		organic	2023-06-13 00:00:00+00
basel		A		organic	2023-01-05 00:00:00+00
basel		B		organic	2023-01-05 00:00:00+00
basel		E		organic	2023-01-05 00:00:00+00
basel		A		organic	2023-02-02 00:00:00+00
basel		B		organic	2023-02-02 00:00:00+00
basel		D		organic	2023-02-02 00:00:00+00
basel		E		organic	2023-02-02 00:00:00+00
basel		B		organic	2023-03-02 00:00:00+00
basel		D		organic	2023-03-02 00:00:00+00
basel		B		organic	2023-03-09 00:00:00+00
basel		B		organic	2023-03-16 00:00:00+00
basel		A		organic	2023-03-23 00:00:00+00
basel		B		organic	2023-03-23 00:00:00+00
basel		E		organic	2023-03-23 00:00:00+00
basel		B		organic	2023-03-30 00:00:00+00
basel		D		organic	2023-03-30 00:00:00+00
basel		E		organic	2023-04-06 00:00:00+00
basel		D		organic	2023-04-13 00:00:00+00
basel		A		organic	2023-04-20 00:00:00+00
basel		A		organic	2023-04-27 00:00:00+00
basel		E		organic	2023-04-27 00:00:00+00
basel		A		organic	2023-05-04 00:00:00+00
basel		D		organic	2023-05-04 00:00:00+00
basel		B		organic	2023-05-25 00:00:00+00
basel		E		organic	2023-05-25 00:00:00+00
basel		E		organic	2023-06-01 00:00:00+00
basel		D		organic	2023-06-15 00:00:00+00
basel		E		organic	2023-06-15 00:00:00+00
basel		E		organic	2023-06-22 00:00:00+00
basel		A		organic	2023-06-29 00:00:00+00
basel		D		organic	2023-06-29 00:00:00+00
basel		D		organic	2023-07-06 00:00:00+00
basel		D		organic	2023-07-13 00:00:00+00
basel		A		organic	2023-07-20 00:00:00+00
basel		D		organic	2023-07-27 00:00:00+00
basel		A		organic	2023-08-03 00:00:00+00
basel		B		organic	2023-08-17 00:00:00+00
basel		D		organic	2023-08-17 00:00:00+00
basel		A		organic	2023-08-24 00:00:00+00
basel		D		organic	2023-08-24 00:00:00+00
basel		A		organic	2023-08-31 00:00:00+00
basel		B		organic	2023-08-31 00:00:00+00
basel		D		organic	2023-08-31 00:00:00+00
basel		E		organic	2023-08-31 00:00:00+00
basel		B		organic	2023-09-07 00:00:00+00
basel		E		organic	2023-09-07 00:00:00+00
basel		D		organic	2023-09-14 00:00:00+00
basel		B		organic	2023-09-21 00:00:00+00
basel		E		organic	2023-09-21 00:00:00+00
basel		A		organic	2023-10-05 00:00:00+00
basel		B		organic	2023-10-12 00:00:00+00
basel		A		organic	2023-10-19 00:00:00+00
basel		B		organic	2023-10-26 00:00:00+00
basel		E		organic	2023-10-26 00:00:00+00
basel		D		organic	2023-11-02 00:00:00+00
basel		E		organic	2023-11-02 00:00:00+00
basel		A		organic	2023-11-16 00:00:00+00
basel		D		organic	2023-11-16 00:00:00+00
basel		D		organic	2023-11-23 00:00:00+00
basel		A		organic	2023-12-14 00:00:00+00
basel		D		organic	2023-12-28 00:00:00+00
basel		E		organic	2023-12-28 00:00:00+00
basel		C		organic	2023-01-06 00:00:00+00
basel		G		organic	2023-01-06 00:00:00+00
basel		C		organic	2023-01-20 00:00:00+00
basel		C		organic	2023-02-03 00:00:00+00
basel		C		organic	2023-03-03 00:00:00+00
basel		G		organic	2023-03-03 00:00:00+00
basel		C		organic	2023-03-31 00:00:00+00
basel		G		organic	2023-03-31 00:00:00+00
basel		C		organic	2023-04-14 00:00:00+00
basel		G		organic	2023-04-14 00:00:00+00
basel		C		organic	2023-04-28 00:00:00+00
basel		C		organic	2023-05-26 00:00:00+00
basel		G		organic	2023-05-26 00:00:00+00
basel		G		organic	2023-06-09 00:00:00+00
basel		G		organic	2023-06-30 00:00:00+00
basel		G		organic	2023-07-07 00:00:00+00
basel		C		organic	2023-07-14 00:00:00+00
basel		C		organic	2023-07-21 00:00:00+00
basel		C		organic	2023-07-28 00:00:00+00
basel		G		organic	2023-08-04 00:00:00+00
basel		G		organic	2023-08-11 00:00:00+00
basel		G		organic	2023-08-18 00:00:00+00
basel		G		organic	2023-09-01 00:00:00+00
basel		C		organic	2023-09-08 00:00:00+00
basel		G		organic	2023-09-08 00:00:00+00
basel		G		organic	2023-09-15 00:00:00+00
basel		C		organic	2023-10-06 00:00:00+00
basel		G		organic	2023-10-27 00:00:00+00
basel		G		organic	2023-11-03 00:00:00+00
basel		C		organic	2023-11-10 00:00:00+00
basel		G		organic	2023-11-10 00:00:00+00
basel		G		organic	2023-12-01 00:00:00+00
basel		C		organic	2023-12-29 00:00:00+00
basel		G		organic	2023-12-29 00:00:00+00
basel		H		organic	2023-01-16 00:00:00+00
basel		H		organic	2023-02-13 00:00:00+00
basel		H		organic	2023-03-06 00:00:00+00
basel		H		organic	2023-03-27 00:00:00+00
basel		H		organic	2023-04-17 00:00:00+00
basel		H		organic	2023-05-15 00:00:00+00
basel		H		organic	2023-06-26 00:00:00+00
basel		H		organic	2023-07-31 00:00:00+00
basel		H		organic	2023-08-14 00:00:00+00
basel		H		organic	2023-09-25 00:00:00+00
basel		H		organic	2023-10-02 00:00:00+00
basel		H		organic	2023-10-23 00:00:00+00
basel		H		organic	2023-10-30 00:00:00+00
basel		H		organic	2023-11-20 00:00:00+00
basel		G		chipping_service	2023-02-21 00:00:00+00
basel		G		chipping_service	2023-04-18 00:00:00+00
basel		F		chipping_service	2023-02-22 00:00:00+00
basel		E		chipping_service	2023-04-19 00:00:00+00
basel		F		chipping_service	2023-06-21 00:00:00+00
basel		C		chipping_service	2023-04-17 00:00:00+00
basel		A		chipping_service	2023-06-19 00:00:00+00
basel		B		chipping_service	2023-06-19 00:00:00+00
basel		D		chipping_service	2023-06-19 00:00:00+00
basel		A		chipping_service	2023-11-27 00:00:00+00
basel		B		chipping_service	2023-11-27 00:00:00+00
basel		C		chipping_service	2023-11-27 00:00:00+00
basel		D		chipping_service	2023-11-27 00:00:00+00
basel		A		waste	2023-01-17 00:00:00+00
basel		D		waste	2023-01-17 00:00:00+00
basel		E		waste	2023-01-17 00:00:00+00
basel		A		waste	2023-01-24 00:00:00+00
basel		E		waste	2023-01-24 00:00:00+00
basel		H		waste	2023-02-14 00:00:00+00
basel		A		waste	2023-02-21 00:00:00+00
basel		H		waste	2023-02-21 00:00:00+00
basel		A		waste	2023-02-28 00:00:00+00
basel		D		waste	2023-02-28 00:00:00+00
basel		D		waste	2023-03-07 00:00:00+00
basel		E		waste	2023-03-07 00:00:00+00
basel		H		waste	2023-03-07 00:00:00+00
basel		E		waste	2023-03-14 00:00:00+00
basel		D		waste	2023-03-21 00:00:00+00
basel		E		waste	2023-03-21 00:00:00+00
basel		H		waste	2023-03-21 00:00:00+00
basel		D		waste	2023-03-28 00:00:00+00
basel		E		waste	2023-03-28 00:00:00+00
basel		A		waste	2023-04-04 00:00:00+00
basel		D		waste	2023-04-11 00:00:00+00
basel		H		waste	2023-04-11 00:00:00+00
basel		E		waste	2023-04-25 00:00:00+00
basel		A		waste	2023-05-02 00:00:00+00
basel		D		waste	2023-05-02 00:00:00+00
basel		D		waste	2023-05-09 00:00:00+00
basel		H		waste	2023-05-09 00:00:00+00
basel		D		waste	2023-05-16 00:00:00+00
basel		A		waste	2023-05-23 00:00:00+00
basel		H		waste	2023-05-23 00:00:00+00
basel		A		waste	2023-06-20 00:00:00+00
basel		D		waste	2023-06-20 00:00:00+00
basel		E		waste	2023-06-20 00:00:00+00
basel		E		waste	2023-06-27 00:00:00+00
basel		H		waste	2023-06-27 00:00:00+00
basel		A		waste	2023-07-04 00:00:00+00
basel		A		waste	2023-07-11 00:00:00+00
basel		E		waste	2023-07-11 00:00:00+00
basel		A		waste	2023-07-18 00:00:00+00
basel		A		waste	2023-07-25 00:00:00+00
basel		E		waste	2023-08-08 00:00:00+00
basel		A		waste	2023-08-15 00:00:00+00
basel		H		waste	2023-08-15 00:00:00+00
basel		E		waste	2023-08-22 00:00:00+00
basel		E		waste	2023-08-29 00:00:00+00
basel		H		waste	2023-08-29 00:00:00+00
basel		H		waste	2023-09-05 00:00:00+00
basel		A		waste	2023-09-12 00:00:00+00
basel		D		waste	2023-09-12 00:00:00+00
basel		E		waste	2023-09-12 00:00:00+00
basel		A		waste	2023-09-26 00:00:00+00
basel		E		waste	2023-09-26 00:00:00+00
basel		D		waste	2023-10-03 00:00:00+00
basel		H		waste	2023-10-03 00:00:00+00
basel		A		waste	2023-10-10 00:00:00+00
basel		D		waste	2023-10-10 00:00:00+00
basel		E		waste	2023-10-10 00:00:00+00
basel		H		waste	2023-10-10 00:00:00+00
basel		H		waste	2023-10-17 00:00:00+00
basel		D		waste	2023-10-24 00:00:00+00
basel		H		waste	2023-10-24 00:00:00+00
basel		H		waste	2023-10-31 00:00:00+00
basel		E		waste	2023-11-07 00:00:00+00
basel		A		waste	2023-11-14 00:00:00+00
basel		D		waste	2023-11-14 00:00:00+00
basel		E		waste	2023-11-14 00:00:00+00
basel		A		waste	2023-11-21 00:00:00+00
basel		D		waste	2023-11-21 00:00:00+00
basel		A		waste	2023-11-28 00:00:00+00
basel		H		waste	2023-11-28 00:00:00+00
basel		D		waste	2023-12-05 00:00:00+00
basel		E		waste	2023-12-05 00:00:00+00
basel		H		waste	2023-12-05 00:00:00+00
basel		H		waste	2023-12-12 00:00:00+00
basel		A		waste	2023-12-19 00:00:00+00
basel		E		waste	2023-12-19 00:00:00+00
basel		A		waste	2023-01-03 00:00:00+00
basel		A		waste	2023-01-10 00:00:00+00
basel		E		waste	2023-05-30 00:00:00+00
basel		H		waste	2023-05-30 00:00:00+00
basel		E		waste	2023-06-06 00:00:00+00
basel		A		waste	2023-06-13 00:00:00+00
basel		E		waste	2023-06-13 00:00:00+00
basel		C		waste	2023-01-12 00:00:00+00
basel		F		waste	2023-02-02 00:00:00+00
basel		B		waste	2023-02-16 00:00:00+00
basel		C		waste	2023-02-16 00:00:00+00
basel		F		waste	2023-03-02 00:00:00+00
basel		F		waste	2023-03-09 00:00:00+00
basel		G		waste	2023-03-16 00:00:00+00
basel		B		waste	2023-03-23 00:00:00+00
basel		C		waste	2023-03-23 00:00:00+00
basel		G		waste	2023-03-23 00:00:00+00
basel		C		waste	2023-04-06 00:00:00+00
basel		F		waste	2023-04-06 00:00:00+00
basel		B		waste	2023-04-13 00:00:00+00
basel		B		waste	2023-04-20 00:00:00+00
basel		G		waste	2023-04-20 00:00:00+00
basel		B		waste	2023-04-27 00:00:00+00
basel		F		waste	2023-04-27 00:00:00+00
basel		G		waste	2023-04-27 00:00:00+00
basel		B		waste	2023-05-04 00:00:00+00
basel		F		waste	2023-05-04 00:00:00+00
basel		G		waste	2023-05-04 00:00:00+00
basel		C		waste	2023-05-11 00:00:00+00
basel		G		waste	2023-05-11 00:00:00+00
basel		G		waste	2023-06-01 00:00:00+00
basel		G		waste	2023-06-08 00:00:00+00
basel		B		waste	2023-06-22 00:00:00+00
basel		C		waste	2023-06-22 00:00:00+00
basel		B		waste	2023-06-29 00:00:00+00
basel		B		waste	2023-07-13 00:00:00+00
basel		F		waste	2023-07-13 00:00:00+00
basel		C		waste	2023-07-20 00:00:00+00
basel		B		waste	2023-07-27 00:00:00+00
basel		G		waste	2023-07-27 00:00:00+00
basel		B		waste	2023-08-03 00:00:00+00
basel		F		waste	2023-08-03 00:00:00+00
basel		G		waste	2023-08-03 00:00:00+00
basel		F		waste	2023-08-10 00:00:00+00
basel		F		waste	2023-08-17 00:00:00+00
basel		B		waste	2023-08-31 00:00:00+00
basel		C		waste	2023-09-14 00:00:00+00
basel		B		waste	2023-10-05 00:00:00+00
basel		F		waste	2023-10-12 00:00:00+00
basel		G		waste	2023-10-12 00:00:00+00
basel		B		waste	2023-10-19 00:00:00+00
basel		C		waste	2023-10-19 00:00:00+00
basel		F		waste	2023-10-19 00:00:00+00
basel		F		waste	2023-11-02 00:00:00+00
basel		F		waste	2023-11-09 00:00:00+00
basel		G		waste	2023-11-09 00:00:00+00
basel		B		waste	2023-11-16 00:00:00+00
basel		C		waste	2023-11-16 00:00:00+00
basel		C		waste	2023-11-30 00:00:00+00
basel		G		waste	2023-11-30 00:00:00+00
basel		C		waste	2023-12-14 00:00:00+00
basel		G		waste	2023-12-14 00:00:00+00
basel		D		waste	2023-01-06 00:00:00+00
basel		H		waste	2023-01-13 00:00:00+00
basel		D		waste	2023-02-03 00:00:00+00
basel		H		waste	2023-02-03 00:00:00+00
basel		E		waste	2023-02-10 00:00:00+00
basel		E		waste	2023-02-17 00:00:00+00
basel		D		waste	2023-02-24 00:00:00+00
basel		H		waste	2023-02-24 00:00:00+00
basel		E		waste	2023-03-03 00:00:00+00
basel		A		waste	2023-03-10 00:00:00+00
basel		D		waste	2023-03-10 00:00:00+00
basel		E		waste	2023-03-10 00:00:00+00
basel		H		waste	2023-03-10 00:00:00+00
basel		D		waste	2023-03-17 00:00:00+00
basel		E		waste	2023-03-17 00:00:00+00
basel		H		waste	2023-03-24 00:00:00+00
basel		A		waste	2023-04-21 00:00:00+00
basel		D		waste	2023-04-21 00:00:00+00
basel		A		waste	2023-04-28 00:00:00+00
basel		D		waste	2023-04-28 00:00:00+00
basel		D		waste	2023-05-05 00:00:00+00
basel		A		waste	2023-05-12 00:00:00+00
basel		E		waste	2023-05-12 00:00:00+00
basel		H		waste	2023-05-12 00:00:00+00
basel		A		waste	2023-05-26 00:00:00+00
basel		E		waste	2023-05-26 00:00:00+00
basel		A		waste	2023-06-09 00:00:00+00
basel		E		waste	2023-06-09 00:00:00+00
basel		D		waste	2023-06-16 00:00:00+00
basel		H		waste	2023-06-16 00:00:00+00
basel		A		waste	2023-06-23 00:00:00+00
basel		E		waste	2023-06-23 00:00:00+00
basel		H		waste	2023-06-23 00:00:00+00
basel		A		waste	2023-06-30 00:00:00+00
basel		D		waste	2023-06-30 00:00:00+00
basel		E		waste	2023-06-30 00:00:00+00
basel		H		waste	2023-06-30 00:00:00+00
basel		A		waste	2023-07-14 00:00:00+00
basel		D		waste	2023-07-14 00:00:00+00
basel		E		waste	2023-07-14 00:00:00+00
basel		H		waste	2023-07-14 00:00:00+00
basel		H		waste	2023-07-28 00:00:00+00
basel		A		waste	2023-08-04 00:00:00+00
basel		D		waste	2023-08-04 00:00:00+00
basel		H		waste	2023-08-04 00:00:00+00
basel		D		waste	2023-08-11 00:00:00+00
basel		E		waste	2023-08-18 00:00:00+00
basel		H		waste	2023-08-25 00:00:00+00
basel		A		waste	2023-09-01 00:00:00+00
basel		D		waste	2023-09-01 00:00:00+00
basel		H		waste	2023-09-01 00:00:00+00
basel		H		waste	2023-09-08 00:00:00+00
basel		A		waste	2023-09-15 00:00:00+00
basel		D		waste	2023-09-15 00:00:00+00
basel		E		waste	2023-09-22 00:00:00+00
basel		H		waste	2023-09-22 00:00:00+00
basel		A		waste	2023-09-29 00:00:00+00
basel		H		waste	2023-09-29 00:00:00+00
basel		H		waste	2023-10-06 00:00:00+00
basel		H		waste	2023-10-13 00:00:00+00
basel		H		waste	2023-10-20 00:00:00+00
basel		E		waste	2023-10-27 00:00:00+00
basel		H		waste	2023-10-27 00:00:00+00
basel		D		waste	2023-11-03 00:00:00+00
basel		H		waste	2023-11-03 00:00:00+00
basel		E		waste	2023-11-17 00:00:00+00
basel		A		waste	2023-11-24 00:00:00+00
basel		D		waste	2023-11-24 00:00:00+00
basel		H		waste	2023-11-24 00:00:00+00
basel		E		waste	2023-12-01 00:00:00+00
basel		H		waste	2023-12-01 00:00:00+00
basel		A		waste	2023-12-08 00:00:00+00
basel		A		waste	2023-12-15 00:00:00+00
basel		D		waste	2023-12-15 00:00:00+00
basel		E		waste	2023-12-15 00:00:00+00
basel		A		waste	2023-12-22 00:00:00+00
basel		E		waste	2023-12-22 00:00:00+00
basel		H		waste	2023-12-29 00:00:00+00
basel		C		waste	2023-01-16 00:00:00+00
basel		C		waste	2023-01-23 00:00:00+00
basel		G		waste	2023-01-23 00:00:00+00
basel		C		waste	2023-01-30 00:00:00+00
basel		B		waste	2023-02-06 00:00:00+00
basel		B		waste	2023-02-13 00:00:00+00
basel		C		waste	2023-02-13 00:00:00+00
basel		B		waste	2023-02-20 00:00:00+00
basel		C		waste	2023-02-20 00:00:00+00
basel		B		waste	2023-02-27 00:00:00+00
basel		C		waste	2023-02-27 00:00:00+00
basel		B		waste	2023-03-06 00:00:00+00
basel		F		waste	2023-03-06 00:00:00+00
basel		C		waste	2023-03-13 00:00:00+00
basel		B		waste	2023-03-20 00:00:00+00
basel		F		waste	2023-03-20 00:00:00+00
basel		C		waste	2023-04-03 00:00:00+00
basel		G		waste	2023-04-03 00:00:00+00
basel		B		waste	2023-04-17 00:00:00+00
basel		C		waste	2023-04-17 00:00:00+00
basel		B		waste	2023-04-24 00:00:00+00
basel		C		waste	2023-04-24 00:00:00+00
basel		B		waste	2023-05-15 00:00:00+00
basel		B		waste	2023-05-22 00:00:00+00
basel		G		waste	2023-05-22 00:00:00+00
basel		B		waste	2023-06-05 00:00:00+00
basel		G		waste	2023-06-19 00:00:00+00
basel		B		waste	2023-06-26 00:00:00+00
basel		C		waste	2023-07-03 00:00:00+00
basel		C		waste	2023-07-17 00:00:00+00
basel		F		waste	2023-07-17 00:00:00+00
basel		C		waste	2023-07-24 00:00:00+00
basel		F		waste	2023-07-31 00:00:00+00
basel		G		waste	2023-08-28 00:00:00+00
basel		B		waste	2023-09-04 00:00:00+00
basel		F		waste	2023-09-04 00:00:00+00
basel		G		waste	2023-09-04 00:00:00+00
basel		B		waste	2023-09-11 00:00:00+00
basel		C		waste	2023-09-11 00:00:00+00
basel		G		waste	2023-09-25 00:00:00+00
basel		F		waste	2023-10-02 00:00:00+00
basel		G		waste	2023-10-09 00:00:00+00
basel		B		waste	2023-10-16 00:00:00+00
basel		C		waste	2023-10-16 00:00:00+00
basel		G		waste	2023-10-16 00:00:00+00
basel		C		waste	2023-10-23 00:00:00+00
basel		G		waste	2023-10-23 00:00:00+00
basel		C		waste	2023-10-30 00:00:00+00
basel		F		waste	2023-10-30 00:00:00+00
basel		C		waste	2023-11-06 00:00:00+00
basel		F		waste	2023-11-13 00:00:00+00
basel		B		waste	2023-11-20 00:00:00+00
basel		C		waste	2023-11-20 00:00:00+00
basel		B		waste	2023-11-27 00:00:00+00
basel		B		metal	2023-12-05 00:00:00+00
basel		E		metal	2023-01-12 00:00:00+00
basel		E		metal	2023-02-09 00:00:00+00
basel		F		metal	2023-02-24 00:00:00+00
basel		E		metal	2023-03-22 00:00:00+00
basel		B		metal	2023-08-23 00:00:00+00
basel		G		metal	2023-11-29 00:00:00+00
basel		H		metal	2023-01-23 00:00:00+00
basel		A		metal	2023-02-06 00:00:00+00
basel		B		paper	2023-01-25 00:00:00+00
basel		E		paper	2023-02-01 00:00:00+00
basel		G		paper	2023-02-08 00:00:00+00
basel		H		paper	2023-02-08 00:00:00+00
basel		C		paper	2023-02-15 00:00:00+00
basel		D		paper	2023-02-15 00:00:00+00
basel		F		paper	2023-03-08 00:00:00+00
basel		G		paper	2023-03-15 00:00:00+00
basel		C		paper	2023-03-22 00:00:00+00
basel		D		paper	2023-03-22 00:00:00+00
basel		F		paper	2023-04-05 00:00:00+00
basel		G		paper	2023-04-12 00:00:00+00
basel		H		paper	2023-04-12 00:00:00+00
basel		E		paper	2023-05-03 00:00:00+00
basel		F		paper	2023-05-03 00:00:00+00
basel		D		paper	2023-05-17 00:00:00+00
basel		B		paper	2023-05-24 00:00:00+00
basel		A		paper	2023-06-21 00:00:00+00
basel		E		paper	2023-06-28 00:00:00+00
basel		H		paper	2023-07-05 00:00:00+00
basel		B		paper	2023-07-19 00:00:00+00
basel		B		paper	2023-08-16 00:00:00+00
basel		E		paper	2023-08-23 00:00:00+00
basel		F		paper	2023-08-23 00:00:00+00
basel		H		paper	2023-08-30 00:00:00+00
basel		E		paper	2023-10-18 00:00:00+00
basel		H		paper	2023-10-25 00:00:00+00
basel		D		paper	2023-11-01 00:00:00+00
basel		A		paper	2023-11-08 00:00:00+00
basel		B		paper	2023-11-08 00:00:00+00
basel		H		paper	2023-11-22 00:00:00+00
basel		A		paper	2023-12-06 00:00:00+00
basel		C		paper	2023-12-27 00:00:00+00
basel		F		paper	2023-05-31 00:00:00+00
basel		C		paper	2023-06-14 00:00:00+00
basel		F		incombustibles	2023-01-18 00:00:00+00
basel		A		incombustibles	2023-02-08 00:00:00+00
basel		B		incombustibles	2023-02-08 00:00:00+00
basel		D		incombustibles	2023-03-01 00:00:00+00
basel		H		incombustibles	2023-03-08 00:00:00+00
basel		C		incombustibles	2023-03-29 00:00:00+00
basel		D		incombustibles	2023-03-29 00:00:00+00
basel		H		incombustibles	2023-04-05 00:00:00+00
basel		E		incombustibles	2023-04-12 00:00:00+00
basel		F		incombustibles	2023-04-12 00:00:00+00
basel		A		incombustibles	2023-04-19 00:00:00+00
basel		C		incombustibles	2023-04-26 00:00:00+00
basel		D		incombustibles	2023-04-26 00:00:00+00
basel		G		incombustibles	2023-05-03 00:00:00+00
basel		H		incombustibles	2023-05-03 00:00:00+00
basel		A		incombustibles	2023-05-17 00:00:00+00
basel		D		incombustibles	2023-05-24 00:00:00+00
basel		D		incombustibles	2023-06-21 00:00:00+00
basel		F		incombustibles	2023-08-02 00:00:00+00
basel		F		incombustibles	2023-08-30 00:00:00+00
basel		B		incombustibles	2023-09-06 00:00:00+00
basel		E		incombustibles	2023-10-25 00:00:00+00
basel		A		incombustibles	2023-11-01 00:00:00+00
basel		A		incombustibles	2023-11-29 00:00:00+00
basel		G		incombustibles	2023-12-06 00:00:00+00
basel		H		incombustibles	2023-12-06 00:00:00+00
basel		B		incombustibles	2023-12-20 00:00:00+00
basel		B		incombustibles	2023-01-11 00:00:00+00
basel		A		incombustibles	2023-06-14 00:00:00+00
basel		C		incombustibles	2023-12-13 00:00:00+00
basel		D		incombustibles	2023-12-13 00:00:00+00
zurich	8001	8001		organic	2023-01-09 00:00:00+00
zurich	8001	8001		organic	2023-01-16 00:00:00+00
zurich	8001	8001		organic	2023-01-23 00:00:00+00
zurich	8001	8001		organic	2023-01-30 00:00:00+00
zurich	8001	8001		organic	2023-02-06 00:00:00+00
zurich	8001	8001		organic	2023-02-13 00:00:00+00
zurich	8001	8001		organic	2023-02-20 00:00:00+00
zurich	8001	8001		organic	2023-02-27 00:00:00+00
zurich	8001	8001		organic	2023-03-06 00:00:00+00
zurich	8001	8001		organic	2023-03-13 00:00:00+00
zurich	8001	8001		organic	2023-03-20 00:00:00+00
zurich	8001	8001		organic	2023-03-27 00:00:00+00
zurich	8001	8001		organic	2023-04-03 00:00:00+00
zurich	8001	8001		organic	2023-04-11 00:00:00+00
zurich	8001	8001		organic	2023-04-17 00:00:00+00
zurich	8001	8001		organic	2023-04-24 00:00:00+00
zurich	8001	8001		organic	2023-04-29 00:00:00+00
zurich	8001	8001		organic	2023-05-08 00:00:00+00
zurich	8001	8001		organic	2023-05-15 00:00:00+00
zurich	8001	8001		organic	2023-05-22 00:00:00+00
zurich	8001	8001		organic	2023-05-27 00:00:00+00
zurich	8001	8001		organic	2023-06-05 00:00:00+00
zurich	8001	8001		organic	2023-06-12 00:00:00+00
zurich	8001	8001		organic	2023-06-19 00:00:00+00
zurich	8001	8001		organic	2023-06-26 00:00:00+00
zurich	8001	8001		organic	2023-07-03 00:00:00+00
zurich	8001	8001		organic	2023-07-10 00:00:00+00
zurich	8001	8001		organic	2023-07-17 00:00:00+00
zurich	8001	8001		organic	2023-07-24 00:00:00+00
zurich	8001	8001		organic	2023-07-31 00:00:00+00
zurich	8001	8001		organic	2023-08-07 00:00:00+00
zurich	8001	8001		organic	2023-08-14 00:00:00+00
zurich	8001	8001		organic	2023-08-21 00:00:00+00
zurich	8001	8001		organic	2023-08-28 00:00:00+00
zurich	8001	8001		organic	2023-09-04 00:00:00+00
zurich	8001	8001		organic	2023-09-11 00:00:00+00
zurich	8001	8001		organic	2023-09-18 00:00:00+00
zurich	8001	8001		organic	2023-09-25 00:00:00+00
zurich	8001	8001		organic	2023-10-02 00:00:00+00
zurich	8001	8001		organic	2023-10-09 00:00:00+00
zurich	8001	8001		organic	2023-10-16 00:00:00+00
zurich	8001	8001		organic	2023-10-23 00:00:00+00
zurich	8001	8001		organic	2023-10-30 00:00:00+00
zurich	8001	8001		organic	2023-11-06 00:00:00+00
zurich	8001	8001		organic	2023-11-13 00:00:00+00
zurich	8001	8001		organic	2023-11-20 00:00:00+00
zurich	8001	8001		organic	2023-11-27 00:00:00+00
zurich	8001	8001		organic	2023-12-04 00:00:00+00
zurich	8001	8001		organic	2023-12-11 00:00:00+00
zurich	8001	8001		organic	2023-12-18 00:00:00+00
zurich	8001	8001		organic	2023-12-27 00:00:00+00
zurich	8002	8002		organic	2023-01-04 00:00:00+00
zurich	8002	8002		organic	2023-01-11 00:00:00+00
zurich	8002	8002		organic	2023-01-18 00:00:00+00
zurich	8002	8002		organic	2023-01-25 00:00:00+00
zurich	8002	8002		organic	2023-02-01 00:00:00+00
zurich	8002	8002		organic	2023-02-08 00:00:00+00
zurich	8002	8002		organic	2023-02-15 00:00:00+00
zurich	8002	8002		organic	2023-02-22 00:00:00+00
zurich	8002	8002		organic	2023-03-01 00:00:00+00
zurich	8002	8002		organic	2023-03-08 00:00:00+00
zurich	8002	8002		organic	2023-03-15 00:00:00+00
zurich	8002	8002		organic	2023-03-22 00:00:00+00
zurich	8002	8002		organic	2023-03-29 00:00:00+00
zurich	8002	8002		organic	2023-04-05 00:00:00+00
zurich	8002	8002		organic	2023-04-12 00:00:00+00
zurich	8002	8002		organic	2023-04-19 00:00:00+00
zurich	8002	8002		organic	2023-04-26 00:00:00+00
zurich	8002	8002		organic	2023-05-03 00:00:00+00
zurich	8002	8002		organic	2023-05-10 00:00:00+00
zurich	8002	8002		organic	2023-05-17 00:00:00+00
zurich	8002	8002		organic	2023-05-24 00:00:00+00
zurich	8002	8002		organic	2023-05-31 00:00:00+00
zurich	8002	8002		organic	2023-06-07 00:00:00+00
zurich	8002	8002		organic	2023-06-14 00:00:00+00
zurich	8002	8002		organic	2023-06-21 00:00:00+00
zurich	8002	8002		organic	2023-06-28 00:00:00+00
zurich	8002	8002		organic	2023-07-05 00:00:00+00
zurich	8002	8002		organic	2023-07-12 00:00:00+00
zurich	8002	8002		organic	2023-07-19 00:00:00+00
zurich	8002	8002		organic	2023-07-26 00:00:00+00
zurich	8002	8002		organic	2023-08-02 00:00:00+00
zurich	8002	8002		organic	2023-08-09 00:00:00+00
zurich	8002	8002		organic	2023-08-16 00:00:00+00
zurich	8002	8002		organic	2023-08-23 00:00:00+00
zurich	8002	8002		organic	2023-08-30 00:00:00+00
zurich	8002	8002		organic	2023-09-06 00:00:00+00
zurich	8002	8002		organic	2023-09-13 00:00:00+00
zurich	8002	8002		organic	2023-09-20 00:00:00+00
zurich	8002	8002		organic	2023-09-27 00:00:00+00
zurich	8002	8002		organic	2023-10-04 00:00:00+00
zurich	8002	8002		organic	2023-10-11 00:00:00+00
zurich	8002	8002		organic	2023-10-18 00:00:00+00
zurich	8002	8002		organic	2023-10-25 00:00:00+00
zurich	8002	8002		organic	2023-11-01 00:00:00+00
zurich	8002	8002		organic	2023-11-08 00:00:00+00
zurich	8002	8002		organic	2023-11-15 00:00:00+00
zurich	8002	8002		organic	2023-11-22 00:00:00+00
zurich	8002	8002		organic	2023-11-29 00:00:00+00
zurich	8002	8002		organic	2023-12-06 00:00:00+00
zurich	8002	8002		organic	2023-12-13 00:00:00+00
zurich	8002	8002		organic	2023-12-20 00:00:00+00
zurich	8002	8002		organic	2023-12-27 00:00:00+00
zurich	8003	8003		organic	2023-01-04 00:00:00+00
zurich	8003	8003		organic	2023-01-11 00:00:00+00
zurich	8003	8003		organic	2023-01-18 00:00:00+00
zurich	8003	8003		organic	2023-01-25 00:00:00+00
zurich	8003	8003		organic	2023-02-01 00:00:00+00
zurich	8003	8003		organic	2023-02-08 00:00:00+00
zurich	8003	8003		organic	2023-02-15 00:00:00+00
zurich	8003	8003		organic	2023-02-22 00:00:00+00
zurich	8003	8003		organic	2023-03-01 00:00:00+00
zurich	8003	8003		organic	2023-03-08 00:00:00+00
zurich	8003	8003		organic	2023-03-15 00:00:00+00
zurich	8003	8003		organic	2023-03-22 00:00:00+00
zurich	8003	8003		organic	2023-03-29 00:00:00+00
zurich	8003	8003		organic	2023-04-05 00:00:00+00
zurich	8003	8003		organic	2023-04-12 00:00:00+00
zurich	8003	8003		organic	2023-04-19 00:00:00+00
zurich	8003	8003		organic	2023-04-26 00:00:00+00
zurich	8003	8003		organic	2023-05-03 00:00:00+00
zurich	8003	8003		organic	2023-05-10 00:00:00+00
zurich	8003	8003		organic	2023-05-17 00:00:00+00
zurich	8003	8003		organic	2023-05-24 00:00:00+00
zurich	8003	8003		organic	2023-05-31 00:00:00+00
zurich	8003	8003		organic	2023-06-07 00:00:00+00
zurich	8003	8003		organic	2023-06-14 00:00:00+00
zurich	8003	8003		organic	2023-06-21 00:00:00+00
zurich	8003	8003		organic	2023-06-28 00:00:00+00
zurich	8003	8003		organic	2023-07-05 00:00:00+00
zurich	8003	8003		organic	2023-07-12 00:00:00+00
zurich	8003	8003		organic	2023-07-19 00:00:00+00
zurich	8003	8003		organic	2023-07-26 00:00:00+00
zurich	8003	8003		organic	2023-08-02 00:00:00+00
zurich	8003	8003		organic	2023-08-09 00:00:00+00
zurich	8003	8003		organic	2023-08-16 00:00:00+00
zurich	8003	8003		organic	2023-08-23 00:00:00+00
zurich	8003	8003		organic	2023-08-30 00:00:00+00
zurich	8003	8003		organic	2023-09-06 00:00:00+00
zurich	8003	8003		organic	2023-09-13 00:00:00+00
zurich	8003	8003		organic	2023-09-20 00:00:00+00
zurich	8003	8003		organic	2023-09-27 00:00:00+00
zurich	8003	8003		organic	2023-10-04 00:00:00+00
zurich	8003	8003		organic	2023-10-11 00:00:00+00
zurich	8003	8003		organic	2023-10-18 00:00:00+00
zurich	8003	8003		organic	2023-10-25 00:00:00+00
zurich	8003	8003		organic	2023-11-01 00:00:00+00
zurich	8003	8003		organic	2023-11-08 00:00:00+00
zurich	8003	8003		organic	2023-11-15 00:00:00+00
zurich	8003	8003		organic	2023-11-22 00:00:00+00
zurich	8003	8003		organic	2023-11-29 00:00:00+00
zurich	8003	8003		organic	2023-12-06 00:00:00+00
zurich	8003	8003		organic	2023-12-13 00:00:00+00
zurich	8003	8003		organic	2023-12-20 00:00:00+00
zurich	8003	8003		organic	2023-12-27 00:00:00+00
zurich	8004	8004		organic	2023-01-09 00:00:00+00
zurich	8004	8004		organic	2023-01-16 00:00:00+00
zurich	8004	8004		organic	2023-01-23 00:00:00+00
zurich	8004	8004		organic	2023-01-30 00:00:00+00
zurich	8004	8004		organic	2023-02-06 00:00:00+00
zurich	8004	8004		organic	2023-02-13 00:00:00+00
zurich	8004	8004		organic	2023-02-20 00:00:00+00
zurich	8004	8004		organic	2023-02-27 00:00:00+00
zurich	8004	8004		organic	2023-03-06 00:00:00+00
zurich	8004	8004		organic	2023-03-13 00:00:00+00
zurich	8004	8004		organic	2023-03-20 00:00:00+00
zurich	8004	8004		organic	2023-03-27 00:00:00+00
zurich	8004	8004		organic	2023-04-03 00:00:00+00
zurich	8004	8004		organic	2023-04-08 00:00:00+00
zurich	8004	8004		organic	2023-04-17 00:00:00+00
zurich	8004	8004		organic	2023-04-24 00:00:00+00
zurich	8004	8004		organic	2023-04-29 00:00:00+00
zurich	8004	8004		organic	2023-05-08 00:00:00+00
zurich	8004	8004		organic	2023-05-15 00:00:00+00
zurich	8004	8004		organic	2023-05-22 00:00:00+00
zurich	8004	8004		organic	2023-05-27 00:00:00+00
zurich	8004	8004		organic	2023-06-05 00:00:00+00
zurich	8004	8004		organic	2023-06-12 00:00:00+00
zurich	8004	8004		organic	2023-06-19 00:00:00+00
zurich	8004	8004		organic	2023-06-26 00:00:00+00
zurich	8004	8004		organic	2023-07-03 00:00:00+00
zurich	8004	8004		organic	2023-07-10 00:00:00+00
zurich	8004	8004		organic	2023-07-17 00:00:00+00
zurich	8004	8004		organic	2023-07-24 00:00:00+00
zurich	8004	8004		organic	2023-07-31 00:00:00+00
zurich	8004	8004		organic	2023-08-07 00:00:00+00
zurich	8004	8004		organic	2023-08-14 00:00:00+00
zurich	8004	8004		organic	2023-08-21 00:00:00+00
zurich	8004	8004		organic	2023-08-28 00:00:00+00
zurich	8004	8004		organic	2023-09-04 00:00:00+00
zurich	8004	8004		organic	2023-09-11 00:00:00+00
zurich	8004	8004		organic	2023-09-18 00:00:00+00
zurich	8004	8004		organic	2023-09-25 00:00:00+00
zurich	8004	8004		organic	2023-10-02 00:00:00+00
zurich	8004	8004		organic	2023-10-09 00:00:00+00
zurich	8004	8004		organic	2023-10-16 00:00:00+00
zurich	8004	8004		organic	2023-10-23 00:00:00+00
zurich	8004	8004		organic	2023-10-30 00:00:00+00
zurich	8004	8004		organic	2023-11-06 00:00:00+00
zurich	8004	8004		organic	2023-11-13 00:00:00+00
zurich	8004	8004		organic	2023-11-20 00:00:00+00
zurich	8004	8004		organic	2023-11-27 00:00:00+00
zurich	8004	8004		organic	2023-12-04 00:00:00+00
zurich	8004	8004		organic	2023-12-11 00:00:00+00
zurich	8004	8004		organic	2023-12-18 00:00:00+00
zurich	8004	8004		organic	2023-12-27 00:00:00+00
zurich	8005	8005		organic	2023-01-09 00:00:00+00
zurich	8005	8005		organic	2023-01-16 00:00:00+00
zurich	8005	8005		organic	2023-01-23 00:00:00+00
zurich	8005	8005		organic	2023-01-30 00:00:00+00
zurich	8005	8005		organic	2023-02-06 00:00:00+00
zurich	8005	8005		organic	2023-02-13 00:00:00+00
zurich	8005	8005		organic	2023-02-20 00:00:00+00
zurich	8005	8005		organic	2023-02-27 00:00:00+00
zurich	8005	8005		organic	2023-03-06 00:00:00+00
zurich	8005	8005		organic	2023-03-13 00:00:00+00
zurich	8005	8005		organic	2023-03-20 00:00:00+00
zurich	8005	8005		organic	2023-03-27 00:00:00+00
zurich	8005	8005		organic	2023-04-03 00:00:00+00
zurich	8005	8005		organic	2023-04-08 00:00:00+00
zurich	8005	8005		organic	2023-04-17 00:00:00+00
zurich	8005	8005		organic	2023-04-24 00:00:00+00
zurich	8005	8005		organic	2023-04-29 00:00:00+00
zurich	8005	8005		organic	2023-05-08 00:00:00+00
zurich	8005	8005		organic	2023-05-15 00:00:00+00
zurich	8005	8005		organic	2023-05-22 00:00:00+00
zurich	8005	8005		organic	2023-05-27 00:00:00+00
zurich	8005	8005		organic	2023-06-05 00:00:00+00
zurich	8005	8005		organic	2023-06-12 00:00:00+00
zurich	8005	8005		organic	2023-06-19 00:00:00+00
zurich	8005	8005		organic	2023-06-26 00:00:00+00
zurich	8005	8005		organic	2023-07-03 00:00:00+00
zurich	8005	8005		organic	2023-07-10 00:00:00+00
zurich	8005	8005		organic	2023-07-17 00:00:00+00
zurich	8005	8005		organic	2023-07-24 00:00:00+00
zurich	8005	8005		organic	2023-07-31 00:00:00+00
zurich	8005	8005		organic	2023-08-07 00:00:00+00
zurich	8005	8005		organic	2023-08-14 00:00:00+00
zurich	8005	8005		organic	2023-08-21 00:00:00+00
zurich	8005	8005		organic	2023-08-28 00:00:00+00
zurich	8005	8005		organic	2023-09-04 00:00:00+00
zurich	8005	8005		organic	2023-09-11 00:00:00+00
zurich	8005	8005		organic	2023-09-18 00:00:00+00
zurich	8005	8005		organic	2023-09-25 00:00:00+00
zurich	8005	8005		organic	2023-10-02 00:00:00+00
zurich	8005	8005		organic	2023-10-09 00:00:00+00
zurich	8005	8005		organic	2023-10-16 00:00:00+00
zurich	8005	8005		organic	2023-10-23 00:00:00+00
zurich	8005	8005		organic	2023-10-30 00:00:00+00
zurich	8005	8005		organic	2023-11-06 00:00:00+00
zurich	8005	8005		organic	2023-11-13 00:00:00+00
zurich	8005	8005		organic	2023-11-20 00:00:00+00
zurich	8005	8005		organic	2023-11-27 00:00:00+00
zurich	8005	8005		organic	2023-12-04 00:00:00+00
zurich	8005	8005		organic	2023-12-11 00:00:00+00
zurich	8005	8005		organic	2023-12-18 00:00:00+00
zurich	8005	8005		organic	2023-12-27 00:00:00+00
zurich	8006	8006		organic	2023-01-03 00:00:00+00
zurich	8006	8006		organic	2023-01-10 00:00:00+00
zurich	8006	8006		organic	2023-01-17 00:00:00+00
zurich	8006	8006		organic	2023-01-24 00:00:00+00
zurich	8006	8006		organic	2023-01-31 00:00:00+00
zurich	8006	8006		organic	2023-02-07 00:00:00+00
zurich	8006	8006		organic	2023-02-14 00:00:00+00
zurich	8006	8006		organic	2023-02-21 00:00:00+00
zurich	8006	8006		organic	2023-02-28 00:00:00+00
zurich	8006	8006		organic	2023-03-07 00:00:00+00
zurich	8006	8006		organic	2023-03-14 00:00:00+00
zurich	8006	8006		organic	2023-03-21 00:00:00+00
zurich	8006	8006		organic	2023-03-28 00:00:00+00
zurich	8006	8006		organic	2023-04-04 00:00:00+00
zurich	8006	8006		organic	2023-04-11 00:00:00+00
zurich	8006	8006		organic	2023-04-18 00:00:00+00
zurich	8006	8006		organic	2023-04-25 00:00:00+00
zurich	8006	8006		organic	2023-05-02 00:00:00+00
zurich	8006	8006		organic	2023-05-09 00:00:00+00
zurich	8006	8006		organic	2023-05-16 00:00:00+00
zurich	8006	8006		organic	2023-05-23 00:00:00+00
zurich	8006	8006		organic	2023-05-30 00:00:00+00
zurich	8006	8006		organic	2023-06-06 00:00:00+00
zurich	8006	8006		organic	2023-06-13 00:00:00+00
zurich	8006	8006		organic	2023-06-20 00:00:00+00
zurich	8006	8006		organic	2023-06-27 00:00:00+00
zurich	8006	8006		organic	2023-07-04 00:00:00+00
zurich	8006	8006		organic	2023-07-11 00:00:00+00
zurich	8006	8006		organic	2023-07-18 00:00:00+00
zurich	8006	8006		organic	2023-07-25 00:00:00+00
zurich	8006	8006		organic	2023-07-29 00:00:00+00
zurich	8006	8006		organic	2023-08-08 00:00:00+00
zurich	8006	8006		organic	2023-08-15 00:00:00+00
zurich	8006	8006		organic	2023-08-22 00:00:00+00
zurich	8006	8006		organic	2023-08-29 00:00:00+00
zurich	8006	8006		organic	2023-09-05 00:00:00+00
zurich	8006	8006		organic	2023-09-12 00:00:00+00
zurich	8006	8006		organic	2023-09-19 00:00:00+00
zurich	8006	8006		organic	2023-09-26 00:00:00+00
zurich	8006	8006		organic	2023-10-03 00:00:00+00
zurich	8006	8006		organic	2023-10-10 00:00:00+00
zurich	8006	8006		organic	2023-10-17 00:00:00+00
zurich	8006	8006		organic	2023-10-24 00:00:00+00
zurich	8006	8006		organic	2023-10-31 00:00:00+00
zurich	8006	8006		organic	2023-11-07 00:00:00+00
zurich	8006	8006		organic	2023-11-14 00:00:00+00
zurich	8006	8006		organic	2023-11-21 00:00:00+00
zurich	8006	8006		organic	2023-11-28 00:00:00+00
zurich	8006	8006		organic	2023-12-05 00:00:00+00
zurich	8006	8006		organic	2023-12-12 00:00:00+00
zurich	8006	8006		organic	2023-12-19 00:00:00+00
zurich	8006	8006		organic	2023-12-23 00:00:00+00
zurich	8006	8006		organic	2023-12-30 00:00:00+00
zurich	8008	8008		organic	2023-01-09 00:00:00+00
zurich	8008	8008		organic	2023-01-16 00:00:00+00
zurich	8008	8008		organic	2023-01-23 00:00:00+00
zurich	8008	8008		organic	2023-01-30 00:00:00+00
zurich	8008	8008		organic	2023-02-06 00:00:00+00
zurich	8008	8008		organic	2023-02-13 00:00:00+00
zurich	8008	8008		organic	2023-02-20 00:00:00+00
zurich	8008	8008		organic	2023-02-27 00:00:00+00
zurich	8008	8008		organic	2023-03-06 00:00:00+00
zurich	8008	8008		organic	2023-03-13 00:00:00+00
zurich	8008	8008		organic	2023-03-20 00:00:00+00
zurich	8008	8008		organic	2023-03-27 00:00:00+00
zurich	8008	8008		organic	2023-04-03 00:00:00+00
zurich	8008	8008		organic	2023-04-11 00:00:00+00
zurich	8008	8008		organic	2023-04-17 00:00:00+00
zurich	8008	8008		organic	2023-04-24 00:00:00+00
zurich	8008	8008		organic	2023-04-29 00:00:00+00
zurich	8008	8008		organic	2023-05-08 00:00:00+00
zurich	8008	8008		organic	2023-05-15 00:00:00+00
zurich	8008	8008		organic	2023-05-22 00:00:00+00
zurich	8008	8008		organic	2023-05-27 00:00:00+00
zurich	8008	8008		organic	2023-06-05 00:00:00+00
zurich	8008	8008		organic	2023-06-12 00:00:00+00
zurich	8008	8008		organic	2023-06-19 00:00:00+00
zurich	8008	8008		organic	2023-06-26 00:00:00+00
zurich	8008	8008		organic	2023-07-03 00:00:00+00
zurich	8008	8008		organic	2023-07-10 00:00:00+00
zurich	8008	8008		organic	2023-07-17 00:00:00+00
zurich	8008	8008		organic	2023-07-24 00:00:00+00
zurich	8008	8008		organic	2023-07-31 00:00:00+00
zurich	8008	8008		organic	2023-08-07 00:00:00+00
zurich	8008	8008		organic	2023-08-14 00:00:00+00
zurich	8008	8008		organic	2023-08-21 00:00:00+00
zurich	8008	8008		organic	2023-08-28 00:00:00+00
zurich	8008	8008		organic	2023-09-04 00:00:00+00
zurich	8008	8008		organic	2023-09-11 00:00:00+00
zurich	8008	8008		organic	2023-09-18 00:00:00+00
zurich	8008	8008		organic	2023-09-25 00:00:00+00
zurich	8008	8008		organic	2023-10-02 00:00:00+00
zurich	8008	8008		organic	2023-10-09 00:00:00+00
zurich	8008	8008		organic	2023-10-16 00:00:00+00
zurich	8008	8008		organic	2023-10-23 00:00:00+00
zurich	8008	8008		organic	2023-10-30 00:00:00+00
zurich	8008	8008		organic	2023-11-06 00:00:00+00
zurich	8008	8008		organic	2023-11-13 00:00:00+00
zurich	8008	8008		organic	2023-11-20 00:00:00+00
zurich	8008	8008		organic	2023-11-27 00:00:00+00
zurich	8008	8008		organic	2023-12-04 00:00:00+00
zurich	8008	8008		organic	2023-12-11 00:00:00+00
zurich	8008	8008		organic	2023-12-18 00:00:00+00
zurich	8008	8008		organic	2023-12-23 00:00:00+00
zurich	8008	8008		organic	2023-12-30 00:00:00+00
zurich	8032	8032		organic	2023-01-09 00:00:00+00
zurich	8032	8032		organic	2023-01-16 00:00:00+00
zurich	8032	8032		organic	2023-01-23 00:00:00+00
zurich	8032	8032		organic	2023-01-30 00:00:00+00
zurich	8032	8032		organic	2023-02-06 00:00:00+00
zurich	8032	8032		organic	2023-02-13 00:00:00+00
zurich	8032	8032		organic	2023-02-20 00:00:00+00
zurich	8032	8032		organic	2023-02-27 00:00:00+00
zurich	8032	8032		organic	2023-03-06 00:00:00+00
zurich	8032	8032		organic	2023-03-13 00:00:00+00
zurich	8032	8032		organic	2023-03-20 00:00:00+00
zurich	8032	8032		organic	2023-03-27 00:00:00+00
zurich	8032	8032		organic	2023-04-03 00:00:00+00
zurich	8032	8032		organic	2023-04-08 00:00:00+00
zurich	8032	8032		organic	2023-04-17 00:00:00+00
zurich	8032	8032		organic	2023-04-24 00:00:00+00
zurich	8032	8032		organic	2023-04-29 00:00:00+00
zurich	8032	8032		organic	2023-05-08 00:00:00+00
zurich	8032	8032		organic	2023-05-15 00:00:00+00
zurich	8032	8032		organic	2023-05-22 00:00:00+00
zurich	8032	8032		organic	2023-05-27 00:00:00+00
zurich	8032	8032		organic	2023-06-05 00:00:00+00
zurich	8032	8032		organic	2023-06-12 00:00:00+00
zurich	8032	8032		organic	2023-06-19 00:00:00+00
zurich	8032	8032		organic	2023-06-26 00:00:00+00
zurich	8032	8032		organic	2023-07-03 00:00:00+00
zurich	8032	8032		organic	2023-07-10 00:00:00+00
zurich	8032	8032		organic	2023-07-17 00:00:00+00
zurich	8032	8032		organic	2023-07-24 00:00:00+00
zurich	8032	8032		organic	2023-07-31 00:00:00+00
zurich	8032	8032		organic	2023-08-07 00:00:00+00
zurich	8032	8032		organic	2023-08-14 00:00:00+00
zurich	8032	8032		organic	2023-08-21 00:00:00+00
zurich	8032	8032		organic	2023-08-28 00:00:00+00
zurich	8032	8032		organic	2023-09-04 00:00:00+00
zurich	8032	8032		organic	2023-09-11 00:00:00+00
zurich	8032	8032		organic	2023-09-18 00:00:00+00
zurich	8032	8032		organic	2023-09-25 00:00:00+00
zurich	8032	8032		organic	2023-10-02 00:00:00+00
zurich	8032	8032		organic	2023-10-09 00:00:00+00
zurich	8032	8032		organic	2023-10-16 00:00:00+00
zurich	8032	8032		organic	2023-10-23 00:00:00+00
zurich	8032	8032		organic	2023-10-30 00:00:00+00
zurich	8032	8032		organic	2023-11-06 00:00:00+00
zurich	8032	8032		organic	2023-11-13 00:00:00+00
zurich	8032	8032		organic	2023-11-20 00:00:00+00
zurich	8032	8032		organic	2023-11-27 00:00:00+00
zurich	8032	8032		organic	2023-12-04 00:00:00+00
zurich	8032	8032		organic	2023-12-11 00:00:00+00
zurich	8032	8032		organic	2023-12-18 00:00:00+00
zurich	8032	8032		organic	2023-12-23 00:00:00+00
zurich	8032	8032		organic	2023-12-30 00:00:00+00
zurich	8037	8037		organic	2023-01-03 00:00:00+00
zurich	8037	8037		organic	2023-01-10 00:00:00+00
zurich	8037	8037		organic	2023-01-17 00:00:00+00
zurich	8037	8037		organic	2023-01-24 00:00:00+00
zurich	8037	8037		organic	2023-01-31 00:00:00+00
zurich	8037	8037		organic	2023-02-07 00:00:00+00
zurich	8037	8037		organic	2023-02-14 00:00:00+00
zurich	8037	8037		organic	2023-02-21 00:00:00+00
zurich	8037	8037		organic	2023-02-28 00:00:00+00
zurich	8037	8037		organic	2023-03-07 00:00:00+00
zurich	8037	8037		organic	2023-03-14 00:00:00+00
zurich	8037	8037		organic	2023-03-21 00:00:00+00
zurich	8037	8037		organic	2023-03-28 00:00:00+00
zurich	8037	8037		organic	2023-04-04 00:00:00+00
zurich	8037	8037		organic	2023-04-11 00:00:00+00
zurich	8037	8037		organic	2023-04-18 00:00:00+00
zurich	8037	8037		organic	2023-04-25 00:00:00+00
zurich	8037	8037		organic	2023-05-02 00:00:00+00
zurich	8037	8037		organic	2023-05-09 00:00:00+00
zurich	8037	8037		organic	2023-05-16 00:00:00+00
zurich	8037	8037		organic	2023-05-23 00:00:00+00
zurich	8037	8037		organic	2023-05-30 00:00:00+00
zurich	8037	8037		organic	2023-06-06 00:00:00+00
zurich	8037	8037		organic	2023-06-13 00:00:00+00
zurich	8037	8037		organic	2023-06-20 00:00:00+00
zurich	8037	8037		organic	2023-06-27 00:00:00+00
zurich	8037	8037		organic	2023-07-04 00:00:00+00
zurich	8037	8037		organic	2023-07-11 00:00:00+00
zurich	8037	8037		organic	2023-07-18 00:00:00+00
zurich	8037	8037		organic	2023-07-25 00:00:00+00
zurich	8037	8037		organic	2023-07-29 00:00:00+00
zurich	8037	8037		organic	2023-08-08 00:00:00+00
zurich	8037	8037		organic	2023-08-15 00:00:00+00
zurich	8037	8037		organic	2023-08-22 00:00:00+00
zurich	8037	8037		organic	2023-08-29 00:00:00+00
zurich	8037	8037		organic	2023-09-05 00:00:00+00
zurich	8037	8037		organic	2023-09-12 00:00:00+00
zurich	8037	8037		organic	2023-09-19 00:00:00+00
zurich	8037	8037		organic	2023-09-26 00:00:00+00
zurich	8037	8037		organic	2023-10-03 00:00:00+00
zurich	8037	8037		organic	2023-10-10 00:00:00+00
zurich	8037	8037		organic	2023-10-17 00:00:00+00
zurich	8037	8037		organic	2023-10-24 00:00:00+00
zurich	8037	8037		organic	2023-10-31 00:00:00+00
zurich	8037	8037		organic	2023-11-07 00:00:00+00
zurich	8037	8037		organic	2023-11-14 00:00:00+00
zurich	8037	8037		organic	2023-11-21 00:00:00+00
zurich	8037	8037		organic	2023-11-28 00:00:00+00
zurich	8037	8037		organic	2023-12-05 00:00:00+00
zurich	8037	8037		organic	2023-12-12 00:00:00+00
zurich	8037	8037		organic	2023-12-19 00:00:00+00
zurich	8037	8037		organic	2023-12-28 00:00:00+00
zurich	8038	8038		organic	2023-01-04 00:00:00+00
zurich	8038	8038		organic	2023-01-11 00:00:00+00
zurich	8038	8038		organic	2023-01-18 00:00:00+00
zurich	8038	8038		organic	2023-01-25 00:00:00+00
zurich	8038	8038		organic	2023-02-01 00:00:00+00
zurich	8038	8038		organic	2023-02-08 00:00:00+00
zurich	8038	8038		organic	2023-02-15 00:00:00+00
zurich	8038	8038		organic	2023-02-22 00:00:00+00
zurich	8038	8038		organic	2023-03-01 00:00:00+00
zurich	8038	8038		organic	2023-03-08 00:00:00+00
zurich	8038	8038		organic	2023-03-15 00:00:00+00
zurich	8038	8038		organic	2023-03-22 00:00:00+00
zurich	8038	8038		organic	2023-03-29 00:00:00+00
zurich	8038	8038		organic	2023-04-05 00:00:00+00
zurich	8038	8038		organic	2023-04-12 00:00:00+00
zurich	8038	8038		organic	2023-04-19 00:00:00+00
zurich	8038	8038		organic	2023-04-26 00:00:00+00
zurich	8038	8038		organic	2023-05-03 00:00:00+00
zurich	8038	8038		organic	2023-05-10 00:00:00+00
zurich	8038	8038		organic	2023-05-17 00:00:00+00
zurich	8038	8038		organic	2023-05-24 00:00:00+00
zurich	8038	8038		organic	2023-05-31 00:00:00+00
zurich	8038	8038		organic	2023-06-07 00:00:00+00
zurich	8038	8038		organic	2023-06-14 00:00:00+00
zurich	8038	8038		organic	2023-06-21 00:00:00+00
zurich	8038	8038		organic	2023-06-28 00:00:00+00
zurich	8038	8038		organic	2023-07-05 00:00:00+00
zurich	8038	8038		organic	2023-07-12 00:00:00+00
zurich	8038	8038		organic	2023-07-19 00:00:00+00
zurich	8038	8038		organic	2023-07-26 00:00:00+00
zurich	8038	8038		organic	2023-08-02 00:00:00+00
zurich	8038	8038		organic	2023-08-09 00:00:00+00
zurich	8038	8038		organic	2023-08-16 00:00:00+00
zurich	8038	8038		organic	2023-08-23 00:00:00+00
zurich	8038	8038		organic	2023-08-30 00:00:00+00
zurich	8038	8038		organic	2023-09-06 00:00:00+00
zurich	8038	8038		organic	2023-09-13 00:00:00+00
zurich	8038	8038		organic	2023-09-20 00:00:00+00
zurich	8038	8038		organic	2023-09-27 00:00:00+00
zurich	8038	8038		organic	2023-10-04 00:00:00+00
zurich	8038	8038		organic	2023-10-11 00:00:00+00
zurich	8038	8038		organic	2023-10-18 00:00:00+00
zurich	8038	8038		organic	2023-10-25 00:00:00+00
zurich	8038	8038		organic	2023-11-01 00:00:00+00
zurich	8038	8038		organic	2023-11-08 00:00:00+00
zurich	8038	8038		organic	2023-11-15 00:00:00+00
zurich	8038	8038		organic	2023-11-22 00:00:00+00
zurich	8038	8038		organic	2023-11-29 00:00:00+00
zurich	8038	8038		organic	2023-12-06 00:00:00+00
zurich	8038	8038		organic	2023-12-13 00:00:00+00
zurich	8038	8038		organic	2023-12-20 00:00:00+00
zurich	8038	8038		organic	2023-12-27 00:00:00+00
zurich	8041	8041		organic	2023-01-04 00:00:00+00
zurich	8041	8041		organic	2023-01-11 00:00:00+00
zurich	8041	8041		organic	2023-01-18 00:00:00+00
zurich	8041	8041		organic	2023-01-25 00:00:00+00
zurich	8041	8041		organic	2023-02-01 00:00:00+00
zurich	8041	8041		organic	2023-02-08 00:00:00+00
zurich	8041	8041		organic	2023-02-15 00:00:00+00
zurich	8041	8041		organic	2023-02-22 00:00:00+00
zurich	8041	8041		organic	2023-03-01 00:00:00+00
zurich	8041	8041		organic	2023-03-08 00:00:00+00
zurich	8041	8041		organic	2023-03-15 00:00:00+00
zurich	8041	8041		organic	2023-03-22 00:00:00+00
zurich	8041	8041		organic	2023-03-29 00:00:00+00
zurich	8041	8041		organic	2023-04-05 00:00:00+00
zurich	8041	8041		organic	2023-04-12 00:00:00+00
zurich	8041	8041		organic	2023-04-19 00:00:00+00
zurich	8041	8041		organic	2023-04-26 00:00:00+00
zurich	8041	8041		organic	2023-05-03 00:00:00+00
zurich	8041	8041		organic	2023-05-10 00:00:00+00
zurich	8041	8041		organic	2023-05-17 00:00:00+00
zurich	8041	8041		organic	2023-05-24 00:00:00+00
zurich	8041	8041		organic	2023-05-31 00:00:00+00
zurich	8041	8041		organic	2023-06-07 00:00:00+00
zurich	8041	8041		organic	2023-06-14 00:00:00+00
zurich	8041	8041		organic	2023-06-21 00:00:00+00
zurich	8041	8041		organic	2023-06-28 00:00:00+00
zurich	8041	8041		organic	2023-07-05 00:00:00+00
zurich	8041	8041		organic	2023-07-12 00:00:00+00
zurich	8041	8041		organic	2023-07-19 00:00:00+00
zurich	8041	8041		organic	2023-07-26 00:00:00+00
zurich	8041	8041		organic	2023-08-02 00:00:00+00
zurich	8041	8041		organic	2023-08-09 00:00:00+00
zurich	8041	8041		organic	2023-08-16 00:00:00+00
zurich	8041	8041		organic	2023-08-23 00:00:00+00
zurich	8041	8041		organic	2023-08-30 00:00:00+00
zurich	8041	8041		organic	2023-09-06 00:00:00+00
zurich	8041	8041		organic	2023-09-13 00:00:00+00
zurich	8041	8041		organic	2023-09-20 00:00:00+00
zurich	8041	8041		organic	2023-09-27 00:00:00+00
zurich	8041	8041		organic	2023-10-04 00:00:00+00
zurich	8041	8041		organic	2023-10-11 00:00:00+00
zurich	8041	8041		organic	2023-10-18 00:00:00+00
zurich	8041	8041		organic	2023-10-25 00:00:00+00
zurich	8041	8041		organic	2023-11-01 00:00:00+00
zurich	8041	8041		organic	2023-11-08 00:00:00+00
zurich	8041	8041		organic	2023-11-15 00:00:00+00
zurich	8041	8041		organic	2023-11-22 00:00:00+00
zurich	8041	8041		organic	2023-11-29 00:00:00+00
zurich	8041	8041		organic	2023-12-06 00:00:00+00
zurich	8041	8041		organic	2023-12-13 00:00:00+00
zurich	8041	8041		organic	2023-12-20 00:00:00+00
zurich	8041	8041		organic	2023-12-27 00:00:00+00
zurich	8044	8044		organic	2023-01-03 00:00:00+00
zurich	8044	8044		organic	2023-01-10 00:00:00+00
zurich	8044	8044		organic	2023-01-17 00:00:00+00
zurich	8044	8044		organic	2023-01-24 00:00:00+00
zurich	8044	8044		organic	2023-01-31 00:00:00+00
zurich	8044	8044		organic	2023-02-07 00:00:00+00
zurich	8044	8044		organic	2023-02-14 00:00:00+00
zurich	8044	8044		organic	2023-02-21 00:00:00+00
zurich	8044	8044		organic	2023-02-28 00:00:00+00
zurich	8044	8044		organic	2023-03-07 00:00:00+00
zurich	8044	8044		organic	2023-03-14 00:00:00+00
zurich	8044	8044		organic	2023-03-21 00:00:00+00
zurich	8044	8044		organic	2023-03-28 00:00:00+00
zurich	8044	8044		organic	2023-04-04 00:00:00+00
zurich	8044	8044		organic	2023-04-11 00:00:00+00
zurich	8044	8044		organic	2023-04-18 00:00:00+00
zurich	8044	8044		organic	2023-04-25 00:00:00+00
zurich	8044	8044		organic	2023-05-02 00:00:00+00
zurich	8044	8044		organic	2023-05-09 00:00:00+00
zurich	8044	8044		organic	2023-05-16 00:00:00+00
zurich	8044	8044		organic	2023-05-23 00:00:00+00
zurich	8044	8044		organic	2023-05-30 00:00:00+00
zurich	8044	8044		organic	2023-06-06 00:00:00+00
zurich	8044	8044		organic	2023-06-13 00:00:00+00
zurich	8044	8044		organic	2023-06-20 00:00:00+00
zurich	8044	8044		organic	2023-06-27 00:00:00+00
zurich	8044	8044		organic	2023-07-04 00:00:00+00
zurich	8044	8044		organic	2023-07-11 00:00:00+00
zurich	8044	8044		organic	2023-07-18 00:00:00+00
zurich	8044	8044		organic	2023-07-25 00:00:00+00
zurich	8044	8044		organic	2023-07-29 00:00:00+00
zurich	8044	8044		organic	2023-08-08 00:00:00+00
zurich	8044	8044		organic	2023-08-15 00:00:00+00
zurich	8044	8044		organic	2023-08-22 00:00:00+00
zurich	8044	8044		organic	2023-08-29 00:00:00+00
zurich	8044	8044		organic	2023-09-05 00:00:00+00
zurich	8044	8044		organic	2023-09-12 00:00:00+00
zurich	8044	8044		organic	2023-09-19 00:00:00+00
zurich	8044	8044		organic	2023-09-26 00:00:00+00
zurich	8044	8044		organic	2023-10-03 00:00:00+00
zurich	8044	8044		organic	2023-10-10 00:00:00+00
zurich	8044	8044		organic	2023-10-17 00:00:00+00
zurich	8044	8044		organic	2023-10-24 00:00:00+00
zurich	8044	8044		organic	2023-10-31 00:00:00+00
zurich	8044	8044		organic	2023-11-07 00:00:00+00
zurich	8044	8044		organic	2023-11-14 00:00:00+00
zurich	8044	8044		organic	2023-11-21 00:00:00+00
zurich	8044	8044		organic	2023-11-28 00:00:00+00
zurich	8044	8044		organic	2023-12-05 00:00:00+00
zurich	8044	8044		organic	2023-12-12 00:00:00+00
zurich	8044	8044		organic	2023-12-19 00:00:00+00
zurich	8044	8044		organic	2023-12-23 00:00:00+00
zurich	8044	8044		organic	2023-12-30 00:00:00+00
zurich	8045	8045		organic	2023-01-04 00:00:00+00
zurich	8045	8045		organic	2023-01-11 00:00:00+00
zurich	8045	8045		organic	2023-01-18 00:00:00+00
zurich	8045	8045		organic	2023-01-25 00:00:00+00
zurich	8045	8045		organic	2023-02-01 00:00:00+00
zurich	8045	8045		organic	2023-02-08 00:00:00+00
zurich	8045	8045		organic	2023-02-15 00:00:00+00
zurich	8045	8045		organic	2023-02-22 00:00:00+00
zurich	8045	8045		organic	2023-03-01 00:00:00+00
zurich	8045	8045		organic	2023-03-08 00:00:00+00
zurich	8045	8045		organic	2023-03-15 00:00:00+00
zurich	8045	8045		organic	2023-03-22 00:00:00+00
zurich	8045	8045		organic	2023-03-29 00:00:00+00
zurich	8045	8045		organic	2023-04-05 00:00:00+00
zurich	8045	8045		organic	2023-04-12 00:00:00+00
zurich	8045	8045		organic	2023-04-19 00:00:00+00
zurich	8045	8045		organic	2023-04-26 00:00:00+00
zurich	8045	8045		organic	2023-05-03 00:00:00+00
zurich	8045	8045		organic	2023-05-10 00:00:00+00
zurich	8045	8045		organic	2023-05-17 00:00:00+00
zurich	8045	8045		organic	2023-05-24 00:00:00+00
zurich	8045	8045		organic	2023-05-31 00:00:00+00
zurich	8045	8045		organic	2023-06-07 00:00:00+00
zurich	8045	8045		organic	2023-06-14 00:00:00+00
zurich	8045	8045		organic	2023-06-21 00:00:00+00
zurich	8045	8045		organic	2023-06-28 00:00:00+00
zurich	8045	8045		organic	2023-07-05 00:00:00+00
zurich	8045	8045		organic	2023-07-12 00:00:00+00
zurich	8045	8045		organic	2023-07-19 00:00:00+00
zurich	8045	8045		organic	2023-07-26 00:00:00+00
zurich	8045	8045		organic	2023-08-02 00:00:00+00
zurich	8045	8045		organic	2023-08-09 00:00:00+00
zurich	8045	8045		organic	2023-08-16 00:00:00+00
zurich	8045	8045		organic	2023-08-23 00:00:00+00
zurich	8045	8045		organic	2023-08-30 00:00:00+00
zurich	8045	8045		organic	2023-09-06 00:00:00+00
zurich	8045	8045		organic	2023-09-13 00:00:00+00
zurich	8045	8045		organic	2023-09-20 00:00:00+00
zurich	8045	8045		organic	2023-09-27 00:00:00+00
zurich	8045	8045		organic	2023-10-04 00:00:00+00
zurich	8045	8045		organic	2023-10-11 00:00:00+00
zurich	8045	8045		organic	2023-10-18 00:00:00+00
zurich	8045	8045		organic	2023-10-25 00:00:00+00
zurich	8045	8045		organic	2023-11-01 00:00:00+00
zurich	8045	8045		organic	2023-11-08 00:00:00+00
zurich	8045	8045		organic	2023-11-15 00:00:00+00
zurich	8045	8045		organic	2023-11-22 00:00:00+00
zurich	8045	8045		organic	2023-11-29 00:00:00+00
zurich	8045	8045		organic	2023-12-06 00:00:00+00
zurich	8045	8045		organic	2023-12-13 00:00:00+00
zurich	8045	8045		organic	2023-12-20 00:00:00+00
zurich	8045	8045		organic	2023-12-27 00:00:00+00
zurich	8046	8046		organic	2023-01-06 00:00:00+00
zurich	8046	8046		organic	2023-01-13 00:00:00+00
zurich	8046	8046		organic	2023-01-20 00:00:00+00
zurich	8046	8046		organic	2023-01-27 00:00:00+00
zurich	8046	8046		organic	2023-02-03 00:00:00+00
zurich	8046	8046		organic	2023-02-10 00:00:00+00
zurich	8046	8046		organic	2023-02-17 00:00:00+00
zurich	8046	8046		organic	2023-02-24 00:00:00+00
zurich	8046	8046		organic	2023-03-03 00:00:00+00
zurich	8046	8046		organic	2023-03-10 00:00:00+00
zurich	8046	8046		organic	2023-03-17 00:00:00+00
zurich	8046	8046		organic	2023-03-24 00:00:00+00
zurich	8046	8046		organic	2023-03-31 00:00:00+00
zurich	8046	8046		organic	2023-04-06 00:00:00+00
zurich	8046	8046		organic	2023-04-14 00:00:00+00
zurich	8046	8046		organic	2023-04-21 00:00:00+00
zurich	8046	8046		organic	2023-04-28 00:00:00+00
zurich	8046	8046		organic	2023-05-05 00:00:00+00
zurich	8046	8046		organic	2023-05-12 00:00:00+00
zurich	8046	8046		organic	2023-05-19 00:00:00+00
zurich	8046	8046		organic	2023-05-26 00:00:00+00
zurich	8046	8046		organic	2023-06-02 00:00:00+00
zurich	8046	8046		organic	2023-06-09 00:00:00+00
zurich	8046	8046		organic	2023-06-16 00:00:00+00
zurich	8046	8046		organic	2023-06-23 00:00:00+00
zurich	8046	8046		organic	2023-06-30 00:00:00+00
zurich	8046	8046		organic	2023-07-07 00:00:00+00
zurich	8046	8046		organic	2023-07-14 00:00:00+00
zurich	8046	8046		organic	2023-07-21 00:00:00+00
zurich	8046	8046		organic	2023-07-28 00:00:00+00
zurich	8046	8046		organic	2023-08-04 00:00:00+00
zurich	8046	8046		organic	2023-08-11 00:00:00+00
zurich	8046	8046		organic	2023-08-18 00:00:00+00
zurich	8046	8046		organic	2023-08-25 00:00:00+00
zurich	8046	8046		organic	2023-09-01 00:00:00+00
zurich	8046	8046		organic	2023-09-08 00:00:00+00
zurich	8046	8046		organic	2023-09-15 00:00:00+00
zurich	8046	8046		organic	2023-09-22 00:00:00+00
zurich	8046	8046		organic	2023-09-29 00:00:00+00
zurich	8046	8046		organic	2023-10-06 00:00:00+00
zurich	8046	8046		organic	2023-10-13 00:00:00+00
zurich	8046	8046		organic	2023-10-20 00:00:00+00
zurich	8046	8046		organic	2023-10-27 00:00:00+00
zurich	8046	8046		organic	2023-11-03 00:00:00+00
zurich	8046	8046		organic	2023-11-10 00:00:00+00
zurich	8046	8046		organic	2023-11-17 00:00:00+00
zurich	8046	8046		organic	2023-11-24 00:00:00+00
zurich	8046	8046		organic	2023-12-01 00:00:00+00
zurich	8046	8046		organic	2023-12-08 00:00:00+00
zurich	8046	8046		organic	2023-12-15 00:00:00+00
zurich	8046	8046		organic	2023-12-22 00:00:00+00
zurich	8046	8046		organic	2023-12-29 00:00:00+00
zurich	8047	8047		organic	2023-01-05 00:00:00+00
zurich	8047	8047		organic	2023-01-12 00:00:00+00
zurich	8047	8047		organic	2023-01-19 00:00:00+00
zurich	8047	8047		organic	2023-01-26 00:00:00+00
zurich	8047	8047		organic	2023-02-02 00:00:00+00
zurich	8047	8047		organic	2023-02-09 00:00:00+00
zurich	8047	8047		organic	2023-02-16 00:00:00+00
zurich	8047	8047		organic	2023-02-23 00:00:00+00
zurich	8047	8047		organic	2023-03-02 00:00:00+00
zurich	8047	8047		organic	2023-03-09 00:00:00+00
zurich	8047	8047		organic	2023-03-16 00:00:00+00
zurich	8047	8047		organic	2023-03-23 00:00:00+00
zurich	8047	8047		organic	2023-03-30 00:00:00+00
zurich	8047	8047		organic	2023-04-06 00:00:00+00
zurich	8047	8047		organic	2023-04-13 00:00:00+00
zurich	8047	8047		organic	2023-04-20 00:00:00+00
zurich	8047	8047		organic	2023-04-27 00:00:00+00
zurich	8047	8047		organic	2023-05-04 00:00:00+00
zurich	8047	8047		organic	2023-05-11 00:00:00+00
zurich	8047	8047		organic	2023-05-20 00:00:00+00
zurich	8047	8047		organic	2023-05-25 00:00:00+00
zurich	8047	8047		organic	2023-06-01 00:00:00+00
zurich	8047	8047		organic	2023-06-08 00:00:00+00
zurich	8047	8047		organic	2023-06-15 00:00:00+00
zurich	8047	8047		organic	2023-06-22 00:00:00+00
zurich	8047	8047		organic	2023-06-29 00:00:00+00
zurich	8047	8047		organic	2023-07-06 00:00:00+00
zurich	8047	8047		organic	2023-07-13 00:00:00+00
zurich	8047	8047		organic	2023-07-20 00:00:00+00
zurich	8047	8047		organic	2023-07-27 00:00:00+00
zurich	8047	8047		organic	2023-08-03 00:00:00+00
zurich	8047	8047		organic	2023-08-10 00:00:00+00
zurich	8047	8047		organic	2023-08-17 00:00:00+00
zurich	8047	8047		organic	2023-08-24 00:00:00+00
zurich	8047	8047		organic	2023-08-31 00:00:00+00
zurich	8047	8047		organic	2023-09-07 00:00:00+00
zurich	8047	8047		organic	2023-09-14 00:00:00+00
zurich	8047	8047		organic	2023-09-21 00:00:00+00
zurich	8047	8047		organic	2023-09-28 00:00:00+00
zurich	8047	8047		organic	2023-10-05 00:00:00+00
zurich	8047	8047		organic	2023-10-12 00:00:00+00
zurich	8047	8047		organic	2023-10-19 00:00:00+00
zurich	8047	8047		organic	2023-10-26 00:00:00+00
zurich	8047	8047		organic	2023-11-02 00:00:00+00
zurich	8047	8047		organic	2023-11-09 00:00:00+00
zurich	8047	8047		organic	2023-11-16 00:00:00+00
zurich	8047	8047		organic	2023-11-23 00:00:00+00
zurich	8047	8047		organic	2023-11-30 00:00:00+00
zurich	8047	8047		organic	2023-12-07 00:00:00+00
zurich	8047	8047		organic	2023-12-14 00:00:00+00
zurich	8047	8047		organic	2023-12-21 00:00:00+00
zurich	8047	8047		organic	2023-12-28 00:00:00+00
zurich	8048	8048		organic	2023-01-05 00:00:00+00
zurich	8048	8048		organic	2023-01-12 00:00:00+00
zurich	8048	8048		organic	2023-01-19 00:00:00+00
zurich	8048	8048		organic	2023-01-26 00:00:00+00
zurich	8048	8048		organic	2023-02-02 00:00:00+00
zurich	8048	8048		organic	2023-02-09 00:00:00+00
zurich	8048	8048		organic	2023-02-16 00:00:00+00
zurich	8048	8048		organic	2023-02-23 00:00:00+00
zurich	8048	8048		organic	2023-03-02 00:00:00+00
zurich	8048	8048		organic	2023-03-09 00:00:00+00
zurich	8048	8048		organic	2023-03-16 00:00:00+00
zurich	8048	8048		organic	2023-03-23 00:00:00+00
zurich	8048	8048		organic	2023-03-30 00:00:00+00
zurich	8048	8048		organic	2023-04-06 00:00:00+00
zurich	8048	8048		organic	2023-04-13 00:00:00+00
zurich	8048	8048		organic	2023-04-20 00:00:00+00
zurich	8048	8048		organic	2023-04-27 00:00:00+00
zurich	8048	8048		organic	2023-05-04 00:00:00+00
zurich	8048	8048		organic	2023-05-11 00:00:00+00
zurich	8048	8048		organic	2023-05-20 00:00:00+00
zurich	8048	8048		organic	2023-05-25 00:00:00+00
zurich	8048	8048		organic	2023-06-01 00:00:00+00
zurich	8048	8048		organic	2023-06-08 00:00:00+00
zurich	8048	8048		organic	2023-06-15 00:00:00+00
zurich	8048	8048		organic	2023-06-22 00:00:00+00
zurich	8048	8048		organic	2023-06-29 00:00:00+00
zurich	8048	8048		organic	2023-07-06 00:00:00+00
zurich	8048	8048		organic	2023-07-13 00:00:00+00
zurich	8048	8048		organic	2023-07-20 00:00:00+00
zurich	8048	8048		organic	2023-07-27 00:00:00+00
zurich	8048	8048		organic	2023-08-03 00:00:00+00
zurich	8048	8048		organic	2023-08-10 00:00:00+00
zurich	8048	8048		organic	2023-08-17 00:00:00+00
zurich	8048	8048		organic	2023-08-24 00:00:00+00
zurich	8048	8048		organic	2023-08-31 00:00:00+00
zurich	8048	8048		organic	2023-09-07 00:00:00+00
zurich	8048	8048		organic	2023-09-14 00:00:00+00
zurich	8048	8048		organic	2023-09-21 00:00:00+00
zurich	8048	8048		organic	2023-09-28 00:00:00+00
zurich	8048	8048		organic	2023-10-05 00:00:00+00
zurich	8048	8048		organic	2023-10-12 00:00:00+00
zurich	8048	8048		organic	2023-10-19 00:00:00+00
zurich	8048	8048		organic	2023-10-26 00:00:00+00
zurich	8048	8048		organic	2023-11-02 00:00:00+00
zurich	8048	8048		organic	2023-11-09 00:00:00+00
zurich	8048	8048		organic	2023-11-16 00:00:00+00
zurich	8048	8048		organic	2023-11-23 00:00:00+00
zurich	8048	8048		organic	2023-11-30 00:00:00+00
zurich	8048	8048		organic	2023-12-07 00:00:00+00
zurich	8048	8048		organic	2023-12-14 00:00:00+00
zurich	8048	8048		organic	2023-12-21 00:00:00+00
zurich	8048	8048		organic	2023-12-28 00:00:00+00
zurich	8049	8049		organic	2023-01-05 00:00:00+00
zurich	8049	8049		organic	2023-01-12 00:00:00+00
zurich	8049	8049		organic	2023-01-19 00:00:00+00
zurich	8049	8049		organic	2023-01-26 00:00:00+00
zurich	8049	8049		organic	2023-02-02 00:00:00+00
zurich	8049	8049		organic	2023-02-09 00:00:00+00
zurich	8049	8049		organic	2023-02-16 00:00:00+00
zurich	8049	8049		organic	2023-02-23 00:00:00+00
zurich	8049	8049		organic	2023-03-02 00:00:00+00
zurich	8049	8049		organic	2023-03-09 00:00:00+00
zurich	8049	8049		organic	2023-03-16 00:00:00+00
zurich	8049	8049		organic	2023-03-23 00:00:00+00
zurich	8049	8049		organic	2023-03-30 00:00:00+00
zurich	8049	8049		organic	2023-04-06 00:00:00+00
zurich	8049	8049		organic	2023-04-13 00:00:00+00
zurich	8049	8049		organic	2023-04-20 00:00:00+00
zurich	8049	8049		organic	2023-04-27 00:00:00+00
zurich	8049	8049		organic	2023-05-04 00:00:00+00
zurich	8049	8049		organic	2023-05-11 00:00:00+00
zurich	8049	8049		organic	2023-05-20 00:00:00+00
zurich	8049	8049		organic	2023-05-25 00:00:00+00
zurich	8049	8049		organic	2023-06-01 00:00:00+00
zurich	8049	8049		organic	2023-06-08 00:00:00+00
zurich	8049	8049		organic	2023-06-15 00:00:00+00
zurich	8049	8049		organic	2023-06-22 00:00:00+00
zurich	8049	8049		organic	2023-06-29 00:00:00+00
zurich	8049	8049		organic	2023-07-06 00:00:00+00
zurich	8049	8049		organic	2023-07-13 00:00:00+00
zurich	8049	8049		organic	2023-07-20 00:00:00+00
zurich	8049	8049		organic	2023-07-27 00:00:00+00
zurich	8049	8049		organic	2023-08-03 00:00:00+00
zurich	8049	8049		organic	2023-08-10 00:00:00+00
zurich	8049	8049		organic	2023-08-17 00:00:00+00
zurich	8049	8049		organic	2023-08-24 00:00:00+00
zurich	8049	8049		organic	2023-08-31 00:00:00+00
zurich	8049	8049		organic	2023-09-07 00:00:00+00
zurich	8049	8049		organic	2023-09-14 00:00:00+00
zurich	8049	8049		organic	2023-09-21 00:00:00+00
zurich	8049	8049		organic	2023-09-28 00:00:00+00
zurich	8049	8049		organic	2023-10-05 00:00:00+00
zurich	8049	8049		organic	2023-10-12 00:00:00+00
zurich	8049	8049		organic	2023-10-19 00:00:00+00
zurich	8049	8049		organic	2023-10-26 00:00:00+00
zurich	8049	8049		organic	2023-11-02 00:00:00+00
zurich	8049	8049		organic	2023-11-09 00:00:00+00
zurich	8049	8049		organic	2023-11-16 00:00:00+00
zurich	8049	8049		organic	2023-11-23 00:00:00+00
zurich	8049	8049		organic	2023-11-30 00:00:00+00
zurich	8049	8049		organic	2023-12-07 00:00:00+00
zurich	8049	8049		organic	2023-12-14 00:00:00+00
zurich	8049	8049		organic	2023-12-21 00:00:00+00
zurich	8049	8049		organic	2023-12-28 00:00:00+00
zurich	8050	8050		organic	2023-01-06 00:00:00+00
zurich	8050	8050		organic	2023-01-13 00:00:00+00
zurich	8050	8050		organic	2023-01-20 00:00:00+00
zurich	8050	8050		organic	2023-01-27 00:00:00+00
zurich	8050	8050		organic	2023-02-03 00:00:00+00
zurich	8050	8050		organic	2023-02-10 00:00:00+00
zurich	8050	8050		organic	2023-02-17 00:00:00+00
zurich	8050	8050		organic	2023-02-24 00:00:00+00
zurich	8050	8050		organic	2023-03-03 00:00:00+00
zurich	8050	8050		organic	2023-03-10 00:00:00+00
zurich	8050	8050		organic	2023-03-17 00:00:00+00
zurich	8050	8050		organic	2023-03-24 00:00:00+00
zurich	8050	8050		organic	2023-03-31 00:00:00+00
zurich	8050	8050		organic	2023-04-08 00:00:00+00
zurich	8050	8050		organic	2023-04-14 00:00:00+00
zurich	8050	8050		organic	2023-04-21 00:00:00+00
zurich	8050	8050		organic	2023-04-28 00:00:00+00
zurich	8050	8050		organic	2023-05-05 00:00:00+00
zurich	8050	8050		organic	2023-05-12 00:00:00+00
zurich	8050	8050		organic	2023-05-19 00:00:00+00
zurich	8050	8050		organic	2023-05-26 00:00:00+00
zurich	8050	8050		organic	2023-06-02 00:00:00+00
zurich	8050	8050		organic	2023-06-09 00:00:00+00
zurich	8050	8050		organic	2023-06-16 00:00:00+00
zurich	8050	8050		organic	2023-06-23 00:00:00+00
zurich	8050	8050		organic	2023-06-30 00:00:00+00
zurich	8050	8050		organic	2023-07-07 00:00:00+00
zurich	8050	8050		organic	2023-07-14 00:00:00+00
zurich	8050	8050		organic	2023-07-21 00:00:00+00
zurich	8050	8050		organic	2023-07-28 00:00:00+00
zurich	8050	8050		organic	2023-08-04 00:00:00+00
zurich	8050	8050		organic	2023-08-11 00:00:00+00
zurich	8050	8050		organic	2023-08-18 00:00:00+00
zurich	8050	8050		organic	2023-08-25 00:00:00+00
zurich	8050	8050		organic	2023-09-01 00:00:00+00
zurich	8050	8050		organic	2023-09-08 00:00:00+00
zurich	8050	8050		organic	2023-09-15 00:00:00+00
zurich	8050	8050		organic	2023-09-22 00:00:00+00
zurich	8050	8050		organic	2023-09-29 00:00:00+00
zurich	8050	8050		organic	2023-10-06 00:00:00+00
zurich	8050	8050		organic	2023-10-13 00:00:00+00
zurich	8050	8050		organic	2023-10-20 00:00:00+00
zurich	8050	8050		organic	2023-10-27 00:00:00+00
zurich	8050	8050		organic	2023-11-03 00:00:00+00
zurich	8050	8050		organic	2023-11-10 00:00:00+00
zurich	8050	8050		organic	2023-11-17 00:00:00+00
zurich	8050	8050		organic	2023-11-24 00:00:00+00
zurich	8050	8050		organic	2023-12-01 00:00:00+00
zurich	8050	8050		organic	2023-12-08 00:00:00+00
zurich	8050	8050		organic	2023-12-15 00:00:00+00
zurich	8050	8050		organic	2023-12-22 00:00:00+00
zurich	8050	8050		organic	2023-12-29 00:00:00+00
zurich	8051	8051		organic	2023-01-06 00:00:00+00
zurich	8051	8051		organic	2023-01-13 00:00:00+00
zurich	8051	8051		organic	2023-01-20 00:00:00+00
zurich	8051	8051		organic	2023-01-27 00:00:00+00
zurich	8051	8051		organic	2023-02-03 00:00:00+00
zurich	8051	8051		organic	2023-02-10 00:00:00+00
zurich	8051	8051		organic	2023-02-17 00:00:00+00
zurich	8051	8051		organic	2023-02-24 00:00:00+00
zurich	8051	8051		organic	2023-03-03 00:00:00+00
zurich	8051	8051		organic	2023-03-10 00:00:00+00
zurich	8051	8051		organic	2023-03-17 00:00:00+00
zurich	8051	8051		organic	2023-03-24 00:00:00+00
zurich	8051	8051		organic	2023-03-31 00:00:00+00
zurich	8051	8051		organic	2023-04-08 00:00:00+00
zurich	8051	8051		organic	2023-04-14 00:00:00+00
zurich	8051	8051		organic	2023-04-21 00:00:00+00
zurich	8051	8051		organic	2023-04-28 00:00:00+00
zurich	8051	8051		organic	2023-05-05 00:00:00+00
zurich	8051	8051		organic	2023-05-12 00:00:00+00
zurich	8051	8051		organic	2023-05-19 00:00:00+00
zurich	8051	8051		organic	2023-05-26 00:00:00+00
zurich	8051	8051		organic	2023-06-02 00:00:00+00
zurich	8051	8051		organic	2023-06-09 00:00:00+00
zurich	8051	8051		organic	2023-06-16 00:00:00+00
zurich	8051	8051		organic	2023-06-23 00:00:00+00
zurich	8051	8051		organic	2023-06-30 00:00:00+00
zurich	8051	8051		organic	2023-07-07 00:00:00+00
zurich	8051	8051		organic	2023-07-14 00:00:00+00
zurich	8051	8051		organic	2023-07-21 00:00:00+00
zurich	8051	8051		organic	2023-07-28 00:00:00+00
zurich	8051	8051		organic	2023-08-04 00:00:00+00
zurich	8051	8051		organic	2023-08-11 00:00:00+00
zurich	8051	8051		organic	2023-08-18 00:00:00+00
zurich	8051	8051		organic	2023-08-25 00:00:00+00
zurich	8051	8051		organic	2023-09-01 00:00:00+00
zurich	8051	8051		organic	2023-09-08 00:00:00+00
zurich	8051	8051		organic	2023-09-15 00:00:00+00
zurich	8051	8051		organic	2023-09-22 00:00:00+00
zurich	8051	8051		organic	2023-09-29 00:00:00+00
zurich	8051	8051		organic	2023-10-06 00:00:00+00
zurich	8051	8051		organic	2023-10-13 00:00:00+00
zurich	8051	8051		organic	2023-10-20 00:00:00+00
zurich	8051	8051		organic	2023-10-27 00:00:00+00
zurich	8051	8051		organic	2023-11-03 00:00:00+00
zurich	8051	8051		organic	2023-11-10 00:00:00+00
zurich	8051	8051		organic	2023-11-17 00:00:00+00
zurich	8051	8051		organic	2023-11-24 00:00:00+00
zurich	8051	8051		organic	2023-12-01 00:00:00+00
zurich	8051	8051		organic	2023-12-08 00:00:00+00
zurich	8051	8051		organic	2023-12-15 00:00:00+00
zurich	8051	8051		organic	2023-12-22 00:00:00+00
zurich	8051	8051		organic	2023-12-29 00:00:00+00
zurich	8052	8052		organic	2023-01-06 00:00:00+00
zurich	8052	8052		organic	2023-01-13 00:00:00+00
zurich	8052	8052		organic	2023-01-20 00:00:00+00
zurich	8052	8052		organic	2023-01-27 00:00:00+00
zurich	8052	8052		organic	2023-02-03 00:00:00+00
zurich	8052	8052		organic	2023-02-10 00:00:00+00
zurich	8052	8052		organic	2023-02-17 00:00:00+00
zurich	8052	8052		organic	2023-02-24 00:00:00+00
zurich	8052	8052		organic	2023-03-03 00:00:00+00
zurich	8052	8052		organic	2023-03-10 00:00:00+00
zurich	8052	8052		organic	2023-03-17 00:00:00+00
zurich	8052	8052		organic	2023-03-24 00:00:00+00
zurich	8052	8052		organic	2023-03-31 00:00:00+00
zurich	8052	8052		organic	2023-04-08 00:00:00+00
zurich	8052	8052		organic	2023-04-14 00:00:00+00
zurich	8052	8052		organic	2023-04-21 00:00:00+00
zurich	8052	8052		organic	2023-04-28 00:00:00+00
zurich	8052	8052		organic	2023-05-05 00:00:00+00
zurich	8052	8052		organic	2023-05-12 00:00:00+00
zurich	8052	8052		organic	2023-05-19 00:00:00+00
zurich	8052	8052		organic	2023-05-26 00:00:00+00
zurich	8052	8052		organic	2023-06-02 00:00:00+00
zurich	8052	8052		organic	2023-06-09 00:00:00+00
zurich	8052	8052		organic	2023-06-16 00:00:00+00
zurich	8052	8052		organic	2023-06-23 00:00:00+00
zurich	8052	8052		organic	2023-06-30 00:00:00+00
zurich	8052	8052		organic	2023-07-07 00:00:00+00
zurich	8052	8052		organic	2023-07-14 00:00:00+00
zurich	8052	8052		organic	2023-07-21 00:00:00+00
zurich	8052	8052		organic	2023-07-28 00:00:00+00
zurich	8052	8052		organic	2023-08-04 00:00:00+00
zurich	8052	8052		organic	2023-08-11 00:00:00+00
zurich	8052	8052		organic	2023-08-18 00:00:00+00
zurich	8052	8052		organic	2023-08-25 00:00:00+00
zurich	8052	8052		organic	2023-09-01 00:00:00+00
zurich	8052	8052		organic	2023-09-08 00:00:00+00
zurich	8052	8052		organic	2023-09-15 00:00:00+00
zurich	8052	8052		organic	2023-09-22 00:00:00+00
zurich	8052	8052		organic	2023-09-29 00:00:00+00
zurich	8052	8052		organic	2023-10-06 00:00:00+00
zurich	8052	8052		organic	2023-10-13 00:00:00+00
zurich	8052	8052		organic	2023-10-20 00:00:00+00
zurich	8052	8052		organic	2023-10-27 00:00:00+00
zurich	8052	8052		organic	2023-11-03 00:00:00+00
zurich	8052	8052		organic	2023-11-10 00:00:00+00
zurich	8052	8052		organic	2023-11-17 00:00:00+00
zurich	8052	8052		organic	2023-11-24 00:00:00+00
zurich	8052	8052		organic	2023-12-01 00:00:00+00
zurich	8052	8052		organic	2023-12-08 00:00:00+00
zurich	8052	8052		organic	2023-12-15 00:00:00+00
zurich	8052	8052		organic	2023-12-22 00:00:00+00
zurich	8052	8052		organic	2023-12-29 00:00:00+00
zurich	8053	8053		organic	2023-01-09 00:00:00+00
zurich	8053	8053		organic	2023-01-16 00:00:00+00
zurich	8053	8053		organic	2023-01-23 00:00:00+00
zurich	8053	8053		organic	2023-01-30 00:00:00+00
zurich	8053	8053		organic	2023-02-06 00:00:00+00
zurich	8053	8053		organic	2023-02-13 00:00:00+00
zurich	8053	8053		organic	2023-02-20 00:00:00+00
zurich	8053	8053		organic	2023-02-27 00:00:00+00
zurich	8053	8053		organic	2023-03-06 00:00:00+00
zurich	8053	8053		organic	2023-03-13 00:00:00+00
zurich	8053	8053		organic	2023-03-20 00:00:00+00
zurich	8053	8053		organic	2023-03-27 00:00:00+00
zurich	8053	8053		organic	2023-04-03 00:00:00+00
zurich	8053	8053		organic	2023-04-12 00:00:00+00
zurich	8053	8053		organic	2023-04-17 00:00:00+00
zurich	8053	8053		organic	2023-04-24 00:00:00+00
zurich	8053	8053		organic	2023-04-29 00:00:00+00
zurich	8053	8053		organic	2023-05-08 00:00:00+00
zurich	8053	8053		organic	2023-05-15 00:00:00+00
zurich	8053	8053		organic	2023-05-22 00:00:00+00
zurich	8053	8053		organic	2023-05-27 00:00:00+00
zurich	8053	8053		organic	2023-06-05 00:00:00+00
zurich	8053	8053		organic	2023-06-12 00:00:00+00
zurich	8053	8053		organic	2023-06-19 00:00:00+00
zurich	8053	8053		organic	2023-06-26 00:00:00+00
zurich	8053	8053		organic	2023-07-03 00:00:00+00
zurich	8053	8053		organic	2023-07-10 00:00:00+00
zurich	8053	8053		organic	2023-07-17 00:00:00+00
zurich	8053	8053		organic	2023-07-24 00:00:00+00
zurich	8053	8053		organic	2023-07-31 00:00:00+00
zurich	8053	8053		organic	2023-08-07 00:00:00+00
zurich	8053	8053		organic	2023-08-14 00:00:00+00
zurich	8053	8053		organic	2023-08-21 00:00:00+00
zurich	8053	8053		organic	2023-08-28 00:00:00+00
zurich	8053	8053		organic	2023-09-04 00:00:00+00
zurich	8053	8053		organic	2023-09-11 00:00:00+00
zurich	8053	8053		organic	2023-09-18 00:00:00+00
zurich	8053	8053		organic	2023-09-25 00:00:00+00
zurich	8053	8053		organic	2023-10-02 00:00:00+00
zurich	8053	8053		organic	2023-10-09 00:00:00+00
zurich	8053	8053		organic	2023-10-16 00:00:00+00
zurich	8053	8053		organic	2023-10-23 00:00:00+00
zurich	8053	8053		organic	2023-10-30 00:00:00+00
zurich	8053	8053		organic	2023-11-06 00:00:00+00
zurich	8053	8053		organic	2023-11-13 00:00:00+00
zurich	8053	8053		organic	2023-11-20 00:00:00+00
zurich	8053	8053		organic	2023-11-27 00:00:00+00
zurich	8053	8053		organic	2023-12-04 00:00:00+00
zurich	8053	8053		organic	2023-12-11 00:00:00+00
zurich	8053	8053		organic	2023-12-18 00:00:00+00
zurich	8053	8053		organic	2023-12-23 00:00:00+00
zurich	8053	8053		organic	2023-12-30 00:00:00+00
zurich	8055	8055		organic	2023-01-04 00:00:00+00
zurich	8055	8055		organic	2023-01-11 00:00:00+00
zurich	8055	8055		organic	2023-01-18 00:00:00+00
zurich	8055	8055		organic	2023-01-25 00:00:00+00
zurich	8055	8055		organic	2023-02-01 00:00:00+00
zurich	8055	8055		organic	2023-02-08 00:00:00+00
zurich	8055	8055		organic	2023-02-15 00:00:00+00
zurich	8055	8055		organic	2023-02-22 00:00:00+00
zurich	8055	8055		organic	2023-03-01 00:00:00+00
zurich	8055	8055		organic	2023-03-08 00:00:00+00
zurich	8055	8055		organic	2023-03-15 00:00:00+00
zurich	8055	8055		organic	2023-03-22 00:00:00+00
zurich	8055	8055		organic	2023-03-29 00:00:00+00
zurich	8055	8055		organic	2023-04-05 00:00:00+00
zurich	8055	8055		organic	2023-04-12 00:00:00+00
zurich	8055	8055		organic	2023-04-19 00:00:00+00
zurich	8055	8055		organic	2023-04-26 00:00:00+00
zurich	8055	8055		organic	2023-05-03 00:00:00+00
zurich	8055	8055		organic	2023-05-10 00:00:00+00
zurich	8055	8055		organic	2023-05-17 00:00:00+00
zurich	8055	8055		organic	2023-05-24 00:00:00+00
zurich	8055	8055		organic	2023-05-31 00:00:00+00
zurich	8055	8055		organic	2023-06-07 00:00:00+00
zurich	8055	8055		organic	2023-06-14 00:00:00+00
zurich	8055	8055		organic	2023-06-21 00:00:00+00
zurich	8055	8055		organic	2023-06-28 00:00:00+00
zurich	8055	8055		organic	2023-07-05 00:00:00+00
zurich	8055	8055		organic	2023-07-12 00:00:00+00
zurich	8055	8055		organic	2023-07-19 00:00:00+00
zurich	8055	8055		organic	2023-07-26 00:00:00+00
zurich	8055	8055		organic	2023-08-02 00:00:00+00
zurich	8055	8055		organic	2023-08-09 00:00:00+00
zurich	8055	8055		organic	2023-08-16 00:00:00+00
zurich	8055	8055		organic	2023-08-23 00:00:00+00
zurich	8055	8055		organic	2023-08-30 00:00:00+00
zurich	8055	8055		organic	2023-09-06 00:00:00+00
zurich	8055	8055		organic	2023-09-13 00:00:00+00
zurich	8055	8055		organic	2023-09-20 00:00:00+00
zurich	8055	8055		organic	2023-09-27 00:00:00+00
zurich	8055	8055		organic	2023-10-04 00:00:00+00
zurich	8055	8055		organic	2023-10-11 00:00:00+00
zurich	8055	8055		organic	2023-10-18 00:00:00+00
zurich	8055	8055		organic	2023-10-25 00:00:00+00
zurich	8055	8055		organic	2023-11-01 00:00:00+00
zurich	8055	8055		organic	2023-11-08 00:00:00+00
zurich	8055	8055		organic	2023-11-15 00:00:00+00
zurich	8055	8055		organic	2023-11-22 00:00:00+00
zurich	8055	8055		organic	2023-11-29 00:00:00+00
zurich	8055	8055		organic	2023-12-06 00:00:00+00
zurich	8055	8055		organic	2023-12-13 00:00:00+00
zurich	8055	8055		organic	2023-12-20 00:00:00+00
zurich	8055	8055		organic	2023-12-27 00:00:00+00
zurich	8057	8057		organic	2023-01-03 00:00:00+00
zurich	8057	8057		organic	2023-01-10 00:00:00+00
zurich	8057	8057		organic	2023-01-17 00:00:00+00
zurich	8057	8057		organic	2023-01-24 00:00:00+00
zurich	8057	8057		organic	2023-01-31 00:00:00+00
zurich	8057	8057		organic	2023-02-07 00:00:00+00
zurich	8057	8057		organic	2023-02-14 00:00:00+00
zurich	8057	8057		organic	2023-02-21 00:00:00+00
zurich	8057	8057		organic	2023-02-28 00:00:00+00
zurich	8057	8057		organic	2023-03-07 00:00:00+00
zurich	8057	8057		organic	2023-03-14 00:00:00+00
zurich	8057	8057		organic	2023-03-21 00:00:00+00
zurich	8057	8057		organic	2023-03-28 00:00:00+00
zurich	8057	8057		organic	2023-04-04 00:00:00+00
zurich	8057	8057		organic	2023-04-11 00:00:00+00
zurich	8057	8057		organic	2023-04-18 00:00:00+00
zurich	8057	8057		organic	2023-04-25 00:00:00+00
zurich	8057	8057		organic	2023-05-02 00:00:00+00
zurich	8057	8057		organic	2023-05-09 00:00:00+00
zurich	8057	8057		organic	2023-05-16 00:00:00+00
zurich	8057	8057		organic	2023-05-23 00:00:00+00
zurich	8057	8057		organic	2023-05-30 00:00:00+00
zurich	8057	8057		organic	2023-06-06 00:00:00+00
zurich	8057	8057		organic	2023-06-13 00:00:00+00
zurich	8057	8057		organic	2023-06-20 00:00:00+00
zurich	8057	8057		organic	2023-06-27 00:00:00+00
zurich	8057	8057		organic	2023-07-04 00:00:00+00
zurich	8057	8057		organic	2023-07-11 00:00:00+00
zurich	8057	8057		organic	2023-07-18 00:00:00+00
zurich	8057	8057		organic	2023-07-25 00:00:00+00
zurich	8057	8057		organic	2023-07-29 00:00:00+00
zurich	8057	8057		organic	2023-08-08 00:00:00+00
zurich	8057	8057		organic	2023-08-15 00:00:00+00
zurich	8057	8057		organic	2023-08-22 00:00:00+00
zurich	8057	8057		organic	2023-08-29 00:00:00+00
zurich	8057	8057		organic	2023-09-05 00:00:00+00
zurich	8057	8057		organic	2023-09-12 00:00:00+00
zurich	8057	8057		organic	2023-09-19 00:00:00+00
zurich	8057	8057		organic	2023-09-26 00:00:00+00
zurich	8057	8057		organic	2023-10-03 00:00:00+00
zurich	8057	8057		organic	2023-10-10 00:00:00+00
zurich	8057	8057		organic	2023-10-17 00:00:00+00
zurich	8057	8057		organic	2023-10-24 00:00:00+00
zurich	8057	8057		organic	2023-10-31 00:00:00+00
zurich	8057	8057		organic	2023-11-07 00:00:00+00
zurich	8057	8057		organic	2023-11-14 00:00:00+00
zurich	8057	8057		organic	2023-11-21 00:00:00+00
zurich	8057	8057		organic	2023-11-28 00:00:00+00
zurich	8057	8057		organic	2023-12-05 00:00:00+00
zurich	8057	8057		organic	2023-12-12 00:00:00+00
zurich	8057	8057		organic	2023-12-19 00:00:00+00
zurich	8057	8057		organic	2023-12-23 00:00:00+00
zurich	8057	8057		organic	2023-12-30 00:00:00+00
zurich	8064	8064		organic	2023-01-05 00:00:00+00
zurich	8064	8064		organic	2023-01-12 00:00:00+00
zurich	8064	8064		organic	2023-01-19 00:00:00+00
zurich	8064	8064		organic	2023-01-26 00:00:00+00
zurich	8064	8064		organic	2023-02-02 00:00:00+00
zurich	8064	8064		organic	2023-02-09 00:00:00+00
zurich	8064	8064		organic	2023-02-16 00:00:00+00
zurich	8064	8064		organic	2023-02-23 00:00:00+00
zurich	8064	8064		organic	2023-03-02 00:00:00+00
zurich	8064	8064		organic	2023-03-09 00:00:00+00
zurich	8064	8064		organic	2023-03-16 00:00:00+00
zurich	8064	8064		organic	2023-03-23 00:00:00+00
zurich	8064	8064		organic	2023-03-30 00:00:00+00
zurich	8064	8064		organic	2023-04-06 00:00:00+00
zurich	8064	8064		organic	2023-04-13 00:00:00+00
zurich	8064	8064		organic	2023-04-20 00:00:00+00
zurich	8064	8064		organic	2023-04-27 00:00:00+00
zurich	8064	8064		organic	2023-05-04 00:00:00+00
zurich	8064	8064		organic	2023-05-11 00:00:00+00
zurich	8064	8064		organic	2023-05-20 00:00:00+00
zurich	8064	8064		organic	2023-05-25 00:00:00+00
zurich	8064	8064		organic	2023-06-01 00:00:00+00
zurich	8064	8064		organic	2023-06-08 00:00:00+00
zurich	8064	8064		organic	2023-06-15 00:00:00+00
zurich	8064	8064		organic	2023-06-22 00:00:00+00
zurich	8064	8064		organic	2023-06-29 00:00:00+00
zurich	8064	8064		organic	2023-07-06 00:00:00+00
zurich	8064	8064		organic	2023-07-13 00:00:00+00
zurich	8064	8064		organic	2023-07-20 00:00:00+00
zurich	8064	8064		organic	2023-07-27 00:00:00+00
zurich	8064	8064		organic	2023-08-03 00:00:00+00
zurich	8064	8064		organic	2023-08-10 00:00:00+00
zurich	8064	8064		organic	2023-08-17 00:00:00+00
zurich	8064	8064		organic	2023-08-24 00:00:00+00
zurich	8064	8064		organic	2023-08-31 00:00:00+00
zurich	8064	8064		organic	2023-09-07 00:00:00+00
zurich	8064	8064		organic	2023-09-14 00:00:00+00
zurich	8064	8064		organic	2023-09-21 00:00:00+00
zurich	8064	8064		organic	2023-09-28 00:00:00+00
zurich	8064	8064		organic	2023-10-05 00:00:00+00
zurich	8064	8064		organic	2023-10-12 00:00:00+00
zurich	8064	8064		organic	2023-10-19 00:00:00+00
zurich	8064	8064		organic	2023-10-26 00:00:00+00
zurich	8064	8064		organic	2023-11-02 00:00:00+00
zurich	8064	8064		organic	2023-11-09 00:00:00+00
zurich	8064	8064		organic	2023-11-16 00:00:00+00
zurich	8064	8064		organic	2023-11-23 00:00:00+00
zurich	8064	8064		organic	2023-11-30 00:00:00+00
zurich	8064	8064		organic	2023-12-07 00:00:00+00
zurich	8064	8064		organic	2023-12-14 00:00:00+00
zurich	8064	8064		organic	2023-12-21 00:00:00+00
zurich	8064	8064		organic	2023-12-28 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-01-09 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-02-06 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-03-06 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-04-03 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-06-26 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-08-21 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-09-18 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-10-16 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-11-13 00:00:00+00
zurich	8001	8001	Burgwies	cargotram	2023-12-11 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-01-07 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-02-04 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-03-04 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-04-01 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-04-29 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-05-27 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-06-24 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-08-19 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-09-23 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-10-21 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-11-18 00:00:00+00
zurich	8001	8001	Hardturm	cargotram	2023-12-16 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-01-13 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-02-10 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-03-10 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-05-05 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-06-02 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-06-30 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-08-25 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-09-15 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-10-13 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-11-10 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	cargotram	2023-12-08 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-01-30 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-02-27 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-03-27 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-04-24 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-05-22 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-06-19 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-08-14 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-09-11 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-10-09 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-11-06 00:00:00+00
zurich	8002	8002	Wollishoferplatz	cargotram	2023-12-04 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-01-03 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-01-31 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-02-28 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-03-28 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-04-25 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-05-23 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-06-20 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-08-15 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-09-12 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-10-10 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-11-07 00:00:00+00
zurich	8003	8003	Letzigrund	cargotram	2023-12-05 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-01-13 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-02-10 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-03-10 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-05-05 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-06-02 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-06-30 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-08-25 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-09-15 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-10-13 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-11-10 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	cargotram	2023-12-08 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-01-07 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-02-04 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-03-04 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-04-01 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-04-29 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-05-27 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-06-24 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-08-19 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-09-23 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-10-21 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-11-18 00:00:00+00
zurich	8004	8004	Hardturm	cargotram	2023-12-16 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-01-03 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-01-31 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-02-28 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-03-28 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-04-25 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-05-23 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-06-20 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-08-15 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-09-12 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-10-10 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-11-07 00:00:00+00
zurich	8004	8004	Letzigrund	cargotram	2023-12-05 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-01-07 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-02-04 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-03-04 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-04-01 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-04-29 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-05-27 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-06-24 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-08-19 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-09-23 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-10-21 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-11-18 00:00:00+00
zurich	8005	8005	Hardturm	cargotram	2023-12-16 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-01-11 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-02-08 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-03-08 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-04-05 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-05-03 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-05-31 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-06-28 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-08-23 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-09-20 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-10-18 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-11-15 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	cargotram	2023-12-13 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-01-09 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-02-06 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-03-06 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-04-03 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-06-26 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-08-21 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-09-18 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-10-16 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-11-13 00:00:00+00
zurich	8008	8008	Burgwies	cargotram	2023-12-11 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-01-09 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-02-06 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-03-06 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-04-03 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-06-26 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-08-21 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-09-18 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-10-16 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-11-13 00:00:00+00
zurich	8032	8032	Burgwies	cargotram	2023-12-11 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-01-07 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-02-04 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-03-04 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-04-01 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-04-29 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-05-27 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-06-24 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-08-19 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-09-23 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-10-21 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-11-18 00:00:00+00
zurich	8037	8037	Hardturm	cargotram	2023-12-16 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-01-30 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-02-27 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-03-27 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-04-24 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-05-22 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-06-19 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-08-14 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-09-11 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-10-09 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-11-06 00:00:00+00
zurich	8038	8038	Wollishoferplatz	cargotram	2023-12-04 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-01-13 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-02-10 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-03-10 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-05-05 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-06-02 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-06-30 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-08-25 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-09-15 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-10-13 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-11-10 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	cargotram	2023-12-08 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-01-30 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-02-27 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-03-27 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-04-24 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-05-22 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-06-19 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-08-14 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-09-11 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-10-09 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-11-06 00:00:00+00
zurich	8041	8041	Wollishoferplatz	cargotram	2023-12-04 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-01-13 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-02-10 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-03-10 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-05-05 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-06-02 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-06-30 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-08-25 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-09-15 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-10-13 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-11-10 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	cargotram	2023-12-08 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-01-12 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-02-09 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-03-09 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-04-06 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-05-04 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-06-01 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-06-29 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-08-24 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-09-21 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-10-19 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-11-16 00:00:00+00
zurich	8046	8046	Seebach	cargotram	2023-12-14 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-01-10 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-02-07 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-03-07 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-04-04 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-05-02 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-05-30 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-06-27 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-08-22 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-09-19 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-10-17 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-11-14 00:00:00+00
zurich	8047	8047	Albisrieden	cargotram	2023-12-12 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-01-03 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-01-31 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-02-28 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-03-28 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-04-25 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-05-23 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-06-20 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-08-15 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-09-12 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-10-10 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-11-07 00:00:00+00
zurich	8047	8047	Letzigrund	cargotram	2023-12-05 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-01-10 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-02-07 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-03-07 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-04-04 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-05-02 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-05-30 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-06-27 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-08-22 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-09-19 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-10-17 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-11-14 00:00:00+00
zurich	8048	8048	Albisrieden	cargotram	2023-12-12 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-01-03 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-01-31 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-02-28 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-03-28 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-04-25 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-05-23 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-06-20 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-08-15 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-09-12 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-10-10 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-11-07 00:00:00+00
zurich	8048	8048	Letzigrund	cargotram	2023-12-05 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-01-06 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-02-03 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-03-03 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-03-31 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-04-28 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-05-26 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-06-23 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-08-18 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-09-22 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-10-20 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-11-17 00:00:00+00
zurich	8049	8049	Wartau	cargotram	2023-12-15 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-01-12 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-02-09 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-03-09 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-04-06 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-05-04 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-06-01 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-06-29 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-08-24 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-09-21 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-10-19 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-11-16 00:00:00+00
zurich	8050	8050	Seebach	cargotram	2023-12-14 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-01-04 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-02-01 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-03-01 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-03-29 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-04-26 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-05-24 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-06-21 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-08-16 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-09-13 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-10-11 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-11-08 00:00:00+00
zurich	8051	8051	Hirzenbach	cargotram	2023-12-06 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-01-12 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-02-09 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-03-09 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-04-06 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-05-04 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-06-01 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-06-29 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-08-24 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-09-21 00:00:00+00
zurich	8001	8001		cardboard	2023-02-01 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-10-19 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-11-16 00:00:00+00
zurich	8052	8052	Seebach	cargotram	2023-12-14 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-01-09 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-02-06 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-03-06 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-04-03 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-06-26 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-08-21 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-09-18 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-10-16 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-11-13 00:00:00+00
zurich	8053	8053	Burgwies	cargotram	2023-12-11 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-01-10 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-02-07 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-03-07 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-04-04 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-05-02 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-05-30 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-06-27 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-08-22 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-09-19 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-10-17 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-11-14 00:00:00+00
zurich	8055	8055	Albisrieden	cargotram	2023-12-12 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-01-13 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-02-10 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-03-10 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-05-05 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-06-02 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-06-30 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-08-25 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-09-15 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-10-13 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-11-10 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	cargotram	2023-12-08 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-01-05 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-02-02 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-03-02 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-03-30 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-04-27 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-05-25 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-06-22 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-08-17 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-09-14 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-10-12 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-11-09 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	cargotram	2023-12-07 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-01-07 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-02-04 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-03-04 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-04-01 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-04-29 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-05-27 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-06-24 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-08-19 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-09-23 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-10-21 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-11-18 00:00:00+00
zurich	8064	8064	Hardturm	cargotram	2023-12-16 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-01-06 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-02-03 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-03-03 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-03-31 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-04-28 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-05-26 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-06-23 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-08-18 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-09-22 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-10-20 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-11-17 00:00:00+00
zurich	8064	8064	Wartau	cargotram	2023-12-15 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-01-23 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-02-20 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-03-20 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-04-17 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-05-15 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-06-12 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-07-10 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-09-04 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-10-02 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-10-30 00:00:00+00
zurich	8001	8001	Burgwies	etram	2023-11-27 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-01-21 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-02-18 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-03-18 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-04-15 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-05-13 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-06-10 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-07-08 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-09-09 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-10-07 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-11-04 00:00:00+00
zurich	8001	8001	Hardturm	etram	2023-12-02 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8001	8001		cardboard	2023-02-15 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8001	8001	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-01-27 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-02-24 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-03-24 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-04-21 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-05-19 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-06-16 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-07-14 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-09-01 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-09-29 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-10-27 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-11-24 00:00:00+00
zurich	8002	8002	Strassenverkehrsamt	etram	2023-12-22 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-01-16 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-02-13 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-03-13 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-05-08 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-06-05 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-07-03 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-08-28 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-09-25 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-10-23 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-11-20 00:00:00+00
zurich	8002	8002	Wollishoferplatz	etram	2023-12-18 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-01-17 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-02-14 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-03-14 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-04-11 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-05-09 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-06-06 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-07-04 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-08-29 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-09-26 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-10-24 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-11-21 00:00:00+00
zurich	8003	8003	Letzigrund	etram	2023-12-19 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-01-27 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-02-24 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-03-24 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-04-21 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-05-19 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-06-16 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-07-14 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-09-01 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-09-29 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-10-27 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-11-24 00:00:00+00
zurich	8003	8003	Strassenverkehrsamt	etram	2023-12-22 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-01-21 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-02-18 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-03-18 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-04-15 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-05-13 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-06-10 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-07-08 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-09-09 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-10-07 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-11-04 00:00:00+00
zurich	8004	8004	Hardturm	etram	2023-12-02 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-01-17 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-02-14 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-03-14 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-04-11 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-05-09 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-06-06 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-07-04 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-08-29 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-09-26 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-10-24 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-11-21 00:00:00+00
zurich	8004	8004	Letzigrund	etram	2023-12-19 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-01-21 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-02-18 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-03-18 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-04-15 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-05-13 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-06-10 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-07-08 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-09-09 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-10-07 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-11-04 00:00:00+00
zurich	8005	8005	Hardturm	etram	2023-12-02 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8006	8006	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-01-25 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-02-22 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-03-22 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-04-19 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-05-17 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-06-14 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-07-12 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-09-06 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-10-04 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-11-01 00:00:00+00
zurich	8008	8008	Bahnhof Tiefenbrunnen	etram	2023-11-29 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-01-23 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-02-20 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-03-20 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-04-17 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-05-15 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-06-12 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-07-10 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-09-04 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-10-02 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-10-30 00:00:00+00
zurich	8008	8008	Burgwies	etram	2023-11-27 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-01-23 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-02-20 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-03-20 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-04-17 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-05-15 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-06-12 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-07-10 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-09-04 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-10-02 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-10-30 00:00:00+00
zurich	8032	8032	Burgwies	etram	2023-11-27 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-01-21 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-02-18 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-03-18 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-04-15 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-05-13 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-06-10 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-07-08 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-09-09 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-10-07 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-11-04 00:00:00+00
zurich	8037	8037	Hardturm	etram	2023-12-02 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8037	8037	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-01-16 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-02-13 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-03-13 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-05-08 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-06-05 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-07-03 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-08-28 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-09-25 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-10-23 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-11-20 00:00:00+00
zurich	8038	8038	Wollishoferplatz	etram	2023-12-18 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-01-27 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-02-24 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-03-24 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-04-21 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-05-19 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-06-16 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-07-14 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-09-01 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-09-29 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-10-27 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-11-24 00:00:00+00
zurich	8041	8041	Strassenverkehrsamt	etram	2023-12-22 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-01-16 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-02-13 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-03-13 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-05-08 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-06-05 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-07-03 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-08-28 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-09-25 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-10-23 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-11-20 00:00:00+00
zurich	8041	8041	Wollishoferplatz	etram	2023-12-18 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8044	8044	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-01-27 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-02-24 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-03-24 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-04-21 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-05-19 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-06-16 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-07-14 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-09-01 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-09-29 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-10-27 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-11-24 00:00:00+00
zurich	8045	8045	Strassenverkehrsamt	etram	2023-12-22 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-01-26 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-02-23 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-03-23 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-04-20 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-06-15 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-07-13 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-09-07 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-10-05 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-11-02 00:00:00+00
zurich	8046	8046	Seebach	etram	2023-11-30 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8046	8046	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-01-24 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-02-21 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-03-21 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-04-18 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-05-16 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-06-13 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-07-11 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-09-05 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-10-03 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-10-31 00:00:00+00
zurich	8047	8047	Albisrieden	etram	2023-11-28 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-01-17 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-02-14 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-03-14 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-04-11 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-05-09 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-06-06 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-07-04 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-08-29 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-09-26 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-10-24 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-11-21 00:00:00+00
zurich	8047	8047	Letzigrund	etram	2023-12-19 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-01-24 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-02-21 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-03-21 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-04-18 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-05-16 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-06-13 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-07-11 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-09-05 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-10-03 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-10-31 00:00:00+00
zurich	8048	8048	Albisrieden	etram	2023-11-28 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-01-17 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-02-14 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-03-14 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-04-11 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-05-09 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-06-06 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-07-04 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-08-29 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-09-26 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-10-24 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-11-21 00:00:00+00
zurich	8048	8048	Letzigrund	etram	2023-12-19 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-01-20 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-02-17 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-03-17 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-04-14 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-05-12 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-06-09 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-07-07 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-09-08 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-10-06 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-11-03 00:00:00+00
zurich	8049	8049	Wartau	etram	2023-12-01 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-01-26 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-02-23 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-03-23 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-04-20 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-06-15 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-07-13 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-09-07 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-10-05 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-11-02 00:00:00+00
zurich	8050	8050	Seebach	etram	2023-11-30 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8050	8050	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-01-18 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-02-15 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-03-15 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-04-12 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-05-10 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-06-07 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-07-05 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-08-30 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-09-27 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-10-25 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-11-22 00:00:00+00
zurich	8051	8051	Hirzenbach	etram	2023-12-20 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8051	8051	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-01-26 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-02-23 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-03-23 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-04-20 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-06-15 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-07-13 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-09-07 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-10-05 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-11-02 00:00:00+00
zurich	8052	8052	Seebach	etram	2023-11-30 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-01-23 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-02-20 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-03-20 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-04-17 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-05-15 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-06-12 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-07-10 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-09-04 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-10-02 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-10-30 00:00:00+00
zurich	8053	8053	Burgwies	etram	2023-11-27 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-01-24 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-02-21 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-03-21 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-04-18 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-05-16 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-06-13 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-07-11 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-09-05 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-10-03 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-10-31 00:00:00+00
zurich	8055	8055	Albisrieden	etram	2023-11-28 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-01-27 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-02-24 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-03-24 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-04-21 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-05-19 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-06-16 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-07-14 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-09-01 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-09-29 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-10-27 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-11-24 00:00:00+00
zurich	8055	8055	Strassenverkehrsamt	etram	2023-12-22 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-01-19 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-02-16 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-03-16 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-04-13 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-05-11 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-06-08 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-07-06 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-08-31 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-09-28 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-10-26 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-11-23 00:00:00+00
zurich	8057	8057	Tramdepot Universität Irchel	etram	2023-12-21 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-01-21 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-02-18 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-03-18 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-04-15 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-05-13 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-06-10 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-07-08 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-09-09 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-10-07 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-11-04 00:00:00+00
zurich	8064	8064	Hardturm	etram	2023-12-02 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-01-20 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-02-17 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-03-17 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-04-14 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-05-12 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-06-09 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-07-07 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-09-08 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-10-06 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-11-03 00:00:00+00
zurich	8064	8064	Wartau	etram	2023-12-01 00:00:00+00
zurich	8001	8001		cardboard	2023-01-04 00:00:00+00
zurich	8001	8001		cardboard	2023-01-18 00:00:00+00
zurich	8001	8001		cardboard	2023-03-01 00:00:00+00
zurich	8001	8001		cardboard	2023-03-15 00:00:00+00
zurich	8001	8001		cardboard	2023-03-29 00:00:00+00
zurich	8001	8001		cardboard	2023-04-12 00:00:00+00
zurich	8001	8001		cardboard	2023-04-26 00:00:00+00
zurich	8001	8001		cardboard	2023-05-10 00:00:00+00
zurich	8001	8001		cardboard	2023-05-24 00:00:00+00
zurich	8001	8001		cardboard	2023-06-07 00:00:00+00
zurich	8001	8001		cardboard	2023-06-21 00:00:00+00
zurich	8001	8001		cardboard	2023-07-05 00:00:00+00
zurich	8001	8001		cardboard	2023-07-19 00:00:00+00
zurich	8001	8001		cardboard	2023-08-02 00:00:00+00
zurich	8001	8001		cardboard	2023-08-16 00:00:00+00
zurich	8001	8001		cardboard	2023-08-30 00:00:00+00
zurich	8001	8001		cardboard	2023-09-13 00:00:00+00
zurich	8001	8001		cardboard	2023-09-27 00:00:00+00
zurich	8001	8001		cardboard	2023-10-11 00:00:00+00
zurich	8001	8001		cardboard	2023-10-25 00:00:00+00
zurich	8001	8001		cardboard	2023-11-08 00:00:00+00
zurich	8001	8001		cardboard	2023-11-22 00:00:00+00
zurich	8001	8001		cardboard	2023-12-06 00:00:00+00
zurich	8001	8001		cardboard	2023-12-20 00:00:00+00
zurich	8002	8002		cardboard	2023-01-16 00:00:00+00
zurich	8002	8002		cardboard	2023-01-30 00:00:00+00
zurich	8002	8002		cardboard	2023-02-13 00:00:00+00
zurich	8002	8002		cardboard	2023-02-27 00:00:00+00
zurich	8002	8002		cardboard	2023-03-13 00:00:00+00
zurich	8002	8002		cardboard	2023-03-27 00:00:00+00
zurich	8002	8002		cardboard	2023-04-24 00:00:00+00
zurich	8002	8002		cardboard	2023-05-08 00:00:00+00
zurich	8002	8002		cardboard	2023-05-22 00:00:00+00
zurich	8002	8002		cardboard	2023-06-05 00:00:00+00
zurich	8002	8002		cardboard	2023-06-19 00:00:00+00
zurich	8002	8002		cardboard	2023-07-03 00:00:00+00
zurich	8002	8002		cardboard	2023-07-17 00:00:00+00
zurich	8002	8002		cardboard	2023-07-31 00:00:00+00
zurich	8002	8002		cardboard	2023-08-14 00:00:00+00
zurich	8002	8002		cardboard	2023-08-28 00:00:00+00
zurich	8002	8002		cardboard	2023-09-11 00:00:00+00
zurich	8002	8002		cardboard	2023-09-25 00:00:00+00
zurich	8002	8002		cardboard	2023-10-09 00:00:00+00
zurich	8002	8002		cardboard	2023-10-23 00:00:00+00
zurich	8002	8002		cardboard	2023-11-06 00:00:00+00
zurich	8002	8002		cardboard	2023-11-20 00:00:00+00
zurich	8002	8002		cardboard	2023-12-04 00:00:00+00
zurich	8002	8002		cardboard	2023-12-18 00:00:00+00
zurich	8003	8003		cardboard	2023-01-03 00:00:00+00
zurich	8003	8003		cardboard	2023-01-17 00:00:00+00
zurich	8003	8003		cardboard	2023-01-31 00:00:00+00
zurich	8003	8003		cardboard	2023-02-14 00:00:00+00
zurich	8003	8003		cardboard	2023-02-28 00:00:00+00
zurich	8003	8003		cardboard	2023-03-14 00:00:00+00
zurich	8003	8003		cardboard	2023-03-28 00:00:00+00
zurich	8003	8003		cardboard	2023-04-11 00:00:00+00
zurich	8003	8003		cardboard	2023-04-25 00:00:00+00
zurich	8003	8003		cardboard	2023-05-09 00:00:00+00
zurich	8003	8003		cardboard	2023-05-23 00:00:00+00
zurich	8003	8003		cardboard	2023-06-06 00:00:00+00
zurich	8003	8003		cardboard	2023-06-20 00:00:00+00
zurich	8003	8003		cardboard	2023-07-04 00:00:00+00
zurich	8003	8003		cardboard	2023-07-18 00:00:00+00
zurich	8003	8003		cardboard	2023-08-15 00:00:00+00
zurich	8003	8003		cardboard	2023-08-29 00:00:00+00
zurich	8003	8003		cardboard	2023-09-12 00:00:00+00
zurich	8003	8003		cardboard	2023-09-26 00:00:00+00
zurich	8003	8003		cardboard	2023-10-10 00:00:00+00
zurich	8003	8003		cardboard	2023-10-24 00:00:00+00
zurich	8003	8003		cardboard	2023-11-07 00:00:00+00
zurich	8003	8003		cardboard	2023-11-21 00:00:00+00
zurich	8003	8003		cardboard	2023-12-05 00:00:00+00
zurich	8003	8003		cardboard	2023-12-19 00:00:00+00
zurich	8004	8004		cardboard	2023-01-04 00:00:00+00
zurich	8004	8004		cardboard	2023-01-18 00:00:00+00
zurich	8004	8004		cardboard	2023-02-01 00:00:00+00
zurich	8004	8004		cardboard	2023-02-15 00:00:00+00
zurich	8004	8004		cardboard	2023-03-01 00:00:00+00
zurich	8004	8004		cardboard	2023-03-15 00:00:00+00
zurich	8004	8004		cardboard	2023-03-29 00:00:00+00
zurich	8004	8004		cardboard	2023-04-12 00:00:00+00
zurich	8004	8004		cardboard	2023-04-26 00:00:00+00
zurich	8004	8004		cardboard	2023-05-10 00:00:00+00
zurich	8004	8004		cardboard	2023-05-24 00:00:00+00
zurich	8004	8004		cardboard	2023-06-07 00:00:00+00
zurich	8004	8004		cardboard	2023-06-21 00:00:00+00
zurich	8004	8004		cardboard	2023-07-05 00:00:00+00
zurich	8004	8004		cardboard	2023-07-19 00:00:00+00
zurich	8004	8004		cardboard	2023-08-02 00:00:00+00
zurich	8004	8004		cardboard	2023-08-16 00:00:00+00
zurich	8004	8004		cardboard	2023-08-30 00:00:00+00
zurich	8004	8004		cardboard	2023-09-13 00:00:00+00
zurich	8004	8004		cardboard	2023-09-27 00:00:00+00
zurich	8004	8004		cardboard	2023-10-11 00:00:00+00
zurich	8004	8004		cardboard	2023-10-25 00:00:00+00
zurich	8004	8004		cardboard	2023-11-08 00:00:00+00
zurich	8004	8004		cardboard	2023-11-22 00:00:00+00
zurich	8004	8004		cardboard	2023-12-06 00:00:00+00
zurich	8004	8004		cardboard	2023-12-20 00:00:00+00
zurich	8005	8005		cardboard	2023-01-06 00:00:00+00
zurich	8005	8005		cardboard	2023-01-20 00:00:00+00
zurich	8005	8005		cardboard	2023-02-03 00:00:00+00
zurich	8005	8005		cardboard	2023-02-17 00:00:00+00
zurich	8005	8005		cardboard	2023-03-03 00:00:00+00
zurich	8005	8005		cardboard	2023-03-17 00:00:00+00
zurich	8005	8005		cardboard	2023-03-31 00:00:00+00
zurich	8005	8005		cardboard	2023-04-14 00:00:00+00
zurich	8005	8005		cardboard	2023-04-28 00:00:00+00
zurich	8005	8005		cardboard	2023-05-12 00:00:00+00
zurich	8005	8005		cardboard	2023-05-26 00:00:00+00
zurich	8005	8005		cardboard	2023-06-09 00:00:00+00
zurich	8005	8005		cardboard	2023-06-23 00:00:00+00
zurich	8005	8005		cardboard	2023-07-07 00:00:00+00
zurich	8005	8005		cardboard	2023-07-21 00:00:00+00
zurich	8005	8005		cardboard	2023-08-04 00:00:00+00
zurich	8005	8005		cardboard	2023-08-18 00:00:00+00
zurich	8005	8005		cardboard	2023-09-01 00:00:00+00
zurich	8005	8005		cardboard	2023-09-15 00:00:00+00
zurich	8005	8005		cardboard	2023-09-29 00:00:00+00
zurich	8005	8005		cardboard	2023-10-13 00:00:00+00
zurich	8005	8005		cardboard	2023-10-27 00:00:00+00
zurich	8005	8005		cardboard	2023-11-10 00:00:00+00
zurich	8005	8005		cardboard	2023-11-24 00:00:00+00
zurich	8005	8005		cardboard	2023-12-08 00:00:00+00
zurich	8005	8005		cardboard	2023-12-22 00:00:00+00
zurich	8006	8006		cardboard	2023-01-11 00:00:00+00
zurich	8006	8006		cardboard	2023-01-25 00:00:00+00
zurich	8006	8006		cardboard	2023-02-08 00:00:00+00
zurich	8006	8006		cardboard	2023-02-22 00:00:00+00
zurich	8006	8006		cardboard	2023-03-08 00:00:00+00
zurich	8006	8006		cardboard	2023-03-22 00:00:00+00
zurich	8006	8006		cardboard	2023-04-05 00:00:00+00
zurich	8006	8006		cardboard	2023-04-19 00:00:00+00
zurich	8006	8006		cardboard	2023-05-03 00:00:00+00
zurich	8006	8006		cardboard	2023-05-17 00:00:00+00
zurich	8006	8006		cardboard	2023-05-31 00:00:00+00
zurich	8006	8006		cardboard	2023-06-14 00:00:00+00
zurich	8006	8006		cardboard	2023-06-28 00:00:00+00
zurich	8006	8006		cardboard	2023-07-12 00:00:00+00
zurich	8006	8006		cardboard	2023-07-26 00:00:00+00
zurich	8006	8006		cardboard	2023-08-09 00:00:00+00
zurich	8006	8006		cardboard	2023-08-23 00:00:00+00
zurich	8006	8006		cardboard	2023-09-06 00:00:00+00
zurich	8006	8006		cardboard	2023-09-20 00:00:00+00
zurich	8006	8006		cardboard	2023-10-04 00:00:00+00
zurich	8006	8006		cardboard	2023-10-18 00:00:00+00
zurich	8006	8006		cardboard	2023-11-01 00:00:00+00
zurich	8006	8006		cardboard	2023-11-15 00:00:00+00
zurich	8006	8006		cardboard	2023-11-29 00:00:00+00
zurich	8006	8006		cardboard	2023-12-13 00:00:00+00
zurich	8006	8006		cardboard	2023-12-27 00:00:00+00
zurich	8008	8008		cardboard	2023-01-10 00:00:00+00
zurich	8008	8008		cardboard	2023-01-24 00:00:00+00
zurich	8008	8008		cardboard	2023-02-07 00:00:00+00
zurich	8008	8008		cardboard	2023-02-21 00:00:00+00
zurich	8008	8008		cardboard	2023-03-07 00:00:00+00
zurich	8008	8008		cardboard	2023-03-21 00:00:00+00
zurich	8008	8008		cardboard	2023-04-04 00:00:00+00
zurich	8008	8008		cardboard	2023-04-18 00:00:00+00
zurich	8008	8008		cardboard	2023-05-02 00:00:00+00
zurich	8008	8008		cardboard	2023-05-16 00:00:00+00
zurich	8008	8008		cardboard	2023-05-30 00:00:00+00
zurich	8008	8008		cardboard	2023-06-13 00:00:00+00
zurich	8008	8008		cardboard	2023-06-27 00:00:00+00
zurich	8008	8008		cardboard	2023-07-11 00:00:00+00
zurich	8008	8008		cardboard	2023-07-25 00:00:00+00
zurich	8008	8008		cardboard	2023-08-08 00:00:00+00
zurich	8008	8008		cardboard	2023-08-22 00:00:00+00
zurich	8008	8008		cardboard	2023-09-05 00:00:00+00
zurich	8008	8008		cardboard	2023-09-19 00:00:00+00
zurich	8008	8008		cardboard	2023-10-03 00:00:00+00
zurich	8008	8008		cardboard	2023-10-17 00:00:00+00
zurich	8008	8008		cardboard	2023-10-31 00:00:00+00
zurich	8008	8008		cardboard	2023-11-14 00:00:00+00
zurich	8008	8008		cardboard	2023-11-28 00:00:00+00
zurich	8008	8008		cardboard	2023-12-12 00:00:00+00
zurich	8032	8032		cardboard	2023-01-10 00:00:00+00
zurich	8032	8032		cardboard	2023-01-24 00:00:00+00
zurich	8032	8032		cardboard	2023-02-07 00:00:00+00
zurich	8032	8032		cardboard	2023-02-21 00:00:00+00
zurich	8032	8032		cardboard	2023-03-07 00:00:00+00
zurich	8032	8032		cardboard	2023-03-21 00:00:00+00
zurich	8032	8032		cardboard	2023-04-04 00:00:00+00
zurich	8032	8032		cardboard	2023-04-18 00:00:00+00
zurich	8032	8032		cardboard	2023-05-02 00:00:00+00
zurich	8032	8032		cardboard	2023-05-16 00:00:00+00
zurich	8032	8032		cardboard	2023-05-30 00:00:00+00
zurich	8032	8032		cardboard	2023-06-13 00:00:00+00
zurich	8032	8032		cardboard	2023-06-27 00:00:00+00
zurich	8032	8032		cardboard	2023-07-11 00:00:00+00
zurich	8032	8032		cardboard	2023-07-25 00:00:00+00
zurich	8032	8032		cardboard	2023-08-08 00:00:00+00
zurich	8032	8032		cardboard	2023-08-22 00:00:00+00
zurich	8032	8032		cardboard	2023-09-05 00:00:00+00
zurich	8032	8032		cardboard	2023-09-19 00:00:00+00
zurich	8032	8032		cardboard	2023-10-03 00:00:00+00
zurich	8032	8032		cardboard	2023-10-17 00:00:00+00
zurich	8032	8032		cardboard	2023-10-31 00:00:00+00
zurich	8032	8032		cardboard	2023-11-14 00:00:00+00
zurich	8032	8032		cardboard	2023-11-28 00:00:00+00
zurich	8032	8032		cardboard	2023-12-12 00:00:00+00
zurich	8037	8037		cardboard	2023-01-13 00:00:00+00
zurich	8037	8037		cardboard	2023-01-27 00:00:00+00
zurich	8037	8037		cardboard	2023-02-10 00:00:00+00
zurich	8037	8037		cardboard	2023-02-24 00:00:00+00
zurich	8037	8037		cardboard	2023-03-10 00:00:00+00
zurich	8037	8037		cardboard	2023-03-24 00:00:00+00
zurich	8037	8037		cardboard	2023-04-21 00:00:00+00
zurich	8037	8037		cardboard	2023-05-05 00:00:00+00
zurich	8037	8037		cardboard	2023-05-19 00:00:00+00
zurich	8037	8037		cardboard	2023-06-02 00:00:00+00
zurich	8037	8037		cardboard	2023-06-16 00:00:00+00
zurich	8037	8037		cardboard	2023-06-30 00:00:00+00
zurich	8037	8037		cardboard	2023-07-14 00:00:00+00
zurich	8037	8037		cardboard	2023-07-28 00:00:00+00
zurich	8037	8037		cardboard	2023-08-11 00:00:00+00
zurich	8037	8037		cardboard	2023-08-25 00:00:00+00
zurich	8037	8037		cardboard	2023-09-08 00:00:00+00
zurich	8037	8037		cardboard	2023-09-22 00:00:00+00
zurich	8037	8037		cardboard	2023-10-06 00:00:00+00
zurich	8037	8037		cardboard	2023-10-20 00:00:00+00
zurich	8037	8037		cardboard	2023-11-03 00:00:00+00
zurich	8037	8037		cardboard	2023-11-17 00:00:00+00
zurich	8037	8037		cardboard	2023-12-01 00:00:00+00
zurich	8037	8037		cardboard	2023-12-15 00:00:00+00
zurich	8037	8037		cardboard	2023-12-29 00:00:00+00
zurich	8038	8038		cardboard	2023-01-16 00:00:00+00
zurich	8038	8038		cardboard	2023-01-30 00:00:00+00
zurich	8038	8038		cardboard	2023-02-13 00:00:00+00
zurich	8038	8038		cardboard	2023-02-27 00:00:00+00
zurich	8038	8038		cardboard	2023-03-13 00:00:00+00
zurich	8038	8038		cardboard	2023-03-27 00:00:00+00
zurich	8038	8038		cardboard	2023-04-24 00:00:00+00
zurich	8038	8038		cardboard	2023-05-08 00:00:00+00
zurich	8038	8038		cardboard	2023-05-22 00:00:00+00
zurich	8038	8038		cardboard	2023-06-05 00:00:00+00
zurich	8038	8038		cardboard	2023-06-19 00:00:00+00
zurich	8038	8038		cardboard	2023-07-03 00:00:00+00
zurich	8038	8038		cardboard	2023-07-17 00:00:00+00
zurich	8038	8038		cardboard	2023-07-31 00:00:00+00
zurich	8038	8038		cardboard	2023-08-14 00:00:00+00
zurich	8038	8038		cardboard	2023-08-28 00:00:00+00
zurich	8038	8038		cardboard	2023-09-11 00:00:00+00
zurich	8038	8038		cardboard	2023-09-25 00:00:00+00
zurich	8038	8038		cardboard	2023-10-09 00:00:00+00
zurich	8038	8038		cardboard	2023-10-23 00:00:00+00
zurich	8038	8038		cardboard	2023-11-06 00:00:00+00
zurich	8038	8038		cardboard	2023-11-20 00:00:00+00
zurich	8038	8038		cardboard	2023-12-04 00:00:00+00
zurich	8038	8038		cardboard	2023-12-18 00:00:00+00
zurich	8041	8041		cardboard	2023-01-16 00:00:00+00
zurich	8041	8041		cardboard	2023-01-30 00:00:00+00
zurich	8041	8041		cardboard	2023-02-13 00:00:00+00
zurich	8041	8041		cardboard	2023-02-27 00:00:00+00
zurich	8041	8041		cardboard	2023-03-13 00:00:00+00
zurich	8041	8041		cardboard	2023-03-27 00:00:00+00
zurich	8041	8041		cardboard	2023-04-24 00:00:00+00
zurich	8041	8041		cardboard	2023-05-08 00:00:00+00
zurich	8041	8041		cardboard	2023-05-22 00:00:00+00
zurich	8041	8041		cardboard	2023-06-05 00:00:00+00
zurich	8041	8041		cardboard	2023-06-19 00:00:00+00
zurich	8041	8041		cardboard	2023-07-03 00:00:00+00
zurich	8041	8041		cardboard	2023-07-17 00:00:00+00
zurich	8041	8041		cardboard	2023-07-31 00:00:00+00
zurich	8041	8041		cardboard	2023-08-14 00:00:00+00
zurich	8041	8041		cardboard	2023-08-28 00:00:00+00
zurich	8041	8041		cardboard	2023-09-11 00:00:00+00
zurich	8041	8041		cardboard	2023-09-25 00:00:00+00
zurich	8041	8041		cardboard	2023-10-09 00:00:00+00
zurich	8041	8041		cardboard	2023-10-23 00:00:00+00
zurich	8041	8041		cardboard	2023-11-06 00:00:00+00
zurich	8041	8041		cardboard	2023-11-20 00:00:00+00
zurich	8041	8041		cardboard	2023-12-04 00:00:00+00
zurich	8041	8041		cardboard	2023-12-18 00:00:00+00
zurich	8044	8044		cardboard	2023-01-09 00:00:00+00
zurich	8044	8044		cardboard	2023-01-23 00:00:00+00
zurich	8044	8044		cardboard	2023-02-06 00:00:00+00
zurich	8044	8044		cardboard	2023-02-20 00:00:00+00
zurich	8044	8044		cardboard	2023-03-06 00:00:00+00
zurich	8044	8044		cardboard	2023-03-20 00:00:00+00
zurich	8044	8044		cardboard	2023-04-03 00:00:00+00
zurich	8044	8044		cardboard	2023-04-17 00:00:00+00
zurich	8044	8044		cardboard	2023-05-15 00:00:00+00
zurich	8044	8044		cardboard	2023-06-12 00:00:00+00
zurich	8044	8044		cardboard	2023-06-26 00:00:00+00
zurich	8044	8044		cardboard	2023-07-10 00:00:00+00
zurich	8044	8044		cardboard	2023-07-24 00:00:00+00
zurich	8044	8044		cardboard	2023-08-07 00:00:00+00
zurich	8044	8044		cardboard	2023-08-21 00:00:00+00
zurich	8044	8044		cardboard	2023-09-04 00:00:00+00
zurich	8044	8044		cardboard	2023-09-18 00:00:00+00
zurich	8044	8044		cardboard	2023-10-02 00:00:00+00
zurich	8044	8044		cardboard	2023-10-16 00:00:00+00
zurich	8044	8044		cardboard	2023-10-30 00:00:00+00
zurich	8044	8044		cardboard	2023-11-13 00:00:00+00
zurich	8044	8044		cardboard	2023-11-27 00:00:00+00
zurich	8044	8044		cardboard	2023-12-11 00:00:00+00
zurich	8045	8045		cardboard	2023-01-03 00:00:00+00
zurich	8045	8045		cardboard	2023-01-17 00:00:00+00
zurich	8045	8045		cardboard	2023-01-31 00:00:00+00
zurich	8045	8045		cardboard	2023-02-14 00:00:00+00
zurich	8045	8045		cardboard	2023-02-28 00:00:00+00
zurich	8045	8045		cardboard	2023-03-14 00:00:00+00
zurich	8045	8045		cardboard	2023-03-28 00:00:00+00
zurich	8045	8045		cardboard	2023-04-11 00:00:00+00
zurich	8045	8045		cardboard	2023-04-25 00:00:00+00
zurich	8045	8045		cardboard	2023-05-09 00:00:00+00
zurich	8045	8045		cardboard	2023-05-23 00:00:00+00
zurich	8045	8045		cardboard	2023-06-06 00:00:00+00
zurich	8045	8045		cardboard	2023-06-20 00:00:00+00
zurich	8045	8045		cardboard	2023-07-04 00:00:00+00
zurich	8045	8045		cardboard	2023-07-18 00:00:00+00
zurich	8045	8045		cardboard	2023-08-15 00:00:00+00
zurich	8045	8045		cardboard	2023-08-29 00:00:00+00
zurich	8045	8045		cardboard	2023-09-12 00:00:00+00
zurich	8045	8045		cardboard	2023-09-26 00:00:00+00
zurich	8045	8045		cardboard	2023-10-10 00:00:00+00
zurich	8045	8045		cardboard	2023-10-24 00:00:00+00
zurich	8045	8045		cardboard	2023-11-07 00:00:00+00
zurich	8045	8045		cardboard	2023-11-21 00:00:00+00
zurich	8045	8045		cardboard	2023-12-05 00:00:00+00
zurich	8045	8045		cardboard	2023-12-19 00:00:00+00
zurich	8046	8046		cardboard	2023-01-13 00:00:00+00
zurich	8046	8046		cardboard	2023-01-27 00:00:00+00
zurich	8046	8046		cardboard	2023-02-10 00:00:00+00
zurich	8046	8046		cardboard	2023-02-24 00:00:00+00
zurich	8046	8046		cardboard	2023-03-10 00:00:00+00
zurich	8046	8046		cardboard	2023-03-24 00:00:00+00
zurich	8046	8046		cardboard	2023-04-21 00:00:00+00
zurich	8046	8046		cardboard	2023-05-05 00:00:00+00
zurich	8046	8046		cardboard	2023-05-19 00:00:00+00
zurich	8046	8046		cardboard	2023-06-02 00:00:00+00
zurich	8046	8046		cardboard	2023-06-16 00:00:00+00
zurich	8046	8046		cardboard	2023-06-30 00:00:00+00
zurich	8046	8046		cardboard	2023-07-14 00:00:00+00
zurich	8046	8046		cardboard	2023-07-28 00:00:00+00
zurich	8046	8046		cardboard	2023-08-11 00:00:00+00
zurich	8046	8046		cardboard	2023-08-25 00:00:00+00
zurich	8046	8046		cardboard	2023-09-08 00:00:00+00
zurich	8046	8046		cardboard	2023-09-22 00:00:00+00
zurich	8046	8046		cardboard	2023-10-06 00:00:00+00
zurich	8046	8046		cardboard	2023-10-20 00:00:00+00
zurich	8046	8046		cardboard	2023-11-03 00:00:00+00
zurich	8046	8046		cardboard	2023-11-17 00:00:00+00
zurich	8046	8046		cardboard	2023-12-01 00:00:00+00
zurich	8046	8046		cardboard	2023-12-15 00:00:00+00
zurich	8046	8046		cardboard	2023-12-29 00:00:00+00
zurich	8047	8047		cardboard	2023-01-05 00:00:00+00
zurich	8047	8047		cardboard	2023-01-19 00:00:00+00
zurich	8047	8047		cardboard	2023-02-02 00:00:00+00
zurich	8047	8047		cardboard	2023-02-16 00:00:00+00
zurich	8047	8047		cardboard	2023-03-02 00:00:00+00
zurich	8047	8047		cardboard	2023-03-16 00:00:00+00
zurich	8047	8047		cardboard	2023-03-30 00:00:00+00
zurich	8047	8047		cardboard	2023-04-13 00:00:00+00
zurich	8047	8047		cardboard	2023-04-27 00:00:00+00
zurich	8047	8047		cardboard	2023-05-11 00:00:00+00
zurich	8047	8047		cardboard	2023-05-25 00:00:00+00
zurich	8047	8047		cardboard	2023-06-08 00:00:00+00
zurich	8047	8047		cardboard	2023-06-22 00:00:00+00
zurich	8047	8047		cardboard	2023-07-06 00:00:00+00
zurich	8047	8047		cardboard	2023-07-20 00:00:00+00
zurich	8047	8047		cardboard	2023-08-03 00:00:00+00
zurich	8047	8047		cardboard	2023-08-17 00:00:00+00
zurich	8047	8047		cardboard	2023-08-31 00:00:00+00
zurich	8047	8047		cardboard	2023-09-14 00:00:00+00
zurich	8047	8047		cardboard	2023-09-28 00:00:00+00
zurich	8047	8047		cardboard	2023-10-12 00:00:00+00
zurich	8047	8047		cardboard	2023-10-26 00:00:00+00
zurich	8047	8047		cardboard	2023-11-09 00:00:00+00
zurich	8047	8047		cardboard	2023-11-23 00:00:00+00
zurich	8047	8047		cardboard	2023-12-07 00:00:00+00
zurich	8047	8047		cardboard	2023-12-21 00:00:00+00
zurich	8048	8048		cardboard	2023-01-05 00:00:00+00
zurich	8048	8048		cardboard	2023-01-19 00:00:00+00
zurich	8048	8048		cardboard	2023-02-02 00:00:00+00
zurich	8048	8048		cardboard	2023-02-16 00:00:00+00
zurich	8048	8048		cardboard	2023-03-02 00:00:00+00
zurich	8048	8048		cardboard	2023-03-16 00:00:00+00
zurich	8048	8048		cardboard	2023-03-30 00:00:00+00
zurich	8048	8048		cardboard	2023-04-13 00:00:00+00
zurich	8048	8048		cardboard	2023-04-27 00:00:00+00
zurich	8048	8048		cardboard	2023-05-11 00:00:00+00
zurich	8048	8048		cardboard	2023-05-25 00:00:00+00
zurich	8048	8048		cardboard	2023-06-08 00:00:00+00
zurich	8048	8048		cardboard	2023-06-22 00:00:00+00
zurich	8048	8048		cardboard	2023-07-06 00:00:00+00
zurich	8048	8048		cardboard	2023-07-20 00:00:00+00
zurich	8048	8048		cardboard	2023-08-03 00:00:00+00
zurich	8048	8048		cardboard	2023-08-17 00:00:00+00
zurich	8048	8048		cardboard	2023-08-31 00:00:00+00
zurich	8048	8048		cardboard	2023-09-14 00:00:00+00
zurich	8048	8048		cardboard	2023-09-28 00:00:00+00
zurich	8048	8048		cardboard	2023-10-12 00:00:00+00
zurich	8048	8048		cardboard	2023-10-26 00:00:00+00
zurich	8048	8048		cardboard	2023-11-09 00:00:00+00
zurich	8048	8048		cardboard	2023-11-23 00:00:00+00
zurich	8048	8048		cardboard	2023-12-07 00:00:00+00
zurich	8048	8048		cardboard	2023-12-21 00:00:00+00
zurich	8049	8049		cardboard	2023-01-06 00:00:00+00
zurich	8049	8049		cardboard	2023-01-20 00:00:00+00
zurich	8049	8049		cardboard	2023-02-03 00:00:00+00
zurich	8049	8049		cardboard	2023-02-17 00:00:00+00
zurich	8049	8049		cardboard	2023-03-03 00:00:00+00
zurich	8049	8049		cardboard	2023-03-17 00:00:00+00
zurich	8049	8049		cardboard	2023-03-31 00:00:00+00
zurich	8049	8049		cardboard	2023-04-14 00:00:00+00
zurich	8049	8049		cardboard	2023-04-28 00:00:00+00
zurich	8049	8049		cardboard	2023-05-12 00:00:00+00
zurich	8049	8049		cardboard	2023-05-26 00:00:00+00
zurich	8049	8049		cardboard	2023-06-09 00:00:00+00
zurich	8049	8049		cardboard	2023-06-23 00:00:00+00
zurich	8049	8049		cardboard	2023-07-07 00:00:00+00
zurich	8049	8049		cardboard	2023-07-21 00:00:00+00
zurich	8049	8049		cardboard	2023-08-04 00:00:00+00
zurich	8049	8049		cardboard	2023-08-18 00:00:00+00
zurich	8049	8049		cardboard	2023-09-01 00:00:00+00
zurich	8049	8049		cardboard	2023-09-15 00:00:00+00
zurich	8049	8049		cardboard	2023-09-29 00:00:00+00
zurich	8049	8049		cardboard	2023-10-13 00:00:00+00
zurich	8049	8049		cardboard	2023-10-27 00:00:00+00
zurich	8049	8049		cardboard	2023-11-10 00:00:00+00
zurich	8049	8049		cardboard	2023-11-24 00:00:00+00
zurich	8049	8049		cardboard	2023-12-08 00:00:00+00
zurich	8049	8049		cardboard	2023-12-22 00:00:00+00
zurich	8050	8050		cardboard	2023-01-12 00:00:00+00
zurich	8050	8050		cardboard	2023-01-26 00:00:00+00
zurich	8050	8050		cardboard	2023-02-09 00:00:00+00
zurich	8050	8050		cardboard	2023-02-23 00:00:00+00
zurich	8050	8050		cardboard	2023-03-09 00:00:00+00
zurich	8050	8050		cardboard	2023-03-23 00:00:00+00
zurich	8050	8050		cardboard	2023-04-06 00:00:00+00
zurich	8050	8050		cardboard	2023-04-20 00:00:00+00
zurich	8050	8050		cardboard	2023-05-04 00:00:00+00
zurich	8050	8050		cardboard	2023-06-01 00:00:00+00
zurich	8050	8050		cardboard	2023-06-15 00:00:00+00
zurich	8050	8050		cardboard	2023-06-29 00:00:00+00
zurich	8050	8050		cardboard	2023-07-13 00:00:00+00
zurich	8050	8050		cardboard	2023-07-27 00:00:00+00
zurich	8050	8050		cardboard	2023-08-10 00:00:00+00
zurich	8050	8050		cardboard	2023-08-24 00:00:00+00
zurich	8050	8050		cardboard	2023-09-07 00:00:00+00
zurich	8050	8050		cardboard	2023-09-21 00:00:00+00
zurich	8050	8050		cardboard	2023-10-05 00:00:00+00
zurich	8050	8050		cardboard	2023-10-19 00:00:00+00
zurich	8050	8050		cardboard	2023-11-02 00:00:00+00
zurich	8050	8050		cardboard	2023-11-16 00:00:00+00
zurich	8050	8050		cardboard	2023-11-30 00:00:00+00
zurich	8050	8050		cardboard	2023-12-14 00:00:00+00
zurich	8050	8050		cardboard	2023-12-28 00:00:00+00
zurich	8051	8051		cardboard	2023-01-09 00:00:00+00
zurich	8051	8051		cardboard	2023-01-23 00:00:00+00
zurich	8051	8051		cardboard	2023-02-06 00:00:00+00
zurich	8051	8051		cardboard	2023-02-20 00:00:00+00
zurich	8051	8051		cardboard	2023-03-06 00:00:00+00
zurich	8051	8051		cardboard	2023-03-20 00:00:00+00
zurich	8051	8051		cardboard	2023-04-03 00:00:00+00
zurich	8051	8051		cardboard	2023-04-17 00:00:00+00
zurich	8051	8051		cardboard	2023-05-15 00:00:00+00
zurich	8051	8051		cardboard	2023-06-12 00:00:00+00
zurich	8051	8051		cardboard	2023-06-26 00:00:00+00
zurich	8051	8051		cardboard	2023-07-10 00:00:00+00
zurich	8051	8051		cardboard	2023-07-24 00:00:00+00
zurich	8051	8051		cardboard	2023-08-07 00:00:00+00
zurich	8051	8051		cardboard	2023-08-21 00:00:00+00
zurich	8051	8051		cardboard	2023-09-04 00:00:00+00
zurich	8051	8051		cardboard	2023-09-18 00:00:00+00
zurich	8051	8051		cardboard	2023-10-02 00:00:00+00
zurich	8051	8051		cardboard	2023-10-16 00:00:00+00
zurich	8051	8051		cardboard	2023-10-30 00:00:00+00
zurich	8051	8051		cardboard	2023-11-13 00:00:00+00
zurich	8051	8051		cardboard	2023-11-27 00:00:00+00
zurich	8051	8051		cardboard	2023-12-11 00:00:00+00
zurich	8052	8052		cardboard	2023-01-12 00:00:00+00
zurich	8052	8052		cardboard	2023-01-26 00:00:00+00
zurich	8052	8052		cardboard	2023-02-09 00:00:00+00
zurich	8052	8052		cardboard	2023-02-23 00:00:00+00
zurich	8052	8052		cardboard	2023-03-09 00:00:00+00
zurich	8052	8052		cardboard	2023-03-23 00:00:00+00
zurich	8052	8052		cardboard	2023-04-06 00:00:00+00
zurich	8052	8052		cardboard	2023-04-20 00:00:00+00
zurich	8052	8052		cardboard	2023-05-04 00:00:00+00
zurich	8052	8052		cardboard	2023-06-01 00:00:00+00
zurich	8052	8052		cardboard	2023-06-15 00:00:00+00
zurich	8052	8052		cardboard	2023-06-29 00:00:00+00
zurich	8052	8052		cardboard	2023-07-13 00:00:00+00
zurich	8052	8052		cardboard	2023-07-27 00:00:00+00
zurich	8052	8052		cardboard	2023-08-10 00:00:00+00
zurich	8052	8052		cardboard	2023-08-24 00:00:00+00
zurich	8052	8052		cardboard	2023-09-07 00:00:00+00
zurich	8052	8052		cardboard	2023-09-21 00:00:00+00
zurich	8052	8052		cardboard	2023-10-05 00:00:00+00
zurich	8052	8052		cardboard	2023-10-19 00:00:00+00
zurich	8052	8052		cardboard	2023-11-02 00:00:00+00
zurich	8052	8052		cardboard	2023-11-16 00:00:00+00
zurich	8052	8052		cardboard	2023-11-30 00:00:00+00
zurich	8052	8052		cardboard	2023-12-14 00:00:00+00
zurich	8052	8052		cardboard	2023-12-28 00:00:00+00
zurich	8053	8053		cardboard	2023-01-09 00:00:00+00
zurich	8053	8053		cardboard	2023-01-23 00:00:00+00
zurich	8053	8053		cardboard	2023-02-06 00:00:00+00
zurich	8053	8053		cardboard	2023-02-20 00:00:00+00
zurich	8053	8053		cardboard	2023-03-06 00:00:00+00
zurich	8053	8053		cardboard	2023-03-20 00:00:00+00
zurich	8053	8053		cardboard	2023-04-03 00:00:00+00
zurich	8053	8053		cardboard	2023-04-17 00:00:00+00
zurich	8053	8053		cardboard	2023-05-15 00:00:00+00
zurich	8053	8053		cardboard	2023-06-12 00:00:00+00
zurich	8053	8053		cardboard	2023-06-26 00:00:00+00
zurich	8053	8053		cardboard	2023-07-10 00:00:00+00
zurich	8053	8053		cardboard	2023-07-24 00:00:00+00
zurich	8053	8053		cardboard	2023-08-07 00:00:00+00
zurich	8053	8053		cardboard	2023-08-21 00:00:00+00
zurich	8053	8053		cardboard	2023-09-04 00:00:00+00
zurich	8053	8053		cardboard	2023-09-18 00:00:00+00
zurich	8053	8053		cardboard	2023-10-02 00:00:00+00
zurich	8053	8053		cardboard	2023-10-16 00:00:00+00
zurich	8053	8053		cardboard	2023-10-30 00:00:00+00
zurich	8053	8053		cardboard	2023-11-13 00:00:00+00
zurich	8053	8053		cardboard	2023-11-27 00:00:00+00
zurich	8053	8053		cardboard	2023-12-11 00:00:00+00
zurich	8055	8055		cardboard	2023-01-03 00:00:00+00
zurich	8055	8055		cardboard	2023-01-17 00:00:00+00
zurich	8055	8055		cardboard	2023-01-31 00:00:00+00
zurich	8055	8055		cardboard	2023-02-14 00:00:00+00
zurich	8055	8055		cardboard	2023-02-28 00:00:00+00
zurich	8055	8055		cardboard	2023-03-14 00:00:00+00
zurich	8055	8055		cardboard	2023-03-28 00:00:00+00
zurich	8055	8055		cardboard	2023-04-11 00:00:00+00
zurich	8055	8055		cardboard	2023-04-25 00:00:00+00
zurich	8055	8055		cardboard	2023-05-09 00:00:00+00
zurich	8055	8055		cardboard	2023-05-23 00:00:00+00
zurich	8055	8055		cardboard	2023-06-06 00:00:00+00
zurich	8055	8055		cardboard	2023-06-20 00:00:00+00
zurich	8055	8055		cardboard	2023-07-04 00:00:00+00
zurich	8055	8055		cardboard	2023-07-18 00:00:00+00
zurich	8055	8055		cardboard	2023-08-15 00:00:00+00
zurich	8055	8055		cardboard	2023-08-29 00:00:00+00
zurich	8055	8055		cardboard	2023-09-12 00:00:00+00
zurich	8055	8055		cardboard	2023-09-26 00:00:00+00
zurich	8055	8055		cardboard	2023-10-10 00:00:00+00
zurich	8055	8055		cardboard	2023-10-24 00:00:00+00
zurich	8055	8055		cardboard	2023-11-07 00:00:00+00
zurich	8055	8055		cardboard	2023-11-21 00:00:00+00
zurich	8055	8055		cardboard	2023-12-05 00:00:00+00
zurich	8055	8055		cardboard	2023-12-19 00:00:00+00
zurich	8057	8057		cardboard	2023-01-11 00:00:00+00
zurich	8057	8057		cardboard	2023-01-25 00:00:00+00
zurich	8057	8057		cardboard	2023-02-08 00:00:00+00
zurich	8057	8057		cardboard	2023-02-22 00:00:00+00
zurich	8057	8057		cardboard	2023-03-08 00:00:00+00
zurich	8057	8057		cardboard	2023-03-22 00:00:00+00
zurich	8057	8057		cardboard	2023-04-05 00:00:00+00
zurich	8057	8057		cardboard	2023-04-19 00:00:00+00
zurich	8057	8057		cardboard	2023-05-03 00:00:00+00
zurich	8057	8057		cardboard	2023-05-17 00:00:00+00
zurich	8057	8057		cardboard	2023-05-31 00:00:00+00
zurich	8057	8057		cardboard	2023-06-14 00:00:00+00
zurich	8057	8057		cardboard	2023-06-28 00:00:00+00
zurich	8057	8057		cardboard	2023-07-12 00:00:00+00
zurich	8057	8057		cardboard	2023-07-26 00:00:00+00
zurich	8057	8057		cardboard	2023-08-09 00:00:00+00
zurich	8057	8057		cardboard	2023-08-23 00:00:00+00
zurich	8057	8057		cardboard	2023-09-06 00:00:00+00
zurich	8057	8057		cardboard	2023-09-20 00:00:00+00
zurich	8057	8057		cardboard	2023-10-04 00:00:00+00
zurich	8057	8057		cardboard	2023-10-18 00:00:00+00
zurich	8057	8057		cardboard	2023-11-01 00:00:00+00
zurich	8057	8057		cardboard	2023-11-15 00:00:00+00
zurich	8057	8057		cardboard	2023-11-29 00:00:00+00
zurich	8057	8057		cardboard	2023-12-13 00:00:00+00
zurich	8057	8057		cardboard	2023-12-27 00:00:00+00
zurich	8064	8064		cardboard	2023-01-05 00:00:00+00
zurich	8064	8064		cardboard	2023-01-19 00:00:00+00
zurich	8064	8064		cardboard	2023-02-02 00:00:00+00
zurich	8064	8064		cardboard	2023-02-16 00:00:00+00
zurich	8064	8064		cardboard	2023-03-02 00:00:00+00
zurich	8064	8064		cardboard	2023-03-16 00:00:00+00
zurich	8064	8064		cardboard	2023-03-30 00:00:00+00
zurich	8064	8064		cardboard	2023-04-13 00:00:00+00
zurich	8064	8064		cardboard	2023-04-27 00:00:00+00
zurich	8064	8064		cardboard	2023-05-11 00:00:00+00
zurich	8064	8064		cardboard	2023-05-25 00:00:00+00
zurich	8064	8064		cardboard	2023-06-08 00:00:00+00
zurich	8064	8064		cardboard	2023-06-22 00:00:00+00
zurich	8064	8064		cardboard	2023-07-06 00:00:00+00
zurich	8064	8064		cardboard	2023-07-20 00:00:00+00
zurich	8064	8064		cardboard	2023-08-03 00:00:00+00
zurich	8064	8064		cardboard	2023-08-17 00:00:00+00
zurich	8064	8064		cardboard	2023-08-31 00:00:00+00
zurich	8064	8064		cardboard	2023-09-14 00:00:00+00
zurich	8064	8064		cardboard	2023-09-28 00:00:00+00
zurich	8064	8064		cardboard	2023-10-12 00:00:00+00
zurich	8064	8064		cardboard	2023-10-26 00:00:00+00
zurich	8064	8064		cardboard	2023-11-09 00:00:00+00
zurich	8064	8064		cardboard	2023-11-23 00:00:00+00
zurich	8064	8064		cardboard	2023-12-07 00:00:00+00
zurich	8064	8064		cardboard	2023-12-21 00:00:00+00
zurich	8001	8001		waste	2023-01-03 00:00:00+00
zurich	8001	8001		waste	2023-01-06 00:00:00+00
zurich	8001	8001		waste	2023-01-10 00:00:00+00
zurich	8001	8001		waste	2023-01-13 00:00:00+00
zurich	8001	8001		waste	2023-01-17 00:00:00+00
zurich	8001	8001		waste	2023-01-20 00:00:00+00
zurich	8001	8001		waste	2023-01-24 00:00:00+00
zurich	8001	8001		waste	2023-01-27 00:00:00+00
zurich	8001	8001		waste	2023-01-31 00:00:00+00
zurich	8001	8001		waste	2023-02-03 00:00:00+00
zurich	8001	8001		waste	2023-02-07 00:00:00+00
zurich	8001	8001		waste	2023-02-10 00:00:00+00
zurich	8001	8001		waste	2023-02-14 00:00:00+00
zurich	8001	8001		waste	2023-02-17 00:00:00+00
zurich	8001	8001		waste	2023-02-21 00:00:00+00
zurich	8001	8001		waste	2023-02-24 00:00:00+00
zurich	8001	8001		waste	2023-02-28 00:00:00+00
zurich	8001	8001		waste	2023-03-03 00:00:00+00
zurich	8001	8001		waste	2023-03-07 00:00:00+00
zurich	8001	8001		waste	2023-03-10 00:00:00+00
zurich	8001	8001		waste	2023-03-14 00:00:00+00
zurich	8001	8001		waste	2023-03-17 00:00:00+00
zurich	8001	8001		waste	2023-03-21 00:00:00+00
zurich	8001	8001		waste	2023-03-24 00:00:00+00
zurich	8001	8001		waste	2023-03-28 00:00:00+00
zurich	8001	8001		waste	2023-03-31 00:00:00+00
zurich	8001	8001		waste	2023-04-04 00:00:00+00
zurich	8001	8001		waste	2023-04-11 00:00:00+00
zurich	8001	8001		waste	2023-04-14 00:00:00+00
zurich	8001	8001		waste	2023-04-18 00:00:00+00
zurich	8001	8001		waste	2023-04-21 00:00:00+00
zurich	8001	8001		waste	2023-04-25 00:00:00+00
zurich	8001	8001		waste	2023-04-28 00:00:00+00
zurich	8001	8001		waste	2023-05-02 00:00:00+00
zurich	8001	8001		waste	2023-05-05 00:00:00+00
zurich	8001	8001		waste	2023-05-09 00:00:00+00
zurich	8001	8001		waste	2023-05-12 00:00:00+00
zurich	8001	8001		waste	2023-05-16 00:00:00+00
zurich	8001	8001		waste	2023-05-19 00:00:00+00
zurich	8001	8001		waste	2023-05-23 00:00:00+00
zurich	8001	8001		waste	2023-05-26 00:00:00+00
zurich	8001	8001		waste	2023-05-30 00:00:00+00
zurich	8001	8001		waste	2023-06-02 00:00:00+00
zurich	8001	8001		waste	2023-06-06 00:00:00+00
zurich	8001	8001		waste	2023-06-09 00:00:00+00
zurich	8001	8001		waste	2023-06-13 00:00:00+00
zurich	8001	8001		waste	2023-06-16 00:00:00+00
zurich	8001	8001		waste	2023-06-20 00:00:00+00
zurich	8001	8001		waste	2023-06-23 00:00:00+00
zurich	8001	8001		waste	2023-06-27 00:00:00+00
zurich	8001	8001		waste	2023-06-30 00:00:00+00
zurich	8001	8001		waste	2023-07-04 00:00:00+00
zurich	8001	8001		waste	2023-07-07 00:00:00+00
zurich	8001	8001		waste	2023-07-11 00:00:00+00
zurich	8001	8001		waste	2023-07-14 00:00:00+00
zurich	8001	8001		waste	2023-07-18 00:00:00+00
zurich	8001	8001		waste	2023-07-21 00:00:00+00
zurich	8001	8001		waste	2023-07-25 00:00:00+00
zurich	8001	8001		waste	2023-07-28 00:00:00+00
zurich	8001	8001		waste	2023-08-04 00:00:00+00
zurich	8001	8001		waste	2023-08-08 00:00:00+00
zurich	8001	8001		waste	2023-08-11 00:00:00+00
zurich	8001	8001		waste	2023-08-15 00:00:00+00
zurich	8001	8001		waste	2023-08-18 00:00:00+00
zurich	8001	8001		waste	2023-08-22 00:00:00+00
zurich	8001	8001		waste	2023-08-25 00:00:00+00
zurich	8001	8001		waste	2023-08-29 00:00:00+00
zurich	8001	8001		waste	2023-09-01 00:00:00+00
zurich	8001	8001		waste	2023-09-05 00:00:00+00
zurich	8001	8001		waste	2023-09-08 00:00:00+00
zurich	8001	8001		waste	2023-09-12 00:00:00+00
zurich	8001	8001		waste	2023-09-15 00:00:00+00
zurich	8001	8001		waste	2023-09-19 00:00:00+00
zurich	8001	8001		waste	2023-09-22 00:00:00+00
zurich	8001	8001		waste	2023-09-26 00:00:00+00
zurich	8001	8001		waste	2023-09-29 00:00:00+00
zurich	8001	8001		waste	2023-10-03 00:00:00+00
zurich	8001	8001		waste	2023-10-06 00:00:00+00
zurich	8001	8001		waste	2023-10-10 00:00:00+00
zurich	8001	8001		waste	2023-10-13 00:00:00+00
zurich	8001	8001		waste	2023-10-17 00:00:00+00
zurich	8001	8001		waste	2023-10-20 00:00:00+00
zurich	8001	8001		waste	2023-10-24 00:00:00+00
zurich	8001	8001		waste	2023-10-27 00:00:00+00
zurich	8001	8001		waste	2023-10-31 00:00:00+00
zurich	8001	8001		waste	2023-11-03 00:00:00+00
zurich	8001	8001		waste	2023-11-07 00:00:00+00
zurich	8001	8001		waste	2023-11-10 00:00:00+00
zurich	8001	8001		waste	2023-11-14 00:00:00+00
zurich	8001	8001		waste	2023-11-17 00:00:00+00
zurich	8001	8001		waste	2023-11-21 00:00:00+00
zurich	8001	8001		waste	2023-11-24 00:00:00+00
zurich	8001	8001		waste	2023-11-28 00:00:00+00
zurich	8001	8001		waste	2023-12-01 00:00:00+00
zurich	8001	8001		waste	2023-12-05 00:00:00+00
zurich	8001	8001		waste	2023-12-08 00:00:00+00
zurich	8001	8001		waste	2023-12-12 00:00:00+00
zurich	8001	8001		waste	2023-12-15 00:00:00+00
zurich	8001	8001		waste	2023-12-19 00:00:00+00
zurich	8001	8001		waste	2023-12-22 00:00:00+00
zurich	8001	8001		waste	2023-12-29 00:00:00+00
zurich	8002	8002		waste	2023-01-09 00:00:00+00
zurich	8002	8002		waste	2023-01-16 00:00:00+00
zurich	8002	8002		waste	2023-01-23 00:00:00+00
zurich	8002	8002		waste	2023-01-30 00:00:00+00
zurich	8002	8002		waste	2023-02-06 00:00:00+00
zurich	8002	8002		waste	2023-02-13 00:00:00+00
zurich	8002	8002		waste	2023-02-20 00:00:00+00
zurich	8002	8002		waste	2023-02-27 00:00:00+00
zurich	8002	8002		waste	2023-03-06 00:00:00+00
zurich	8002	8002		waste	2023-03-13 00:00:00+00
zurich	8002	8002		waste	2023-03-20 00:00:00+00
zurich	8002	8002		waste	2023-03-27 00:00:00+00
zurich	8002	8002		waste	2023-04-03 00:00:00+00
zurich	8002	8002		waste	2023-04-08 00:00:00+00
zurich	8002	8002		waste	2023-04-17 00:00:00+00
zurich	8002	8002		waste	2023-04-24 00:00:00+00
zurich	8002	8002		waste	2023-04-29 00:00:00+00
zurich	8002	8002		waste	2023-05-08 00:00:00+00
zurich	8002	8002		waste	2023-05-15 00:00:00+00
zurich	8002	8002		waste	2023-05-22 00:00:00+00
zurich	8002	8002		waste	2023-05-27 00:00:00+00
zurich	8002	8002		waste	2023-06-05 00:00:00+00
zurich	8002	8002		waste	2023-06-12 00:00:00+00
zurich	8002	8002		waste	2023-06-19 00:00:00+00
zurich	8002	8002		waste	2023-06-26 00:00:00+00
zurich	8002	8002		waste	2023-07-03 00:00:00+00
zurich	8002	8002		waste	2023-07-10 00:00:00+00
zurich	8002	8002		waste	2023-07-17 00:00:00+00
zurich	8002	8002		waste	2023-07-24 00:00:00+00
zurich	8002	8002		waste	2023-07-31 00:00:00+00
zurich	8002	8002		waste	2023-08-07 00:00:00+00
zurich	8002	8002		waste	2023-08-14 00:00:00+00
zurich	8002	8002		waste	2023-08-21 00:00:00+00
zurich	8002	8002		waste	2023-08-28 00:00:00+00
zurich	8002	8002		waste	2023-09-04 00:00:00+00
zurich	8002	8002		waste	2023-09-11 00:00:00+00
zurich	8002	8002		waste	2023-09-18 00:00:00+00
zurich	8002	8002		waste	2023-09-25 00:00:00+00
zurich	8002	8002		waste	2023-10-02 00:00:00+00
zurich	8002	8002		waste	2023-10-09 00:00:00+00
zurich	8002	8002		waste	2023-10-16 00:00:00+00
zurich	8002	8002		waste	2023-10-23 00:00:00+00
zurich	8002	8002		waste	2023-10-30 00:00:00+00
zurich	8002	8002		waste	2023-11-06 00:00:00+00
zurich	8002	8002		waste	2023-11-13 00:00:00+00
zurich	8002	8002		waste	2023-11-20 00:00:00+00
zurich	8002	8002		waste	2023-11-27 00:00:00+00
zurich	8002	8002		waste	2023-12-04 00:00:00+00
zurich	8002	8002		waste	2023-12-11 00:00:00+00
zurich	8002	8002		waste	2023-12-18 00:00:00+00
zurich	8002	8002		waste	2023-12-23 00:00:00+00
zurich	8002	8002		waste	2023-12-30 00:00:00+00
zurich	8003	8003		waste	2023-01-09 00:00:00+00
zurich	8003	8003		waste	2023-01-16 00:00:00+00
zurich	8003	8003		waste	2023-01-23 00:00:00+00
zurich	8003	8003		waste	2023-01-30 00:00:00+00
zurich	8003	8003		waste	2023-02-06 00:00:00+00
zurich	8003	8003		waste	2023-02-13 00:00:00+00
zurich	8003	8003		waste	2023-02-20 00:00:00+00
zurich	8003	8003		waste	2023-02-27 00:00:00+00
zurich	8003	8003		waste	2023-03-06 00:00:00+00
zurich	8003	8003		waste	2023-03-13 00:00:00+00
zurich	8003	8003		waste	2023-03-20 00:00:00+00
zurich	8003	8003		waste	2023-03-27 00:00:00+00
zurich	8003	8003		waste	2023-04-03 00:00:00+00
zurich	8003	8003		waste	2023-04-08 00:00:00+00
zurich	8003	8003		waste	2023-04-17 00:00:00+00
zurich	8003	8003		waste	2023-04-24 00:00:00+00
zurich	8003	8003		waste	2023-04-29 00:00:00+00
zurich	8003	8003		waste	2023-05-08 00:00:00+00
zurich	8003	8003		waste	2023-05-15 00:00:00+00
zurich	8003	8003		waste	2023-05-22 00:00:00+00
zurich	8003	8003		waste	2023-05-27 00:00:00+00
zurich	8003	8003		waste	2023-06-05 00:00:00+00
zurich	8003	8003		waste	2023-06-12 00:00:00+00
zurich	8003	8003		waste	2023-06-19 00:00:00+00
zurich	8003	8003		waste	2023-06-26 00:00:00+00
zurich	8003	8003		waste	2023-07-03 00:00:00+00
zurich	8003	8003		waste	2023-07-10 00:00:00+00
zurich	8003	8003		waste	2023-07-17 00:00:00+00
zurich	8003	8003		waste	2023-07-24 00:00:00+00
zurich	8003	8003		waste	2023-07-31 00:00:00+00
zurich	8003	8003		waste	2023-08-07 00:00:00+00
zurich	8003	8003		waste	2023-08-14 00:00:00+00
zurich	8003	8003		waste	2023-08-21 00:00:00+00
zurich	8003	8003		waste	2023-08-28 00:00:00+00
zurich	8003	8003		waste	2023-09-04 00:00:00+00
zurich	8003	8003		waste	2023-09-11 00:00:00+00
zurich	8003	8003		waste	2023-09-18 00:00:00+00
zurich	8003	8003		waste	2023-09-25 00:00:00+00
zurich	8003	8003		waste	2023-10-02 00:00:00+00
zurich	8003	8003		waste	2023-10-09 00:00:00+00
zurich	8003	8003		waste	2023-10-16 00:00:00+00
zurich	8003	8003		waste	2023-10-23 00:00:00+00
zurich	8003	8003		waste	2023-10-30 00:00:00+00
zurich	8003	8003		waste	2023-11-06 00:00:00+00
zurich	8003	8003		waste	2023-11-13 00:00:00+00
zurich	8003	8003		waste	2023-11-20 00:00:00+00
zurich	8003	8003		waste	2023-11-27 00:00:00+00
zurich	8003	8003		waste	2023-12-04 00:00:00+00
zurich	8003	8003		waste	2023-12-11 00:00:00+00
zurich	8003	8003		waste	2023-12-18 00:00:00+00
zurich	8003	8003		waste	2023-12-23 00:00:00+00
zurich	8003	8003		waste	2023-12-30 00:00:00+00
zurich	8004	8004		waste	2023-01-03 00:00:00+00
zurich	8004	8004		waste	2023-01-06 00:00:00+00
zurich	8004	8004		waste	2023-01-10 00:00:00+00
zurich	8004	8004		waste	2023-01-13 00:00:00+00
zurich	8004	8004		waste	2023-01-17 00:00:00+00
zurich	8004	8004		waste	2023-01-20 00:00:00+00
zurich	8004	8004		waste	2023-01-24 00:00:00+00
zurich	8004	8004		waste	2023-01-27 00:00:00+00
zurich	8004	8004		waste	2023-01-31 00:00:00+00
zurich	8004	8004		waste	2023-02-03 00:00:00+00
zurich	8004	8004		waste	2023-02-07 00:00:00+00
zurich	8004	8004		waste	2023-02-10 00:00:00+00
zurich	8004	8004		waste	2023-02-14 00:00:00+00
zurich	8004	8004		waste	2023-02-17 00:00:00+00
zurich	8004	8004		waste	2023-02-21 00:00:00+00
zurich	8004	8004		waste	2023-02-24 00:00:00+00
zurich	8004	8004		waste	2023-02-28 00:00:00+00
zurich	8004	8004		waste	2023-03-03 00:00:00+00
zurich	8004	8004		waste	2023-03-07 00:00:00+00
zurich	8004	8004		waste	2023-03-10 00:00:00+00
zurich	8004	8004		waste	2023-03-14 00:00:00+00
zurich	8004	8004		waste	2023-03-17 00:00:00+00
zurich	8004	8004		waste	2023-03-21 00:00:00+00
zurich	8004	8004		waste	2023-03-24 00:00:00+00
zurich	8004	8004		waste	2023-03-28 00:00:00+00
zurich	8004	8004		waste	2023-03-31 00:00:00+00
zurich	8004	8004		waste	2023-04-04 00:00:00+00
zurich	8004	8004		waste	2023-04-11 00:00:00+00
zurich	8004	8004		waste	2023-04-14 00:00:00+00
zurich	8004	8004		waste	2023-04-18 00:00:00+00
zurich	8004	8004		waste	2023-04-21 00:00:00+00
zurich	8004	8004		waste	2023-04-25 00:00:00+00
zurich	8004	8004		waste	2023-04-28 00:00:00+00
zurich	8004	8004		waste	2023-05-02 00:00:00+00
zurich	8004	8004		waste	2023-05-05 00:00:00+00
zurich	8004	8004		waste	2023-05-09 00:00:00+00
zurich	8004	8004		waste	2023-05-12 00:00:00+00
zurich	8004	8004		waste	2023-05-16 00:00:00+00
zurich	8004	8004		waste	2023-05-19 00:00:00+00
zurich	8004	8004		waste	2023-05-23 00:00:00+00
zurich	8004	8004		waste	2023-05-26 00:00:00+00
zurich	8004	8004		waste	2023-05-30 00:00:00+00
zurich	8004	8004		waste	2023-06-02 00:00:00+00
zurich	8004	8004		waste	2023-06-06 00:00:00+00
zurich	8004	8004		waste	2023-06-09 00:00:00+00
zurich	8004	8004		waste	2023-06-13 00:00:00+00
zurich	8004	8004		waste	2023-06-16 00:00:00+00
zurich	8004	8004		waste	2023-06-20 00:00:00+00
zurich	8004	8004		waste	2023-06-23 00:00:00+00
zurich	8004	8004		waste	2023-06-27 00:00:00+00
zurich	8004	8004		waste	2023-06-30 00:00:00+00
zurich	8004	8004		waste	2023-07-04 00:00:00+00
zurich	8004	8004		waste	2023-07-07 00:00:00+00
zurich	8004	8004		waste	2023-07-11 00:00:00+00
zurich	8004	8004		waste	2023-07-14 00:00:00+00
zurich	8004	8004		waste	2023-07-18 00:00:00+00
zurich	8004	8004		waste	2023-07-21 00:00:00+00
zurich	8004	8004		waste	2023-07-25 00:00:00+00
zurich	8004	8004		waste	2023-07-28 00:00:00+00
zurich	8004	8004		waste	2023-08-04 00:00:00+00
zurich	8004	8004		waste	2023-08-08 00:00:00+00
zurich	8004	8004		waste	2023-08-11 00:00:00+00
zurich	8004	8004		waste	2023-08-15 00:00:00+00
zurich	8004	8004		waste	2023-08-18 00:00:00+00
zurich	8004	8004		waste	2023-08-22 00:00:00+00
zurich	8004	8004		waste	2023-08-25 00:00:00+00
zurich	8004	8004		waste	2023-08-29 00:00:00+00
zurich	8004	8004		waste	2023-09-01 00:00:00+00
zurich	8004	8004		waste	2023-09-05 00:00:00+00
zurich	8004	8004		waste	2023-09-08 00:00:00+00
zurich	8004	8004		waste	2023-09-12 00:00:00+00
zurich	8004	8004		waste	2023-09-15 00:00:00+00
zurich	8004	8004		waste	2023-09-19 00:00:00+00
zurich	8004	8004		waste	2023-09-22 00:00:00+00
zurich	8004	8004		waste	2023-09-26 00:00:00+00
zurich	8004	8004		waste	2023-09-29 00:00:00+00
zurich	8004	8004		waste	2023-10-03 00:00:00+00
zurich	8004	8004		waste	2023-10-06 00:00:00+00
zurich	8004	8004		waste	2023-10-10 00:00:00+00
zurich	8004	8004		waste	2023-10-13 00:00:00+00
zurich	8004	8004		waste	2023-10-17 00:00:00+00
zurich	8004	8004		waste	2023-10-20 00:00:00+00
zurich	8004	8004		waste	2023-10-24 00:00:00+00
zurich	8004	8004		waste	2023-10-27 00:00:00+00
zurich	8004	8004		waste	2023-10-31 00:00:00+00
zurich	8004	8004		waste	2023-11-03 00:00:00+00
zurich	8004	8004		waste	2023-11-07 00:00:00+00
zurich	8004	8004		waste	2023-11-10 00:00:00+00
zurich	8004	8004		waste	2023-11-14 00:00:00+00
zurich	8004	8004		waste	2023-11-17 00:00:00+00
zurich	8004	8004		waste	2023-11-21 00:00:00+00
zurich	8004	8004		waste	2023-11-24 00:00:00+00
zurich	8004	8004		waste	2023-11-28 00:00:00+00
zurich	8004	8004		waste	2023-12-01 00:00:00+00
zurich	8004	8004		waste	2023-12-05 00:00:00+00
zurich	8004	8004		waste	2023-12-08 00:00:00+00
zurich	8004	8004		waste	2023-12-12 00:00:00+00
zurich	8004	8004		waste	2023-12-15 00:00:00+00
zurich	8004	8004		waste	2023-12-19 00:00:00+00
zurich	8004	8004		waste	2023-12-22 00:00:00+00
zurich	8004	8004		waste	2023-12-29 00:00:00+00
zurich	8005	8005		waste	2023-01-03 00:00:00+00
zurich	8005	8005		waste	2023-01-06 00:00:00+00
zurich	8005	8005		waste	2023-01-10 00:00:00+00
zurich	8005	8005		waste	2023-01-13 00:00:00+00
zurich	8005	8005		waste	2023-01-17 00:00:00+00
zurich	8005	8005		waste	2023-01-20 00:00:00+00
zurich	8005	8005		waste	2023-01-24 00:00:00+00
zurich	8005	8005		waste	2023-01-27 00:00:00+00
zurich	8005	8005		waste	2023-01-31 00:00:00+00
zurich	8005	8005		waste	2023-02-03 00:00:00+00
zurich	8005	8005		waste	2023-02-07 00:00:00+00
zurich	8005	8005		waste	2023-02-10 00:00:00+00
zurich	8005	8005		waste	2023-02-14 00:00:00+00
zurich	8005	8005		waste	2023-02-17 00:00:00+00
zurich	8005	8005		waste	2023-02-21 00:00:00+00
zurich	8005	8005		waste	2023-02-24 00:00:00+00
zurich	8005	8005		waste	2023-02-28 00:00:00+00
zurich	8005	8005		waste	2023-03-03 00:00:00+00
zurich	8005	8005		waste	2023-03-07 00:00:00+00
zurich	8005	8005		waste	2023-03-10 00:00:00+00
zurich	8005	8005		waste	2023-03-14 00:00:00+00
zurich	8005	8005		waste	2023-03-17 00:00:00+00
zurich	8005	8005		waste	2023-03-21 00:00:00+00
zurich	8005	8005		waste	2023-03-24 00:00:00+00
zurich	8005	8005		waste	2023-03-28 00:00:00+00
zurich	8005	8005		waste	2023-03-31 00:00:00+00
zurich	8005	8005		waste	2023-04-04 00:00:00+00
zurich	8005	8005		waste	2023-04-11 00:00:00+00
zurich	8005	8005		waste	2023-04-14 00:00:00+00
zurich	8005	8005		waste	2023-04-18 00:00:00+00
zurich	8005	8005		waste	2023-04-21 00:00:00+00
zurich	8005	8005		waste	2023-04-25 00:00:00+00
zurich	8005	8005		waste	2023-04-28 00:00:00+00
zurich	8005	8005		waste	2023-05-02 00:00:00+00
zurich	8005	8005		waste	2023-05-05 00:00:00+00
zurich	8005	8005		waste	2023-05-09 00:00:00+00
zurich	8005	8005		waste	2023-05-12 00:00:00+00
zurich	8005	8005		waste	2023-05-16 00:00:00+00
zurich	8005	8005		waste	2023-05-19 00:00:00+00
zurich	8005	8005		waste	2023-05-23 00:00:00+00
zurich	8005	8005		waste	2023-05-26 00:00:00+00
zurich	8005	8005		waste	2023-05-30 00:00:00+00
zurich	8005	8005		waste	2023-06-02 00:00:00+00
zurich	8005	8005		waste	2023-06-06 00:00:00+00
zurich	8005	8005		waste	2023-06-09 00:00:00+00
zurich	8005	8005		waste	2023-06-13 00:00:00+00
zurich	8005	8005		waste	2023-06-16 00:00:00+00
zurich	8005	8005		waste	2023-06-20 00:00:00+00
zurich	8005	8005		waste	2023-06-23 00:00:00+00
zurich	8005	8005		waste	2023-06-27 00:00:00+00
zurich	8005	8005		waste	2023-06-30 00:00:00+00
zurich	8005	8005		waste	2023-07-04 00:00:00+00
zurich	8005	8005		waste	2023-07-07 00:00:00+00
zurich	8005	8005		waste	2023-07-11 00:00:00+00
zurich	8005	8005		waste	2023-07-14 00:00:00+00
zurich	8005	8005		waste	2023-07-18 00:00:00+00
zurich	8005	8005		waste	2023-07-21 00:00:00+00
zurich	8005	8005		waste	2023-07-25 00:00:00+00
zurich	8005	8005		waste	2023-07-28 00:00:00+00
zurich	8005	8005		waste	2023-08-04 00:00:00+00
zurich	8005	8005		waste	2023-08-08 00:00:00+00
zurich	8005	8005		waste	2023-08-11 00:00:00+00
zurich	8005	8005		waste	2023-08-15 00:00:00+00
zurich	8005	8005		waste	2023-08-18 00:00:00+00
zurich	8005	8005		waste	2023-08-22 00:00:00+00
zurich	8005	8005		waste	2023-08-25 00:00:00+00
zurich	8005	8005		waste	2023-08-29 00:00:00+00
zurich	8005	8005		waste	2023-09-01 00:00:00+00
zurich	8005	8005		waste	2023-09-05 00:00:00+00
zurich	8005	8005		waste	2023-09-08 00:00:00+00
zurich	8005	8005		waste	2023-09-12 00:00:00+00
zurich	8005	8005		waste	2023-09-15 00:00:00+00
zurich	8005	8005		waste	2023-09-19 00:00:00+00
zurich	8005	8005		waste	2023-09-22 00:00:00+00
zurich	8005	8005		waste	2023-09-26 00:00:00+00
zurich	8005	8005		waste	2023-09-29 00:00:00+00
zurich	8005	8005		waste	2023-10-03 00:00:00+00
zurich	8005	8005		waste	2023-10-06 00:00:00+00
zurich	8005	8005		waste	2023-10-10 00:00:00+00
zurich	8005	8005		waste	2023-10-13 00:00:00+00
zurich	8005	8005		waste	2023-10-17 00:00:00+00
zurich	8005	8005		waste	2023-10-20 00:00:00+00
zurich	8005	8005		waste	2023-10-24 00:00:00+00
zurich	8005	8005		waste	2023-10-27 00:00:00+00
zurich	8005	8005		waste	2023-10-31 00:00:00+00
zurich	8005	8005		waste	2023-11-03 00:00:00+00
zurich	8005	8005		waste	2023-11-07 00:00:00+00
zurich	8005	8005		waste	2023-11-10 00:00:00+00
zurich	8005	8005		waste	2023-11-14 00:00:00+00
zurich	8005	8005		waste	2023-11-17 00:00:00+00
zurich	8005	8005		waste	2023-11-21 00:00:00+00
zurich	8005	8005		waste	2023-11-24 00:00:00+00
zurich	8005	8005		waste	2023-11-28 00:00:00+00
zurich	8005	8005		waste	2023-12-01 00:00:00+00
zurich	8005	8005		waste	2023-12-05 00:00:00+00
zurich	8005	8005		waste	2023-12-08 00:00:00+00
zurich	8005	8005		waste	2023-12-12 00:00:00+00
zurich	8005	8005		waste	2023-12-15 00:00:00+00
zurich	8005	8005		waste	2023-12-19 00:00:00+00
zurich	8005	8005		waste	2023-12-22 00:00:00+00
zurich	8005	8005		waste	2023-12-29 00:00:00+00
zurich	8006	8006		waste	2023-01-05 00:00:00+00
zurich	8006	8006		waste	2023-01-12 00:00:00+00
zurich	8006	8006		waste	2023-01-19 00:00:00+00
zurich	8006	8006		waste	2023-01-26 00:00:00+00
zurich	8006	8006		waste	2023-02-02 00:00:00+00
zurich	8006	8006		waste	2023-02-09 00:00:00+00
zurich	8006	8006		waste	2023-02-16 00:00:00+00
zurich	8006	8006		waste	2023-02-23 00:00:00+00
zurich	8006	8006		waste	2023-03-02 00:00:00+00
zurich	8006	8006		waste	2023-03-09 00:00:00+00
zurich	8006	8006		waste	2023-03-16 00:00:00+00
zurich	8006	8006		waste	2023-03-23 00:00:00+00
zurich	8006	8006		waste	2023-03-30 00:00:00+00
zurich	8006	8006		waste	2023-04-06 00:00:00+00
zurich	8006	8006		waste	2023-04-13 00:00:00+00
zurich	8006	8006		waste	2023-04-20 00:00:00+00
zurich	8006	8006		waste	2023-04-27 00:00:00+00
zurich	8006	8006		waste	2023-05-04 00:00:00+00
zurich	8006	8006		waste	2023-05-11 00:00:00+00
zurich	8006	8006		waste	2023-05-20 00:00:00+00
zurich	8006	8006		waste	2023-05-25 00:00:00+00
zurich	8006	8006		waste	2023-06-01 00:00:00+00
zurich	8006	8006		waste	2023-06-08 00:00:00+00
zurich	8006	8006		waste	2023-06-15 00:00:00+00
zurich	8006	8006		waste	2023-06-22 00:00:00+00
zurich	8006	8006		waste	2023-06-29 00:00:00+00
zurich	8006	8006		waste	2023-07-06 00:00:00+00
zurich	8006	8006		waste	2023-07-13 00:00:00+00
zurich	8006	8006		waste	2023-07-20 00:00:00+00
zurich	8006	8006		waste	2023-07-27 00:00:00+00
zurich	8006	8006		waste	2023-08-03 00:00:00+00
zurich	8006	8006		waste	2023-08-10 00:00:00+00
zurich	8006	8006		waste	2023-08-17 00:00:00+00
zurich	8006	8006		waste	2023-08-24 00:00:00+00
zurich	8006	8006		waste	2023-08-31 00:00:00+00
zurich	8006	8006		waste	2023-09-07 00:00:00+00
zurich	8006	8006		waste	2023-09-14 00:00:00+00
zurich	8006	8006		waste	2023-09-21 00:00:00+00
zurich	8006	8006		waste	2023-09-28 00:00:00+00
zurich	8006	8006		waste	2023-10-05 00:00:00+00
zurich	8006	8006		waste	2023-10-12 00:00:00+00
zurich	8006	8006		waste	2023-10-19 00:00:00+00
zurich	8006	8006		waste	2023-10-26 00:00:00+00
zurich	8006	8006		waste	2023-11-02 00:00:00+00
zurich	8006	8006		waste	2023-11-09 00:00:00+00
zurich	8006	8006		waste	2023-11-16 00:00:00+00
zurich	8006	8006		waste	2023-11-23 00:00:00+00
zurich	8006	8006		waste	2023-11-30 00:00:00+00
zurich	8006	8006		waste	2023-12-07 00:00:00+00
zurich	8006	8006		waste	2023-12-14 00:00:00+00
zurich	8006	8006		waste	2023-12-21 00:00:00+00
zurich	8006	8006		waste	2023-12-28 00:00:00+00
zurich	8008	8008		waste	2023-01-06 00:00:00+00
zurich	8008	8008		waste	2023-01-13 00:00:00+00
zurich	8008	8008		waste	2023-01-20 00:00:00+00
zurich	8008	8008		waste	2023-01-27 00:00:00+00
zurich	8008	8008		waste	2023-02-03 00:00:00+00
zurich	8008	8008		waste	2023-02-10 00:00:00+00
zurich	8008	8008		waste	2023-02-17 00:00:00+00
zurich	8008	8008		waste	2023-02-24 00:00:00+00
zurich	8008	8008		waste	2023-03-03 00:00:00+00
zurich	8008	8008		waste	2023-03-10 00:00:00+00
zurich	8008	8008		waste	2023-03-17 00:00:00+00
zurich	8008	8008		waste	2023-03-24 00:00:00+00
zurich	8008	8008		waste	2023-03-31 00:00:00+00
zurich	8008	8008		waste	2023-04-08 00:00:00+00
zurich	8008	8008		waste	2023-04-14 00:00:00+00
zurich	8008	8008		waste	2023-04-21 00:00:00+00
zurich	8008	8008		waste	2023-04-28 00:00:00+00
zurich	8008	8008		waste	2023-05-05 00:00:00+00
zurich	8008	8008		waste	2023-05-12 00:00:00+00
zurich	8008	8008		waste	2023-05-19 00:00:00+00
zurich	8008	8008		waste	2023-05-26 00:00:00+00
zurich	8008	8008		waste	2023-06-02 00:00:00+00
zurich	8008	8008		waste	2023-06-09 00:00:00+00
zurich	8008	8008		waste	2023-06-16 00:00:00+00
zurich	8008	8008		waste	2023-06-23 00:00:00+00
zurich	8008	8008		waste	2023-06-30 00:00:00+00
zurich	8008	8008		waste	2023-07-07 00:00:00+00
zurich	8008	8008		waste	2023-07-14 00:00:00+00
zurich	8008	8008		waste	2023-07-21 00:00:00+00
zurich	8008	8008		waste	2023-07-28 00:00:00+00
zurich	8008	8008		waste	2023-08-04 00:00:00+00
zurich	8008	8008		waste	2023-08-11 00:00:00+00
zurich	8008	8008		waste	2023-08-18 00:00:00+00
zurich	8008	8008		waste	2023-08-25 00:00:00+00
zurich	8008	8008		waste	2023-09-01 00:00:00+00
zurich	8008	8008		waste	2023-09-08 00:00:00+00
zurich	8008	8008		waste	2023-09-15 00:00:00+00
zurich	8008	8008		waste	2023-09-22 00:00:00+00
zurich	8008	8008		waste	2023-09-29 00:00:00+00
zurich	8008	8008		waste	2023-10-06 00:00:00+00
zurich	8008	8008		waste	2023-10-13 00:00:00+00
zurich	8008	8008		waste	2023-10-20 00:00:00+00
zurich	8008	8008		waste	2023-10-27 00:00:00+00
zurich	8008	8008		waste	2023-11-03 00:00:00+00
zurich	8008	8008		waste	2023-11-10 00:00:00+00
zurich	8008	8008		waste	2023-11-17 00:00:00+00
zurich	8008	8008		waste	2023-11-24 00:00:00+00
zurich	8008	8008		waste	2023-12-01 00:00:00+00
zurich	8008	8008		waste	2023-12-08 00:00:00+00
zurich	8008	8008		waste	2023-12-15 00:00:00+00
zurich	8008	8008		waste	2023-12-22 00:00:00+00
zurich	8008	8008		waste	2023-12-29 00:00:00+00
zurich	8032	8032		waste	2023-01-06 00:00:00+00
zurich	8032	8032		waste	2023-01-13 00:00:00+00
zurich	8032	8032		waste	2023-01-20 00:00:00+00
zurich	8032	8032		waste	2023-01-27 00:00:00+00
zurich	8032	8032		waste	2023-02-03 00:00:00+00
zurich	8032	8032		waste	2023-02-10 00:00:00+00
zurich	8032	8032		waste	2023-02-17 00:00:00+00
zurich	8032	8032		waste	2023-02-24 00:00:00+00
zurich	8032	8032		waste	2023-03-03 00:00:00+00
zurich	8032	8032		waste	2023-03-10 00:00:00+00
zurich	8032	8032		waste	2023-03-17 00:00:00+00
zurich	8032	8032		waste	2023-03-24 00:00:00+00
zurich	8032	8032		waste	2023-03-31 00:00:00+00
zurich	8032	8032		waste	2023-04-08 00:00:00+00
zurich	8032	8032		waste	2023-04-14 00:00:00+00
zurich	8032	8032		waste	2023-04-21 00:00:00+00
zurich	8032	8032		waste	2023-04-28 00:00:00+00
zurich	8032	8032		waste	2023-05-05 00:00:00+00
zurich	8032	8032		waste	2023-05-12 00:00:00+00
zurich	8032	8032		waste	2023-05-19 00:00:00+00
zurich	8032	8032		waste	2023-05-26 00:00:00+00
zurich	8032	8032		waste	2023-06-02 00:00:00+00
zurich	8032	8032		waste	2023-06-09 00:00:00+00
zurich	8032	8032		waste	2023-06-16 00:00:00+00
zurich	8032	8032		waste	2023-06-23 00:00:00+00
zurich	8032	8032		waste	2023-06-30 00:00:00+00
zurich	8032	8032		waste	2023-07-07 00:00:00+00
zurich	8032	8032		waste	2023-07-14 00:00:00+00
zurich	8032	8032		waste	2023-07-21 00:00:00+00
zurich	8032	8032		waste	2023-07-28 00:00:00+00
zurich	8032	8032		waste	2023-08-04 00:00:00+00
zurich	8032	8032		waste	2023-08-11 00:00:00+00
zurich	8032	8032		waste	2023-08-18 00:00:00+00
zurich	8032	8032		waste	2023-08-25 00:00:00+00
zurich	8032	8032		waste	2023-09-01 00:00:00+00
zurich	8032	8032		waste	2023-09-08 00:00:00+00
zurich	8032	8032		waste	2023-09-15 00:00:00+00
zurich	8032	8032		waste	2023-09-22 00:00:00+00
zurich	8032	8032		waste	2023-09-29 00:00:00+00
zurich	8032	8032		waste	2023-10-06 00:00:00+00
zurich	8032	8032		waste	2023-10-13 00:00:00+00
zurich	8032	8032		waste	2023-10-20 00:00:00+00
zurich	8032	8032		waste	2023-10-27 00:00:00+00
zurich	8032	8032		waste	2023-11-03 00:00:00+00
zurich	8032	8032		waste	2023-11-10 00:00:00+00
zurich	8032	8032		waste	2023-11-17 00:00:00+00
zurich	8032	8032		waste	2023-11-24 00:00:00+00
zurich	8032	8032		waste	2023-12-01 00:00:00+00
zurich	8032	8032		waste	2023-12-08 00:00:00+00
zurich	8032	8032		waste	2023-12-15 00:00:00+00
zurich	8032	8032		waste	2023-12-22 00:00:00+00
zurich	8032	8032		waste	2023-12-29 00:00:00+00
zurich	8037	8037		waste	2023-01-05 00:00:00+00
zurich	8037	8037		waste	2023-01-12 00:00:00+00
zurich	8037	8037		waste	2023-01-19 00:00:00+00
zurich	8037	8037		waste	2023-01-26 00:00:00+00
zurich	8037	8037		waste	2023-02-02 00:00:00+00
zurich	8037	8037		waste	2023-02-09 00:00:00+00
zurich	8037	8037		waste	2023-02-16 00:00:00+00
zurich	8037	8037		waste	2023-02-23 00:00:00+00
zurich	8037	8037		waste	2023-03-02 00:00:00+00
zurich	8037	8037		waste	2023-03-09 00:00:00+00
zurich	8037	8037		waste	2023-03-16 00:00:00+00
zurich	8037	8037		waste	2023-03-23 00:00:00+00
zurich	8037	8037		waste	2023-03-30 00:00:00+00
zurich	8037	8037		waste	2023-04-06 00:00:00+00
zurich	8037	8037		waste	2023-04-13 00:00:00+00
zurich	8037	8037		waste	2023-04-20 00:00:00+00
zurich	8037	8037		waste	2023-04-27 00:00:00+00
zurich	8037	8037		waste	2023-05-04 00:00:00+00
zurich	8037	8037		waste	2023-05-11 00:00:00+00
zurich	8037	8037		waste	2023-05-20 00:00:00+00
zurich	8037	8037		waste	2023-05-25 00:00:00+00
zurich	8037	8037		waste	2023-06-01 00:00:00+00
zurich	8037	8037		waste	2023-06-08 00:00:00+00
zurich	8037	8037		waste	2023-06-15 00:00:00+00
zurich	8037	8037		waste	2023-06-22 00:00:00+00
zurich	8037	8037		waste	2023-06-29 00:00:00+00
zurich	8037	8037		waste	2023-07-06 00:00:00+00
zurich	8037	8037		waste	2023-07-13 00:00:00+00
zurich	8037	8037		waste	2023-07-20 00:00:00+00
zurich	8037	8037		waste	2023-07-27 00:00:00+00
zurich	8037	8037		waste	2023-08-03 00:00:00+00
zurich	8037	8037		waste	2023-08-10 00:00:00+00
zurich	8037	8037		waste	2023-08-17 00:00:00+00
zurich	8037	8037		waste	2023-08-24 00:00:00+00
zurich	8037	8037		waste	2023-08-31 00:00:00+00
zurich	8037	8037		waste	2023-09-07 00:00:00+00
zurich	8037	8037		waste	2023-09-14 00:00:00+00
zurich	8037	8037		waste	2023-09-21 00:00:00+00
zurich	8037	8037		waste	2023-09-28 00:00:00+00
zurich	8037	8037		waste	2023-10-05 00:00:00+00
zurich	8037	8037		waste	2023-10-12 00:00:00+00
zurich	8037	8037		waste	2023-10-19 00:00:00+00
zurich	8037	8037		waste	2023-10-26 00:00:00+00
zurich	8037	8037		waste	2023-11-02 00:00:00+00
zurich	8037	8037		waste	2023-11-09 00:00:00+00
zurich	8037	8037		waste	2023-11-16 00:00:00+00
zurich	8037	8037		waste	2023-11-23 00:00:00+00
zurich	8037	8037		waste	2023-11-30 00:00:00+00
zurich	8037	8037		waste	2023-12-07 00:00:00+00
zurich	8037	8037		waste	2023-12-14 00:00:00+00
zurich	8037	8037		waste	2023-12-21 00:00:00+00
zurich	8037	8037		waste	2023-12-28 00:00:00+00
zurich	8038	8038		waste	2023-01-09 00:00:00+00
zurich	8038	8038		waste	2023-01-16 00:00:00+00
zurich	8038	8038		waste	2023-01-23 00:00:00+00
zurich	8038	8038		waste	2023-01-30 00:00:00+00
zurich	8038	8038		waste	2023-02-06 00:00:00+00
zurich	8038	8038		waste	2023-02-13 00:00:00+00
zurich	8038	8038		waste	2023-02-20 00:00:00+00
zurich	8038	8038		waste	2023-02-27 00:00:00+00
zurich	8038	8038		waste	2023-03-06 00:00:00+00
zurich	8038	8038		waste	2023-03-13 00:00:00+00
zurich	8038	8038		waste	2023-03-20 00:00:00+00
zurich	8038	8038		waste	2023-03-27 00:00:00+00
zurich	8038	8038		waste	2023-04-03 00:00:00+00
zurich	8038	8038		waste	2023-04-08 00:00:00+00
zurich	8038	8038		waste	2023-04-17 00:00:00+00
zurich	8038	8038		waste	2023-04-24 00:00:00+00
zurich	8038	8038		waste	2023-04-29 00:00:00+00
zurich	8038	8038		waste	2023-05-08 00:00:00+00
zurich	8038	8038		waste	2023-05-15 00:00:00+00
zurich	8038	8038		waste	2023-05-22 00:00:00+00
zurich	8038	8038		waste	2023-05-27 00:00:00+00
zurich	8038	8038		waste	2023-06-05 00:00:00+00
zurich	8038	8038		waste	2023-06-12 00:00:00+00
zurich	8038	8038		waste	2023-06-19 00:00:00+00
zurich	8038	8038		waste	2023-06-26 00:00:00+00
zurich	8038	8038		waste	2023-07-03 00:00:00+00
zurich	8038	8038		waste	2023-07-10 00:00:00+00
zurich	8038	8038		waste	2023-07-17 00:00:00+00
zurich	8038	8038		waste	2023-07-24 00:00:00+00
zurich	8038	8038		waste	2023-07-31 00:00:00+00
zurich	8038	8038		waste	2023-08-07 00:00:00+00
zurich	8038	8038		waste	2023-08-14 00:00:00+00
zurich	8038	8038		waste	2023-08-21 00:00:00+00
zurich	8038	8038		waste	2023-08-28 00:00:00+00
zurich	8038	8038		waste	2023-09-04 00:00:00+00
zurich	8038	8038		waste	2023-09-11 00:00:00+00
zurich	8038	8038		waste	2023-09-18 00:00:00+00
zurich	8038	8038		waste	2023-09-25 00:00:00+00
zurich	8038	8038		waste	2023-10-02 00:00:00+00
zurich	8038	8038		waste	2023-10-09 00:00:00+00
zurich	8038	8038		waste	2023-10-16 00:00:00+00
zurich	8038	8038		waste	2023-10-23 00:00:00+00
zurich	8038	8038		waste	2023-10-30 00:00:00+00
zurich	8038	8038		waste	2023-11-06 00:00:00+00
zurich	8038	8038		waste	2023-11-13 00:00:00+00
zurich	8038	8038		waste	2023-11-20 00:00:00+00
zurich	8038	8038		waste	2023-11-27 00:00:00+00
zurich	8038	8038		waste	2023-12-04 00:00:00+00
zurich	8038	8038		waste	2023-12-11 00:00:00+00
zurich	8038	8038		waste	2023-12-18 00:00:00+00
zurich	8038	8038		waste	2023-12-23 00:00:00+00
zurich	8038	8038		waste	2023-12-30 00:00:00+00
zurich	8041	8041		waste	2023-01-09 00:00:00+00
zurich	8041	8041		waste	2023-01-16 00:00:00+00
zurich	8041	8041		waste	2023-01-23 00:00:00+00
zurich	8041	8041		waste	2023-01-30 00:00:00+00
zurich	8041	8041		waste	2023-02-06 00:00:00+00
zurich	8041	8041		waste	2023-02-13 00:00:00+00
zurich	8041	8041		waste	2023-02-20 00:00:00+00
zurich	8041	8041		waste	2023-02-27 00:00:00+00
zurich	8041	8041		waste	2023-03-06 00:00:00+00
zurich	8041	8041		waste	2023-03-13 00:00:00+00
zurich	8041	8041		waste	2023-03-20 00:00:00+00
zurich	8041	8041		waste	2023-03-27 00:00:00+00
zurich	8041	8041		waste	2023-04-03 00:00:00+00
zurich	8041	8041		waste	2023-04-08 00:00:00+00
zurich	8041	8041		waste	2023-04-17 00:00:00+00
zurich	8041	8041		waste	2023-04-24 00:00:00+00
zurich	8041	8041		waste	2023-04-29 00:00:00+00
zurich	8041	8041		waste	2023-05-08 00:00:00+00
zurich	8041	8041		waste	2023-05-15 00:00:00+00
zurich	8041	8041		waste	2023-05-22 00:00:00+00
zurich	8041	8041		waste	2023-05-27 00:00:00+00
zurich	8041	8041		waste	2023-06-05 00:00:00+00
zurich	8041	8041		waste	2023-06-12 00:00:00+00
zurich	8041	8041		waste	2023-06-19 00:00:00+00
zurich	8041	8041		waste	2023-06-26 00:00:00+00
zurich	8041	8041		waste	2023-07-03 00:00:00+00
zurich	8041	8041		waste	2023-07-10 00:00:00+00
zurich	8041	8041		waste	2023-07-17 00:00:00+00
zurich	8041	8041		waste	2023-07-24 00:00:00+00
zurich	8041	8041		waste	2023-07-31 00:00:00+00
zurich	8041	8041		waste	2023-08-07 00:00:00+00
zurich	8041	8041		waste	2023-08-14 00:00:00+00
zurich	8041	8041		waste	2023-08-21 00:00:00+00
zurich	8041	8041		waste	2023-08-28 00:00:00+00
zurich	8041	8041		waste	2023-09-04 00:00:00+00
zurich	8041	8041		waste	2023-09-11 00:00:00+00
zurich	8041	8041		waste	2023-09-18 00:00:00+00
zurich	8041	8041		waste	2023-09-25 00:00:00+00
zurich	8041	8041		waste	2023-10-02 00:00:00+00
zurich	8041	8041		waste	2023-10-09 00:00:00+00
zurich	8041	8041		waste	2023-10-16 00:00:00+00
zurich	8041	8041		waste	2023-10-23 00:00:00+00
zurich	8041	8041		waste	2023-10-30 00:00:00+00
zurich	8041	8041		waste	2023-11-06 00:00:00+00
zurich	8041	8041		waste	2023-11-13 00:00:00+00
zurich	8041	8041		waste	2023-11-20 00:00:00+00
zurich	8041	8041		waste	2023-11-27 00:00:00+00
zurich	8041	8041		waste	2023-12-04 00:00:00+00
zurich	8041	8041		waste	2023-12-11 00:00:00+00
zurich	8041	8041		waste	2023-12-18 00:00:00+00
zurich	8041	8041		waste	2023-12-23 00:00:00+00
zurich	8041	8041		waste	2023-12-30 00:00:00+00
zurich	8044	8044		waste	2023-01-05 00:00:00+00
zurich	8044	8044		waste	2023-01-12 00:00:00+00
zurich	8044	8044		waste	2023-01-19 00:00:00+00
zurich	8044	8044		waste	2023-01-26 00:00:00+00
zurich	8044	8044		waste	2023-02-02 00:00:00+00
zurich	8044	8044		waste	2023-02-09 00:00:00+00
zurich	8044	8044		waste	2023-02-16 00:00:00+00
zurich	8044	8044		waste	2023-02-23 00:00:00+00
zurich	8044	8044		waste	2023-03-02 00:00:00+00
zurich	8044	8044		waste	2023-03-09 00:00:00+00
zurich	8044	8044		waste	2023-03-16 00:00:00+00
zurich	8044	8044		waste	2023-03-23 00:00:00+00
zurich	8044	8044		waste	2023-03-30 00:00:00+00
zurich	8044	8044		waste	2023-04-06 00:00:00+00
zurich	8044	8044		waste	2023-04-13 00:00:00+00
zurich	8044	8044		waste	2023-04-20 00:00:00+00
zurich	8044	8044		waste	2023-04-27 00:00:00+00
zurich	8044	8044		waste	2023-05-04 00:00:00+00
zurich	8044	8044		waste	2023-05-11 00:00:00+00
zurich	8044	8044		waste	2023-05-20 00:00:00+00
zurich	8044	8044		waste	2023-05-25 00:00:00+00
zurich	8044	8044		waste	2023-06-01 00:00:00+00
zurich	8044	8044		waste	2023-06-08 00:00:00+00
zurich	8044	8044		waste	2023-06-15 00:00:00+00
zurich	8044	8044		waste	2023-06-22 00:00:00+00
zurich	8044	8044		waste	2023-06-29 00:00:00+00
zurich	8044	8044		waste	2023-07-06 00:00:00+00
zurich	8044	8044		waste	2023-07-13 00:00:00+00
zurich	8044	8044		waste	2023-07-20 00:00:00+00
zurich	8044	8044		waste	2023-07-27 00:00:00+00
zurich	8044	8044		waste	2023-08-03 00:00:00+00
zurich	8044	8044		waste	2023-08-10 00:00:00+00
zurich	8044	8044		waste	2023-08-17 00:00:00+00
zurich	8044	8044		waste	2023-08-24 00:00:00+00
zurich	8044	8044		waste	2023-08-31 00:00:00+00
zurich	8044	8044		waste	2023-09-07 00:00:00+00
zurich	8044	8044		waste	2023-09-14 00:00:00+00
zurich	8044	8044		waste	2023-09-21 00:00:00+00
zurich	8044	8044		waste	2023-09-28 00:00:00+00
zurich	8044	8044		waste	2023-10-05 00:00:00+00
zurich	8044	8044		waste	2023-10-12 00:00:00+00
zurich	8044	8044		waste	2023-10-19 00:00:00+00
zurich	8044	8044		waste	2023-10-26 00:00:00+00
zurich	8044	8044		waste	2023-11-02 00:00:00+00
zurich	8044	8044		waste	2023-11-09 00:00:00+00
zurich	8044	8044		waste	2023-11-16 00:00:00+00
zurich	8044	8044		waste	2023-11-23 00:00:00+00
zurich	8044	8044		waste	2023-11-30 00:00:00+00
zurich	8044	8044		waste	2023-12-07 00:00:00+00
zurich	8044	8044		waste	2023-12-14 00:00:00+00
zurich	8044	8044		waste	2023-12-21 00:00:00+00
zurich	8044	8044		waste	2023-12-28 00:00:00+00
zurich	8045	8045		waste	2023-01-09 00:00:00+00
zurich	8045	8045		waste	2023-01-16 00:00:00+00
zurich	8045	8045		waste	2023-01-23 00:00:00+00
zurich	8045	8045		waste	2023-01-30 00:00:00+00
zurich	8045	8045		waste	2023-02-06 00:00:00+00
zurich	8045	8045		waste	2023-02-13 00:00:00+00
zurich	8045	8045		waste	2023-02-20 00:00:00+00
zurich	8045	8045		waste	2023-02-27 00:00:00+00
zurich	8045	8045		waste	2023-03-06 00:00:00+00
zurich	8045	8045		waste	2023-03-13 00:00:00+00
zurich	8045	8045		waste	2023-03-20 00:00:00+00
zurich	8045	8045		waste	2023-03-27 00:00:00+00
zurich	8045	8045		waste	2023-04-03 00:00:00+00
zurich	8045	8045		waste	2023-04-08 00:00:00+00
zurich	8045	8045		waste	2023-04-17 00:00:00+00
zurich	8045	8045		waste	2023-04-24 00:00:00+00
zurich	8045	8045		waste	2023-04-29 00:00:00+00
zurich	8045	8045		waste	2023-05-08 00:00:00+00
zurich	8045	8045		waste	2023-05-15 00:00:00+00
zurich	8045	8045		waste	2023-05-22 00:00:00+00
zurich	8045	8045		waste	2023-05-27 00:00:00+00
zurich	8045	8045		waste	2023-06-05 00:00:00+00
zurich	8045	8045		waste	2023-06-12 00:00:00+00
zurich	8045	8045		waste	2023-06-19 00:00:00+00
zurich	8045	8045		waste	2023-06-26 00:00:00+00
zurich	8045	8045		waste	2023-07-03 00:00:00+00
zurich	8045	8045		waste	2023-07-10 00:00:00+00
zurich	8045	8045		waste	2023-07-17 00:00:00+00
zurich	8045	8045		waste	2023-07-24 00:00:00+00
zurich	8045	8045		waste	2023-07-31 00:00:00+00
zurich	8045	8045		waste	2023-08-07 00:00:00+00
zurich	8045	8045		waste	2023-08-14 00:00:00+00
zurich	8045	8045		waste	2023-08-21 00:00:00+00
zurich	8045	8045		waste	2023-08-28 00:00:00+00
zurich	8045	8045		waste	2023-09-04 00:00:00+00
zurich	8045	8045		waste	2023-09-11 00:00:00+00
zurich	8045	8045		waste	2023-09-18 00:00:00+00
zurich	8045	8045		waste	2023-09-25 00:00:00+00
zurich	8045	8045		waste	2023-10-02 00:00:00+00
zurich	8045	8045		waste	2023-10-09 00:00:00+00
zurich	8045	8045		waste	2023-10-16 00:00:00+00
zurich	8045	8045		waste	2023-10-23 00:00:00+00
zurich	8045	8045		waste	2023-10-30 00:00:00+00
zurich	8045	8045		waste	2023-11-06 00:00:00+00
zurich	8045	8045		waste	2023-11-13 00:00:00+00
zurich	8045	8045		waste	2023-11-20 00:00:00+00
zurich	8045	8045		waste	2023-11-27 00:00:00+00
zurich	8045	8045		waste	2023-12-04 00:00:00+00
zurich	8045	8045		waste	2023-12-11 00:00:00+00
zurich	8045	8045		waste	2023-12-18 00:00:00+00
zurich	8045	8045		waste	2023-12-23 00:00:00+00
zurich	8045	8045		waste	2023-12-30 00:00:00+00
zurich	8046	8046		waste	2023-01-04 00:00:00+00
zurich	8046	8046		waste	2023-01-11 00:00:00+00
zurich	8046	8046		waste	2023-01-18 00:00:00+00
zurich	8046	8046		waste	2023-01-25 00:00:00+00
zurich	8046	8046		waste	2023-02-01 00:00:00+00
zurich	8046	8046		waste	2023-02-08 00:00:00+00
zurich	8046	8046		waste	2023-02-15 00:00:00+00
zurich	8046	8046		waste	2023-02-22 00:00:00+00
zurich	8046	8046		waste	2023-03-01 00:00:00+00
zurich	8046	8046		waste	2023-03-08 00:00:00+00
zurich	8046	8046		waste	2023-03-15 00:00:00+00
zurich	8046	8046		waste	2023-03-22 00:00:00+00
zurich	8046	8046		waste	2023-03-29 00:00:00+00
zurich	8046	8046		waste	2023-04-05 00:00:00+00
zurich	8046	8046		waste	2023-04-12 00:00:00+00
zurich	8046	8046		waste	2023-04-19 00:00:00+00
zurich	8046	8046		waste	2023-04-26 00:00:00+00
zurich	8046	8046		waste	2023-05-03 00:00:00+00
zurich	8046	8046		waste	2023-05-10 00:00:00+00
zurich	8046	8046		waste	2023-05-17 00:00:00+00
zurich	8046	8046		waste	2023-05-24 00:00:00+00
zurich	8046	8046		waste	2023-05-31 00:00:00+00
zurich	8046	8046		waste	2023-06-07 00:00:00+00
zurich	8046	8046		waste	2023-06-14 00:00:00+00
zurich	8046	8046		waste	2023-06-21 00:00:00+00
zurich	8046	8046		waste	2023-06-28 00:00:00+00
zurich	8046	8046		waste	2023-07-05 00:00:00+00
zurich	8046	8046		waste	2023-07-12 00:00:00+00
zurich	8046	8046		waste	2023-07-19 00:00:00+00
zurich	8046	8046		waste	2023-07-26 00:00:00+00
zurich	8046	8046		waste	2023-08-02 00:00:00+00
zurich	8046	8046		waste	2023-08-09 00:00:00+00
zurich	8046	8046		waste	2023-08-16 00:00:00+00
zurich	8046	8046		waste	2023-08-23 00:00:00+00
zurich	8046	8046		waste	2023-08-30 00:00:00+00
zurich	8046	8046		waste	2023-09-06 00:00:00+00
zurich	8046	8046		waste	2023-09-13 00:00:00+00
zurich	8046	8046		waste	2023-09-20 00:00:00+00
zurich	8046	8046		waste	2023-09-27 00:00:00+00
zurich	8046	8046		waste	2023-10-04 00:00:00+00
zurich	8046	8046		waste	2023-10-11 00:00:00+00
zurich	8046	8046		waste	2023-10-18 00:00:00+00
zurich	8046	8046		waste	2023-10-25 00:00:00+00
zurich	8046	8046		waste	2023-11-01 00:00:00+00
zurich	8046	8046		waste	2023-11-08 00:00:00+00
zurich	8046	8046		waste	2023-11-15 00:00:00+00
zurich	8046	8046		waste	2023-11-22 00:00:00+00
zurich	8046	8046		waste	2023-11-29 00:00:00+00
zurich	8046	8046		waste	2023-12-06 00:00:00+00
zurich	8046	8046		waste	2023-12-13 00:00:00+00
zurich	8046	8046		waste	2023-12-20 00:00:00+00
zurich	8046	8046		waste	2023-12-27 00:00:00+00
zurich	8047	8047		waste	2023-01-03 00:00:00+00
zurich	8047	8047		waste	2023-01-10 00:00:00+00
zurich	8047	8047		waste	2023-01-17 00:00:00+00
zurich	8047	8047		waste	2023-01-24 00:00:00+00
zurich	8047	8047		waste	2023-01-31 00:00:00+00
zurich	8047	8047		waste	2023-02-07 00:00:00+00
zurich	8047	8047		waste	2023-02-14 00:00:00+00
zurich	8047	8047		waste	2023-02-21 00:00:00+00
zurich	8047	8047		waste	2023-02-28 00:00:00+00
zurich	8047	8047		waste	2023-03-07 00:00:00+00
zurich	8047	8047		waste	2023-03-14 00:00:00+00
zurich	8047	8047		waste	2023-03-21 00:00:00+00
zurich	8047	8047		waste	2023-03-28 00:00:00+00
zurich	8047	8047		waste	2023-04-04 00:00:00+00
zurich	8047	8047		waste	2023-04-11 00:00:00+00
zurich	8047	8047		waste	2023-04-18 00:00:00+00
zurich	8047	8047		waste	2023-04-25 00:00:00+00
zurich	8047	8047		waste	2023-05-02 00:00:00+00
zurich	8047	8047		waste	2023-05-09 00:00:00+00
zurich	8047	8047		waste	2023-05-16 00:00:00+00
zurich	8047	8047		waste	2023-05-23 00:00:00+00
zurich	8047	8047		waste	2023-05-30 00:00:00+00
zurich	8047	8047		waste	2023-06-06 00:00:00+00
zurich	8047	8047		waste	2023-06-13 00:00:00+00
zurich	8047	8047		waste	2023-06-20 00:00:00+00
zurich	8047	8047		waste	2023-06-27 00:00:00+00
zurich	8047	8047		waste	2023-07-04 00:00:00+00
zurich	8047	8047		waste	2023-07-11 00:00:00+00
zurich	8047	8047		waste	2023-07-18 00:00:00+00
zurich	8047	8047		waste	2023-07-25 00:00:00+00
zurich	8047	8047		waste	2023-07-29 00:00:00+00
zurich	8047	8047		waste	2023-08-08 00:00:00+00
zurich	8047	8047		waste	2023-08-15 00:00:00+00
zurich	8047	8047		waste	2023-08-22 00:00:00+00
zurich	8047	8047		waste	2023-08-29 00:00:00+00
zurich	8047	8047		waste	2023-09-05 00:00:00+00
zurich	8047	8047		waste	2023-09-12 00:00:00+00
zurich	8047	8047		waste	2023-09-19 00:00:00+00
zurich	8047	8047		waste	2023-09-26 00:00:00+00
zurich	8047	8047		waste	2023-10-03 00:00:00+00
zurich	8047	8047		waste	2023-10-10 00:00:00+00
zurich	8047	8047		waste	2023-10-17 00:00:00+00
zurich	8047	8047		waste	2023-10-24 00:00:00+00
zurich	8047	8047		waste	2023-10-31 00:00:00+00
zurich	8047	8047		waste	2023-11-07 00:00:00+00
zurich	8047	8047		waste	2023-11-14 00:00:00+00
zurich	8047	8047		waste	2023-11-21 00:00:00+00
zurich	8047	8047		waste	2023-11-28 00:00:00+00
zurich	8047	8047		waste	2023-12-05 00:00:00+00
zurich	8047	8047		waste	2023-12-12 00:00:00+00
zurich	8047	8047		waste	2023-12-19 00:00:00+00
zurich	8047	8047		waste	2023-12-23 00:00:00+00
zurich	8047	8047		waste	2023-12-30 00:00:00+00
zurich	8048	8048		waste	2023-01-03 00:00:00+00
zurich	8048	8048		waste	2023-01-10 00:00:00+00
zurich	8048	8048		waste	2023-01-17 00:00:00+00
zurich	8048	8048		waste	2023-01-24 00:00:00+00
zurich	8048	8048		waste	2023-01-31 00:00:00+00
zurich	8048	8048		waste	2023-02-07 00:00:00+00
zurich	8048	8048		waste	2023-02-14 00:00:00+00
zurich	8048	8048		waste	2023-02-21 00:00:00+00
zurich	8048	8048		waste	2023-02-28 00:00:00+00
zurich	8048	8048		waste	2023-03-07 00:00:00+00
zurich	8048	8048		waste	2023-03-14 00:00:00+00
zurich	8048	8048		waste	2023-03-21 00:00:00+00
zurich	8048	8048		waste	2023-03-28 00:00:00+00
zurich	8048	8048		waste	2023-04-04 00:00:00+00
zurich	8048	8048		waste	2023-04-11 00:00:00+00
zurich	8048	8048		waste	2023-04-18 00:00:00+00
zurich	8048	8048		waste	2023-04-25 00:00:00+00
zurich	8048	8048		waste	2023-05-02 00:00:00+00
zurich	8048	8048		waste	2023-05-09 00:00:00+00
zurich	8048	8048		waste	2023-05-16 00:00:00+00
zurich	8048	8048		waste	2023-05-23 00:00:00+00
zurich	8048	8048		waste	2023-05-30 00:00:00+00
zurich	8048	8048		waste	2023-06-06 00:00:00+00
zurich	8048	8048		waste	2023-06-13 00:00:00+00
zurich	8048	8048		waste	2023-06-20 00:00:00+00
zurich	8048	8048		waste	2023-06-27 00:00:00+00
zurich	8048	8048		waste	2023-07-04 00:00:00+00
zurich	8048	8048		waste	2023-07-11 00:00:00+00
zurich	8048	8048		waste	2023-07-18 00:00:00+00
zurich	8048	8048		waste	2023-07-25 00:00:00+00
zurich	8048	8048		waste	2023-07-29 00:00:00+00
zurich	8048	8048		waste	2023-08-08 00:00:00+00
zurich	8048	8048		waste	2023-08-15 00:00:00+00
zurich	8048	8048		waste	2023-08-22 00:00:00+00
zurich	8048	8048		waste	2023-08-29 00:00:00+00
zurich	8048	8048		waste	2023-09-05 00:00:00+00
zurich	8048	8048		waste	2023-09-12 00:00:00+00
zurich	8048	8048		waste	2023-09-19 00:00:00+00
zurich	8048	8048		waste	2023-09-26 00:00:00+00
zurich	8048	8048		waste	2023-10-03 00:00:00+00
zurich	8048	8048		waste	2023-10-10 00:00:00+00
zurich	8048	8048		waste	2023-10-17 00:00:00+00
zurich	8048	8048		waste	2023-10-24 00:00:00+00
zurich	8048	8048		waste	2023-10-31 00:00:00+00
zurich	8048	8048		waste	2023-11-07 00:00:00+00
zurich	8048	8048		waste	2023-11-14 00:00:00+00
zurich	8048	8048		waste	2023-11-21 00:00:00+00
zurich	8048	8048		waste	2023-11-28 00:00:00+00
zurich	8048	8048		waste	2023-12-05 00:00:00+00
zurich	8048	8048		waste	2023-12-12 00:00:00+00
zurich	8048	8048		waste	2023-12-19 00:00:00+00
zurich	8048	8048		waste	2023-12-23 00:00:00+00
zurich	8048	8048		waste	2023-12-30 00:00:00+00
zurich	8049	8049		waste	2023-01-04 00:00:00+00
zurich	8049	8049		waste	2023-01-11 00:00:00+00
zurich	8049	8049		waste	2023-01-18 00:00:00+00
zurich	8049	8049		waste	2023-01-25 00:00:00+00
zurich	8049	8049		waste	2023-02-01 00:00:00+00
zurich	8049	8049		waste	2023-02-08 00:00:00+00
zurich	8049	8049		waste	2023-02-15 00:00:00+00
zurich	8049	8049		waste	2023-02-22 00:00:00+00
zurich	8049	8049		waste	2023-03-01 00:00:00+00
zurich	8049	8049		waste	2023-03-08 00:00:00+00
zurich	8049	8049		waste	2023-03-15 00:00:00+00
zurich	8049	8049		waste	2023-03-22 00:00:00+00
zurich	8049	8049		waste	2023-03-29 00:00:00+00
zurich	8049	8049		waste	2023-04-05 00:00:00+00
zurich	8049	8049		waste	2023-04-12 00:00:00+00
zurich	8049	8049		waste	2023-04-19 00:00:00+00
zurich	8049	8049		waste	2023-04-26 00:00:00+00
zurich	8049	8049		waste	2023-05-03 00:00:00+00
zurich	8049	8049		waste	2023-05-10 00:00:00+00
zurich	8049	8049		waste	2023-05-17 00:00:00+00
zurich	8049	8049		waste	2023-05-24 00:00:00+00
zurich	8049	8049		waste	2023-05-31 00:00:00+00
zurich	8049	8049		waste	2023-06-07 00:00:00+00
zurich	8049	8049		waste	2023-06-14 00:00:00+00
zurich	8049	8049		waste	2023-06-21 00:00:00+00
zurich	8049	8049		waste	2023-06-28 00:00:00+00
zurich	8049	8049		waste	2023-07-05 00:00:00+00
zurich	8049	8049		waste	2023-07-12 00:00:00+00
zurich	8049	8049		waste	2023-07-19 00:00:00+00
zurich	8049	8049		waste	2023-07-26 00:00:00+00
zurich	8049	8049		waste	2023-08-02 00:00:00+00
zurich	8049	8049		waste	2023-08-09 00:00:00+00
zurich	8049	8049		waste	2023-08-16 00:00:00+00
zurich	8049	8049		waste	2023-08-23 00:00:00+00
zurich	8049	8049		waste	2023-08-30 00:00:00+00
zurich	8049	8049		waste	2023-09-06 00:00:00+00
zurich	8049	8049		waste	2023-09-13 00:00:00+00
zurich	8049	8049		waste	2023-09-20 00:00:00+00
zurich	8049	8049		waste	2023-09-27 00:00:00+00
zurich	8049	8049		waste	2023-10-04 00:00:00+00
zurich	8049	8049		waste	2023-10-11 00:00:00+00
zurich	8049	8049		waste	2023-10-18 00:00:00+00
zurich	8049	8049		waste	2023-10-25 00:00:00+00
zurich	8049	8049		waste	2023-11-01 00:00:00+00
zurich	8049	8049		waste	2023-11-08 00:00:00+00
zurich	8049	8049		waste	2023-11-15 00:00:00+00
zurich	8049	8049		waste	2023-11-22 00:00:00+00
zurich	8049	8049		waste	2023-11-29 00:00:00+00
zurich	8049	8049		waste	2023-12-06 00:00:00+00
zurich	8049	8049		waste	2023-12-13 00:00:00+00
zurich	8049	8049		waste	2023-12-20 00:00:00+00
zurich	8049	8049		waste	2023-12-27 00:00:00+00
zurich	8050	8050		waste	2023-01-04 00:00:00+00
zurich	8050	8050		waste	2023-01-11 00:00:00+00
zurich	8050	8050		waste	2023-01-18 00:00:00+00
zurich	8050	8050		waste	2023-01-25 00:00:00+00
zurich	8050	8050		waste	2023-02-01 00:00:00+00
zurich	8050	8050		waste	2023-02-08 00:00:00+00
zurich	8050	8050		waste	2023-02-15 00:00:00+00
zurich	8050	8050		waste	2023-02-22 00:00:00+00
zurich	8050	8050		waste	2023-03-01 00:00:00+00
zurich	8050	8050		waste	2023-03-08 00:00:00+00
zurich	8050	8050		waste	2023-03-15 00:00:00+00
zurich	8050	8050		waste	2023-03-22 00:00:00+00
zurich	8050	8050		waste	2023-03-29 00:00:00+00
zurich	8050	8050		waste	2023-04-05 00:00:00+00
zurich	8050	8050		waste	2023-04-12 00:00:00+00
zurich	8050	8050		waste	2023-04-19 00:00:00+00
zurich	8050	8050		waste	2023-04-26 00:00:00+00
zurich	8050	8050		waste	2023-05-03 00:00:00+00
zurich	8050	8050		waste	2023-05-10 00:00:00+00
zurich	8050	8050		waste	2023-05-17 00:00:00+00
zurich	8050	8050		waste	2023-05-24 00:00:00+00
zurich	8050	8050		waste	2023-05-31 00:00:00+00
zurich	8050	8050		waste	2023-06-07 00:00:00+00
zurich	8050	8050		waste	2023-06-14 00:00:00+00
zurich	8050	8050		waste	2023-06-21 00:00:00+00
zurich	8050	8050		waste	2023-06-28 00:00:00+00
zurich	8050	8050		waste	2023-07-05 00:00:00+00
zurich	8050	8050		waste	2023-07-12 00:00:00+00
zurich	8050	8050		waste	2023-07-19 00:00:00+00
zurich	8050	8050		waste	2023-07-26 00:00:00+00
zurich	8050	8050		waste	2023-08-02 00:00:00+00
zurich	8050	8050		waste	2023-08-09 00:00:00+00
zurich	8050	8050		waste	2023-08-16 00:00:00+00
zurich	8050	8050		waste	2023-08-23 00:00:00+00
zurich	8050	8050		waste	2023-08-30 00:00:00+00
zurich	8050	8050		waste	2023-09-06 00:00:00+00
zurich	8050	8050		waste	2023-09-13 00:00:00+00
zurich	8050	8050		waste	2023-09-20 00:00:00+00
zurich	8050	8050		waste	2023-09-27 00:00:00+00
zurich	8050	8050		waste	2023-10-04 00:00:00+00
zurich	8050	8050		waste	2023-10-11 00:00:00+00
zurich	8050	8050		waste	2023-10-18 00:00:00+00
zurich	8050	8050		waste	2023-10-25 00:00:00+00
zurich	8050	8050		waste	2023-11-01 00:00:00+00
zurich	8050	8050		waste	2023-11-08 00:00:00+00
zurich	8050	8050		waste	2023-11-15 00:00:00+00
zurich	8050	8050		waste	2023-11-22 00:00:00+00
zurich	8050	8050		waste	2023-11-29 00:00:00+00
zurich	8050	8050		waste	2023-12-06 00:00:00+00
zurich	8050	8050		waste	2023-12-13 00:00:00+00
zurich	8050	8050		waste	2023-12-20 00:00:00+00
zurich	8050	8050		waste	2023-12-27 00:00:00+00
zurich	8051	8051		waste	2023-01-04 00:00:00+00
zurich	8051	8051		waste	2023-01-11 00:00:00+00
zurich	8051	8051		waste	2023-01-18 00:00:00+00
zurich	8051	8051		waste	2023-01-25 00:00:00+00
zurich	8051	8051		waste	2023-02-01 00:00:00+00
zurich	8051	8051		waste	2023-02-08 00:00:00+00
zurich	8051	8051		waste	2023-02-15 00:00:00+00
zurich	8051	8051		waste	2023-02-22 00:00:00+00
zurich	8051	8051		waste	2023-03-01 00:00:00+00
zurich	8051	8051		waste	2023-03-08 00:00:00+00
zurich	8051	8051		waste	2023-03-15 00:00:00+00
zurich	8051	8051		waste	2023-03-22 00:00:00+00
zurich	8051	8051		waste	2023-03-29 00:00:00+00
zurich	8051	8051		waste	2023-04-05 00:00:00+00
zurich	8051	8051		waste	2023-04-12 00:00:00+00
zurich	8051	8051		waste	2023-04-19 00:00:00+00
zurich	8051	8051		waste	2023-04-26 00:00:00+00
zurich	8051	8051		waste	2023-05-03 00:00:00+00
zurich	8051	8051		waste	2023-05-10 00:00:00+00
zurich	8051	8051		waste	2023-05-17 00:00:00+00
zurich	8051	8051		waste	2023-05-24 00:00:00+00
zurich	8051	8051		waste	2023-05-31 00:00:00+00
zurich	8051	8051		waste	2023-06-07 00:00:00+00
zurich	8051	8051		waste	2023-06-14 00:00:00+00
zurich	8051	8051		waste	2023-06-21 00:00:00+00
zurich	8051	8051		waste	2023-06-28 00:00:00+00
zurich	8051	8051		waste	2023-07-05 00:00:00+00
zurich	8051	8051		waste	2023-07-12 00:00:00+00
zurich	8051	8051		waste	2023-07-19 00:00:00+00
zurich	8051	8051		waste	2023-07-26 00:00:00+00
zurich	8051	8051		waste	2023-08-02 00:00:00+00
zurich	8051	8051		waste	2023-08-09 00:00:00+00
zurich	8051	8051		waste	2023-08-16 00:00:00+00
zurich	8051	8051		waste	2023-08-23 00:00:00+00
zurich	8051	8051		waste	2023-08-30 00:00:00+00
zurich	8051	8051		waste	2023-09-06 00:00:00+00
zurich	8051	8051		waste	2023-09-13 00:00:00+00
zurich	8051	8051		waste	2023-09-20 00:00:00+00
zurich	8051	8051		waste	2023-09-27 00:00:00+00
zurich	8051	8051		waste	2023-10-04 00:00:00+00
zurich	8051	8051		waste	2023-10-11 00:00:00+00
zurich	8051	8051		waste	2023-10-18 00:00:00+00
zurich	8051	8051		waste	2023-10-25 00:00:00+00
zurich	8051	8051		waste	2023-11-01 00:00:00+00
zurich	8051	8051		waste	2023-11-08 00:00:00+00
zurich	8051	8051		waste	2023-11-15 00:00:00+00
zurich	8051	8051		waste	2023-11-22 00:00:00+00
zurich	8051	8051		waste	2023-11-29 00:00:00+00
zurich	8051	8051		waste	2023-12-06 00:00:00+00
zurich	8051	8051		waste	2023-12-13 00:00:00+00
zurich	8051	8051		waste	2023-12-20 00:00:00+00
zurich	8051	8051		waste	2023-12-27 00:00:00+00
zurich	8052	8052		waste	2023-01-04 00:00:00+00
zurich	8052	8052		waste	2023-01-11 00:00:00+00
zurich	8052	8052		waste	2023-01-18 00:00:00+00
zurich	8052	8052		waste	2023-01-25 00:00:00+00
zurich	8052	8052		waste	2023-02-01 00:00:00+00
zurich	8052	8052		waste	2023-02-08 00:00:00+00
zurich	8052	8052		waste	2023-02-15 00:00:00+00
zurich	8052	8052		waste	2023-02-22 00:00:00+00
zurich	8052	8052		waste	2023-03-01 00:00:00+00
zurich	8052	8052		waste	2023-03-08 00:00:00+00
zurich	8052	8052		waste	2023-03-15 00:00:00+00
zurich	8052	8052		waste	2023-03-22 00:00:00+00
zurich	8052	8052		waste	2023-03-29 00:00:00+00
zurich	8052	8052		waste	2023-04-05 00:00:00+00
zurich	8052	8052		waste	2023-04-12 00:00:00+00
zurich	8052	8052		waste	2023-04-19 00:00:00+00
zurich	8052	8052		waste	2023-04-26 00:00:00+00
zurich	8052	8052		waste	2023-05-03 00:00:00+00
zurich	8052	8052		waste	2023-05-10 00:00:00+00
zurich	8052	8052		waste	2023-05-17 00:00:00+00
zurich	8052	8052		waste	2023-05-24 00:00:00+00
zurich	8052	8052		waste	2023-05-31 00:00:00+00
zurich	8052	8052		waste	2023-06-07 00:00:00+00
zurich	8052	8052		waste	2023-06-14 00:00:00+00
zurich	8052	8052		waste	2023-06-21 00:00:00+00
zurich	8052	8052		waste	2023-06-28 00:00:00+00
zurich	8052	8052		waste	2023-07-05 00:00:00+00
zurich	8052	8052		waste	2023-07-12 00:00:00+00
zurich	8052	8052		waste	2023-07-19 00:00:00+00
zurich	8052	8052		waste	2023-07-26 00:00:00+00
zurich	8052	8052		waste	2023-08-02 00:00:00+00
zurich	8052	8052		waste	2023-08-09 00:00:00+00
zurich	8052	8052		waste	2023-08-16 00:00:00+00
zurich	8052	8052		waste	2023-08-23 00:00:00+00
zurich	8052	8052		waste	2023-08-30 00:00:00+00
zurich	8052	8052		waste	2023-09-06 00:00:00+00
zurich	8052	8052		waste	2023-09-13 00:00:00+00
zurich	8052	8052		waste	2023-09-20 00:00:00+00
zurich	8052	8052		waste	2023-09-27 00:00:00+00
zurich	8052	8052		waste	2023-10-04 00:00:00+00
zurich	8052	8052		waste	2023-10-11 00:00:00+00
zurich	8052	8052		waste	2023-10-18 00:00:00+00
zurich	8052	8052		waste	2023-10-25 00:00:00+00
zurich	8052	8052		waste	2023-11-01 00:00:00+00
zurich	8052	8052		waste	2023-11-08 00:00:00+00
zurich	8052	8052		waste	2023-11-15 00:00:00+00
zurich	8052	8052		waste	2023-11-22 00:00:00+00
zurich	8052	8052		waste	2023-11-29 00:00:00+00
zurich	8052	8052		waste	2023-12-06 00:00:00+00
zurich	8052	8052		waste	2023-12-13 00:00:00+00
zurich	8052	8052		waste	2023-12-20 00:00:00+00
zurich	8052	8052		waste	2023-12-27 00:00:00+00
zurich	8053	8053		waste	2023-01-05 00:00:00+00
zurich	8053	8053		waste	2023-01-12 00:00:00+00
zurich	8053	8053		waste	2023-01-19 00:00:00+00
zurich	8053	8053		waste	2023-01-26 00:00:00+00
zurich	8053	8053		waste	2023-02-02 00:00:00+00
zurich	8053	8053		waste	2023-02-09 00:00:00+00
zurich	8053	8053		waste	2023-02-16 00:00:00+00
zurich	8053	8053		waste	2023-02-23 00:00:00+00
zurich	8053	8053		waste	2023-03-02 00:00:00+00
zurich	8053	8053		waste	2023-03-09 00:00:00+00
zurich	8053	8053		waste	2023-03-16 00:00:00+00
zurich	8053	8053		waste	2023-03-23 00:00:00+00
zurich	8053	8053		waste	2023-03-30 00:00:00+00
zurich	8053	8053		waste	2023-04-06 00:00:00+00
zurich	8053	8053		waste	2023-04-13 00:00:00+00
zurich	8053	8053		waste	2023-04-20 00:00:00+00
zurich	8053	8053		waste	2023-04-27 00:00:00+00
zurich	8053	8053		waste	2023-05-04 00:00:00+00
zurich	8053	8053		waste	2023-05-11 00:00:00+00
zurich	8053	8053		waste	2023-05-20 00:00:00+00
zurich	8053	8053		waste	2023-05-25 00:00:00+00
zurich	8053	8053		waste	2023-06-01 00:00:00+00
zurich	8053	8053		waste	2023-06-08 00:00:00+00
zurich	8053	8053		waste	2023-06-15 00:00:00+00
zurich	8053	8053		waste	2023-06-22 00:00:00+00
zurich	8053	8053		waste	2023-06-29 00:00:00+00
zurich	8053	8053		waste	2023-07-06 00:00:00+00
zurich	8053	8053		waste	2023-07-13 00:00:00+00
zurich	8053	8053		waste	2023-07-20 00:00:00+00
zurich	8053	8053		waste	2023-07-27 00:00:00+00
zurich	8053	8053		waste	2023-08-03 00:00:00+00
zurich	8053	8053		waste	2023-08-10 00:00:00+00
zurich	8053	8053		waste	2023-08-17 00:00:00+00
zurich	8053	8053		waste	2023-08-24 00:00:00+00
zurich	8053	8053		waste	2023-08-31 00:00:00+00
zurich	8053	8053		waste	2023-09-07 00:00:00+00
zurich	8053	8053		waste	2023-09-14 00:00:00+00
zurich	8053	8053		waste	2023-09-21 00:00:00+00
zurich	8053	8053		waste	2023-09-28 00:00:00+00
zurich	8053	8053		waste	2023-10-05 00:00:00+00
zurich	8053	8053		waste	2023-10-12 00:00:00+00
zurich	8053	8053		waste	2023-10-19 00:00:00+00
zurich	8053	8053		waste	2023-10-26 00:00:00+00
zurich	8053	8053		waste	2023-11-02 00:00:00+00
zurich	8053	8053		waste	2023-11-09 00:00:00+00
zurich	8053	8053		waste	2023-11-16 00:00:00+00
zurich	8053	8053		waste	2023-11-23 00:00:00+00
zurich	8053	8053		waste	2023-11-30 00:00:00+00
zurich	8053	8053		waste	2023-12-07 00:00:00+00
zurich	8053	8053		waste	2023-12-14 00:00:00+00
zurich	8053	8053		waste	2023-12-21 00:00:00+00
zurich	8053	8053		waste	2023-12-28 00:00:00+00
zurich	8055	8055		waste	2023-01-09 00:00:00+00
zurich	8055	8055		waste	2023-01-16 00:00:00+00
zurich	8055	8055		waste	2023-01-23 00:00:00+00
zurich	8055	8055		waste	2023-01-30 00:00:00+00
zurich	8055	8055		waste	2023-02-06 00:00:00+00
zurich	8055	8055		waste	2023-02-13 00:00:00+00
zurich	8055	8055		waste	2023-02-20 00:00:00+00
zurich	8055	8055		waste	2023-02-27 00:00:00+00
zurich	8055	8055		waste	2023-03-06 00:00:00+00
zurich	8055	8055		waste	2023-03-13 00:00:00+00
zurich	8055	8055		waste	2023-03-20 00:00:00+00
zurich	8055	8055		waste	2023-03-27 00:00:00+00
zurich	8055	8055		waste	2023-04-03 00:00:00+00
zurich	8055	8055		waste	2023-04-08 00:00:00+00
zurich	8055	8055		waste	2023-04-17 00:00:00+00
zurich	8055	8055		waste	2023-04-24 00:00:00+00
zurich	8055	8055		waste	2023-04-29 00:00:00+00
zurich	8055	8055		waste	2023-05-08 00:00:00+00
zurich	8055	8055		waste	2023-05-15 00:00:00+00
zurich	8055	8055		waste	2023-05-22 00:00:00+00
zurich	8055	8055		waste	2023-05-27 00:00:00+00
zurich	8055	8055		waste	2023-06-05 00:00:00+00
zurich	8055	8055		waste	2023-06-12 00:00:00+00
zurich	8055	8055		waste	2023-06-19 00:00:00+00
zurich	8055	8055		waste	2023-06-26 00:00:00+00
zurich	8055	8055		waste	2023-07-03 00:00:00+00
zurich	8055	8055		waste	2023-07-10 00:00:00+00
zurich	8055	8055		waste	2023-07-17 00:00:00+00
zurich	8055	8055		waste	2023-07-24 00:00:00+00
zurich	8055	8055		waste	2023-07-31 00:00:00+00
zurich	8055	8055		waste	2023-08-07 00:00:00+00
zurich	8055	8055		waste	2023-08-14 00:00:00+00
zurich	8055	8055		waste	2023-08-21 00:00:00+00
zurich	8055	8055		waste	2023-08-28 00:00:00+00
zurich	8055	8055		waste	2023-09-04 00:00:00+00
zurich	8055	8055		waste	2023-09-11 00:00:00+00
zurich	8055	8055		waste	2023-09-18 00:00:00+00
zurich	8055	8055		waste	2023-09-25 00:00:00+00
zurich	8055	8055		waste	2023-10-02 00:00:00+00
zurich	8055	8055		waste	2023-10-09 00:00:00+00
zurich	8055	8055		waste	2023-10-16 00:00:00+00
zurich	8055	8055		waste	2023-10-23 00:00:00+00
zurich	8055	8055		waste	2023-10-30 00:00:00+00
zurich	8055	8055		waste	2023-11-06 00:00:00+00
zurich	8055	8055		waste	2023-11-13 00:00:00+00
zurich	8055	8055		waste	2023-11-20 00:00:00+00
zurich	8055	8055		waste	2023-11-27 00:00:00+00
zurich	8055	8055		waste	2023-12-04 00:00:00+00
zurich	8055	8055		waste	2023-12-11 00:00:00+00
zurich	8055	8055		waste	2023-12-18 00:00:00+00
zurich	8055	8055		waste	2023-12-23 00:00:00+00
zurich	8055	8055		waste	2023-12-30 00:00:00+00
zurich	8057	8057		waste	2023-01-05 00:00:00+00
zurich	8057	8057		waste	2023-01-12 00:00:00+00
zurich	8057	8057		waste	2023-01-19 00:00:00+00
zurich	8057	8057		waste	2023-01-26 00:00:00+00
zurich	8057	8057		waste	2023-02-02 00:00:00+00
zurich	8057	8057		waste	2023-02-09 00:00:00+00
zurich	8057	8057		waste	2023-02-16 00:00:00+00
zurich	8057	8057		waste	2023-02-23 00:00:00+00
zurich	8057	8057		waste	2023-03-02 00:00:00+00
zurich	8057	8057		waste	2023-03-09 00:00:00+00
zurich	8057	8057		waste	2023-03-16 00:00:00+00
zurich	8057	8057		waste	2023-03-23 00:00:00+00
zurich	8057	8057		waste	2023-03-30 00:00:00+00
zurich	8057	8057		waste	2023-04-06 00:00:00+00
zurich	8057	8057		waste	2023-04-13 00:00:00+00
zurich	8057	8057		waste	2023-04-20 00:00:00+00
zurich	8057	8057		waste	2023-04-27 00:00:00+00
zurich	8057	8057		waste	2023-05-04 00:00:00+00
zurich	8057	8057		waste	2023-05-11 00:00:00+00
zurich	8057	8057		waste	2023-05-20 00:00:00+00
zurich	8057	8057		waste	2023-05-25 00:00:00+00
zurich	8057	8057		waste	2023-06-01 00:00:00+00
zurich	8057	8057		waste	2023-06-08 00:00:00+00
zurich	8057	8057		waste	2023-06-15 00:00:00+00
zurich	8057	8057		waste	2023-06-22 00:00:00+00
zurich	8057	8057		waste	2023-06-29 00:00:00+00
zurich	8057	8057		waste	2023-07-06 00:00:00+00
zurich	8057	8057		waste	2023-07-13 00:00:00+00
zurich	8057	8057		waste	2023-07-20 00:00:00+00
zurich	8057	8057		waste	2023-07-27 00:00:00+00
zurich	8057	8057		waste	2023-08-03 00:00:00+00
zurich	8057	8057		waste	2023-08-10 00:00:00+00
zurich	8057	8057		waste	2023-08-17 00:00:00+00
zurich	8057	8057		waste	2023-08-24 00:00:00+00
zurich	8057	8057		waste	2023-08-31 00:00:00+00
zurich	8057	8057		waste	2023-09-07 00:00:00+00
zurich	8057	8057		waste	2023-09-14 00:00:00+00
zurich	8057	8057		waste	2023-09-21 00:00:00+00
zurich	8057	8057		waste	2023-09-28 00:00:00+00
zurich	8057	8057		waste	2023-10-05 00:00:00+00
zurich	8057	8057		waste	2023-10-12 00:00:00+00
zurich	8057	8057		waste	2023-10-19 00:00:00+00
zurich	8057	8057		waste	2023-10-26 00:00:00+00
zurich	8057	8057		waste	2023-11-02 00:00:00+00
zurich	8057	8057		waste	2023-11-09 00:00:00+00
zurich	8057	8057		waste	2023-11-16 00:00:00+00
zurich	8057	8057		waste	2023-11-23 00:00:00+00
zurich	8057	8057		waste	2023-11-30 00:00:00+00
zurich	8057	8057		waste	2023-12-07 00:00:00+00
zurich	8057	8057		waste	2023-12-14 00:00:00+00
zurich	8057	8057		waste	2023-12-21 00:00:00+00
zurich	8057	8057		waste	2023-12-28 00:00:00+00
zurich	8064	8064		waste	2023-01-03 00:00:00+00
zurich	8064	8064		waste	2023-01-10 00:00:00+00
zurich	8064	8064		waste	2023-01-17 00:00:00+00
zurich	8064	8064		waste	2023-01-24 00:00:00+00
zurich	8064	8064		waste	2023-01-31 00:00:00+00
zurich	8064	8064		waste	2023-02-07 00:00:00+00
zurich	8064	8064		waste	2023-02-14 00:00:00+00
zurich	8064	8064		waste	2023-02-21 00:00:00+00
zurich	8064	8064		waste	2023-02-28 00:00:00+00
zurich	8064	8064		waste	2023-03-07 00:00:00+00
zurich	8064	8064		waste	2023-03-14 00:00:00+00
zurich	8064	8064		waste	2023-03-21 00:00:00+00
zurich	8064	8064		waste	2023-03-28 00:00:00+00
zurich	8064	8064		waste	2023-04-04 00:00:00+00
zurich	8064	8064		waste	2023-04-11 00:00:00+00
zurich	8064	8064		waste	2023-04-18 00:00:00+00
zurich	8064	8064		waste	2023-04-25 00:00:00+00
zurich	8064	8064		waste	2023-05-02 00:00:00+00
zurich	8064	8064		waste	2023-05-09 00:00:00+00
zurich	8064	8064		waste	2023-05-16 00:00:00+00
zurich	8064	8064		waste	2023-05-23 00:00:00+00
zurich	8064	8064		waste	2023-05-30 00:00:00+00
zurich	8064	8064		waste	2023-06-06 00:00:00+00
zurich	8064	8064		waste	2023-06-13 00:00:00+00
zurich	8064	8064		waste	2023-06-20 00:00:00+00
zurich	8064	8064		waste	2023-06-27 00:00:00+00
zurich	8064	8064		waste	2023-07-04 00:00:00+00
zurich	8064	8064		waste	2023-07-11 00:00:00+00
zurich	8064	8064		waste	2023-07-18 00:00:00+00
zurich	8064	8064		waste	2023-07-25 00:00:00+00
zurich	8064	8064		waste	2023-07-29 00:00:00+00
zurich	8064	8064		waste	2023-08-08 00:00:00+00
zurich	8064	8064		waste	2023-08-15 00:00:00+00
zurich	8064	8064		waste	2023-08-22 00:00:00+00
zurich	8064	8064		waste	2023-08-29 00:00:00+00
zurich	8064	8064		waste	2023-09-05 00:00:00+00
zurich	8064	8064		waste	2023-09-12 00:00:00+00
zurich	8064	8064		waste	2023-09-19 00:00:00+00
zurich	8064	8064		waste	2023-09-26 00:00:00+00
zurich	8064	8064		waste	2023-10-03 00:00:00+00
zurich	8064	8064		waste	2023-10-10 00:00:00+00
zurich	8064	8064		waste	2023-10-17 00:00:00+00
zurich	8064	8064		waste	2023-10-24 00:00:00+00
zurich	8064	8064		waste	2023-10-31 00:00:00+00
zurich	8064	8064		waste	2023-11-07 00:00:00+00
zurich	8064	8064		waste	2023-11-14 00:00:00+00
zurich	8064	8064		waste	2023-11-21 00:00:00+00
zurich	8064	8064		waste	2023-11-28 00:00:00+00
zurich	8064	8064		waste	2023-12-05 00:00:00+00
zurich	8064	8064		waste	2023-12-12 00:00:00+00
zurich	8064	8064		waste	2023-12-19 00:00:00+00
zurich	8064	8064		waste	2023-12-23 00:00:00+00
zurich	8064	8064		waste	2023-12-30 00:00:00+00
zurich	8001	8001		paper	2023-01-11 00:00:00+00
zurich	8001	8001		paper	2023-01-25 00:00:00+00
zurich	8001	8001		paper	2023-02-08 00:00:00+00
zurich	8001	8001		paper	2023-02-22 00:00:00+00
zurich	8001	8001		paper	2023-03-08 00:00:00+00
zurich	8001	8001		paper	2023-03-22 00:00:00+00
zurich	8001	8001		paper	2023-04-05 00:00:00+00
zurich	8001	8001		paper	2023-04-19 00:00:00+00
zurich	8001	8001		paper	2023-05-03 00:00:00+00
zurich	8001	8001		paper	2023-05-17 00:00:00+00
zurich	8001	8001		paper	2023-05-31 00:00:00+00
zurich	8001	8001		paper	2023-06-14 00:00:00+00
zurich	8001	8001		paper	2023-06-28 00:00:00+00
zurich	8001	8001		paper	2023-07-12 00:00:00+00
zurich	8001	8001		paper	2023-07-26 00:00:00+00
zurich	8001	8001		paper	2023-08-09 00:00:00+00
zurich	8001	8001		paper	2023-08-23 00:00:00+00
zurich	8001	8001		paper	2023-09-06 00:00:00+00
zurich	8001	8001		paper	2023-09-20 00:00:00+00
zurich	8001	8001		paper	2023-10-04 00:00:00+00
zurich	8001	8001		paper	2023-10-18 00:00:00+00
zurich	8001	8001		paper	2023-11-01 00:00:00+00
zurich	8001	8001		paper	2023-11-15 00:00:00+00
zurich	8001	8001		paper	2023-11-29 00:00:00+00
zurich	8001	8001		paper	2023-12-13 00:00:00+00
zurich	8001	8001		paper	2023-12-27 00:00:00+00
zurich	8002	8002		paper	2023-01-09 00:00:00+00
zurich	8002	8002		paper	2023-01-23 00:00:00+00
zurich	8002	8002		paper	2023-02-06 00:00:00+00
zurich	8002	8002		paper	2023-02-20 00:00:00+00
zurich	8002	8002		paper	2023-03-06 00:00:00+00
zurich	8002	8002		paper	2023-03-20 00:00:00+00
zurich	8002	8002		paper	2023-04-03 00:00:00+00
zurich	8002	8002		paper	2023-04-17 00:00:00+00
zurich	8002	8002		paper	2023-05-15 00:00:00+00
zurich	8002	8002		paper	2023-06-12 00:00:00+00
zurich	8002	8002		paper	2023-06-26 00:00:00+00
zurich	8002	8002		paper	2023-07-10 00:00:00+00
zurich	8002	8002		paper	2023-07-24 00:00:00+00
zurich	8002	8002		paper	2023-08-07 00:00:00+00
zurich	8002	8002		paper	2023-08-21 00:00:00+00
zurich	8002	8002		paper	2023-09-04 00:00:00+00
zurich	8002	8002		paper	2023-09-18 00:00:00+00
zurich	8002	8002		paper	2023-10-02 00:00:00+00
zurich	8002	8002		paper	2023-10-16 00:00:00+00
zurich	8002	8002		paper	2023-10-30 00:00:00+00
zurich	8002	8002		paper	2023-11-13 00:00:00+00
zurich	8002	8002		paper	2023-11-27 00:00:00+00
zurich	8002	8002		paper	2023-12-11 00:00:00+00
zurich	8003	8003		paper	2023-01-10 00:00:00+00
zurich	8003	8003		paper	2023-01-24 00:00:00+00
zurich	8003	8003		paper	2023-02-07 00:00:00+00
zurich	8003	8003		paper	2023-02-21 00:00:00+00
zurich	8003	8003		paper	2023-03-07 00:00:00+00
zurich	8003	8003		paper	2023-03-21 00:00:00+00
zurich	8003	8003		paper	2023-04-04 00:00:00+00
zurich	8003	8003		paper	2023-04-18 00:00:00+00
zurich	8003	8003		paper	2023-05-02 00:00:00+00
zurich	8003	8003		paper	2023-05-16 00:00:00+00
zurich	8003	8003		paper	2023-05-30 00:00:00+00
zurich	8003	8003		paper	2023-06-13 00:00:00+00
zurich	8003	8003		paper	2023-06-27 00:00:00+00
zurich	8003	8003		paper	2023-07-11 00:00:00+00
zurich	8003	8003		paper	2023-07-25 00:00:00+00
zurich	8003	8003		paper	2023-08-08 00:00:00+00
zurich	8003	8003		paper	2023-08-22 00:00:00+00
zurich	8003	8003		paper	2023-09-05 00:00:00+00
zurich	8003	8003		paper	2023-09-19 00:00:00+00
zurich	8003	8003		paper	2023-10-03 00:00:00+00
zurich	8003	8003		paper	2023-10-17 00:00:00+00
zurich	8003	8003		paper	2023-10-31 00:00:00+00
zurich	8003	8003		paper	2023-11-14 00:00:00+00
zurich	8003	8003		paper	2023-11-28 00:00:00+00
zurich	8003	8003		paper	2023-12-12 00:00:00+00
zurich	8004	8004		paper	2023-01-11 00:00:00+00
zurich	8004	8004		paper	2023-01-25 00:00:00+00
zurich	8004	8004		paper	2023-02-08 00:00:00+00
zurich	8004	8004		paper	2023-02-22 00:00:00+00
zurich	8004	8004		paper	2023-03-08 00:00:00+00
zurich	8004	8004		paper	2023-03-22 00:00:00+00
zurich	8004	8004		paper	2023-04-05 00:00:00+00
zurich	8004	8004		paper	2023-04-19 00:00:00+00
zurich	8004	8004		paper	2023-05-03 00:00:00+00
zurich	8004	8004		paper	2023-05-17 00:00:00+00
zurich	8004	8004		paper	2023-05-31 00:00:00+00
zurich	8004	8004		paper	2023-06-14 00:00:00+00
zurich	8004	8004		paper	2023-06-28 00:00:00+00
zurich	8004	8004		paper	2023-07-12 00:00:00+00
zurich	8004	8004		paper	2023-07-26 00:00:00+00
zurich	8004	8004		paper	2023-08-09 00:00:00+00
zurich	8004	8004		paper	2023-08-23 00:00:00+00
zurich	8004	8004		paper	2023-09-06 00:00:00+00
zurich	8004	8004		paper	2023-09-20 00:00:00+00
zurich	8004	8004		paper	2023-10-04 00:00:00+00
zurich	8004	8004		paper	2023-10-18 00:00:00+00
zurich	8004	8004		paper	2023-11-01 00:00:00+00
zurich	8004	8004		paper	2023-11-15 00:00:00+00
zurich	8004	8004		paper	2023-11-29 00:00:00+00
zurich	8004	8004		paper	2023-12-13 00:00:00+00
zurich	8004	8004		paper	2023-12-27 00:00:00+00
zurich	8005	8005		paper	2023-01-13 00:00:00+00
zurich	8005	8005		paper	2023-01-27 00:00:00+00
zurich	8005	8005		paper	2023-02-10 00:00:00+00
zurich	8005	8005		paper	2023-02-24 00:00:00+00
zurich	8005	8005		paper	2023-03-10 00:00:00+00
zurich	8005	8005		paper	2023-03-24 00:00:00+00
zurich	8005	8005		paper	2023-04-21 00:00:00+00
zurich	8005	8005		paper	2023-05-05 00:00:00+00
zurich	8005	8005		paper	2023-05-19 00:00:00+00
zurich	8005	8005		paper	2023-06-02 00:00:00+00
zurich	8005	8005		paper	2023-06-16 00:00:00+00
zurich	8005	8005		paper	2023-06-30 00:00:00+00
zurich	8005	8005		paper	2023-07-14 00:00:00+00
zurich	8005	8005		paper	2023-07-28 00:00:00+00
zurich	8005	8005		paper	2023-08-11 00:00:00+00
zurich	8005	8005		paper	2023-08-25 00:00:00+00
zurich	8005	8005		paper	2023-09-08 00:00:00+00
zurich	8005	8005		paper	2023-09-22 00:00:00+00
zurich	8005	8005		paper	2023-10-06 00:00:00+00
zurich	8005	8005		paper	2023-10-20 00:00:00+00
zurich	8005	8005		paper	2023-11-03 00:00:00+00
zurich	8005	8005		paper	2023-11-17 00:00:00+00
zurich	8005	8005		paper	2023-12-01 00:00:00+00
zurich	8005	8005		paper	2023-12-15 00:00:00+00
zurich	8005	8005		paper	2023-12-29 00:00:00+00
zurich	8006	8006		paper	2023-01-04 00:00:00+00
zurich	8006	8006		paper	2023-01-18 00:00:00+00
zurich	8006	8006		paper	2023-02-01 00:00:00+00
zurich	8006	8006		paper	2023-02-15 00:00:00+00
zurich	8006	8006		paper	2023-03-01 00:00:00+00
zurich	8006	8006		paper	2023-03-15 00:00:00+00
zurich	8006	8006		paper	2023-03-29 00:00:00+00
zurich	8006	8006		paper	2023-04-12 00:00:00+00
zurich	8006	8006		paper	2023-04-26 00:00:00+00
zurich	8006	8006		paper	2023-05-10 00:00:00+00
zurich	8006	8006		paper	2023-05-24 00:00:00+00
zurich	8006	8006		paper	2023-06-07 00:00:00+00
zurich	8006	8006		paper	2023-06-21 00:00:00+00
zurich	8006	8006		paper	2023-07-05 00:00:00+00
zurich	8006	8006		paper	2023-07-19 00:00:00+00
zurich	8006	8006		paper	2023-08-02 00:00:00+00
zurich	8006	8006		paper	2023-08-16 00:00:00+00
zurich	8006	8006		paper	2023-08-30 00:00:00+00
zurich	8006	8006		paper	2023-09-13 00:00:00+00
zurich	8006	8006		paper	2023-09-27 00:00:00+00
zurich	8006	8006		paper	2023-10-11 00:00:00+00
zurich	8006	8006		paper	2023-10-25 00:00:00+00
zurich	8006	8006		paper	2023-11-08 00:00:00+00
zurich	8006	8006		paper	2023-11-22 00:00:00+00
zurich	8006	8006		paper	2023-12-06 00:00:00+00
zurich	8006	8006		paper	2023-12-20 00:00:00+00
zurich	8008	8008		paper	2023-01-03 00:00:00+00
zurich	8008	8008		paper	2023-01-17 00:00:00+00
zurich	8008	8008		paper	2023-01-31 00:00:00+00
zurich	8008	8008		paper	2023-02-14 00:00:00+00
zurich	8008	8008		paper	2023-02-28 00:00:00+00
zurich	8008	8008		paper	2023-03-14 00:00:00+00
zurich	8008	8008		paper	2023-03-28 00:00:00+00
zurich	8008	8008		paper	2023-04-11 00:00:00+00
zurich	8008	8008		paper	2023-04-25 00:00:00+00
zurich	8008	8008		paper	2023-05-09 00:00:00+00
zurich	8008	8008		paper	2023-05-23 00:00:00+00
zurich	8008	8008		paper	2023-06-06 00:00:00+00
zurich	8008	8008		paper	2023-06-20 00:00:00+00
zurich	8008	8008		paper	2023-07-04 00:00:00+00
zurich	8008	8008		paper	2023-07-18 00:00:00+00
zurich	8008	8008		paper	2023-08-15 00:00:00+00
zurich	8008	8008		paper	2023-08-29 00:00:00+00
zurich	8008	8008		paper	2023-09-12 00:00:00+00
zurich	8008	8008		paper	2023-09-26 00:00:00+00
zurich	8008	8008		paper	2023-10-10 00:00:00+00
zurich	8008	8008		paper	2023-10-24 00:00:00+00
zurich	8008	8008		paper	2023-11-07 00:00:00+00
zurich	8008	8008		paper	2023-11-21 00:00:00+00
zurich	8008	8008		paper	2023-12-05 00:00:00+00
zurich	8008	8008		paper	2023-12-19 00:00:00+00
zurich	8032	8032		paper	2023-01-03 00:00:00+00
zurich	8032	8032		paper	2023-01-17 00:00:00+00
zurich	8032	8032		paper	2023-01-31 00:00:00+00
zurich	8032	8032		paper	2023-02-14 00:00:00+00
zurich	8032	8032		paper	2023-02-28 00:00:00+00
zurich	8032	8032		paper	2023-03-14 00:00:00+00
zurich	8032	8032		paper	2023-03-28 00:00:00+00
zurich	8032	8032		paper	2023-04-11 00:00:00+00
zurich	8032	8032		paper	2023-04-25 00:00:00+00
zurich	8032	8032		paper	2023-05-09 00:00:00+00
zurich	8032	8032		paper	2023-05-23 00:00:00+00
zurich	8032	8032		paper	2023-06-06 00:00:00+00
zurich	8032	8032		paper	2023-06-20 00:00:00+00
zurich	8032	8032		paper	2023-07-04 00:00:00+00
zurich	8032	8032		paper	2023-07-18 00:00:00+00
zurich	8032	8032		paper	2023-08-15 00:00:00+00
zurich	8032	8032		paper	2023-08-29 00:00:00+00
zurich	8032	8032		paper	2023-09-12 00:00:00+00
zurich	8032	8032		paper	2023-09-26 00:00:00+00
zurich	8032	8032		paper	2023-10-10 00:00:00+00
zurich	8032	8032		paper	2023-10-24 00:00:00+00
zurich	8032	8032		paper	2023-11-07 00:00:00+00
zurich	8032	8032		paper	2023-11-21 00:00:00+00
zurich	8032	8032		paper	2023-12-05 00:00:00+00
zurich	8032	8032		paper	2023-12-19 00:00:00+00
zurich	8037	8037		paper	2023-01-06 00:00:00+00
zurich	8037	8037		paper	2023-01-20 00:00:00+00
zurich	8037	8037		paper	2023-02-03 00:00:00+00
zurich	8037	8037		paper	2023-02-17 00:00:00+00
zurich	8037	8037		paper	2023-03-03 00:00:00+00
zurich	8037	8037		paper	2023-03-17 00:00:00+00
zurich	8037	8037		paper	2023-03-31 00:00:00+00
zurich	8037	8037		paper	2023-04-14 00:00:00+00
zurich	8037	8037		paper	2023-04-28 00:00:00+00
zurich	8037	8037		paper	2023-05-12 00:00:00+00
zurich	8037	8037		paper	2023-05-26 00:00:00+00
zurich	8037	8037		paper	2023-06-09 00:00:00+00
zurich	8037	8037		paper	2023-06-23 00:00:00+00
zurich	8037	8037		paper	2023-07-07 00:00:00+00
zurich	8037	8037		paper	2023-07-21 00:00:00+00
zurich	8037	8037		paper	2023-08-04 00:00:00+00
zurich	8037	8037		paper	2023-08-18 00:00:00+00
zurich	8037	8037		paper	2023-09-01 00:00:00+00
zurich	8037	8037		paper	2023-09-15 00:00:00+00
zurich	8037	8037		paper	2023-09-29 00:00:00+00
zurich	8037	8037		paper	2023-10-13 00:00:00+00
zurich	8037	8037		paper	2023-10-27 00:00:00+00
zurich	8037	8037		paper	2023-11-10 00:00:00+00
zurich	8037	8037		paper	2023-11-24 00:00:00+00
zurich	8037	8037		paper	2023-12-08 00:00:00+00
zurich	8037	8037		paper	2023-12-22 00:00:00+00
zurich	8038	8038		paper	2023-01-09 00:00:00+00
zurich	8038	8038		paper	2023-01-23 00:00:00+00
zurich	8038	8038		paper	2023-02-06 00:00:00+00
zurich	8038	8038		paper	2023-02-20 00:00:00+00
zurich	8038	8038		paper	2023-03-06 00:00:00+00
zurich	8038	8038		paper	2023-03-20 00:00:00+00
zurich	8038	8038		paper	2023-04-03 00:00:00+00
zurich	8038	8038		paper	2023-04-17 00:00:00+00
zurich	8038	8038		paper	2023-05-15 00:00:00+00
zurich	8038	8038		paper	2023-06-12 00:00:00+00
zurich	8038	8038		paper	2023-06-26 00:00:00+00
zurich	8038	8038		paper	2023-07-10 00:00:00+00
zurich	8038	8038		paper	2023-07-24 00:00:00+00
zurich	8038	8038		paper	2023-08-07 00:00:00+00
zurich	8038	8038		paper	2023-08-21 00:00:00+00
zurich	8038	8038		paper	2023-09-04 00:00:00+00
zurich	8038	8038		paper	2023-09-18 00:00:00+00
zurich	8038	8038		paper	2023-10-02 00:00:00+00
zurich	8038	8038		paper	2023-10-16 00:00:00+00
zurich	8038	8038		paper	2023-10-30 00:00:00+00
zurich	8038	8038		paper	2023-11-13 00:00:00+00
zurich	8038	8038		paper	2023-11-27 00:00:00+00
zurich	8038	8038		paper	2023-12-11 00:00:00+00
zurich	8041	8041		paper	2023-01-09 00:00:00+00
zurich	8041	8041		paper	2023-01-23 00:00:00+00
zurich	8041	8041		paper	2023-02-06 00:00:00+00
zurich	8041	8041		paper	2023-02-20 00:00:00+00
zurich	8041	8041		paper	2023-03-06 00:00:00+00
zurich	8041	8041		paper	2023-03-20 00:00:00+00
zurich	8041	8041		paper	2023-04-03 00:00:00+00
zurich	8041	8041		paper	2023-04-17 00:00:00+00
zurich	8041	8041		paper	2023-05-15 00:00:00+00
zurich	8041	8041		paper	2023-06-12 00:00:00+00
zurich	8041	8041		paper	2023-06-26 00:00:00+00
zurich	8041	8041		paper	2023-07-10 00:00:00+00
zurich	8041	8041		paper	2023-07-24 00:00:00+00
zurich	8041	8041		paper	2023-08-07 00:00:00+00
zurich	8041	8041		paper	2023-08-21 00:00:00+00
zurich	8041	8041		paper	2023-09-04 00:00:00+00
zurich	8041	8041		paper	2023-09-18 00:00:00+00
zurich	8041	8041		paper	2023-10-02 00:00:00+00
zurich	8041	8041		paper	2023-10-16 00:00:00+00
zurich	8041	8041		paper	2023-10-30 00:00:00+00
zurich	8041	8041		paper	2023-11-13 00:00:00+00
zurich	8041	8041		paper	2023-11-27 00:00:00+00
zurich	8041	8041		paper	2023-12-11 00:00:00+00
zurich	8044	8044		paper	2023-01-16 00:00:00+00
zurich	8044	8044		paper	2023-01-30 00:00:00+00
zurich	8044	8044		paper	2023-02-13 00:00:00+00
zurich	8044	8044		paper	2023-02-27 00:00:00+00
zurich	8044	8044		paper	2023-03-13 00:00:00+00
zurich	8044	8044		paper	2023-03-27 00:00:00+00
zurich	8044	8044		paper	2023-04-24 00:00:00+00
zurich	8044	8044		paper	2023-05-08 00:00:00+00
zurich	8044	8044		paper	2023-05-22 00:00:00+00
zurich	8044	8044		paper	2023-06-05 00:00:00+00
zurich	8044	8044		paper	2023-06-19 00:00:00+00
zurich	8044	8044		paper	2023-07-03 00:00:00+00
zurich	8044	8044		paper	2023-07-17 00:00:00+00
zurich	8044	8044		paper	2023-07-31 00:00:00+00
zurich	8044	8044		paper	2023-08-14 00:00:00+00
zurich	8044	8044		paper	2023-08-28 00:00:00+00
zurich	8044	8044		paper	2023-09-11 00:00:00+00
zurich	8044	8044		paper	2023-09-25 00:00:00+00
zurich	8044	8044		paper	2023-10-09 00:00:00+00
zurich	8044	8044		paper	2023-10-23 00:00:00+00
zurich	8044	8044		paper	2023-11-06 00:00:00+00
zurich	8044	8044		paper	2023-11-20 00:00:00+00
zurich	8044	8044		paper	2023-12-04 00:00:00+00
zurich	8044	8044		paper	2023-12-18 00:00:00+00
zurich	8045	8045		paper	2023-01-10 00:00:00+00
zurich	8045	8045		paper	2023-01-24 00:00:00+00
zurich	8045	8045		paper	2023-02-07 00:00:00+00
zurich	8045	8045		paper	2023-02-21 00:00:00+00
zurich	8045	8045		paper	2023-03-07 00:00:00+00
zurich	8045	8045		paper	2023-03-21 00:00:00+00
zurich	8045	8045		paper	2023-04-04 00:00:00+00
zurich	8045	8045		paper	2023-04-18 00:00:00+00
zurich	8045	8045		paper	2023-05-02 00:00:00+00
zurich	8045	8045		paper	2023-05-16 00:00:00+00
zurich	8045	8045		paper	2023-05-30 00:00:00+00
zurich	8045	8045		paper	2023-06-13 00:00:00+00
zurich	8045	8045		paper	2023-06-27 00:00:00+00
zurich	8045	8045		paper	2023-07-11 00:00:00+00
zurich	8045	8045		paper	2023-07-25 00:00:00+00
zurich	8045	8045		paper	2023-08-08 00:00:00+00
zurich	8045	8045		paper	2023-08-22 00:00:00+00
zurich	8045	8045		paper	2023-09-05 00:00:00+00
zurich	8045	8045		paper	2023-09-19 00:00:00+00
zurich	8045	8045		paper	2023-10-03 00:00:00+00
zurich	8045	8045		paper	2023-10-17 00:00:00+00
zurich	8045	8045		paper	2023-10-31 00:00:00+00
zurich	8045	8045		paper	2023-11-14 00:00:00+00
zurich	8045	8045		paper	2023-11-28 00:00:00+00
zurich	8045	8045		paper	2023-12-12 00:00:00+00
zurich	8046	8046		paper	2023-01-06 00:00:00+00
zurich	8046	8046		paper	2023-01-20 00:00:00+00
zurich	8046	8046		paper	2023-02-03 00:00:00+00
zurich	8046	8046		paper	2023-02-17 00:00:00+00
zurich	8046	8046		paper	2023-03-03 00:00:00+00
zurich	8046	8046		paper	2023-03-17 00:00:00+00
zurich	8046	8046		paper	2023-03-31 00:00:00+00
zurich	8046	8046		paper	2023-04-14 00:00:00+00
zurich	8046	8046		paper	2023-04-28 00:00:00+00
zurich	8046	8046		paper	2023-05-12 00:00:00+00
zurich	8046	8046		paper	2023-05-26 00:00:00+00
zurich	8046	8046		paper	2023-06-09 00:00:00+00
zurich	8046	8046		paper	2023-06-23 00:00:00+00
zurich	8046	8046		paper	2023-07-07 00:00:00+00
zurich	8046	8046		paper	2023-07-21 00:00:00+00
zurich	8046	8046		paper	2023-08-04 00:00:00+00
zurich	8046	8046		paper	2023-08-18 00:00:00+00
zurich	8046	8046		paper	2023-09-01 00:00:00+00
zurich	8046	8046		paper	2023-09-15 00:00:00+00
zurich	8046	8046		paper	2023-09-29 00:00:00+00
zurich	8046	8046		paper	2023-10-13 00:00:00+00
zurich	8046	8046		paper	2023-10-27 00:00:00+00
zurich	8046	8046		paper	2023-11-10 00:00:00+00
zurich	8046	8046		paper	2023-11-24 00:00:00+00
zurich	8046	8046		paper	2023-12-08 00:00:00+00
zurich	8046	8046		paper	2023-12-22 00:00:00+00
zurich	8047	8047		paper	2023-01-12 00:00:00+00
zurich	8047	8047		paper	2023-01-26 00:00:00+00
zurich	8047	8047		paper	2023-02-09 00:00:00+00
zurich	8047	8047		paper	2023-02-23 00:00:00+00
zurich	8047	8047		paper	2023-03-09 00:00:00+00
zurich	8047	8047		paper	2023-03-23 00:00:00+00
zurich	8047	8047		paper	2023-04-06 00:00:00+00
zurich	8047	8047		paper	2023-04-20 00:00:00+00
zurich	8047	8047		paper	2023-05-04 00:00:00+00
zurich	8047	8047		paper	2023-06-01 00:00:00+00
zurich	8047	8047		paper	2023-06-15 00:00:00+00
zurich	8047	8047		paper	2023-06-29 00:00:00+00
zurich	8047	8047		paper	2023-07-13 00:00:00+00
zurich	8047	8047		paper	2023-07-27 00:00:00+00
zurich	8047	8047		paper	2023-08-10 00:00:00+00
zurich	8047	8047		paper	2023-08-24 00:00:00+00
zurich	8047	8047		paper	2023-09-07 00:00:00+00
zurich	8047	8047		paper	2023-09-21 00:00:00+00
zurich	8047	8047		paper	2023-10-05 00:00:00+00
zurich	8047	8047		paper	2023-10-19 00:00:00+00
zurich	8047	8047		paper	2023-11-02 00:00:00+00
zurich	8047	8047		paper	2023-11-16 00:00:00+00
zurich	8047	8047		paper	2023-11-30 00:00:00+00
zurich	8047	8047		paper	2023-12-14 00:00:00+00
zurich	8047	8047		paper	2023-12-28 00:00:00+00
zurich	8048	8048		paper	2023-01-12 00:00:00+00
zurich	8048	8048		paper	2023-01-26 00:00:00+00
zurich	8048	8048		paper	2023-02-09 00:00:00+00
zurich	8048	8048		paper	2023-02-23 00:00:00+00
zurich	8048	8048		paper	2023-03-09 00:00:00+00
zurich	8048	8048		paper	2023-03-23 00:00:00+00
zurich	8048	8048		paper	2023-04-06 00:00:00+00
zurich	8048	8048		paper	2023-04-20 00:00:00+00
zurich	8048	8048		paper	2023-05-04 00:00:00+00
zurich	8048	8048		paper	2023-06-01 00:00:00+00
zurich	8048	8048		paper	2023-06-15 00:00:00+00
zurich	8048	8048		paper	2023-06-29 00:00:00+00
zurich	8048	8048		paper	2023-07-13 00:00:00+00
zurich	8048	8048		paper	2023-07-27 00:00:00+00
zurich	8048	8048		paper	2023-08-10 00:00:00+00
zurich	8048	8048		paper	2023-08-24 00:00:00+00
zurich	8048	8048		paper	2023-09-07 00:00:00+00
zurich	8048	8048		paper	2023-09-21 00:00:00+00
zurich	8048	8048		paper	2023-10-05 00:00:00+00
zurich	8048	8048		paper	2023-10-19 00:00:00+00
zurich	8048	8048		paper	2023-11-02 00:00:00+00
zurich	8048	8048		paper	2023-11-16 00:00:00+00
zurich	8048	8048		paper	2023-11-30 00:00:00+00
zurich	8048	8048		paper	2023-12-14 00:00:00+00
zurich	8048	8048		paper	2023-12-28 00:00:00+00
zurich	8049	8049		paper	2023-01-13 00:00:00+00
zurich	8049	8049		paper	2023-01-27 00:00:00+00
zurich	8049	8049		paper	2023-02-10 00:00:00+00
zurich	8049	8049		paper	2023-02-24 00:00:00+00
zurich	8049	8049		paper	2023-03-10 00:00:00+00
zurich	8049	8049		paper	2023-03-24 00:00:00+00
zurich	8049	8049		paper	2023-04-21 00:00:00+00
zurich	8049	8049		paper	2023-05-05 00:00:00+00
zurich	8049	8049		paper	2023-05-19 00:00:00+00
zurich	8049	8049		paper	2023-06-02 00:00:00+00
zurich	8049	8049		paper	2023-06-16 00:00:00+00
zurich	8049	8049		paper	2023-06-30 00:00:00+00
zurich	8049	8049		paper	2023-07-14 00:00:00+00
zurich	8049	8049		paper	2023-07-28 00:00:00+00
zurich	8049	8049		paper	2023-08-11 00:00:00+00
zurich	8049	8049		paper	2023-08-25 00:00:00+00
zurich	8049	8049		paper	2023-09-08 00:00:00+00
zurich	8049	8049		paper	2023-09-22 00:00:00+00
zurich	8049	8049		paper	2023-10-06 00:00:00+00
zurich	8049	8049		paper	2023-10-20 00:00:00+00
zurich	8049	8049		paper	2023-11-03 00:00:00+00
zurich	8049	8049		paper	2023-11-17 00:00:00+00
zurich	8049	8049		paper	2023-12-01 00:00:00+00
zurich	8049	8049		paper	2023-12-15 00:00:00+00
zurich	8049	8049		paper	2023-12-29 00:00:00+00
zurich	8050	8050		paper	2023-01-05 00:00:00+00
zurich	8050	8050		paper	2023-01-19 00:00:00+00
zurich	8050	8050		paper	2023-02-02 00:00:00+00
zurich	8050	8050		paper	2023-02-16 00:00:00+00
zurich	8050	8050		paper	2023-03-02 00:00:00+00
zurich	8050	8050		paper	2023-03-16 00:00:00+00
zurich	8050	8050		paper	2023-03-30 00:00:00+00
zurich	8050	8050		paper	2023-04-13 00:00:00+00
zurich	8050	8050		paper	2023-04-27 00:00:00+00
zurich	8050	8050		paper	2023-05-11 00:00:00+00
zurich	8050	8050		paper	2023-05-25 00:00:00+00
zurich	8050	8050		paper	2023-06-08 00:00:00+00
zurich	8050	8050		paper	2023-06-22 00:00:00+00
zurich	8050	8050		paper	2023-07-06 00:00:00+00
zurich	8050	8050		paper	2023-07-20 00:00:00+00
zurich	8050	8050		paper	2023-08-03 00:00:00+00
zurich	8050	8050		paper	2023-08-17 00:00:00+00
zurich	8050	8050		paper	2023-08-31 00:00:00+00
zurich	8050	8050		paper	2023-09-14 00:00:00+00
zurich	8050	8050		paper	2023-09-28 00:00:00+00
zurich	8050	8050		paper	2023-10-12 00:00:00+00
zurich	8050	8050		paper	2023-10-26 00:00:00+00
zurich	8050	8050		paper	2023-11-09 00:00:00+00
zurich	8050	8050		paper	2023-11-23 00:00:00+00
zurich	8050	8050		paper	2023-12-07 00:00:00+00
zurich	8050	8050		paper	2023-12-21 00:00:00+00
zurich	8051	8051		paper	2023-01-16 00:00:00+00
zurich	8051	8051		paper	2023-01-30 00:00:00+00
zurich	8051	8051		paper	2023-02-13 00:00:00+00
zurich	8051	8051		paper	2023-02-27 00:00:00+00
zurich	8051	8051		paper	2023-03-13 00:00:00+00
zurich	8051	8051		paper	2023-03-27 00:00:00+00
zurich	8051	8051		paper	2023-04-24 00:00:00+00
zurich	8051	8051		paper	2023-05-08 00:00:00+00
zurich	8051	8051		paper	2023-05-22 00:00:00+00
zurich	8051	8051		paper	2023-06-05 00:00:00+00
zurich	8051	8051		paper	2023-06-19 00:00:00+00
zurich	8051	8051		paper	2023-07-03 00:00:00+00
zurich	8051	8051		paper	2023-07-17 00:00:00+00
zurich	8051	8051		paper	2023-07-31 00:00:00+00
zurich	8051	8051		paper	2023-08-14 00:00:00+00
zurich	8051	8051		paper	2023-08-28 00:00:00+00
zurich	8051	8051		paper	2023-09-11 00:00:00+00
zurich	8051	8051		paper	2023-09-25 00:00:00+00
zurich	8051	8051		paper	2023-10-09 00:00:00+00
zurich	8051	8051		paper	2023-10-23 00:00:00+00
zurich	8051	8051		paper	2023-11-06 00:00:00+00
zurich	8051	8051		paper	2023-11-20 00:00:00+00
zurich	8051	8051		paper	2023-12-04 00:00:00+00
zurich	8051	8051		paper	2023-12-18 00:00:00+00
zurich	8052	8052		paper	2023-01-05 00:00:00+00
zurich	8052	8052		paper	2023-01-19 00:00:00+00
zurich	8052	8052		paper	2023-02-02 00:00:00+00
zurich	8052	8052		paper	2023-02-16 00:00:00+00
zurich	8052	8052		paper	2023-03-02 00:00:00+00
zurich	8052	8052		paper	2023-03-16 00:00:00+00
zurich	8052	8052		paper	2023-03-30 00:00:00+00
zurich	8052	8052		paper	2023-04-13 00:00:00+00
zurich	8052	8052		paper	2023-04-27 00:00:00+00
zurich	8052	8052		paper	2023-05-11 00:00:00+00
zurich	8052	8052		paper	2023-05-25 00:00:00+00
zurich	8052	8052		paper	2023-06-08 00:00:00+00
zurich	8052	8052		paper	2023-06-22 00:00:00+00
zurich	8052	8052		paper	2023-07-06 00:00:00+00
zurich	8052	8052		paper	2023-07-20 00:00:00+00
zurich	8052	8052		paper	2023-08-03 00:00:00+00
zurich	8052	8052		paper	2023-08-17 00:00:00+00
zurich	8052	8052		paper	2023-08-31 00:00:00+00
zurich	8052	8052		paper	2023-09-14 00:00:00+00
zurich	8052	8052		paper	2023-09-28 00:00:00+00
zurich	8052	8052		paper	2023-10-12 00:00:00+00
zurich	8052	8052		paper	2023-10-26 00:00:00+00
zurich	8052	8052		paper	2023-11-09 00:00:00+00
zurich	8052	8052		paper	2023-11-23 00:00:00+00
zurich	8052	8052		paper	2023-12-07 00:00:00+00
zurich	8052	8052		paper	2023-12-21 00:00:00+00
zurich	8053	8053		paper	2023-01-16 00:00:00+00
zurich	8053	8053		paper	2023-01-30 00:00:00+00
zurich	8053	8053		paper	2023-02-13 00:00:00+00
zurich	8053	8053		paper	2023-02-27 00:00:00+00
zurich	8053	8053		paper	2023-03-13 00:00:00+00
zurich	8053	8053		paper	2023-03-27 00:00:00+00
zurich	8053	8053		paper	2023-04-24 00:00:00+00
zurich	8053	8053		paper	2023-05-08 00:00:00+00
zurich	8053	8053		paper	2023-05-22 00:00:00+00
zurich	8053	8053		paper	2023-06-05 00:00:00+00
zurich	8053	8053		paper	2023-06-19 00:00:00+00
zurich	8053	8053		paper	2023-07-03 00:00:00+00
zurich	8053	8053		paper	2023-07-17 00:00:00+00
zurich	8053	8053		paper	2023-07-31 00:00:00+00
zurich	8053	8053		paper	2023-08-14 00:00:00+00
zurich	8053	8053		paper	2023-08-28 00:00:00+00
zurich	8053	8053		paper	2023-09-11 00:00:00+00
zurich	8053	8053		paper	2023-09-25 00:00:00+00
zurich	8053	8053		paper	2023-10-09 00:00:00+00
zurich	8053	8053		paper	2023-10-23 00:00:00+00
zurich	8053	8053		paper	2023-11-06 00:00:00+00
zurich	8053	8053		paper	2023-11-20 00:00:00+00
zurich	8053	8053		paper	2023-12-04 00:00:00+00
zurich	8053	8053		paper	2023-12-18 00:00:00+00
zurich	8055	8055		paper	2023-01-10 00:00:00+00
zurich	8055	8055		paper	2023-01-24 00:00:00+00
zurich	8055	8055		paper	2023-02-07 00:00:00+00
zurich	8055	8055		paper	2023-02-21 00:00:00+00
zurich	8055	8055		paper	2023-03-07 00:00:00+00
zurich	8055	8055		paper	2023-03-21 00:00:00+00
zurich	8055	8055		paper	2023-04-04 00:00:00+00
zurich	8055	8055		paper	2023-04-18 00:00:00+00
zurich	8055	8055		paper	2023-05-02 00:00:00+00
zurich	8055	8055		paper	2023-05-16 00:00:00+00
zurich	8055	8055		paper	2023-05-30 00:00:00+00
zurich	8055	8055		paper	2023-06-13 00:00:00+00
zurich	8055	8055		paper	2023-06-27 00:00:00+00
zurich	8055	8055		paper	2023-07-11 00:00:00+00
zurich	8055	8055		paper	2023-07-25 00:00:00+00
zurich	8055	8055		paper	2023-08-08 00:00:00+00
zurich	8055	8055		paper	2023-08-22 00:00:00+00
zurich	8055	8055		paper	2023-09-05 00:00:00+00
zurich	8055	8055		paper	2023-09-19 00:00:00+00
zurich	8055	8055		paper	2023-10-03 00:00:00+00
zurich	8055	8055		paper	2023-10-17 00:00:00+00
zurich	8055	8055		paper	2023-10-31 00:00:00+00
zurich	8055	8055		paper	2023-11-14 00:00:00+00
zurich	8055	8055		paper	2023-11-28 00:00:00+00
zurich	8055	8055		paper	2023-12-12 00:00:00+00
zurich	8057	8057		paper	2023-01-04 00:00:00+00
zurich	8057	8057		paper	2023-01-18 00:00:00+00
zurich	8057	8057		paper	2023-02-01 00:00:00+00
zurich	8057	8057		paper	2023-02-15 00:00:00+00
zurich	8057	8057		paper	2023-03-01 00:00:00+00
zurich	8057	8057		paper	2023-03-15 00:00:00+00
zurich	8057	8057		paper	2023-03-29 00:00:00+00
zurich	8057	8057		paper	2023-04-12 00:00:00+00
zurich	8057	8057		paper	2023-04-26 00:00:00+00
zurich	8057	8057		paper	2023-05-10 00:00:00+00
zurich	8057	8057		paper	2023-05-24 00:00:00+00
zurich	8057	8057		paper	2023-06-07 00:00:00+00
zurich	8057	8057		paper	2023-06-21 00:00:00+00
zurich	8057	8057		paper	2023-07-05 00:00:00+00
zurich	8057	8057		paper	2023-07-19 00:00:00+00
zurich	8057	8057		paper	2023-08-02 00:00:00+00
zurich	8057	8057		paper	2023-08-16 00:00:00+00
zurich	8057	8057		paper	2023-08-30 00:00:00+00
zurich	8057	8057		paper	2023-09-13 00:00:00+00
zurich	8057	8057		paper	2023-09-27 00:00:00+00
zurich	8057	8057		paper	2023-10-11 00:00:00+00
zurich	8057	8057		paper	2023-10-25 00:00:00+00
zurich	8057	8057		paper	2023-11-08 00:00:00+00
zurich	8057	8057		paper	2023-11-22 00:00:00+00
zurich	8057	8057		paper	2023-12-06 00:00:00+00
zurich	8057	8057		paper	2023-12-20 00:00:00+00
zurich	8064	8064		paper	2023-01-12 00:00:00+00
zurich	8064	8064		paper	2023-01-26 00:00:00+00
zurich	8064	8064		paper	2023-02-09 00:00:00+00
zurich	8064	8064		paper	2023-02-23 00:00:00+00
zurich	8064	8064		paper	2023-03-09 00:00:00+00
zurich	8064	8064		paper	2023-03-23 00:00:00+00
zurich	8064	8064		paper	2023-04-06 00:00:00+00
zurich	8064	8064		paper	2023-04-20 00:00:00+00
zurich	8064	8064		paper	2023-05-04 00:00:00+00
zurich	8064	8064		paper	2023-06-01 00:00:00+00
zurich	8064	8064		paper	2023-06-15 00:00:00+00
zurich	8064	8064		paper	2023-06-29 00:00:00+00
zurich	8064	8064		paper	2023-07-13 00:00:00+00
zurich	8064	8064		paper	2023-07-27 00:00:00+00
zurich	8064	8064		paper	2023-08-10 00:00:00+00
zurich	8064	8064		paper	2023-08-24 00:00:00+00
zurich	8064	8064		paper	2023-09-07 00:00:00+00
zurich	8064	8064		paper	2023-09-21 00:00:00+00
zurich	8064	8064		paper	2023-10-05 00:00:00+00
zurich	8064	8064		paper	2023-10-19 00:00:00+00
zurich	8064	8064		paper	2023-11-02 00:00:00+00
zurich	8064	8064		paper	2023-11-16 00:00:00+00
zurich	8064	8064		paper	2023-11-30 00:00:00+00
zurich	8064	8064		paper	2023-12-14 00:00:00+00
zurich	8064	8064		paper	2023-12-28 00:00:00+00
zurich	8001	8001	Parkplatz am Hirschengraben 13, vor dem kantonalen Obergericht	special	2023-03-13 00:00:00+00
zurich	8002	8002	Tessinerplatz	special	2023-09-19 00:00:00+00
zurich	8003	8003	Alte evangelische Kirche / Albisriederstrasse 385	special	2023-03-17 00:00:00+00
zurich	8003	8003	Helvetiaplatz	special	2023-09-18 00:00:00+00
zurich	8003	8003	Tessinerplatz	special	2023-09-19 00:00:00+00
zurich	8003	8003	Uetlibergstrasse 134	special	2023-03-29 00:00:00+00
zurich	8003	8003	Wasserschöpfi/Küngenmatt (Bad Heuried)	special	2023-09-21 00:00:00+00
zurich	8004	8004	Helvetiaplatz	special	2023-09-18 00:00:00+00
zurich	8005	8005	Röntgenplatz	special	2023-04-01 00:00:00+00
zurich	8006	8006	Rigiplatz	special	2023-09-20 00:00:00+00
zurich	8008	8008	Seefeldstrasse 152, Wertstoff-Sammelstelle	special	2023-03-28 00:00:00+00
zurich	8032	8032	Merkurplatz: Minervastrasse/Merkurstrasse	special	2023-09-09 00:00:00+00
zurich	8037	8037	Röschibachplatz/Röschibachstrasse 79	special	2023-09-06 00:00:00+00
zurich	8038	8038	Etzelstrasse/Mutschellenstrasse	special	2023-03-16 00:00:00+00
zurich	8041	8041	Leimbachstrasse 160/Klebestrasse, Wertstoff-Sammelstelle	special	2023-09-04 00:00:00+00
zurich	8044	8044	Wertstoff-Sammelstelle Kirche Fluntern / Kreuzung Zürichbergstrasse	special	2023-03-15 00:00:00+00
zurich	8045	8045	Uetlibergstrasse 134	special	2023-03-29 00:00:00+00
zurich	8046	8046	Wehntalerstrasse 539 beim Zehntenhausplatz (beim Kiosk)	special	2023-09-23 00:00:00+00
zurich	8047	8047	Alte evangelische Kirche / Albisriederstrasse 385	special	2023-03-17 00:00:00+00
zurich	8048	8048	Lindenplatz	special	2023-03-14 00:00:00+00
zurich	8048	8048	Lindenplatz	special	2023-09-05 00:00:00+00
zurich	8049	8049	Limmattalstrasse 227-229	special	2023-03-31 00:00:00+00
zurich	8049	8049	Limmattalstrasse 227-229	special	2023-09-07 00:00:00+00
zurich	8050	8050	Marktplatz Oerlikon	special	2023-09-22 00:00:00+00
zurich	8051	8051	Schwamendingerplatz	special	2023-03-27 00:00:00+00
zurich	8052	8052	Parkplatz Tramhaltestelle Seebach/Schaffhauserstrasse 501	special	2023-03-18 00:00:00+00
zurich	8053	8053	Parkplatz Waag/Witikonerstrasse 390	special	2023-09-08 00:00:00+00
zurich	8055	8055	Wasserschöpfi/Küngenmatt (Bad Heuried)	special	2023-09-21 00:00:00+00
stgallen		I		waste	2020-09-04 00:00:00+00
zurich	8057	8057	Milchbuckstrasse 2/Tramhaltestelle Guggachstrasse	special	2023-03-30 00:00:00+00
zurich	8064	8064	Tramhaltestelle Werdhölzli, im Recyclinghof	special	2023-08-29 00:00:00+00
stgallen		E		metal	2020-09-22 00:00:00+00
stgallen		E		waste	2020-08-26 00:00:00+00
stgallen		E		organic	2020-12-02 00:00:00+00
stgallen		K		paper	2020-07-02 00:00:00+00
stgallen		K		organic	2020-07-24 00:00:00+00
stgallen		K		cardboard	2020-12-03 00:00:00+00
stgallen		K		waste	2020-09-11 00:00:00+00
stgallen		K		waste	2020-09-25 00:00:00+00
stgallen		K		waste	2020-12-24 00:00:00+00
stgallen		K		organic	2021-04-16 00:00:00+00
stgallen		K		waste	2021-05-14 00:00:00+00
stgallen		D		organic	2020-07-07 00:00:00+00
stgallen		D		organic	2020-09-08 00:00:00+00
stgallen		D		waste	2020-12-01 00:00:00+00
stgallen		D		organic	2021-01-19 00:00:00+00
stgallen		D		waste	2021-02-09 00:00:00+00
stgallen		D		waste	2021-02-23 00:00:00+00
stgallen		D		waste	2021-04-06 00:00:00+00
stgallen		D		waste	2021-04-20 00:00:00+00
stgallen		A		cardboard	2020-12-24 00:00:00+00
stgallen		A		waste	2020-09-07 00:00:00+00
stgallen		A		organic	2020-10-12 00:00:00+00
stgallen		A		organic	2020-11-02 00:00:00+00
stgallen		A		waste	2020-12-28 00:00:00+00
stgallen		A		organic	2020-12-28 00:00:00+00
stgallen		F		paper	2020-07-27 00:00:00+00
stgallen		F		cardboard	2021-02-22 00:00:00+00
stgallen		F		organic	2020-10-28 00:00:00+00
stgallen		F		organic	2021-04-14 00:00:00+00
stgallen		F		organic	2021-05-12 00:00:00+00
stgallen		F		waste	2021-05-19 00:00:00+00
stgallen		F		waste	2021-06-09 00:00:00+00
stgallen		L West		paper	2020-10-21 00:00:00+00
stgallen		L West		cardboard	2020-12-30 00:00:00+00
stgallen		L West		organic	2021-02-19 00:00:00+00
stgallen		L West		waste	2021-03-26 00:00:00+00
stgallen		L West		waste	2021-04-23 00:00:00+00
stgallen		C		cardboard	2020-08-05 00:00:00+00
stgallen		C		organic	2020-07-28 00:00:00+00
stgallen		C		waste	2020-08-25 00:00:00+00
stgallen		C		waste	2020-09-01 00:00:00+00
stgallen		C		organic	2021-05-18 00:00:00+00
stgallen		B		waste	2020-08-10 00:00:00+00
stgallen		B		waste	2020-10-12 00:00:00+00
stgallen		B		waste	2021-01-11 00:00:00+00
stgallen		B		waste	2021-03-15 00:00:00+00
stgallen		G		paper	2021-04-27 00:00:00+00
stgallen		G		organic	2020-12-03 00:00:00+00
stgallen		G		organic	2020-12-31 00:00:00+00
stgallen		G		waste	2021-01-14 00:00:00+00
stgallen		G		organic	2021-05-06 00:00:00+00
stgallen		H		paper	2021-10-19 00:00:00+00
stgallen		H		paper	2022-05-31 00:00:00+00
stgallen		D		organic	2021-08-17 00:00:00+00
stgallen		D		waste	2021-08-24 00:00:00+00
stgallen		D		cardboard	2022-03-23 00:00:00+00
stgallen		D		organic	2021-12-21 00:00:00+00
stgallen		D		organic	2022-03-15 00:00:00+00
stgallen		D		organic	2022-03-22 00:00:00+00
stgallen		D		waste	2022-06-21 00:00:00+00
stgallen		A		metal	2021-10-01 00:00:00+00
stgallen		A		cardboard	2021-09-03 00:00:00+00
stgallen		A		cardboard	2021-10-01 00:00:00+00
stgallen		A		organic	2021-08-16 00:00:00+00
stgallen		A		cardboard	2022-01-21 00:00:00+00
stgallen		A		organic	2021-09-20 00:00:00+00
stgallen		A		organic	2021-09-27 00:00:00+00
stgallen		A		organic	2021-10-18 00:00:00+00
stgallen		A		waste	2022-02-07 00:00:00+00
stgallen		A		waste	2022-04-04 00:00:00+00
stgallen		C		cardboard	2021-08-04 00:00:00+00
stgallen		C		cardboard	2022-06-08 00:00:00+00
stgallen		C		waste	2021-12-28 00:00:00+00
stgallen		C		organic	2022-03-08 00:00:00+00
stgallen		C		waste	2022-06-21 00:00:00+00
stgallen		B		waste	2021-07-05 00:00:00+00
stgallen		B		waste	2021-07-26 00:00:00+00
stgallen		B		cardboard	2022-05-20 00:00:00+00
stgallen		B		waste	2022-05-16 00:00:00+00
stgallen		B		waste	2022-05-30 00:00:00+00
stgallen		G		organic	2021-07-01 00:00:00+00
stgallen		G		paper	2021-12-07 00:00:00+00
stgallen		G		organic	2021-08-26 00:00:00+00
stgallen		G		waste	2021-10-07 00:00:00+00
stgallen		F		cardboard	2022-04-19 00:00:00+00
stgallen		F		waste	2021-10-20 00:00:00+00
stgallen		F		waste	2021-12-15 00:00:00+00
stgallen		F		waste	2022-01-05 00:00:00+00
stgallen		F		waste	2022-01-26 00:00:00+00
stgallen		F		waste	2022-04-27 00:00:00+00
stgallen		I		paper	2022-03-31 00:00:00+00
stgallen		I		cardboard	2022-06-09 00:00:00+00
stgallen		I		organic	2022-04-22 00:00:00+00
stgallen		L West		organic	2021-07-02 00:00:00+00
stgallen		L West		waste	2021-09-03 00:00:00+00
stgallen		L West		organic	2021-12-03 00:00:00+00
stgallen		L Ost		paper	2021-08-18 00:00:00+00
stgallen		L Ost		waste	2021-08-27 00:00:00+00
stgallen		L Ost		paper	2022-03-30 00:00:00+00
stgallen		L Ost		waste	2022-03-18 00:00:00+00
stgallen		L Ost		waste	2022-05-06 00:00:00+00
stgallen		E		organic	2021-08-18 00:00:00+00
stgallen		E		organic	2022-01-05 00:00:00+00
stgallen		E		waste	2022-03-02 00:00:00+00
stgallen		E		organic	2022-03-09 00:00:00+00
stgallen		E		waste	2022-03-23 00:00:00+00
stgallen		E		organic	2022-04-13 00:00:00+00
stgallen		I		organic	2020-07-24 00:00:00+00
stgallen		I		paper	2021-01-07 00:00:00+00
stgallen		I		waste	2020-08-21 00:00:00+00
stgallen		I		waste	2020-10-23 00:00:00+00
stgallen		I		waste	2020-12-04 00:00:00+00
stgallen		I		waste	2020-12-24 00:00:00+00
stgallen		I		waste	2021-01-08 00:00:00+00
stgallen		H		paper	2020-10-20 00:00:00+00
stgallen		H		waste	2020-10-29 00:00:00+00
stgallen		H		organic	2021-01-07 00:00:00+00
stgallen		H		waste	2021-03-18 00:00:00+00
stgallen		H		waste	2021-06-10 00:00:00+00
stgallen		L Ost		waste	2020-07-31 00:00:00+00
stgallen		L Ost		cardboard	2020-12-23 00:00:00+00
stgallen		L Ost		waste	2020-12-04 00:00:00+00
stgallen		L Ost		organic	2020-12-11 00:00:00+00
stgallen		L Ost		waste	2021-01-08 00:00:00+00
stgallen		L Ost		waste	2021-01-29 00:00:00+00
stgallen		K		paper	2021-08-26 00:00:00+00
stgallen		K		waste	2021-08-06 00:00:00+00
stgallen		K		organic	2021-10-15 00:00:00+00
stgallen		K		waste	2021-12-10 00:00:00+00
stgallen		K		organic	2022-05-06 00:00:00+00
stgallen		I		paper	2020-12-10 00:00:00+00
stgallen		I		organic	2021-02-19 00:00:00+00
stgallen		I		waste	2021-02-12 00:00:00+00
stgallen		I		waste	2021-03-19 00:00:00+00
stgallen		A		organic	2021-07-05 00:00:00+00
stgallen		A		paper	2022-04-01 00:00:00+00
stgallen		A		organic	2021-10-04 00:00:00+00
stgallen		A		waste	2021-11-15 00:00:00+00
stgallen		A		waste	2021-12-13 00:00:00+00
stgallen		A		organic	2022-03-14 00:00:00+00
stgallen		A		waste	2022-03-21 00:00:00+00
stgallen		H		cardboard	2021-04-20 00:00:00+00
stgallen		H		waste	2020-11-19 00:00:00+00
stgallen		H		waste	2021-02-11 00:00:00+00
stgallen		H		waste	2021-04-01 00:00:00+00
stgallen		H		organic	2021-04-01 00:00:00+00
stgallen		K		waste	2021-07-23 00:00:00+00
stgallen		K		organic	2021-09-10 00:00:00+00
stgallen		K		waste	2021-09-17 00:00:00+00
stgallen		K		paper	2022-06-02 00:00:00+00
stgallen		K		organic	2021-10-29 00:00:00+00
stgallen		K		waste	2021-11-05 00:00:00+00
stgallen		K		organic	2021-11-05 00:00:00+00
stgallen		K		waste	2021-12-03 00:00:00+00
stgallen		K		waste	2022-03-11 00:00:00+00
stgallen		K		cardboard	2020-08-13 00:00:00+00
stgallen		K		waste	2020-07-17 00:00:00+00
stgallen		K		organic	2020-07-31 00:00:00+00
stgallen		K		cardboard	2021-04-22 00:00:00+00
stgallen		K		organic	2021-01-08 00:00:00+00
stgallen		K		organic	2021-05-28 00:00:00+00
stgallen		K		waste	2021-05-21 00:00:00+00
stgallen		L Ost		organic	2020-07-31 00:00:00+00
stgallen		L Ost		organic	2020-10-09 00:00:00+00
stgallen		L Ost		waste	2021-01-15 00:00:00+00
stgallen		F		organic	2020-07-22 00:00:00+00
stgallen		F		organic	2021-01-06 00:00:00+00
stgallen		F		waste	2021-02-03 00:00:00+00
stgallen		F		waste	2021-03-31 00:00:00+00
stgallen		F		waste	2021-06-16 00:00:00+00
stgallen		C		waste	2020-07-07 00:00:00+00
stgallen		C		paper	2021-05-26 00:00:00+00
stgallen		C		waste	2020-11-24 00:00:00+00
stgallen		C		waste	2021-05-04 00:00:00+00
stgallen		C		organic	2021-05-11 00:00:00+00
stgallen		C		organic	2021-06-01 00:00:00+00
stgallen		C		waste	2021-06-29 00:00:00+00
stgallen		H		paper	2021-07-27 00:00:00+00
stgallen		H		metal	2022-04-27 00:00:00+00
stgallen		H		organic	2021-07-15 00:00:00+00
stgallen		H		paper	2022-03-08 00:00:00+00
stgallen		H		organic	2021-09-02 00:00:00+00
stgallen		H		organic	2021-09-16 00:00:00+00
stgallen		H		organic	2021-10-14 00:00:00+00
stgallen		H		waste	2022-02-24 00:00:00+00
stgallen		H		waste	2022-06-16 00:00:00+00
stgallen		C		paper	2021-09-15 00:00:00+00
stgallen		C		paper	2022-03-30 00:00:00+00
stgallen		C		organic	2021-10-12 00:00:00+00
stgallen		C		waste	2021-12-07 00:00:00+00
stgallen		C		waste	2022-01-04 00:00:00+00
stgallen		C		organic	2022-03-01 00:00:00+00
stgallen		B		waste	2022-02-07 00:00:00+00
stgallen		B		organic	2022-05-16 00:00:00+00
stgallen		D		waste	2021-09-21 00:00:00+00
stgallen		D		organic	2021-10-05 00:00:00+00
stgallen		D		organic	2022-02-01 00:00:00+00
stgallen		D		organic	2022-05-03 00:00:00+00
stgallen		F		organic	2021-07-14 00:00:00+00
stgallen		F		organic	2021-09-08 00:00:00+00
stgallen		F		waste	2021-09-15 00:00:00+00
stgallen		F		organic	2021-09-15 00:00:00+00
stgallen		F		waste	2022-03-16 00:00:00+00
stgallen		F		organic	2022-06-15 00:00:00+00
stgallen		F		organic	2022-06-22 00:00:00+00
stgallen		I		waste	2021-08-13 00:00:00+00
stgallen		I		cardboard	2022-03-17 00:00:00+00
stgallen		I		waste	2022-01-07 00:00:00+00
stgallen		I		waste	2022-01-14 00:00:00+00
stgallen		I		waste	2022-01-28 00:00:00+00
stgallen		I		waste	2022-03-11 00:00:00+00
stgallen		I		waste	2022-06-17 00:00:00+00
stgallen		I		organic	2022-06-24 00:00:00+00
stgallen		G		paper	2021-07-20 00:00:00+00
stgallen		G		paper	2021-11-09 00:00:00+00
stgallen		G		paper	2022-03-29 00:00:00+00
stgallen		G		organic	2021-12-02 00:00:00+00
stgallen		E		waste	2021-07-14 00:00:00+00
stgallen		E		organic	2021-07-28 00:00:00+00
stgallen		E		waste	2021-11-24 00:00:00+00
stgallen		E		waste	2022-04-13 00:00:00+00
stgallen		E		waste	2022-06-01 00:00:00+00
stgallen		E		waste	2022-06-29 00:00:00+00
stgallen		L Ost		organic	2021-07-09 00:00:00+00
stgallen		L Ost		waste	2021-07-30 00:00:00+00
stgallen		L Ost		waste	2021-09-24 00:00:00+00
stgallen		L Ost		organic	2021-10-08 00:00:00+00
stgallen		L West		paper	2021-08-25 00:00:00+00
stgallen		L West		paper	2021-11-17 00:00:00+00
stgallen		L West		waste	2022-06-03 00:00:00+00
stgallen		A		organic	2020-07-13 00:00:00+00
stgallen		A		organic	2020-08-31 00:00:00+00
stgallen		A		waste	2021-06-07 00:00:00+00
stgallen		E		cardboard	2020-10-26 00:00:00+00
stgallen		E		waste	2020-09-16 00:00:00+00
stgallen		E		organic	2020-10-07 00:00:00+00
stgallen		E		organic	2021-02-03 00:00:00+00
stgallen		E		organic	2021-02-17 00:00:00+00
stgallen		D		waste	2020-10-06 00:00:00+00
stgallen		D		waste	2020-12-29 00:00:00+00
stgallen		D		organic	2021-01-26 00:00:00+00
stgallen		D		waste	2021-03-02 00:00:00+00
stgallen		D		waste	2021-05-11 00:00:00+00
stgallen		L West		waste	2020-09-18 00:00:00+00
stgallen		L West		waste	2020-11-13 00:00:00+00
stgallen		L West		organic	2021-04-16 00:00:00+00
stgallen		L West		organic	2021-06-18 00:00:00+00
stgallen		G		cardboard	2020-09-01 00:00:00+00
stgallen		G		waste	2020-08-20 00:00:00+00
stgallen		G		waste	2020-09-24 00:00:00+00
stgallen		B		waste	2021-02-08 00:00:00+00
stgallen		D		waste	2021-07-06 00:00:00+00
stgallen		D		paper	2021-09-22 00:00:00+00
stgallen		D		organic	2021-11-16 00:00:00+00
stgallen		D		waste	2021-12-07 00:00:00+00
stgallen		D		waste	2022-05-03 00:00:00+00
stgallen		H		waste	2021-07-01 00:00:00+00
stgallen		H		waste	2021-08-05 00:00:00+00
stgallen		H		waste	2021-09-09 00:00:00+00
stgallen		H		cardboard	2022-06-14 00:00:00+00
stgallen		H		waste	2021-12-23 00:00:00+00
stgallen		H		waste	2022-02-10 00:00:00+00
stgallen		H		organic	2022-05-12 00:00:00+00
stgallen		H		waste	2022-05-27 00:00:00+00
stgallen		L West		paper	2021-10-20 00:00:00+00
stgallen		L West		paper	2022-06-01 00:00:00+00
stgallen		L West		waste	2021-10-01 00:00:00+00
stgallen		L West		organic	2021-11-05 00:00:00+00
stgallen		L West		waste	2021-11-19 00:00:00+00
stgallen		L West		organic	2022-01-07 00:00:00+00
stgallen		L West		waste	2022-05-06 00:00:00+00
stgallen		I		cardboard	2021-09-30 00:00:00+00
stgallen		I		cardboard	2021-10-28 00:00:00+00
stgallen		I		organic	2021-08-20 00:00:00+00
stgallen		I		organic	2021-09-03 00:00:00+00
stgallen		I		organic	2022-04-13 00:00:00+00
stgallen		I		organic	2022-06-17 00:00:00+00
stgallen		F		paper	2021-12-13 00:00:00+00
stgallen		F		organic	2021-10-27 00:00:00+00
stgallen		F		waste	2021-11-03 00:00:00+00
stgallen		F		waste	2022-06-08 00:00:00+00
stgallen		E		paper	2022-01-31 00:00:00+00
stgallen		E		organic	2021-09-22 00:00:00+00
stgallen		E		paper	2022-05-23 00:00:00+00
stgallen		E		organic	2021-10-20 00:00:00+00
stgallen		E		organic	2021-10-27 00:00:00+00
stgallen		L Ost		paper	2021-07-21 00:00:00+00
stgallen		L Ost		cardboard	2021-08-04 00:00:00+00
stgallen		L Ost		organic	2021-08-13 00:00:00+00
stgallen		L Ost		waste	2021-09-17 00:00:00+00
stgallen		L Ost		waste	2021-10-15 00:00:00+00
stgallen		L Ost		organic	2021-10-15 00:00:00+00
stgallen		L Ost		waste	2021-11-26 00:00:00+00
stgallen		L Ost		organic	2022-06-24 00:00:00+00
stgallen		G		waste	2021-08-26 00:00:00+00
stgallen		G		cardboard	2022-06-07 00:00:00+00
stgallen		G		waste	2022-04-14 00:00:00+00
stgallen		G		organic	2022-04-28 00:00:00+00
stgallen		B		paper	2021-07-02 00:00:00+00
stgallen		B		organic	2021-07-26 00:00:00+00
stgallen		B		cardboard	2021-10-08 00:00:00+00
stgallen		B		paper	2021-12-17 00:00:00+00
stgallen		B		organic	2021-09-06 00:00:00+00
stgallen		B		waste	2021-09-13 00:00:00+00
stgallen		B		waste	2022-03-14 00:00:00+00
stgallen		B		organic	2022-03-14 00:00:00+00
stgallen		C		paper	2021-08-18 00:00:00+00
stgallen		C		waste	2021-09-07 00:00:00+00
stgallen		C		organic	2021-09-28 00:00:00+00
stgallen		C		organic	2021-11-16 00:00:00+00
stgallen		C		waste	2021-11-23 00:00:00+00
stgallen		C		waste	2022-01-11 00:00:00+00
stgallen		C		organic	2022-01-11 00:00:00+00
stgallen		C		waste	2022-02-22 00:00:00+00
stgallen		A		waste	2021-09-13 00:00:00+00
stgallen		A		organic	2021-09-13 00:00:00+00
stgallen		A		paper	2022-06-24 00:00:00+00
stgallen		A		organic	2021-12-27 00:00:00+00
stgallen		A		waste	2022-03-07 00:00:00+00
stgallen		A		waste	2022-06-13 00:00:00+00
stgallen		K		metal	2021-09-27 00:00:00+00
stgallen		K		waste	2021-07-09 00:00:00+00
stgallen		K		organic	2021-07-09 00:00:00+00
stgallen		K		organic	2021-08-20 00:00:00+00
stgallen		K		cardboard	2022-06-16 00:00:00+00
stgallen		K		organic	2021-12-10 00:00:00+00
stgallen		K		waste	2021-12-17 00:00:00+00
stgallen		K		organic	2021-12-17 00:00:00+00
stgallen		K		waste	2021-12-24 00:00:00+00
stgallen		K		organic	2022-03-18 00:00:00+00
stgallen		K		waste	2022-04-14 00:00:00+00
stgallen		H		paper	2021-06-29 00:00:00+00
stgallen		H		organic	2020-11-05 00:00:00+00
stgallen		H		waste	2021-05-27 00:00:00+00
stgallen		I		waste	2020-07-10 00:00:00+00
stgallen		I		cardboard	2020-10-01 00:00:00+00
stgallen		I		waste	2020-10-02 00:00:00+00
stgallen		I		organic	2021-03-26 00:00:00+00
stgallen		I		organic	2021-04-09 00:00:00+00
stgallen		I		organic	2021-05-07 00:00:00+00
stgallen		I		organic	2021-06-25 00:00:00+00
stgallen		L Ost		cardboard	2021-05-12 00:00:00+00
stgallen		L Ost		organic	2020-11-13 00:00:00+00
stgallen		L Ost		organic	2020-11-27 00:00:00+00
stgallen		L Ost		organic	2021-03-05 00:00:00+00
stgallen		C		organic	2020-09-08 00:00:00+00
stgallen		C		waste	2020-12-01 00:00:00+00
stgallen		C		organic	2021-02-09 00:00:00+00
stgallen		C		organic	2021-06-15 00:00:00+00
stgallen		K		cardboard	2020-12-31 00:00:00+00
stgallen		K		waste	2020-10-09 00:00:00+00
stgallen		K		waste	2021-04-23 00:00:00+00
stgallen		K		organic	2021-05-21 00:00:00+00
stgallen		F		organic	2020-07-08 00:00:00+00
stgallen		F		cardboard	2020-10-05 00:00:00+00
stgallen		F		organic	2020-07-29 00:00:00+00
stgallen		F		waste	2020-10-07 00:00:00+00
stgallen		F		organic	2020-10-14 00:00:00+00
stgallen		F		organic	2020-10-21 00:00:00+00
stgallen		F		organic	2021-01-20 00:00:00+00
stgallen		F		organic	2021-03-31 00:00:00+00
stgallen		D		waste	2020-07-14 00:00:00+00
stgallen		D		cardboard	2020-10-07 00:00:00+00
stgallen		D		waste	2020-12-08 00:00:00+00
stgallen		D		organic	2021-01-12 00:00:00+00
stgallen		D		organic	2021-02-09 00:00:00+00
stgallen		D		organic	2021-05-25 00:00:00+00
stgallen		A		paper	2020-11-13 00:00:00+00
stgallen		A		waste	2020-08-17 00:00:00+00
stgallen		A		organic	2020-09-28 00:00:00+00
stgallen		A		cardboard	2021-06-11 00:00:00+00
stgallen		A		waste	2020-12-07 00:00:00+00
stgallen		A		waste	2021-01-18 00:00:00+00
stgallen		A		organic	2021-01-25 00:00:00+00
stgallen		A		waste	2021-02-22 00:00:00+00
stgallen		A		waste	2021-04-12 00:00:00+00
stgallen		A		organic	2021-05-17 00:00:00+00
stgallen		A		waste	2021-06-14 00:00:00+00
stgallen		L West		paper	2021-03-10 00:00:00+00
stgallen		L West		organic	2020-09-25 00:00:00+00
stgallen		L West		organic	2020-11-27 00:00:00+00
stgallen		L West		organic	2021-03-19 00:00:00+00
stgallen		L West		waste	2021-06-25 00:00:00+00
stgallen		E		cardboard	2020-09-28 00:00:00+00
stgallen		E		paper	2020-12-07 00:00:00+00
stgallen		E		cardboard	2021-06-07 00:00:00+00
stgallen		E		organic	2020-10-14 00:00:00+00
stgallen		E		waste	2021-02-17 00:00:00+00
stgallen		E		organic	2021-04-21 00:00:00+00
stgallen		E		waste	2021-05-12 00:00:00+00
stgallen		G		organic	2020-08-06 00:00:00+00
stgallen		G		waste	2020-10-01 00:00:00+00
stgallen		G		organic	2020-10-29 00:00:00+00
stgallen		G		waste	2021-01-28 00:00:00+00
stgallen		G		waste	2021-02-18 00:00:00+00
stgallen		G		waste	2021-04-29 00:00:00+00
stgallen		G		organic	2021-06-24 00:00:00+00
stgallen		B		paper	2020-07-03 00:00:00+00
stgallen		B		organic	2020-09-14 00:00:00+00
stgallen		B		organic	2021-03-15 00:00:00+00
stgallen		B		organic	2021-04-26 00:00:00+00
stgallen		D		waste	2021-08-31 00:00:00+00
stgallen		D		organic	2021-09-14 00:00:00+00
stgallen		D		waste	2022-03-01 00:00:00+00
stgallen		D		waste	2022-04-26 00:00:00+00
stgallen		D		waste	2022-05-31 00:00:00+00
stgallen		I		organic	2020-08-28 00:00:00+00
stgallen		I		waste	2020-11-13 00:00:00+00
stgallen		I		organic	2021-02-26 00:00:00+00
stgallen		H		paper	2020-08-25 00:00:00+00
stgallen		H		waste	2020-09-03 00:00:00+00
stgallen		H		organic	2020-09-03 00:00:00+00
stgallen		H		waste	2021-02-18 00:00:00+00
stgallen		H		organic	2021-03-11 00:00:00+00
stgallen		H		waste	2021-03-25 00:00:00+00
stgallen		A		paper	2022-03-04 00:00:00+00
stgallen		A		waste	2021-11-22 00:00:00+00
stgallen		A		organic	2021-11-29 00:00:00+00
stgallen		A		waste	2022-01-17 00:00:00+00
stgallen		A		organic	2022-06-08 00:00:00+00
stgallen		L Ost		cardboard	2020-08-05 00:00:00+00
stgallen		L Ost		organic	2020-07-17 00:00:00+00
stgallen		L Ost		paper	2021-04-28 00:00:00+00
stgallen		L Ost		paper	2021-06-23 00:00:00+00
stgallen		L Ost		waste	2020-10-09 00:00:00+00
stgallen		L Ost		organic	2021-05-07 00:00:00+00
stgallen		L Ost		organic	2021-05-21 00:00:00+00
stgallen		L Ost		waste	2021-06-18 00:00:00+00
stgallen		K		cardboard	2021-11-04 00:00:00+00
stgallen		K		waste	2021-09-10 00:00:00+00
stgallen		K		organic	2022-02-11 00:00:00+00
stgallen		K		organic	2022-03-04 00:00:00+00
stgallen		A		waste	2020-08-03 00:00:00+00
stgallen		A		organic	2021-04-12 00:00:00+00
stgallen		E		cardboard	2020-08-03 00:00:00+00
stgallen		E		paper	2021-06-21 00:00:00+00
stgallen		E		waste	2020-09-30 00:00:00+00
stgallen		E		organic	2020-12-23 00:00:00+00
stgallen		E		waste	2020-12-30 00:00:00+00
stgallen		E		organic	2021-01-27 00:00:00+00
stgallen		E		waste	2021-06-02 00:00:00+00
stgallen		D		metal	2021-04-29 00:00:00+00
stgallen		D		cardboard	2021-02-24 00:00:00+00
stgallen		D		waste	2020-09-22 00:00:00+00
stgallen		D		waste	2020-10-20 00:00:00+00
stgallen		D		organic	2020-12-15 00:00:00+00
stgallen		D		organic	2021-05-18 00:00:00+00
stgallen		L West		waste	2020-07-03 00:00:00+00
stgallen		L West		metal	2021-04-29 00:00:00+00
stgallen		L West		waste	2020-08-21 00:00:00+00
stgallen		L West		waste	2020-10-09 00:00:00+00
stgallen		L West		waste	2020-11-06 00:00:00+00
stgallen		L West		organic	2021-01-08 00:00:00+00
stgallen		L West		organic	2021-05-21 00:00:00+00
stgallen		L West		waste	2021-05-28 00:00:00+00
stgallen		I		organic	2021-11-05 00:00:00+00
stgallen		I		waste	2022-04-01 00:00:00+00
stgallen		I		organic	2022-04-01 00:00:00+00
stgallen		I		waste	2022-04-14 00:00:00+00
stgallen		H		organic	2021-09-09 00:00:00+00
stgallen		H		paper	2022-06-28 00:00:00+00
stgallen		H		organic	2021-09-30 00:00:00+00
stgallen		H		waste	2022-01-13 00:00:00+00
stgallen		H		waste	2022-04-21 00:00:00+00
stgallen		H		waste	2022-05-12 00:00:00+00
stgallen		H		organic	2022-05-25 00:00:00+00
stgallen		L Ost		waste	2021-07-23 00:00:00+00
stgallen		L Ost		waste	2021-10-29 00:00:00+00
stgallen		L Ost		waste	2021-12-10 00:00:00+00
stgallen		L Ost		waste	2022-02-04 00:00:00+00
stgallen		L Ost		waste	2022-03-11 00:00:00+00
stgallen		L West		cardboard	2021-10-06 00:00:00+00
stgallen		L West		cardboard	2022-02-23 00:00:00+00
stgallen		L West		paper	2022-05-04 00:00:00+00
stgallen		L West		waste	2021-10-22 00:00:00+00
stgallen		L West		organic	2021-12-10 00:00:00+00
stgallen		L West		organic	2021-12-31 00:00:00+00
stgallen		L West		organic	2022-02-25 00:00:00+00
stgallen		L West		waste	2022-06-24 00:00:00+00
stgallen		L West		organic	2022-06-24 00:00:00+00
stgallen		E		paper	2021-07-19 00:00:00+00
stgallen		E		paper	2021-09-13 00:00:00+00
stgallen		E		waste	2022-03-16 00:00:00+00
stgallen		E		waste	2022-06-15 00:00:00+00
stgallen		G		paper	2021-03-02 00:00:00+00
stgallen		G		cardboard	2021-03-16 00:00:00+00
stgallen		G		organic	2020-10-22 00:00:00+00
stgallen		G		waste	2020-12-03 00:00:00+00
stgallen		G		organic	2021-01-14 00:00:00+00
stgallen		G		waste	2021-04-01 00:00:00+00
stgallen		G		organic	2021-04-01 00:00:00+00
stgallen		B		organic	2020-11-16 00:00:00+00
stgallen		B		waste	2021-03-01 00:00:00+00
stgallen		B		waste	2021-05-25 00:00:00+00
stgallen		F		paper	2022-02-07 00:00:00+00
stgallen		F		organic	2022-01-19 00:00:00+00
stgallen		F		waste	2022-03-02 00:00:00+00
stgallen		F		waste	2022-05-11 00:00:00+00
stgallen		C		waste	2021-11-09 00:00:00+00
stgallen		C		waste	2022-02-01 00:00:00+00
stgallen		C		waste	2022-03-22 00:00:00+00
stgallen		C		organic	2022-05-17 00:00:00+00
stgallen		G		organic	2021-08-19 00:00:00+00
stgallen		G		waste	2021-09-02 00:00:00+00
stgallen		G		organic	2022-01-27 00:00:00+00
stgallen		G		waste	2022-03-17 00:00:00+00
stgallen		G		organic	2022-04-21 00:00:00+00
stgallen		B		organic	2021-08-23 00:00:00+00
stgallen		B		waste	2022-03-07 00:00:00+00
stgallen		B		waste	2022-05-09 00:00:00+00
stgallen		K		waste	2020-08-14 00:00:00+00
stgallen		K		paper	2021-01-14 00:00:00+00
stgallen		K		waste	2020-09-04 00:00:00+00
stgallen		K		paper	2021-03-11 00:00:00+00
stgallen		K		waste	2020-10-02 00:00:00+00
stgallen		K		waste	2020-12-11 00:00:00+00
stgallen		K		waste	2021-01-15 00:00:00+00
stgallen		K		waste	2021-04-30 00:00:00+00
stgallen		C		organic	2021-01-05 00:00:00+00
stgallen		C		organic	2021-01-12 00:00:00+00
stgallen		C		organic	2021-01-26 00:00:00+00
stgallen		C		waste	2021-05-18 00:00:00+00
stgallen		F		cardboard	2020-08-10 00:00:00+00
stgallen		F		cardboard	2021-03-22 00:00:00+00
stgallen		F		cardboard	2021-04-19 00:00:00+00
stgallen		F		waste	2020-11-25 00:00:00+00
stgallen		K		cardboard	2020-10-08 00:00:00+00
stgallen		K		waste	2020-11-20 00:00:00+00
stgallen		D		organic	2020-08-18 00:00:00+00
stgallen		D		cardboard	2021-04-21 00:00:00+00
stgallen		D		paper	2021-05-05 00:00:00+00
stgallen		D		organic	2020-11-17 00:00:00+00
stgallen		D		waste	2020-12-15 00:00:00+00
stgallen		D		waste	2020-12-22 00:00:00+00
stgallen		D		organic	2021-04-20 00:00:00+00
stgallen		C		cardboard	2020-09-02 00:00:00+00
stgallen		C		waste	2020-10-20 00:00:00+00
stgallen		F		waste	2020-09-02 00:00:00+00
stgallen		F		organic	2020-09-23 00:00:00+00
stgallen		F		waste	2021-01-06 00:00:00+00
stgallen		E		organic	2020-10-28 00:00:00+00
stgallen		E		waste	2020-11-04 00:00:00+00
stgallen		E		waste	2020-11-18 00:00:00+00
stgallen		E		organic	2020-11-18 00:00:00+00
stgallen		E		organic	2020-12-09 00:00:00+00
stgallen		E		organic	2021-03-03 00:00:00+00
stgallen		E		waste	2021-03-31 00:00:00+00
stgallen		E		organic	2021-04-28 00:00:00+00
stgallen		E		waste	2021-06-30 00:00:00+00
stgallen		A		waste	2020-10-26 00:00:00+00
stgallen		A		organic	2020-11-30 00:00:00+00
stgallen		A		organic	2020-12-07 00:00:00+00
stgallen		A		organic	2021-01-18 00:00:00+00
stgallen		G		waste	2020-08-13 00:00:00+00
stgallen		G		waste	2020-08-27 00:00:00+00
stgallen		G		cardboard	2021-02-16 00:00:00+00
stgallen		G		waste	2020-10-15 00:00:00+00
stgallen		G		waste	2021-02-04 00:00:00+00
stgallen		G		organic	2021-02-11 00:00:00+00
stgallen		L West		cardboard	2020-12-02 00:00:00+00
stgallen		L West		cardboard	2021-04-21 00:00:00+00
stgallen		L West		waste	2020-12-04 00:00:00+00
stgallen		L West		waste	2020-12-11 00:00:00+00
stgallen		L West		organic	2021-01-22 00:00:00+00
stgallen		L West		waste	2021-01-29 00:00:00+00
stgallen		L West		waste	2021-03-12 00:00:00+00
stgallen		L West		waste	2021-06-18 00:00:00+00
stgallen		I		cardboard	2020-08-06 00:00:00+00
stgallen		I		organic	2020-07-31 00:00:00+00
stgallen		I		cardboard	2020-11-26 00:00:00+00
stgallen		I		waste	2020-09-25 00:00:00+00
stgallen		I		organic	2020-09-25 00:00:00+00
stgallen		I		paper	2021-06-24 00:00:00+00
stgallen		I		waste	2021-01-22 00:00:00+00
stgallen		I		waste	2021-02-05 00:00:00+00
stgallen		H		organic	2020-09-24 00:00:00+00
stgallen		H		waste	2020-10-08 00:00:00+00
stgallen		H		waste	2020-12-31 00:00:00+00
stgallen		H		waste	2021-04-29 00:00:00+00
stgallen		L Ost		organic	2020-08-28 00:00:00+00
stgallen		L Ost		organic	2021-01-29 00:00:00+00
stgallen		L Ost		organic	2021-04-16 00:00:00+00
stgallen		D		organic	2021-07-06 00:00:00+00
stgallen		D		waste	2021-09-07 00:00:00+00
stgallen		D		organic	2022-01-18 00:00:00+00
stgallen		D		organic	2022-02-15 00:00:00+00
stgallen		D		waste	2022-04-19 00:00:00+00
stgallen		D		waste	2022-05-24 00:00:00+00
stgallen		K		organic	2021-07-23 00:00:00+00
stgallen		K		cardboard	2021-10-07 00:00:00+00
stgallen		K		waste	2021-08-20 00:00:00+00
stgallen		K		cardboard	2022-04-21 00:00:00+00
stgallen		K		waste	2021-10-01 00:00:00+00
stgallen		K		organic	2021-10-08 00:00:00+00
stgallen		K		waste	2021-11-12 00:00:00+00
stgallen		K		organic	2022-02-18 00:00:00+00
stgallen		A		waste	2021-07-26 00:00:00+00
stgallen		A		paper	2021-10-15 00:00:00+00
stgallen		A		organic	2021-08-09 00:00:00+00
stgallen		A		paper	2022-01-07 00:00:00+00
stgallen		A		cardboard	2021-12-24 00:00:00+00
stgallen		A		cardboard	2022-06-10 00:00:00+00
stgallen		A		waste	2021-10-25 00:00:00+00
stgallen		A		organic	2021-11-22 00:00:00+00
stgallen		A		waste	2021-11-29 00:00:00+00
stgallen		A		waste	2022-01-10 00:00:00+00
stgallen		A		organic	2022-02-14 00:00:00+00
stgallen		A		waste	2022-04-11 00:00:00+00
stgallen		C		cardboard	2021-07-07 00:00:00+00
stgallen		C		waste	2021-07-13 00:00:00+00
stgallen		C		paper	2021-11-10 00:00:00+00
stgallen		C		organic	2021-11-09 00:00:00+00
stgallen		C		waste	2022-01-18 00:00:00+00
stgallen		C		organic	2022-05-31 00:00:00+00
stgallen		F		waste	2021-07-21 00:00:00+00
stgallen		F		waste	2021-12-08 00:00:00+00
stgallen		F		waste	2022-02-02 00:00:00+00
stgallen		F		waste	2022-05-18 00:00:00+00
stgallen		F		waste	2022-05-25 00:00:00+00
stgallen		F		waste	2022-06-01 00:00:00+00
stgallen		B		cardboard	2021-12-03 00:00:00+00
stgallen		B		paper	2022-01-14 00:00:00+00
stgallen		B		paper	2022-02-11 00:00:00+00
stgallen		B		paper	2022-06-03 00:00:00+00
stgallen		B		waste	2021-11-08 00:00:00+00
stgallen		B		organic	2022-05-02 00:00:00+00
stgallen		G		waste	2021-07-08 00:00:00+00
stgallen		G		metal	2022-04-27 00:00:00+00
stgallen		G		organic	2021-09-23 00:00:00+00
stgallen		G		waste	2022-03-24 00:00:00+00
stgallen		G		waste	2022-05-05 00:00:00+00
stgallen		L Ost		organic	2021-07-23 00:00:00+00
stgallen		L Ost		cardboard	2021-10-27 00:00:00+00
stgallen		L Ost		organic	2021-09-17 00:00:00+00
stgallen		L Ost		cardboard	2022-05-11 00:00:00+00
stgallen		L Ost		waste	2021-10-22 00:00:00+00
stgallen		L Ost		organic	2021-10-22 00:00:00+00
stgallen		L Ost		waste	2021-11-12 00:00:00+00
stgallen		L Ost		waste	2022-01-21 00:00:00+00
stgallen		L Ost		waste	2022-02-25 00:00:00+00
stgallen		L Ost		waste	2022-06-17 00:00:00+00
stgallen		I		organic	2021-10-01 00:00:00+00
stgallen		I		waste	2022-02-25 00:00:00+00
stgallen		L West		cardboard	2021-08-11 00:00:00+00
stgallen		L West		organic	2021-10-29 00:00:00+00
stgallen		L West		organic	2021-11-26 00:00:00+00
stgallen		L West		waste	2022-01-14 00:00:00+00
stgallen		L West		organic	2022-03-04 00:00:00+00
stgallen		L West		organic	2022-05-20 00:00:00+00
stgallen		E		cardboard	2021-07-05 00:00:00+00
stgallen		E		metal	2022-04-26 00:00:00+00
stgallen		E		paper	2022-01-03 00:00:00+00
stgallen		E		waste	2021-11-17 00:00:00+00
stgallen		B		waste	2020-08-17 00:00:00+00
stgallen		B		organic	2020-12-14 00:00:00+00
stgallen		B		waste	2020-12-21 00:00:00+00
stgallen		B		organic	2022-07-04 00:00:00+00
stgallen		C		organic	2022-07-05 00:00:00+00
stgallen		D		organic	2022-07-05 00:00:00+00
stgallen		F		organic	2022-07-06 00:00:00+00
stgallen		K		organic	2022-07-08 00:00:00+00
stgallen		B		organic	2022-07-11 00:00:00+00
stgallen		C		organic	2022-07-12 00:00:00+00
stgallen		B		organic	2022-07-18 00:00:00+00
stgallen		G		organic	2022-07-21 00:00:00+00
stgallen		H		organic	2022-07-21 00:00:00+00
stgallen		E		organic	2022-07-27 00:00:00+00
stgallen		F		organic	2022-07-27 00:00:00+00
stgallen		D		organic	2022-08-02 00:00:00+00
stgallen		G		organic	2022-08-04 00:00:00+00
stgallen		B		organic	2022-08-08 00:00:00+00
stgallen		D		organic	2022-08-16 00:00:00+00
stgallen		H		organic	2022-08-18 00:00:00+00
stgallen		I		organic	2022-08-19 00:00:00+00
stgallen		L West		organic	2022-08-19 00:00:00+00
stgallen		C		organic	2022-08-23 00:00:00+00
stgallen		I		organic	2022-08-26 00:00:00+00
stgallen		L Ost		organic	2022-08-26 00:00:00+00
stgallen		C		organic	2022-08-30 00:00:00+00
stgallen		E		organic	2022-08-31 00:00:00+00
stgallen		F		organic	2022-08-31 00:00:00+00
stgallen		I		organic	2022-09-02 00:00:00+00
stgallen		C		organic	2022-09-06 00:00:00+00
stgallen		E		organic	2022-09-07 00:00:00+00
stgallen		H		organic	2022-09-08 00:00:00+00
stgallen		A		organic	2022-09-12 00:00:00+00
stgallen		A		organic	2022-09-19 00:00:00+00
stgallen		B		organic	2022-09-19 00:00:00+00
stgallen		F		organic	2022-09-21 00:00:00+00
stgallen		K		organic	2022-09-23 00:00:00+00
stgallen		A		organic	2022-09-26 00:00:00+00
stgallen		B		organic	2022-09-26 00:00:00+00
stgallen		E		organic	2022-09-28 00:00:00+00
stgallen		G		organic	2022-09-29 00:00:00+00
stgallen		H		organic	2022-09-29 00:00:00+00
stgallen		K		organic	2022-09-30 00:00:00+00
stgallen		L Ost		organic	2022-09-30 00:00:00+00
stgallen		E		organic	2022-10-05 00:00:00+00
stgallen		K		organic	2022-10-07 00:00:00+00
stgallen		L Ost		organic	2022-10-07 00:00:00+00
stgallen		B		organic	2022-10-10 00:00:00+00
stgallen		H		organic	2022-10-13 00:00:00+00
stgallen		I		organic	2022-10-14 00:00:00+00
stgallen		K		organic	2022-10-14 00:00:00+00
stgallen		L West		organic	2022-10-14 00:00:00+00
stgallen		K		organic	2022-10-21 00:00:00+00
stgallen		L West		organic	2022-10-21 00:00:00+00
stgallen		F		organic	2022-10-26 00:00:00+00
stgallen		K		organic	2022-10-28 00:00:00+00
stgallen		L Ost		organic	2022-10-28 00:00:00+00
stgallen		L West		organic	2022-10-28 00:00:00+00
stgallen		A		organic	2022-10-31 00:00:00+00
stgallen		B		organic	2022-10-31 00:00:00+00
stgallen		F		organic	2022-11-02 00:00:00+00
stgallen		C		organic	2022-11-03 00:00:00+00
stgallen		I		organic	2022-11-04 00:00:00+00
stgallen		F		organic	2022-11-09 00:00:00+00
stgallen		G		organic	2022-11-10 00:00:00+00
stgallen		L Ost		organic	2022-11-11 00:00:00+00
stgallen		L West		organic	2022-11-11 00:00:00+00
stgallen		F		organic	2022-11-23 00:00:00+00
stgallen		G		organic	2022-11-24 00:00:00+00
stgallen		L Ost		organic	2022-11-25 00:00:00+00
stgallen		I		organic	2022-12-02 00:00:00+00
stgallen		E		organic	2022-12-07 00:00:00+00
stgallen		B		organic	2022-12-12 00:00:00+00
stgallen		G		organic	2022-12-15 00:00:00+00
stgallen		K		organic	2022-12-16 00:00:00+00
stgallen		L Ost		organic	2022-12-23 00:00:00+00
stgallen		C		organic	2022-12-27 00:00:00+00
stgallen		L West		organic	2022-12-30 00:00:00+00
stgallen		A		organic	2023-01-02 00:00:00+00
stgallen		K		organic	2023-01-06 00:00:00+00
stgallen		A		organic	2023-01-09 00:00:00+00
stgallen		D		organic	2023-01-10 00:00:00+00
stgallen		F		organic	2023-01-11 00:00:00+00
stgallen		D		organic	2023-01-17 00:00:00+00
stgallen		E		organic	2023-01-18 00:00:00+00
stgallen		K		organic	2023-01-20 00:00:00+00
stgallen		L Ost		organic	2023-01-20 00:00:00+00
stgallen		D		organic	2023-01-24 00:00:00+00
stgallen		I		organic	2023-01-27 00:00:00+00
stgallen		A		organic	2023-02-06 00:00:00+00
stgallen		B		organic	2023-02-06 00:00:00+00
stgallen		C		organic	2023-02-07 00:00:00+00
stgallen		E		organic	2023-02-08 00:00:00+00
stgallen		G		organic	2023-02-09 00:00:00+00
stgallen		A		organic	2023-02-13 00:00:00+00
stgallen		B		organic	2023-02-13 00:00:00+00
stgallen		I		organic	2023-02-17 00:00:00+00
stgallen		D		organic	2023-02-21 00:00:00+00
stgallen		G		organic	2023-02-23 00:00:00+00
stgallen		D		organic	2023-02-28 00:00:00+00
stgallen		F		organic	2023-03-01 00:00:00+00
stgallen		H		organic	2023-03-02 00:00:00+00
stgallen		I		organic	2023-03-03 00:00:00+00
stgallen		C		organic	2023-03-07 00:00:00+00
stgallen		B		organic	2023-03-13 00:00:00+00
stgallen		H		organic	2023-03-16 00:00:00+00
stgallen		A		organic	2023-03-20 00:00:00+00
stgallen		G		organic	2023-03-23 00:00:00+00
stgallen		K		organic	2023-03-24 00:00:00+00
stgallen		B		organic	2023-03-27 00:00:00+00
stgallen		K		organic	2023-03-31 00:00:00+00
stgallen		D		organic	2023-04-04 00:00:00+00
stgallen		E		organic	2023-04-05 00:00:00+00
stgallen		E		organic	2023-04-12 00:00:00+00
stgallen		E		organic	2023-04-19 00:00:00+00
stgallen		B		organic	2023-04-24 00:00:00+00
stgallen		D		organic	2023-04-25 00:00:00+00
stgallen		L Ost		organic	2023-05-05 00:00:00+00
stgallen		L West		organic	2023-05-05 00:00:00+00
stgallen		E		organic	2023-05-10 00:00:00+00
stgallen		L Ost		organic	2023-05-12 00:00:00+00
stgallen		D		organic	2023-05-16 00:00:00+00
stgallen		F		organic	2023-05-17 00:00:00+00
stgallen		H		organic	2023-05-17 00:00:00+00
stgallen		K		organic	2023-05-19 00:00:00+00
stgallen		A		organic	2023-05-22 00:00:00+00
stgallen		D		organic	2023-05-23 00:00:00+00
stgallen		K		organic	2023-05-26 00:00:00+00
stgallen		L Ost		organic	2023-05-26 00:00:00+00
stgallen		A		organic	2023-05-31 00:00:00+00
stgallen		E		organic	2023-05-31 00:00:00+00
stgallen		L Ost		organic	2023-06-02 00:00:00+00
stgallen		B		organic	2023-06-05 00:00:00+00
stgallen		D		organic	2023-06-06 00:00:00+00
stgallen		E		organic	2023-06-07 00:00:00+00
stgallen		H		organic	2023-06-08 00:00:00+00
stgallen		K		organic	2023-06-16 00:00:00+00
stgallen		A		organic	2023-06-26 00:00:00+00
stgallen		G		organic	2023-06-29 00:00:00+00
stgallen		I		organic	2023-06-30 00:00:00+00
stgallen		E		cardboard	2022-07-04 00:00:00+00
stgallen		L Ost		cardboard	2022-08-03 00:00:00+00
stgallen		H		cardboard	2022-08-09 00:00:00+00
stgallen		E		cardboard	2022-08-29 00:00:00+00
stgallen		H		cardboard	2022-09-06 00:00:00+00
stgallen		I		cardboard	2022-10-27 00:00:00+00
stgallen		F		cardboard	2022-10-31 00:00:00+00
stgallen		L West		cardboard	2022-11-02 00:00:00+00
stgallen		A		cardboard	2022-11-25 00:00:00+00
stgallen		H		cardboard	2022-11-29 00:00:00+00
stgallen		B		cardboard	2022-12-30 00:00:00+00
stgallen		F		cardboard	2023-01-23 00:00:00+00
stgallen		G		cardboard	2023-02-14 00:00:00+00
stgallen		A		cardboard	2023-02-17 00:00:00+00
stgallen		A		cardboard	2023-04-14 00:00:00+00
stgallen		L West		cardboard	2023-04-19 00:00:00+00
stgallen		L Ost		cardboard	2023-05-10 00:00:00+00
stgallen		A		cardboard	2023-05-12 00:00:00+00
stgallen		F		cardboard	2023-05-15 00:00:00+00
stgallen		L West		cardboard	2023-05-17 00:00:00+00
stgallen		B		cardboard	2023-05-19 00:00:00+00
stgallen		K		cardboard	2023-05-19 00:00:00+00
stgallen		A		cardboard	2023-06-09 00:00:00+00
stgallen		H		cardboard	2023-06-13 00:00:00+00
stgallen		D		cardboard	2023-06-14 00:00:00+00
stgallen		L West		waste	2022-07-01 00:00:00+00
stgallen		A		waste	2022-07-04 00:00:00+00
stgallen		D		waste	2022-07-05 00:00:00+00
stgallen		E		waste	2022-07-06 00:00:00+00
stgallen		K		waste	2022-07-08 00:00:00+00
stgallen		L Ost		waste	2022-07-08 00:00:00+00
stgallen		A		waste	2022-07-11 00:00:00+00
stgallen		B		waste	2022-07-11 00:00:00+00
stgallen		E		waste	2022-07-13 00:00:00+00
stgallen		L West		waste	2022-07-15 00:00:00+00
stgallen		D		waste	2022-07-19 00:00:00+00
stgallen		F		waste	2022-07-20 00:00:00+00
stgallen		D		waste	2022-07-26 00:00:00+00
stgallen		G		waste	2022-07-28 00:00:00+00
stgallen		L Ost		waste	2022-07-29 00:00:00+00
stgallen		B		waste	2022-08-15 00:00:00+00
stgallen		D		waste	2022-08-16 00:00:00+00
stgallen		C		waste	2022-08-23 00:00:00+00
stgallen		A		waste	2022-08-29 00:00:00+00
stgallen		L Ost		waste	2022-09-02 00:00:00+00
stgallen		C		waste	2022-09-06 00:00:00+00
stgallen		E		waste	2022-09-07 00:00:00+00
stgallen		G		waste	2022-09-08 00:00:00+00
stgallen		A		waste	2022-09-19 00:00:00+00
stgallen		E		waste	2022-09-21 00:00:00+00
stgallen		I		waste	2022-09-23 00:00:00+00
stgallen		B		waste	2022-09-26 00:00:00+00
stgallen		C		waste	2022-09-27 00:00:00+00
stgallen		L Ost		waste	2022-09-30 00:00:00+00
stgallen		L West		waste	2022-09-30 00:00:00+00
stgallen		F		waste	2022-10-05 00:00:00+00
stgallen		I		waste	2022-10-07 00:00:00+00
stgallen		L Ost		waste	2022-10-07 00:00:00+00
stgallen		D		waste	2022-10-11 00:00:00+00
stgallen		E		waste	2022-10-12 00:00:00+00
stgallen		L West		waste	2022-10-14 00:00:00+00
stgallen		B		waste	2022-10-17 00:00:00+00
stgallen		I		waste	2022-11-04 00:00:00+00
stgallen		C		waste	2022-11-08 00:00:00+00
stgallen		F		waste	2022-11-09 00:00:00+00
stgallen		I		waste	2022-11-11 00:00:00+00
stgallen		L West		waste	2022-11-11 00:00:00+00
stgallen		B		waste	2022-11-14 00:00:00+00
stgallen		D		waste	2022-11-15 00:00:00+00
stgallen		I		waste	2022-11-18 00:00:00+00
stgallen		L Ost		waste	2022-11-18 00:00:00+00
stgallen		C		waste	2022-11-22 00:00:00+00
stgallen		K		waste	2022-11-25 00:00:00+00
stgallen		L Ost		waste	2022-11-25 00:00:00+00
stgallen		L West		waste	2022-11-25 00:00:00+00
stgallen		E		waste	2022-11-30 00:00:00+00
stgallen		F		waste	2022-11-30 00:00:00+00
stgallen		B		waste	2022-12-12 00:00:00+00
stgallen		F		waste	2022-12-14 00:00:00+00
stgallen		K		waste	2022-12-16 00:00:00+00
stgallen		A		waste	2022-12-19 00:00:00+00
stgallen		C		waste	2022-12-20 00:00:00+00
stgallen		D		waste	2022-12-20 00:00:00+00
stgallen		H		waste	2022-12-22 00:00:00+00
stgallen		K		waste	2022-12-23 00:00:00+00
stgallen		L Ost		waste	2022-12-23 00:00:00+00
stgallen		C		waste	2022-12-27 00:00:00+00
stgallen		K		waste	2022-12-30 00:00:00+00
stgallen		B		waste	2023-01-02 00:00:00+00
stgallen		G		waste	2023-01-05 00:00:00+00
stgallen		B		waste	2023-01-09 00:00:00+00
stgallen		E		waste	2023-01-18 00:00:00+00
stgallen		F		waste	2023-01-18 00:00:00+00
stgallen		L Ost		waste	2023-01-20 00:00:00+00
stgallen		A		waste	2023-01-23 00:00:00+00
stgallen		C		waste	2023-01-24 00:00:00+00
stgallen		L West		waste	2023-01-27 00:00:00+00
stgallen		E		waste	2023-02-01 00:00:00+00
stgallen		G		waste	2023-02-02 00:00:00+00
stgallen		L Ost		waste	2023-02-03 00:00:00+00
stgallen		F		waste	2023-02-08 00:00:00+00
stgallen		H		waste	2023-02-09 00:00:00+00
stgallen		I		waste	2023-02-10 00:00:00+00
stgallen		L Ost		waste	2023-02-10 00:00:00+00
stgallen		B		waste	2023-02-13 00:00:00+00
stgallen		I		waste	2023-02-17 00:00:00+00
stgallen		G		waste	2023-02-23 00:00:00+00
stgallen		A		waste	2023-02-27 00:00:00+00
stgallen		C		waste	2023-02-28 00:00:00+00
stgallen		I		waste	2023-03-17 00:00:00+00
stgallen		L Ost		waste	2023-03-17 00:00:00+00
stgallen		D		waste	2023-03-21 00:00:00+00
stgallen		E		waste	2023-03-29 00:00:00+00
stgallen		D		waste	2023-04-04 00:00:00+00
stgallen		G		waste	2023-04-06 00:00:00+00
stgallen		I		waste	2023-04-06 00:00:00+00
stgallen		B		waste	2023-04-17 00:00:00+00
stgallen		H		waste	2023-04-20 00:00:00+00
stgallen		K		waste	2023-04-21 00:00:00+00
stgallen		L Ost		waste	2023-04-21 00:00:00+00
stgallen		D		waste	2023-04-25 00:00:00+00
stgallen		F		waste	2023-04-26 00:00:00+00
stgallen		L Ost		waste	2023-04-28 00:00:00+00
stgallen		A		waste	2023-05-01 00:00:00+00
stgallen		E		waste	2023-05-03 00:00:00+00
stgallen		K		waste	2023-05-12 00:00:00+00
stgallen		A		waste	2023-05-15 00:00:00+00
stgallen		E		waste	2023-05-17 00:00:00+00
stgallen		L West		waste	2023-05-19 00:00:00+00
stgallen		A		waste	2023-05-22 00:00:00+00
stgallen		E		waste	2023-05-31 00:00:00+00
stgallen		L West		waste	2023-06-02 00:00:00+00
stgallen		A		waste	2023-06-05 00:00:00+00
stgallen		H		waste	2023-06-08 00:00:00+00
stgallen		B		waste	2023-06-12 00:00:00+00
stgallen		H		waste	2023-06-15 00:00:00+00
stgallen		C		waste	2023-06-20 00:00:00+00
stgallen		H		waste	2023-06-22 00:00:00+00
stgallen		K		waste	2023-06-23 00:00:00+00
stgallen		I		waste	2023-06-30 00:00:00+00
stgallen		I		metal	2022-09-26 00:00:00+00
stgallen		G		metal	2022-09-28 00:00:00+00
stgallen		D		paper	2022-07-27 00:00:00+00
stgallen		K		paper	2022-07-28 00:00:00+00
stgallen		A		paper	2022-08-19 00:00:00+00
stgallen		B		paper	2022-08-26 00:00:00+00
stgallen		G		paper	2022-09-13 00:00:00+00
stgallen		C		paper	2022-09-14 00:00:00+00
stgallen		A		paper	2022-09-16 00:00:00+00
stgallen		F		paper	2022-09-19 00:00:00+00
stgallen		H		paper	2022-09-20 00:00:00+00
stgallen		E		paper	2022-10-10 00:00:00+00
stgallen		A		paper	2022-10-14 00:00:00+00
stgallen		F		paper	2022-10-17 00:00:00+00
stgallen		K		paper	2022-10-20 00:00:00+00
stgallen		B		paper	2022-10-21 00:00:00+00
stgallen		C		paper	2022-11-09 00:00:00+00
stgallen		I		paper	2022-11-10 00:00:00+00
stgallen		B		paper	2022-11-18 00:00:00+00
stgallen		I		paper	2022-12-08 00:00:00+00
stgallen		C		paper	2023-01-04 00:00:00+00
stgallen		F		paper	2023-01-09 00:00:00+00
stgallen		K		paper	2023-01-12 00:00:00+00
stgallen		L Ost		paper	2023-02-01 00:00:00+00
stgallen		F		paper	2023-02-06 00:00:00+00
stgallen		K		paper	2023-02-09 00:00:00+00
stgallen		E		paper	2023-02-27 00:00:00+00
stgallen		G		paper	2023-02-28 00:00:00+00
stgallen		I		paper	2023-03-02 00:00:00+00
stgallen		D		paper	2023-03-08 00:00:00+00
stgallen		G		paper	2023-03-28 00:00:00+00
stgallen		A		paper	2023-03-31 00:00:00+00
stgallen		G		paper	2023-04-25 00:00:00+00
stgallen		C		paper	2023-04-26 00:00:00+00
stgallen		A		paper	2023-04-28 00:00:00+00
stgallen		D		paper	2023-05-03 00:00:00+00
stgallen		K		paper	2023-05-04 00:00:00+00
stgallen		B		paper	2023-05-05 00:00:00+00
stgallen		I		paper	2023-05-25 00:00:00+00
stgallen		D		paper	2023-05-31 00:00:00+00
stgallen		K		paper	2023-06-01 00:00:00+00
stgallen		E		paper	2023-06-19 00:00:00+00
stgallen		I		paper	2023-06-22 00:00:00+00
stgallen		B		paper	2023-06-30 00:00:00+00
stgallen		E		organic	2020-09-23 00:00:00+00
stgallen		E		waste	2020-10-28 00:00:00+00
stgallen		E		organic	2020-11-25 00:00:00+00
stgallen		E		organic	2021-04-14 00:00:00+00
stgallen		E		organic	2021-05-12 00:00:00+00
stgallen		K		waste	2020-11-27 00:00:00+00
stgallen		K		waste	2021-02-12 00:00:00+00
stgallen		K		organic	2021-04-23 00:00:00+00
stgallen		D		waste	2020-07-28 00:00:00+00
stgallen		D		organic	2020-12-22 00:00:00+00
stgallen		D		waste	2021-04-13 00:00:00+00
stgallen		D		waste	2021-05-18 00:00:00+00
stgallen		A		organic	2021-02-08 00:00:00+00
stgallen		A		waste	2021-03-22 00:00:00+00
stgallen		A		organic	2021-04-19 00:00:00+00
stgallen		F		waste	2020-07-29 00:00:00+00
stgallen		F		waste	2020-08-26 00:00:00+00
stgallen		F		paper	2021-04-06 00:00:00+00
stgallen		F		organic	2021-01-13 00:00:00+00
stgallen		F		waste	2021-03-17 00:00:00+00
stgallen		F		waste	2021-06-23 00:00:00+00
stgallen		L West		organic	2020-11-06 00:00:00+00
stgallen		L West		organic	2020-11-20 00:00:00+00
stgallen		L West		waste	2021-01-08 00:00:00+00
stgallen		L West		organic	2021-03-26 00:00:00+00
stgallen		L West		waste	2021-06-11 00:00:00+00
stgallen		C		cardboard	2020-09-30 00:00:00+00
stgallen		C		waste	2020-08-11 00:00:00+00
stgallen		C		organic	2020-08-25 00:00:00+00
stgallen		C		organic	2020-09-01 00:00:00+00
stgallen		C		cardboard	2021-04-14 00:00:00+00
stgallen		C		organic	2021-04-27 00:00:00+00
stgallen		C		waste	2021-06-08 00:00:00+00
stgallen		B		waste	2020-07-13 00:00:00+00
stgallen		B		organic	2020-08-10 00:00:00+00
stgallen		B		waste	2020-09-21 00:00:00+00
stgallen		B		waste	2020-11-23 00:00:00+00
stgallen		B		organic	2021-01-04 00:00:00+00
stgallen		B		waste	2021-05-17 00:00:00+00
stgallen		G		organic	2020-07-09 00:00:00+00
stgallen		G		organic	2020-07-23 00:00:00+00
stgallen		G		organic	2020-08-13 00:00:00+00
stgallen		G		paper	2021-06-22 00:00:00+00
stgallen		G		waste	2020-11-05 00:00:00+00
stgallen		G		waste	2021-04-08 00:00:00+00
stgallen		G		waste	2021-05-06 00:00:00+00
stgallen		H		paper	2021-08-24 00:00:00+00
stgallen		H		cardboard	2021-08-10 00:00:00+00
stgallen		H		waste	2021-07-29 00:00:00+00
stgallen		H		waste	2021-08-26 00:00:00+00
stgallen		H		organic	2021-10-28 00:00:00+00
stgallen		H		waste	2021-12-16 00:00:00+00
stgallen		H		organic	2022-02-17 00:00:00+00
stgallen		H		waste	2022-04-14 00:00:00+00
stgallen		H		organic	2022-05-19 00:00:00+00
stgallen		D		organic	2021-08-31 00:00:00+00
stgallen		D		organic	2021-10-19 00:00:00+00
stgallen		D		organic	2021-10-26 00:00:00+00
stgallen		D		organic	2021-11-09 00:00:00+00
stgallen		D		waste	2022-01-04 00:00:00+00
stgallen		D		waste	2022-06-07 00:00:00+00
stgallen		D		organic	2022-06-14 00:00:00+00
stgallen		A		paper	2021-07-23 00:00:00+00
stgallen		A		organic	2021-07-26 00:00:00+00
stgallen		A		waste	2021-10-04 00:00:00+00
stgallen		A		organic	2021-10-11 00:00:00+00
stgallen		A		waste	2022-01-24 00:00:00+00
stgallen		C		waste	2021-07-27 00:00:00+00
stgallen		C		paper	2022-01-05 00:00:00+00
stgallen		C		organic	2021-09-14 00:00:00+00
stgallen		C		waste	2022-04-26 00:00:00+00
stgallen		C		waste	2022-05-03 00:00:00+00
stgallen		C		waste	2022-06-07 00:00:00+00
stgallen		B		waste	2021-10-04 00:00:00+00
stgallen		B		organic	2021-10-11 00:00:00+00
stgallen		B		organic	2021-11-22 00:00:00+00
stgallen		B		waste	2022-02-14 00:00:00+00
stgallen		B		organic	2022-06-20 00:00:00+00
stgallen		G		waste	2021-07-01 00:00:00+00
stgallen		G		paper	2022-02-01 00:00:00+00
stgallen		G		organic	2021-10-07 00:00:00+00
stgallen		G		waste	2021-12-30 00:00:00+00
stgallen		G		organic	2022-01-13 00:00:00+00
stgallen		G		waste	2022-01-27 00:00:00+00
stgallen		G		waste	2022-05-19 00:00:00+00
stgallen		G		organic	2022-06-30 00:00:00+00
stgallen		F		paper	2021-07-26 00:00:00+00
stgallen		F		waste	2021-08-04 00:00:00+00
stgallen		F		organic	2021-08-04 00:00:00+00
stgallen		F		organic	2021-08-11 00:00:00+00
stgallen		F		waste	2021-08-18 00:00:00+00
stgallen		F		organic	2021-08-18 00:00:00+00
stgallen		F		paper	2022-01-10 00:00:00+00
stgallen		F		paper	2022-05-30 00:00:00+00
stgallen		F		waste	2021-10-06 00:00:00+00
stgallen		F		organic	2021-12-15 00:00:00+00
stgallen		F		waste	2022-04-20 00:00:00+00
stgallen		I		paper	2021-08-19 00:00:00+00
stgallen		I		organic	2021-08-13 00:00:00+00
stgallen		I		waste	2021-09-17 00:00:00+00
stgallen		I		organic	2022-03-18 00:00:00+00
stgallen		I		organic	2022-05-06 00:00:00+00
stgallen		I		waste	2022-05-27 00:00:00+00
stgallen		L West		organic	2021-09-03 00:00:00+00
stgallen		L West		waste	2021-09-17 00:00:00+00
stgallen		L West		organic	2021-12-17 00:00:00+00
stgallen		L West		waste	2022-02-18 00:00:00+00
stgallen		L Ost		organic	2021-07-02 00:00:00+00
stgallen		L Ost		cardboard	2021-09-01 00:00:00+00
stgallen		L Ost		organic	2021-07-30 00:00:00+00
stgallen		L Ost		cardboard	2022-02-16 00:00:00+00
stgallen		L Ost		organic	2022-01-07 00:00:00+00
stgallen		L Ost		waste	2022-04-01 00:00:00+00
stgallen		L Ost		organic	2022-04-08 00:00:00+00
stgallen		E		organic	2021-07-14 00:00:00+00
stgallen		E		cardboard	2021-08-30 00:00:00+00
stgallen		E		waste	2021-09-29 00:00:00+00
stgallen		E		organic	2021-12-01 00:00:00+00
stgallen		E		waste	2022-01-19 00:00:00+00
stgallen		E		waste	2022-02-02 00:00:00+00
stgallen		E		waste	2022-02-09 00:00:00+00
stgallen		E		organic	2022-03-02 00:00:00+00
stgallen		E		waste	2022-04-06 00:00:00+00
stgallen		E		organic	2022-04-06 00:00:00+00
stgallen		E		waste	2022-05-04 00:00:00+00
stgallen		I		metal	2021-04-26 00:00:00+00
stgallen		I		organic	2020-08-07 00:00:00+00
stgallen		I		paper	2021-03-04 00:00:00+00
stgallen		I		organic	2020-09-11 00:00:00+00
stgallen		H		waste	2020-08-27 00:00:00+00
stgallen		H		waste	2020-12-24 00:00:00+00
stgallen		H		organic	2021-02-25 00:00:00+00
stgallen		L Ost		cardboard	2020-11-25 00:00:00+00
stgallen		L Ost		waste	2020-08-21 00:00:00+00
stgallen		L Ost		waste	2020-11-27 00:00:00+00
stgallen		L Ost		waste	2020-12-31 00:00:00+00
stgallen		L Ost		organic	2021-02-05 00:00:00+00
stgallen		L Ost		waste	2021-03-05 00:00:00+00
stgallen		K		waste	2021-07-16 00:00:00+00
stgallen		K		paper	2022-01-13 00:00:00+00
stgallen		K		paper	2022-06-30 00:00:00+00
stgallen		K		waste	2021-11-19 00:00:00+00
stgallen		K		waste	2022-01-21 00:00:00+00
stgallen		I		metal	2020-09-21 00:00:00+00
stgallen		I		paper	2020-08-20 00:00:00+00
stgallen		I		cardboard	2020-09-03 00:00:00+00
stgallen		I		waste	2020-08-14 00:00:00+00
stgallen		I		organic	2020-11-20 00:00:00+00
stgallen		I		organic	2021-06-11 00:00:00+00
stgallen		I		waste	2021-06-04 00:00:00+00
stgallen		A		metal	2022-04-29 00:00:00+00
stgallen		A		paper	2021-11-12 00:00:00+00
stgallen		A		waste	2021-08-16 00:00:00+00
stgallen		A		waste	2021-10-11 00:00:00+00
stgallen		A		waste	2022-01-03 00:00:00+00
stgallen		H		cardboard	2020-07-14 00:00:00+00
stgallen		H		cardboard	2020-10-06 00:00:00+00
stgallen		H		paper	2021-03-09 00:00:00+00
stgallen		H		organic	2020-10-08 00:00:00+00
stgallen		H		organic	2020-10-22 00:00:00+00
stgallen		H		waste	2021-02-25 00:00:00+00
stgallen		H		waste	2021-03-11 00:00:00+00
stgallen		H		waste	2021-05-06 00:00:00+00
stgallen		K		cardboard	2021-09-09 00:00:00+00
stgallen		K		paper	2022-03-10 00:00:00+00
stgallen		K		organic	2021-12-31 00:00:00+00
stgallen		K		organic	2022-02-25 00:00:00+00
stgallen		K		organic	2020-08-21 00:00:00+00
stgallen		K		waste	2020-11-06 00:00:00+00
stgallen		K		waste	2021-04-09 00:00:00+00
stgallen		K		waste	2021-05-07 00:00:00+00
stgallen		K		waste	2021-05-28 00:00:00+00
stgallen		L Ost		paper	2020-10-14 00:00:00+00
stgallen		L Ost		waste	2020-12-11 00:00:00+00
stgallen		L Ost		waste	2021-02-26 00:00:00+00
stgallen		L Ost		waste	2021-04-09 00:00:00+00
stgallen		F		paper	2021-02-08 00:00:00+00
stgallen		F		organic	2020-09-16 00:00:00+00
stgallen		F		organic	2020-11-04 00:00:00+00
stgallen		F		organic	2021-05-05 00:00:00+00
stgallen		F		organic	2021-05-26 00:00:00+00
stgallen		C		waste	2020-08-04 00:00:00+00
stgallen		C		cardboard	2021-01-20 00:00:00+00
stgallen		C		waste	2020-12-15 00:00:00+00
stgallen		C		waste	2020-12-22 00:00:00+00
stgallen		C		waste	2021-02-09 00:00:00+00
stgallen		H		paper	2021-09-21 00:00:00+00
stgallen		H		paper	2022-01-11 00:00:00+00
stgallen		H		organic	2022-06-02 00:00:00+00
stgallen		C		waste	2021-09-21 00:00:00+00
stgallen		C		waste	2021-11-02 00:00:00+00
stgallen		C		organic	2022-05-10 00:00:00+00
stgallen		B		metal	2022-04-29 00:00:00+00
stgallen		B		waste	2021-11-02 00:00:00+00
stgallen		B		waste	2021-12-20 00:00:00+00
stgallen		B		organic	2022-01-03 00:00:00+00
stgallen		B		waste	2022-01-17 00:00:00+00
stgallen		B		organic	2022-01-31 00:00:00+00
stgallen		B		waste	2022-04-11 00:00:00+00
stgallen		D		waste	2021-07-20 00:00:00+00
stgallen		D		organic	2021-07-20 00:00:00+00
stgallen		D		waste	2022-05-10 00:00:00+00
stgallen		F		organic	2021-07-07 00:00:00+00
stgallen		F		organic	2021-11-03 00:00:00+00
stgallen		F		organic	2021-12-22 00:00:00+00
stgallen		F		waste	2022-06-29 00:00:00+00
stgallen		I		waste	2021-07-02 00:00:00+00
stgallen		I		cardboard	2021-09-02 00:00:00+00
stgallen		I		organic	2021-08-06 00:00:00+00
stgallen		I		waste	2021-08-20 00:00:00+00
stgallen		I		paper	2022-03-03 00:00:00+00
stgallen		I		paper	2022-06-23 00:00:00+00
stgallen		I		organic	2021-10-22 00:00:00+00
stgallen		I		waste	2021-12-31 00:00:00+00
stgallen		I		organic	2022-02-04 00:00:00+00
stgallen		I		organic	2022-03-04 00:00:00+00
stgallen		G		organic	2021-09-02 00:00:00+00
stgallen		G		cardboard	2022-04-12 00:00:00+00
stgallen		G		waste	2021-10-21 00:00:00+00
stgallen		G		organic	2021-11-04 00:00:00+00
stgallen		G		organic	2021-12-30 00:00:00+00
stgallen		G		organic	2022-02-10 00:00:00+00
stgallen		G		organic	2022-02-17 00:00:00+00
stgallen		E		waste	2021-09-01 00:00:00+00
stgallen		E		waste	2021-09-15 00:00:00+00
stgallen		E		paper	2022-06-20 00:00:00+00
stgallen		E		waste	2022-02-23 00:00:00+00
stgallen		E		organic	2022-04-20 00:00:00+00
stgallen		E		waste	2022-05-18 00:00:00+00
stgallen		L Ost		paper	2021-12-08 00:00:00+00
stgallen		L Ost		organic	2021-09-10 00:00:00+00
stgallen		L Ost		organic	2021-10-01 00:00:00+00
stgallen		L Ost		organic	2021-10-29 00:00:00+00
stgallen		L Ost		waste	2022-06-03 00:00:00+00
stgallen		L West		waste	2021-07-09 00:00:00+00
stgallen		L West		cardboard	2022-03-23 00:00:00+00
stgallen		L West		organic	2022-03-18 00:00:00+00
stgallen		L West		organic	2022-05-13 00:00:00+00
stgallen		L West		waste	2022-05-27 00:00:00+00
stgallen		A		paper	2021-04-01 00:00:00+00
stgallen		A		waste	2020-09-28 00:00:00+00
stgallen		A		organic	2020-10-05 00:00:00+00
stgallen		A		organic	2020-10-26 00:00:00+00
stgallen		A		waste	2021-01-04 00:00:00+00
stgallen		A		organic	2021-02-22 00:00:00+00
stgallen		A		waste	2021-05-17 00:00:00+00
stgallen		E		organic	2020-07-22 00:00:00+00
stgallen		E		organic	2020-11-11 00:00:00+00
stgallen		E		waste	2021-02-10 00:00:00+00
stgallen		E		waste	2021-05-05 00:00:00+00
stgallen		E		organic	2021-06-30 00:00:00+00
stgallen		D		waste	2020-10-27 00:00:00+00
stgallen		D		organic	2020-11-03 00:00:00+00
stgallen		D		organic	2020-12-29 00:00:00+00
stgallen		D		waste	2021-05-04 00:00:00+00
stgallen		L West		waste	2020-07-31 00:00:00+00
stgallen		L West		organic	2020-08-07 00:00:00+00
stgallen		L West		paper	2021-04-07 00:00:00+00
stgallen		L West		cardboard	2021-06-16 00:00:00+00
stgallen		L West		organic	2020-10-09 00:00:00+00
stgallen		L West		waste	2020-12-31 00:00:00+00
stgallen		L West		waste	2021-03-05 00:00:00+00
stgallen		L West		waste	2021-04-16 00:00:00+00
stgallen		G		paper	2020-09-15 00:00:00+00
stgallen		G		waste	2020-07-23 00:00:00+00
stgallen		G		cardboard	2020-09-29 00:00:00+00
stgallen		G		paper	2021-03-30 00:00:00+00
stgallen		G		waste	2020-10-08 00:00:00+00
stgallen		G		waste	2021-06-17 00:00:00+00
stgallen		B		organic	2020-07-20 00:00:00+00
stgallen		B		waste	2020-08-03 00:00:00+00
stgallen		B		paper	2021-02-12 00:00:00+00
stgallen		B		waste	2020-09-28 00:00:00+00
stgallen		B		waste	2021-06-14 00:00:00+00
stgallen		D		cardboard	2021-07-14 00:00:00+00
stgallen		D		cardboard	2022-01-26 00:00:00+00
stgallen		D		paper	2022-03-09 00:00:00+00
stgallen		D		waste	2021-09-14 00:00:00+00
stgallen		D		waste	2021-12-28 00:00:00+00
stgallen		D		organic	2022-03-01 00:00:00+00
stgallen		D		organic	2022-04-26 00:00:00+00
stgallen		H		waste	2021-11-25 00:00:00+00
stgallen		H		organic	2022-01-06 00:00:00+00
stgallen		H		organic	2022-03-03 00:00:00+00
stgallen		L West		waste	2021-07-16 00:00:00+00
stgallen		L West		organic	2021-07-30 00:00:00+00
stgallen		L West		cardboard	2022-04-20 00:00:00+00
stgallen		L West		waste	2021-09-24 00:00:00+00
stgallen		L West		waste	2021-10-08 00:00:00+00
stgallen		L West		waste	2022-03-04 00:00:00+00
stgallen		L West		organic	2022-05-27 00:00:00+00
stgallen		I		cardboard	2022-01-20 00:00:00+00
stgallen		I		organic	2021-11-12 00:00:00+00
stgallen		I		organic	2022-01-21 00:00:00+00
stgallen		F		organic	2021-09-29 00:00:00+00
stgallen		F		paper	2022-06-27 00:00:00+00
stgallen		F		waste	2021-11-17 00:00:00+00
stgallen		F		waste	2022-02-16 00:00:00+00
stgallen		F		waste	2022-06-15 00:00:00+00
stgallen		E		cardboard	2021-08-02 00:00:00+00
stgallen		E		paper	2022-02-28 00:00:00+00
stgallen		E		waste	2021-11-10 00:00:00+00
stgallen		E		organic	2021-11-24 00:00:00+00
stgallen		E		waste	2021-12-22 00:00:00+00
stgallen		E		organic	2021-12-29 00:00:00+00
stgallen		E		waste	2022-01-12 00:00:00+00
stgallen		E		organic	2022-02-16 00:00:00+00
stgallen		E		waste	2022-04-27 00:00:00+00
stgallen		E		waste	2022-05-11 00:00:00+00
stgallen		L Ost		waste	2022-01-07 00:00:00+00
stgallen		L Ost		waste	2022-02-11 00:00:00+00
stgallen		L Ost		organic	2022-02-25 00:00:00+00
stgallen		L Ost		organic	2022-03-18 00:00:00+00
stgallen		G		metal	2021-09-29 00:00:00+00
stgallen		G		paper	2022-05-24 00:00:00+00
stgallen		G		waste	2021-09-23 00:00:00+00
stgallen		B		waste	2021-08-09 00:00:00+00
stgallen		B		paper	2022-03-11 00:00:00+00
stgallen		B		organic	2022-01-10 00:00:00+00
stgallen		B		organic	2022-06-13 00:00:00+00
stgallen		C		cardboard	2022-01-19 00:00:00+00
stgallen		C		cardboard	2022-04-13 00:00:00+00
stgallen		C		organic	2021-09-21 00:00:00+00
stgallen		C		waste	2021-10-19 00:00:00+00
stgallen		C		waste	2022-02-15 00:00:00+00
stgallen		A		organic	2021-07-12 00:00:00+00
stgallen		A		waste	2021-07-19 00:00:00+00
stgallen		A		cardboard	2022-03-18 00:00:00+00
stgallen		A		waste	2021-10-18 00:00:00+00
stgallen		A		organic	2022-02-07 00:00:00+00
stgallen		A		organic	2022-05-02 00:00:00+00
stgallen		A		waste	2022-05-23 00:00:00+00
stgallen		A		waste	2022-06-07 00:00:00+00
stgallen		K		cardboard	2021-07-15 00:00:00+00
stgallen		K		waste	2021-08-27 00:00:00+00
stgallen		K		cardboard	2022-03-24 00:00:00+00
stgallen		K		waste	2021-09-24 00:00:00+00
stgallen		K		organic	2021-12-24 00:00:00+00
stgallen		K		organic	2022-01-07 00:00:00+00
stgallen		K		organic	2022-04-13 00:00:00+00
stgallen		H		organic	2020-08-06 00:00:00+00
stgallen		H		organic	2020-09-17 00:00:00+00
stgallen		H		waste	2020-12-10 00:00:00+00
stgallen		H		organic	2021-03-18 00:00:00+00
stgallen		I		paper	2020-09-17 00:00:00+00
stgallen		I		waste	2020-07-31 00:00:00+00
stgallen		I		organic	2021-02-12 00:00:00+00
stgallen		I		waste	2021-03-12 00:00:00+00
stgallen		I		organic	2021-05-14 00:00:00+00
stgallen		I		waste	2021-05-07 00:00:00+00
stgallen		I		organic	2021-06-18 00:00:00+00
stgallen		I		waste	2021-06-18 00:00:00+00
stgallen		L Ost		cardboard	2021-02-17 00:00:00+00
stgallen		L Ost		waste	2020-09-11 00:00:00+00
stgallen		L Ost		organic	2020-10-16 00:00:00+00
stgallen		L Ost		waste	2020-10-30 00:00:00+00
stgallen		L Ost		organic	2021-01-08 00:00:00+00
stgallen		L Ost		organic	2021-04-09 00:00:00+00
stgallen		L Ost		waste	2021-04-30 00:00:00+00
stgallen		C		organic	2020-07-07 00:00:00+00
stgallen		C		organic	2020-12-29 00:00:00+00
stgallen		C		waste	2021-01-19 00:00:00+00
stgallen		K		paper	2020-07-30 00:00:00+00
stgallen		K		paper	2020-10-22 00:00:00+00
stgallen		K		waste	2020-09-18 00:00:00+00
stgallen		K		organic	2020-11-13 00:00:00+00
stgallen		K		organic	2021-01-15 00:00:00+00
stgallen		K		organic	2021-05-14 00:00:00+00
stgallen		K		organic	2021-06-25 00:00:00+00
stgallen		F		organic	2020-08-26 00:00:00+00
stgallen		F		organic	2020-09-09 00:00:00+00
stgallen		F		waste	2020-12-16 00:00:00+00
stgallen		F		waste	2021-03-24 00:00:00+00
stgallen		F		organic	2021-06-02 00:00:00+00
stgallen		D		cardboard	2020-11-04 00:00:00+00
stgallen		D		organic	2020-09-15 00:00:00+00
stgallen		D		organic	2020-09-22 00:00:00+00
stgallen		D		organic	2021-02-23 00:00:00+00
stgallen		D		organic	2021-03-02 00:00:00+00
stgallen		D		organic	2021-03-09 00:00:00+00
stgallen		D		organic	2021-03-30 00:00:00+00
stgallen		D		waste	2021-06-15 00:00:00+00
stgallen		A		cardboard	2020-07-10 00:00:00+00
stgallen		A		waste	2020-08-10 00:00:00+00
stgallen		A		waste	2020-11-16 00:00:00+00
stgallen		A		waste	2020-11-23 00:00:00+00
stgallen		A		organic	2021-03-22 00:00:00+00
stgallen		A		organic	2021-03-29 00:00:00+00
stgallen		L West		organic	2020-07-31 00:00:00+00
stgallen		L West		organic	2020-08-14 00:00:00+00
stgallen		L West		cardboard	2021-01-27 00:00:00+00
stgallen		L West		waste	2020-08-28 00:00:00+00
stgallen		L West		waste	2021-02-26 00:00:00+00
stgallen		L West		organic	2021-05-14 00:00:00+00
stgallen		E		waste	2020-07-15 00:00:00+00
stgallen		E		waste	2020-08-05 00:00:00+00
stgallen		E		cardboard	2021-01-18 00:00:00+00
stgallen		E		waste	2021-01-27 00:00:00+00
stgallen		G		organic	2020-09-17 00:00:00+00
stgallen		B		metal	2020-09-25 00:00:00+00
stgallen		B		metal	2021-04-30 00:00:00+00
stgallen		B		waste	2020-09-07 00:00:00+00
stgallen		B		paper	2021-03-12 00:00:00+00
stgallen		B		waste	2021-02-01 00:00:00+00
stgallen		B		organic	2021-03-01 00:00:00+00
stgallen		D		waste	2022-04-12 00:00:00+00
stgallen		I		organic	2021-01-08 00:00:00+00
stgallen		I		organic	2021-03-12 00:00:00+00
stgallen		I		organic	2021-03-19 00:00:00+00
stgallen		I		organic	2021-04-23 00:00:00+00
stgallen		H		waste	2020-12-17 00:00:00+00
stgallen		A		paper	2022-02-04 00:00:00+00
stgallen		A		waste	2022-03-14 00:00:00+00
stgallen		L Ost		organic	2020-07-24 00:00:00+00
stgallen		L Ost		waste	2020-09-04 00:00:00+00
stgallen		L Ost		waste	2020-09-18 00:00:00+00
stgallen		L Ost		waste	2020-10-02 00:00:00+00
stgallen		K		organic	2021-08-13 00:00:00+00
stgallen		K		organic	2021-11-19 00:00:00+00
stgallen		K		waste	2021-11-26 00:00:00+00
stgallen		K		organic	2022-04-29 00:00:00+00
stgallen		K		organic	2022-05-27 00:00:00+00
stgallen		K		waste	2022-06-10 00:00:00+00
stgallen		A		paper	2020-07-24 00:00:00+00
stgallen		A		paper	2020-12-11 00:00:00+00
stgallen		A		cardboard	2021-03-19 00:00:00+00
stgallen		A		waste	2020-09-14 00:00:00+00
stgallen		A		organic	2021-05-31 00:00:00+00
stgallen		E		organic	2020-07-15 00:00:00+00
stgallen		E		cardboard	2021-03-15 00:00:00+00
stgallen		E		organic	2020-09-09 00:00:00+00
stgallen		E		organic	2020-12-16 00:00:00+00
stgallen		E		waste	2021-03-03 00:00:00+00
stgallen		E		organic	2021-06-16 00:00:00+00
stgallen		D		organic	2020-07-21 00:00:00+00
stgallen		D		paper	2020-08-26 00:00:00+00
stgallen		D		organic	2020-08-11 00:00:00+00
stgallen		D		waste	2021-06-08 00:00:00+00
stgallen		L West		waste	2020-09-04 00:00:00+00
stgallen		L West		paper	2021-06-30 00:00:00+00
stgallen		L West		organic	2021-02-05 00:00:00+00
stgallen		I		paper	2021-10-14 00:00:00+00
stgallen		I		organic	2021-07-30 00:00:00+00
stgallen		I		organic	2021-10-29 00:00:00+00
stgallen		I		waste	2021-11-05 00:00:00+00
stgallen		I		organic	2021-12-10 00:00:00+00
stgallen		I		waste	2022-04-22 00:00:00+00
stgallen		I		organic	2022-05-27 00:00:00+00
stgallen		H		cardboard	2021-11-02 00:00:00+00
stgallen		H		cardboard	2022-05-17 00:00:00+00
stgallen		H		organic	2021-10-07 00:00:00+00
stgallen		H		organic	2021-11-18 00:00:00+00
stgallen		H		organic	2022-04-21 00:00:00+00
stgallen		H		organic	2022-06-30 00:00:00+00
stgallen		L Ost		cardboard	2021-07-07 00:00:00+00
stgallen		L Ost		metal	2022-04-28 00:00:00+00
stgallen		L Ost		waste	2021-12-17 00:00:00+00
stgallen		L West		cardboard	2022-01-26 00:00:00+00
stgallen		L West		waste	2022-04-29 00:00:00+00
stgallen		L West		organic	2022-06-10 00:00:00+00
stgallen		E		metal	2021-09-28 00:00:00+00
stgallen		E		waste	2021-08-18 00:00:00+00
stgallen		E		waste	2021-10-13 00:00:00+00
stgallen		E		waste	2022-03-09 00:00:00+00
stgallen		E		waste	2022-05-25 00:00:00+00
stgallen		G		metal	2020-09-23 00:00:00+00
stgallen		G		metal	2021-04-28 00:00:00+00
stgallen		G		waste	2020-09-17 00:00:00+00
stgallen		G		paper	2021-05-25 00:00:00+00
stgallen		G		cardboard	2021-06-08 00:00:00+00
stgallen		G		organic	2020-10-08 00:00:00+00
stgallen		G		organic	2020-12-10 00:00:00+00
stgallen		G		organic	2021-03-11 00:00:00+00
stgallen		G		waste	2021-04-15 00:00:00+00
stgallen		G		organic	2021-04-22 00:00:00+00
stgallen		B		organic	2020-10-05 00:00:00+00
stgallen		B		organic	2020-10-19 00:00:00+00
stgallen		B		organic	2020-12-21 00:00:00+00
stgallen		B		waste	2021-02-22 00:00:00+00
stgallen		B		waste	2021-04-06 00:00:00+00
stgallen		F		organic	2021-10-20 00:00:00+00
stgallen		F		waste	2022-01-12 00:00:00+00
stgallen		F		organic	2022-02-02 00:00:00+00
stgallen		F		waste	2022-02-23 00:00:00+00
stgallen		F		organic	2022-03-02 00:00:00+00
stgallen		F		waste	2022-03-09 00:00:00+00
stgallen		C		organic	2021-08-03 00:00:00+00
stgallen		G		paper	2021-09-14 00:00:00+00
stgallen		G		waste	2021-08-19 00:00:00+00
stgallen		G		waste	2021-09-30 00:00:00+00
stgallen		G		organic	2021-10-28 00:00:00+00
stgallen		G		organic	2022-06-23 00:00:00+00
stgallen		B		waste	2021-07-12 00:00:00+00
stgallen		B		paper	2021-10-22 00:00:00+00
stgallen		B		cardboard	2022-06-17 00:00:00+00
stgallen		B		organic	2021-12-06 00:00:00+00
stgallen		B		waste	2022-01-24 00:00:00+00
stgallen		B		organic	2022-01-24 00:00:00+00
stgallen		K		cardboard	2020-09-10 00:00:00+00
stgallen		K		cardboard	2021-03-25 00:00:00+00
stgallen		K		organic	2021-02-19 00:00:00+00
stgallen		C		paper	2020-07-22 00:00:00+00
stgallen		C		organic	2020-07-21 00:00:00+00
stgallen		C		paper	2020-09-16 00:00:00+00
stgallen		C		cardboard	2021-03-17 00:00:00+00
stgallen		C		organic	2020-11-03 00:00:00+00
stgallen		C		organic	2020-12-15 00:00:00+00
stgallen		C		waste	2021-01-26 00:00:00+00
stgallen		C		organic	2021-02-16 00:00:00+00
stgallen		C		waste	2021-03-16 00:00:00+00
stgallen		C		organic	2021-04-13 00:00:00+00
stgallen		F		cardboard	2021-05-17 00:00:00+00
stgallen		F		paper	2021-06-28 00:00:00+00
stgallen		F		waste	2020-11-04 00:00:00+00
stgallen		K		metal	2020-09-21 00:00:00+00
stgallen		K		organic	2020-09-11 00:00:00+00
stgallen		K		waste	2021-03-19 00:00:00+00
stgallen		K		waste	2021-06-04 00:00:00+00
stgallen		K		waste	2021-06-11 00:00:00+00
stgallen		D		waste	2020-08-11 00:00:00+00
stgallen		D		organic	2020-09-01 00:00:00+00
stgallen		D		organic	2021-02-02 00:00:00+00
stgallen		D		waste	2021-04-27 00:00:00+00
stgallen		D		organic	2021-06-08 00:00:00+00
stgallen		D		waste	2021-06-22 00:00:00+00
stgallen		C		organic	2020-08-18 00:00:00+00
stgallen		C		waste	2021-01-05 00:00:00+00
stgallen		C		waste	2021-03-30 00:00:00+00
stgallen		C		organic	2021-04-06 00:00:00+00
stgallen		C		waste	2021-05-11 00:00:00+00
stgallen		C		organic	2021-05-25 00:00:00+00
stgallen		F		paper	2020-08-24 00:00:00+00
stgallen		F		cardboard	2020-12-28 00:00:00+00
stgallen		F		organic	2020-10-07 00:00:00+00
stgallen		F		waste	2021-02-17 00:00:00+00
stgallen		F		waste	2021-04-07 00:00:00+00
stgallen		F		waste	2021-05-26 00:00:00+00
stgallen		E		organic	2020-07-08 00:00:00+00
stgallen		E		paper	2020-10-12 00:00:00+00
stgallen		E		waste	2020-08-12 00:00:00+00
stgallen		E		organic	2020-08-19 00:00:00+00
stgallen		E		paper	2021-04-26 00:00:00+00
stgallen		E		waste	2021-03-10 00:00:00+00
stgallen		E		waste	2021-04-28 00:00:00+00
stgallen		A		paper	2021-04-30 00:00:00+00
stgallen		A		organic	2021-02-01 00:00:00+00
stgallen		A		organic	2021-05-03 00:00:00+00
stgallen		A		organic	2021-06-07 00:00:00+00
stgallen		A		organic	2021-06-14 00:00:00+00
stgallen		A		organic	2021-06-21 00:00:00+00
stgallen		G		cardboard	2020-08-04 00:00:00+00
stgallen		G		organic	2020-07-16 00:00:00+00
stgallen		G		organic	2020-09-03 00:00:00+00
stgallen		G		waste	2020-11-12 00:00:00+00
stgallen		G		organic	2020-11-12 00:00:00+00
stgallen		G		waste	2020-11-26 00:00:00+00
stgallen		G		organic	2020-12-17 00:00:00+00
stgallen		G		waste	2021-01-07 00:00:00+00
stgallen		G		organic	2021-01-28 00:00:00+00
stgallen		G		organic	2021-05-27 00:00:00+00
stgallen		L West		paper	2020-07-01 00:00:00+00
stgallen		L West		organic	2020-12-11 00:00:00+00
stgallen		L West		waste	2021-04-01 00:00:00+00
stgallen		L West		organic	2021-04-23 00:00:00+00
stgallen		I		cardboard	2020-07-09 00:00:00+00
stgallen		I		waste	2020-07-24 00:00:00+00
stgallen		I		organic	2020-09-04 00:00:00+00
stgallen		I		cardboard	2021-05-14 00:00:00+00
stgallen		I		waste	2020-10-09 00:00:00+00
stgallen		I		organic	2020-12-04 00:00:00+00
stgallen		I		waste	2020-12-11 00:00:00+00
stgallen		L Ost		waste	2020-08-07 00:00:00+00
stgallen		L Ost		paper	2021-02-03 00:00:00+00
stgallen		L Ost		paper	2021-03-31 00:00:00+00
stgallen		L Ost		organic	2021-06-04 00:00:00+00
stgallen		D		cardboard	2021-09-08 00:00:00+00
stgallen		D		cardboard	2022-04-20 00:00:00+00
stgallen		D		waste	2021-10-05 00:00:00+00
stgallen		D		organic	2022-02-22 00:00:00+00
stgallen		K		waste	2022-04-08 00:00:00+00
stgallen		K		waste	2022-05-27 00:00:00+00
stgallen		K		organic	2022-06-03 00:00:00+00
stgallen		K		organic	2022-06-10 00:00:00+00
stgallen		A		organic	2022-04-20 00:00:00+00
stgallen		A		waste	2022-05-16 00:00:00+00
stgallen		A		organic	2022-05-23 00:00:00+00
stgallen		C		organic	2021-08-17 00:00:00+00
stgallen		C		organic	2021-08-24 00:00:00+00
stgallen		C		organic	2021-12-07 00:00:00+00
stgallen		C		waste	2022-05-31 00:00:00+00
stgallen		F		paper	2021-11-15 00:00:00+00
stgallen		F		paper	2022-03-07 00:00:00+00
stgallen		F		waste	2021-09-29 00:00:00+00
stgallen		F		waste	2022-02-09 00:00:00+00
stgallen		F		organic	2022-06-08 00:00:00+00
stgallen		B		waste	2021-12-06 00:00:00+00
stgallen		B		waste	2022-01-03 00:00:00+00
stgallen		B		waste	2022-01-10 00:00:00+00
stgallen		G		cardboard	2021-08-31 00:00:00+00
stgallen		G		waste	2021-11-11 00:00:00+00
stgallen		G		waste	2021-11-18 00:00:00+00
stgallen		G		organic	2021-11-25 00:00:00+00
stgallen		G		waste	2021-12-23 00:00:00+00
stgallen		G		waste	2022-01-13 00:00:00+00
stgallen		G		organic	2022-03-03 00:00:00+00
stgallen		G		organic	2022-04-07 00:00:00+00
stgallen		G		organic	2022-05-05 00:00:00+00
stgallen		L Ost		waste	2021-07-02 00:00:00+00
stgallen		L Ost		cardboard	2022-01-19 00:00:00+00
stgallen		L Ost		waste	2021-09-03 00:00:00+00
stgallen		L Ost		cardboard	2022-06-08 00:00:00+00
stgallen		L Ost		waste	2021-12-24 00:00:00+00
stgallen		L Ost		organic	2022-02-04 00:00:00+00
stgallen		H		cardboard	2021-09-07 00:00:00+00
stgallen		H		paper	2022-02-08 00:00:00+00
stgallen		H		organic	2022-03-17 00:00:00+00
stgallen		H		waste	2021-10-21 00:00:00+00
stgallen		H		waste	2021-12-02 00:00:00+00
stgallen		H		waste	2021-12-30 00:00:00+00
stgallen		I		waste	2021-07-23 00:00:00+00
stgallen		I		paper	2022-01-06 00:00:00+00
stgallen		I		cardboard	2022-04-14 00:00:00+00
stgallen		I		waste	2021-11-26 00:00:00+00
stgallen		I		waste	2022-04-08 00:00:00+00
stgallen		I		waste	2022-04-29 00:00:00+00
stgallen		I		organic	2022-06-03 00:00:00+00
stgallen		L West		cardboard	2022-05-18 00:00:00+00
stgallen		L West		paper	2022-06-29 00:00:00+00
stgallen		L West		organic	2021-11-12 00:00:00+00
stgallen		L West		waste	2021-12-24 00:00:00+00
stgallen		E		waste	2021-09-08 00:00:00+00
stgallen		E		organic	2021-11-03 00:00:00+00
stgallen		E		organic	2021-12-15 00:00:00+00
stgallen		E		organic	2022-06-01 00:00:00+00
stgallen		B		paper	2021-01-15 00:00:00+00
stgallen		B		waste	2020-11-30 00:00:00+00
stgallen		B		organic	2021-05-10 00:00:00+00
stgallen		B		organic	2021-06-07 00:00:00+00
stgallen		L West		organic	2022-07-01 00:00:00+00
stgallen		I		organic	2022-07-08 00:00:00+00
stgallen		H		organic	2022-07-14 00:00:00+00
stgallen		E		organic	2022-07-20 00:00:00+00
stgallen		L West		organic	2022-07-22 00:00:00+00
stgallen		C		organic	2022-08-02 00:00:00+00
stgallen		A		organic	2022-08-03 00:00:00+00
stgallen		B		organic	2022-08-03 00:00:00+00
stgallen		K		organic	2022-08-12 00:00:00+00
stgallen		A		organic	2022-08-15 00:00:00+00
stgallen		F		organic	2022-08-17 00:00:00+00
stgallen		A		organic	2022-08-22 00:00:00+00
stgallen		E		organic	2022-08-24 00:00:00+00
stgallen		K		organic	2022-08-26 00:00:00+00
stgallen		D		organic	2022-08-30 00:00:00+00
stgallen		L Ost		organic	2022-09-09 00:00:00+00
stgallen		D		organic	2022-09-13 00:00:00+00
stgallen		F		organic	2022-09-14 00:00:00+00
stgallen		F		organic	2022-09-28 00:00:00+00
stgallen		I		organic	2022-09-30 00:00:00+00
stgallen		B		organic	2022-10-03 00:00:00+00
stgallen		D		organic	2022-10-11 00:00:00+00
stgallen		E		organic	2022-10-12 00:00:00+00
stgallen		G		organic	2022-10-13 00:00:00+00
stgallen		L Ost		organic	2022-10-14 00:00:00+00
stgallen		B		organic	2022-10-17 00:00:00+00
stgallen		C		organic	2022-10-18 00:00:00+00
stgallen		F		organic	2022-10-19 00:00:00+00
stgallen		I		organic	2022-10-21 00:00:00+00
stgallen		B		organic	2022-10-24 00:00:00+00
stgallen		E		organic	2022-10-26 00:00:00+00
stgallen		I		organic	2022-10-28 00:00:00+00
stgallen		E		organic	2022-11-02 00:00:00+00
stgallen		D		organic	2022-11-08 00:00:00+00
stgallen		A		organic	2022-11-14 00:00:00+00
stgallen		B		organic	2022-11-14 00:00:00+00
stgallen		D		organic	2022-11-15 00:00:00+00
stgallen		F		organic	2022-11-16 00:00:00+00
stgallen		H		organic	2022-11-17 00:00:00+00
stgallen		K		organic	2022-11-18 00:00:00+00
stgallen		A		organic	2022-11-21 00:00:00+00
stgallen		I		organic	2022-11-25 00:00:00+00
stgallen		K		organic	2022-11-25 00:00:00+00
stgallen		A		organic	2022-11-28 00:00:00+00
stgallen		C		organic	2022-11-29 00:00:00+00
stgallen		G		organic	2022-12-01 00:00:00+00
stgallen		K		organic	2022-12-02 00:00:00+00
stgallen		B		organic	2022-12-05 00:00:00+00
stgallen		D		organic	2022-12-06 00:00:00+00
stgallen		G		organic	2022-12-08 00:00:00+00
stgallen		I		organic	2022-12-09 00:00:00+00
stgallen		K		organic	2022-12-09 00:00:00+00
stgallen		L Ost		organic	2022-12-09 00:00:00+00
stgallen		L West		organic	2022-12-09 00:00:00+00
stgallen		F		organic	2022-12-14 00:00:00+00
stgallen		B		organic	2022-12-19 00:00:00+00
stgallen		E		organic	2022-12-21 00:00:00+00
stgallen		F		organic	2022-12-21 00:00:00+00
stgallen		H		organic	2022-12-22 00:00:00+00
stgallen		K		organic	2022-12-23 00:00:00+00
stgallen		B		organic	2022-12-28 00:00:00+00
stgallen		F		organic	2022-12-28 00:00:00+00
stgallen		G		organic	2023-01-05 00:00:00+00
stgallen		L West		organic	2023-01-06 00:00:00+00
stgallen		C		organic	2023-01-10 00:00:00+00
stgallen		E		organic	2023-01-11 00:00:00+00
stgallen		H		organic	2023-01-12 00:00:00+00
stgallen		A		organic	2023-01-16 00:00:00+00
stgallen		F		organic	2023-01-18 00:00:00+00
stgallen		L West		organic	2023-01-20 00:00:00+00
stgallen		A		organic	2023-01-23 00:00:00+00
stgallen		G		organic	2023-01-26 00:00:00+00
stgallen		H		organic	2023-01-26 00:00:00+00
stgallen		F		organic	2023-02-01 00:00:00+00
stgallen		K		organic	2023-02-03 00:00:00+00
stgallen		C		organic	2023-02-14 00:00:00+00
stgallen		E		organic	2023-02-15 00:00:00+00
stgallen		G		organic	2023-02-16 00:00:00+00
stgallen		H		organic	2023-02-16 00:00:00+00
stgallen		B		organic	2023-02-20 00:00:00+00
stgallen		C		organic	2023-02-21 00:00:00+00
stgallen		I		organic	2023-02-24 00:00:00+00
stgallen		G		organic	2023-03-02 00:00:00+00
stgallen		K		organic	2023-03-03 00:00:00+00
stgallen		L West		organic	2023-03-03 00:00:00+00
stgallen		D		organic	2023-03-07 00:00:00+00
stgallen		G		organic	2023-03-09 00:00:00+00
stgallen		L West		organic	2023-03-10 00:00:00+00
stgallen		K		organic	2023-03-17 00:00:00+00
stgallen		E		organic	2023-03-22 00:00:00+00
stgallen		I		organic	2023-03-24 00:00:00+00
stgallen		L Ost		organic	2023-03-24 00:00:00+00
stgallen		A		organic	2023-03-27 00:00:00+00
stgallen		E		organic	2023-03-29 00:00:00+00
stgallen		G		organic	2023-03-30 00:00:00+00
stgallen		C		organic	2023-04-04 00:00:00+00
stgallen		A		organic	2023-04-24 00:00:00+00
stgallen		F		organic	2023-04-26 00:00:00+00
stgallen		H		organic	2023-04-27 00:00:00+00
stgallen		L West		organic	2023-04-28 00:00:00+00
stgallen		C		organic	2023-05-02 00:00:00+00
stgallen		F		organic	2023-05-03 00:00:00+00
stgallen		H		organic	2023-05-04 00:00:00+00
stgallen		D		organic	2023-05-09 00:00:00+00
stgallen		H		organic	2023-05-11 00:00:00+00
stgallen		L Ost		organic	2023-05-19 00:00:00+00
stgallen		L West		organic	2023-05-19 00:00:00+00
stgallen		C		organic	2023-05-30 00:00:00+00
stgallen		I		organic	2023-06-02 00:00:00+00
stgallen		L West		organic	2023-06-02 00:00:00+00
stgallen		C		organic	2023-06-06 00:00:00+00
stgallen		L West		organic	2023-06-09 00:00:00+00
stgallen		B		organic	2023-06-19 00:00:00+00
stgallen		K		organic	2023-06-23 00:00:00+00
stgallen		L Ost		organic	2023-06-23 00:00:00+00
stgallen		L West		organic	2023-06-23 00:00:00+00
stgallen		D		organic	2023-06-27 00:00:00+00
stgallen		K		cardboard	2022-07-14 00:00:00+00
stgallen		B		cardboard	2022-07-15 00:00:00+00
stgallen		B		cardboard	2022-08-12 00:00:00+00
stgallen		C		cardboard	2022-08-31 00:00:00+00
stgallen		I		cardboard	2022-09-01 00:00:00+00
stgallen		B		cardboard	2022-09-09 00:00:00+00
stgallen		K		cardboard	2022-10-06 00:00:00+00
stgallen		A		cardboard	2022-10-28 00:00:00+00
stgallen		D		cardboard	2022-11-02 00:00:00+00
stgallen		E		cardboard	2022-11-21 00:00:00+00
stgallen		C		cardboard	2022-11-23 00:00:00+00
stgallen		I		cardboard	2022-11-24 00:00:00+00
stgallen		D		cardboard	2022-11-30 00:00:00+00
stgallen		L Ost		cardboard	2022-12-21 00:00:00+00
stgallen		F		cardboard	2022-12-27 00:00:00+00
stgallen		H		cardboard	2023-01-24 00:00:00+00
stgallen		C		cardboard	2023-02-15 00:00:00+00
stgallen		I		cardboard	2023-02-16 00:00:00+00
stgallen		H		cardboard	2023-02-21 00:00:00+00
stgallen		L West		cardboard	2023-02-22 00:00:00+00
stgallen		B		cardboard	2023-02-24 00:00:00+00
stgallen		E		cardboard	2023-03-13 00:00:00+00
stgallen		C		cardboard	2023-03-15 00:00:00+00
stgallen		F		cardboard	2023-03-20 00:00:00+00
stgallen		K		cardboard	2023-03-23 00:00:00+00
stgallen		K		cardboard	2023-04-20 00:00:00+00
stgallen		G		cardboard	2023-05-09 00:00:00+00
stgallen		F		cardboard	2023-06-12 00:00:00+00
stgallen		B		cardboard	2023-06-16 00:00:00+00
stgallen		H		waste	2022-07-07 00:00:00+00
stgallen		I		waste	2022-07-08 00:00:00+00
stgallen		A		waste	2022-07-25 00:00:00+00
stgallen		B		waste	2022-07-25 00:00:00+00
stgallen		E		waste	2022-07-27 00:00:00+00
stgallen		H		waste	2022-07-28 00:00:00+00
stgallen		A		waste	2022-08-02 00:00:00+00
stgallen		C		waste	2022-08-02 00:00:00+00
stgallen		E		waste	2022-08-03 00:00:00+00
stgallen		L West		waste	2022-08-05 00:00:00+00
stgallen		D		waste	2022-08-09 00:00:00+00
stgallen		F		waste	2022-08-10 00:00:00+00
stgallen		H		waste	2022-08-11 00:00:00+00
stgallen		L Ost		waste	2022-08-12 00:00:00+00
stgallen		A		waste	2022-08-15 00:00:00+00
stgallen		C		waste	2022-08-16 00:00:00+00
stgallen		G		waste	2022-08-18 00:00:00+00
stgallen		I		waste	2022-08-19 00:00:00+00
stgallen		L Ost		waste	2022-08-19 00:00:00+00
stgallen		L West		waste	2022-08-19 00:00:00+00
stgallen		A		waste	2022-08-22 00:00:00+00
stgallen		D		waste	2022-08-23 00:00:00+00
stgallen		I		waste	2022-08-26 00:00:00+00
stgallen		K		waste	2022-08-26 00:00:00+00
stgallen		L Ost		waste	2022-08-26 00:00:00+00
stgallen		L West		waste	2022-08-26 00:00:00+00
stgallen		C		waste	2022-08-30 00:00:00+00
stgallen		E		waste	2022-08-31 00:00:00+00
stgallen		I		waste	2022-09-02 00:00:00+00
stgallen		D		waste	2022-09-06 00:00:00+00
stgallen		K		waste	2022-09-09 00:00:00+00
stgallen		A		waste	2022-09-12 00:00:00+00
stgallen		C		waste	2022-09-13 00:00:00+00
stgallen		D		waste	2022-09-13 00:00:00+00
stgallen		F		waste	2022-09-14 00:00:00+00
stgallen		L Ost		waste	2022-09-16 00:00:00+00
stgallen		C		waste	2022-09-20 00:00:00+00
stgallen		F		waste	2022-09-21 00:00:00+00
stgallen		E		waste	2022-09-28 00:00:00+00
stgallen		G		waste	2022-09-29 00:00:00+00
stgallen		F		waste	2022-10-12 00:00:00+00
stgallen		H		waste	2022-10-13 00:00:00+00
stgallen		L Ost		waste	2022-10-14 00:00:00+00
stgallen		A		waste	2022-10-17 00:00:00+00
stgallen		C		waste	2022-10-18 00:00:00+00
stgallen		H		waste	2022-10-20 00:00:00+00
stgallen		I		waste	2022-10-21 00:00:00+00
stgallen		L West		waste	2022-10-21 00:00:00+00
stgallen		D		waste	2022-10-25 00:00:00+00
stgallen		G		waste	2022-10-27 00:00:00+00
stgallen		A		waste	2022-10-31 00:00:00+00
stgallen		C		waste	2022-11-02 00:00:00+00
stgallen		F		waste	2022-11-02 00:00:00+00
stgallen		G		waste	2022-11-03 00:00:00+00
stgallen		H		waste	2022-11-03 00:00:00+00
stgallen		K		waste	2022-11-04 00:00:00+00
stgallen		L West		waste	2022-11-04 00:00:00+00
stgallen		K		waste	2022-11-11 00:00:00+00
stgallen		A		waste	2022-11-14 00:00:00+00
stgallen		G		waste	2022-11-17 00:00:00+00
stgallen		K		waste	2022-11-18 00:00:00+00
stgallen		L West		waste	2022-11-18 00:00:00+00
stgallen		F		waste	2022-11-23 00:00:00+00
stgallen		I		waste	2022-12-02 00:00:00+00
stgallen		C		waste	2022-12-06 00:00:00+00
stgallen		K		waste	2022-12-09 00:00:00+00
stgallen		E		waste	2022-12-14 00:00:00+00
stgallen		D		waste	2022-12-27 00:00:00+00
stgallen		A		waste	2023-01-02 00:00:00+00
stgallen		E		waste	2023-01-04 00:00:00+00
stgallen		L Ost		waste	2023-01-06 00:00:00+00
stgallen		I		waste	2023-01-20 00:00:00+00
stgallen		K		waste	2023-01-20 00:00:00+00
stgallen		L West		waste	2023-01-20 00:00:00+00
stgallen		D		waste	2023-01-24 00:00:00+00
stgallen		G		waste	2023-01-26 00:00:00+00
stgallen		H		waste	2023-01-26 00:00:00+00
stgallen		K		waste	2023-01-27 00:00:00+00
stgallen		C		waste	2023-01-31 00:00:00+00
stgallen		D		waste	2023-01-31 00:00:00+00
stgallen		A		waste	2023-02-06 00:00:00+00
stgallen		C		waste	2023-02-07 00:00:00+00
stgallen		K		waste	2023-02-10 00:00:00+00
stgallen		L West		waste	2023-02-10 00:00:00+00
stgallen		F		waste	2023-02-15 00:00:00+00
stgallen		L West		waste	2023-02-17 00:00:00+00
stgallen		I		waste	2023-02-24 00:00:00+00
stgallen		K		waste	2023-02-24 00:00:00+00
stgallen		D		waste	2023-02-28 00:00:00+00
stgallen		E		waste	2023-03-01 00:00:00+00
stgallen		H		waste	2023-03-02 00:00:00+00
stgallen		L Ost		waste	2023-03-03 00:00:00+00
stgallen		L West		waste	2023-03-03 00:00:00+00
stgallen		D		waste	2023-03-07 00:00:00+00
stgallen		E		waste	2023-03-08 00:00:00+00
stgallen		F		waste	2023-03-08 00:00:00+00
stgallen		H		waste	2023-03-09 00:00:00+00
stgallen		I		waste	2023-03-10 00:00:00+00
stgallen		K		waste	2023-03-10 00:00:00+00
stgallen		L West		waste	2023-03-10 00:00:00+00
stgallen		G		waste	2023-03-16 00:00:00+00
stgallen		L Ost		waste	2023-03-24 00:00:00+00
stgallen		D		waste	2023-03-28 00:00:00+00
stgallen		G		waste	2023-03-30 00:00:00+00
stgallen		K		waste	2023-03-31 00:00:00+00
stgallen		B		waste	2023-04-03 00:00:00+00
stgallen		C		waste	2023-04-04 00:00:00+00
stgallen		H		waste	2023-04-06 00:00:00+00
stgallen		B		waste	2023-04-11 00:00:00+00
stgallen		D		waste	2023-04-11 00:00:00+00
stgallen		E		waste	2023-04-12 00:00:00+00
stgallen		F		waste	2023-04-12 00:00:00+00
stgallen		G		waste	2023-04-13 00:00:00+00
stgallen		I		waste	2023-04-14 00:00:00+00
stgallen		G		waste	2023-04-20 00:00:00+00
stgallen		A		waste	2023-04-24 00:00:00+00
stgallen		E		waste	2023-04-26 00:00:00+00
stgallen		K		waste	2023-04-28 00:00:00+00
stgallen		C		waste	2023-05-02 00:00:00+00
stgallen		F		waste	2023-05-03 00:00:00+00
stgallen		A		waste	2023-05-08 00:00:00+00
stgallen		B		waste	2023-05-08 00:00:00+00
stgallen		L Ost		waste	2023-05-12 00:00:00+00
stgallen		B		waste	2023-05-15 00:00:00+00
stgallen		F		waste	2023-05-24 00:00:00+00
stgallen		L Ost		waste	2023-05-26 00:00:00+00
stgallen		G		waste	2023-06-01 00:00:00+00
stgallen		H		waste	2023-06-01 00:00:00+00
stgallen		B		waste	2023-06-05 00:00:00+00
stgallen		C		waste	2023-06-06 00:00:00+00
stgallen		D		waste	2023-06-06 00:00:00+00
stgallen		E		waste	2023-06-07 00:00:00+00
stgallen		F		waste	2023-06-07 00:00:00+00
stgallen		L Ost		waste	2023-06-16 00:00:00+00
stgallen		B		waste	2023-06-19 00:00:00+00
stgallen		G		waste	2023-06-22 00:00:00+00
stgallen		A		waste	2023-06-26 00:00:00+00
stgallen		G		waste	2023-06-29 00:00:00+00
stgallen		L Ost		waste	2023-06-30 00:00:00+00
stgallen		L West		waste	2023-06-30 00:00:00+00
stgallen		F		metal	2022-09-27 00:00:00+00
stgallen		D		metal	2022-09-29 00:00:00+00
stgallen		I		metal	2023-04-24 00:00:00+00
stgallen		G		metal	2023-04-26 00:00:00+00
stgallen		E		paper	2022-07-18 00:00:00+00
stgallen		L Ost		paper	2022-07-20 00:00:00+00
stgallen		F		paper	2022-07-25 00:00:00+00
stgallen		E		paper	2022-08-15 00:00:00+00
stgallen		G		paper	2022-08-16 00:00:00+00
stgallen		F		paper	2022-08-22 00:00:00+00
stgallen		L West		paper	2022-08-24 00:00:00+00
stgallen		K		paper	2022-08-25 00:00:00+00
stgallen		E		paper	2022-09-12 00:00:00+00
stgallen		L Ost		paper	2022-09-14 00:00:00+00
stgallen		B		paper	2022-09-23 00:00:00+00
stgallen		I		paper	2022-10-13 00:00:00+00
stgallen		A		paper	2022-11-11 00:00:00+00
stgallen		L West		paper	2022-11-16 00:00:00+00
stgallen		G		paper	2022-12-06 00:00:00+00
stgallen		G		paper	2023-01-03 00:00:00+00
stgallen		D		paper	2023-01-11 00:00:00+00
stgallen		L West		paper	2023-01-11 00:00:00+00
stgallen		C		paper	2023-02-01 00:00:00+00
stgallen		I		paper	2023-02-02 00:00:00+00
stgallen		A		paper	2023-02-03 00:00:00+00
stgallen		H		paper	2023-02-07 00:00:00+00
stgallen		L West		paper	2023-02-08 00:00:00+00
stgallen		B		paper	2023-02-10 00:00:00+00
stgallen		C		paper	2023-03-01 00:00:00+00
stgallen		L Ost		paper	2023-03-01 00:00:00+00
stgallen		F		paper	2023-03-06 00:00:00+00
stgallen		E		paper	2023-03-27 00:00:00+00
stgallen		C		paper	2023-03-29 00:00:00+00
stgallen		L Ost		paper	2023-03-29 00:00:00+00
stgallen		E		paper	2023-04-24 00:00:00+00
stgallen		H		paper	2023-05-02 00:00:00+00
stgallen		G		paper	2023-05-23 00:00:00+00
stgallen		L Ost		paper	2023-05-24 00:00:00+00
stgallen		B		paper	2023-06-02 00:00:00+00
stgallen		C		paper	2023-06-21 00:00:00+00
stgallen		L Ost		paper	2023-06-21 00:00:00+00
stgallen		E		paper	2020-07-20 00:00:00+00
stgallen		E		waste	2020-08-19 00:00:00+00
stgallen		E		paper	2021-03-29 00:00:00+00
stgallen		E		organic	2020-09-16 00:00:00+00
stgallen		E		paper	2021-05-25 00:00:00+00
stgallen		E		waste	2021-02-24 00:00:00+00
stgallen		E		waste	2021-04-14 00:00:00+00
stgallen		K		waste	2020-08-28 00:00:00+00
stgallen		K		organic	2020-10-23 00:00:00+00
stgallen		K		waste	2020-11-13 00:00:00+00
stgallen		K		waste	2020-12-04 00:00:00+00
stgallen		K		organic	2021-02-12 00:00:00+00
stgallen		D		cardboard	2020-08-12 00:00:00+00
stgallen		D		paper	2021-06-30 00:00:00+00
stgallen		D		organic	2020-10-27 00:00:00+00
stgallen		D		organic	2020-11-24 00:00:00+00
stgallen		D		organic	2020-12-08 00:00:00+00
stgallen		D		organic	2021-02-16 00:00:00+00
stgallen		A		metal	2020-09-25 00:00:00+00
stgallen		A		waste	2020-07-27 00:00:00+00
stgallen		A		cardboard	2021-04-16 00:00:00+00
stgallen		A		waste	2020-11-09 00:00:00+00
stgallen		F		waste	2020-12-23 00:00:00+00
stgallen		F		waste	2020-12-30 00:00:00+00
stgallen		F		organic	2021-01-27 00:00:00+00
stgallen		F		waste	2021-02-10 00:00:00+00
stgallen		F		organic	2021-03-24 00:00:00+00
stgallen		F		organic	2021-04-28 00:00:00+00
stgallen		L West		organic	2020-09-04 00:00:00+00
stgallen		L West		cardboard	2021-03-24 00:00:00+00
stgallen		L West		organic	2020-09-18 00:00:00+00
stgallen		L West		paper	2021-05-05 00:00:00+00
stgallen		L West		organic	2020-10-02 00:00:00+00
stgallen		L West		waste	2020-10-23 00:00:00+00
stgallen		L West		organic	2020-12-18 00:00:00+00
stgallen		L West		waste	2021-04-09 00:00:00+00
stgallen		L West		waste	2021-05-14 00:00:00+00
stgallen		C		paper	2020-12-09 00:00:00+00
stgallen		C		paper	2021-03-03 00:00:00+00
stgallen		C		organic	2021-05-04 00:00:00+00
stgallen		C		waste	2021-05-25 00:00:00+00
stgallen		B		organic	2020-07-27 00:00:00+00
stgallen		B		organic	2020-08-17 00:00:00+00
stgallen		B		organic	2020-08-31 00:00:00+00
stgallen		B		waste	2020-09-14 00:00:00+00
stgallen		B		paper	2021-05-07 00:00:00+00
stgallen		B		organic	2020-10-26 00:00:00+00
stgallen		B		waste	2020-12-28 00:00:00+00
stgallen		G		waste	2020-07-30 00:00:00+00
stgallen		G		cardboard	2021-05-11 00:00:00+00
stgallen		H		cardboard	2021-10-05 00:00:00+00
stgallen		H		waste	2021-08-19 00:00:00+00
stgallen		H		waste	2022-01-20 00:00:00+00
stgallen		H		organic	2022-05-05 00:00:00+00
stgallen		H		waste	2022-06-09 00:00:00+00
stgallen		H		waste	2022-06-23 00:00:00+00
stgallen		D		cardboard	2022-05-18 00:00:00+00
stgallen		D		waste	2021-11-02 00:00:00+00
stgallen		D		waste	2021-12-14 00:00:00+00
stgallen		D		waste	2022-03-08 00:00:00+00
stgallen		A		organic	2021-08-30 00:00:00+00
stgallen		A		organic	2021-12-20 00:00:00+00
stgallen		C		organic	2021-08-10 00:00:00+00
stgallen		C		waste	2021-11-30 00:00:00+00
stgallen		C		organic	2022-02-22 00:00:00+00
stgallen		C		organic	2022-05-24 00:00:00+00
stgallen		C		organic	2022-06-07 00:00:00+00
stgallen		B		paper	2021-11-19 00:00:00+00
stgallen		B		organic	2022-02-14 00:00:00+00
stgallen		B		organic	2022-03-28 00:00:00+00
stgallen		G		organic	2021-07-08 00:00:00+00
stgallen		G		waste	2022-05-27 00:00:00+00
stgallen		G		waste	2022-06-16 00:00:00+00
stgallen		F		paper	2021-08-23 00:00:00+00
stgallen		F		cardboard	2021-11-02 00:00:00+00
stgallen		F		cardboard	2022-03-21 00:00:00+00
stgallen		F		waste	2022-04-13 00:00:00+00
stgallen		F		organic	2022-04-27 00:00:00+00
stgallen		I		cardboard	2021-08-05 00:00:00+00
stgallen		L West		paper	2022-01-12 00:00:00+00
stgallen		L West		organic	2021-09-10 00:00:00+00
stgallen		L West		organic	2021-11-19 00:00:00+00
stgallen		L West		waste	2022-05-20 00:00:00+00
stgallen		L West		waste	2022-06-10 00:00:00+00
stgallen		L Ost		cardboard	2021-11-24 00:00:00+00
stgallen		L Ost		organic	2021-11-05 00:00:00+00
stgallen		L Ost		organic	2021-12-03 00:00:00+00
stgallen		L Ost		waste	2022-05-13 00:00:00+00
stgallen		L Ost		organic	2022-06-03 00:00:00+00
stgallen		L Ost		waste	2022-06-10 00:00:00+00
stgallen		E		waste	2021-08-11 00:00:00+00
stgallen		E		cardboard	2022-04-11 00:00:00+00
stgallen		E		organic	2021-10-13 00:00:00+00
stgallen		E		organic	2022-01-26 00:00:00+00
stgallen		E		organic	2022-06-15 00:00:00+00
stgallen		I		waste	2020-07-17 00:00:00+00
stgallen		I		cardboard	2020-10-29 00:00:00+00
stgallen		I		waste	2021-04-23 00:00:00+00
stgallen		H		organic	2020-12-31 00:00:00+00
stgallen		H		organic	2021-01-14 00:00:00+00
stgallen		H		organic	2021-06-24 00:00:00+00
stgallen		L Ost		paper	2020-07-22 00:00:00+00
stgallen		L Ost		paper	2021-03-03 00:00:00+00
stgallen		L Ost		waste	2021-02-05 00:00:00+00
stgallen		L Ost		waste	2021-03-19 00:00:00+00
stgallen		L Ost		waste	2021-04-16 00:00:00+00
stgallen		K		paper	2021-09-23 00:00:00+00
stgallen		K		organic	2021-08-06 00:00:00+00
stgallen		K		cardboard	2022-05-19 00:00:00+00
stgallen		K		organic	2021-09-24 00:00:00+00
stgallen		K		waste	2022-01-28 00:00:00+00
stgallen		K		organic	2022-05-13 00:00:00+00
stgallen		K		organic	2022-05-20 00:00:00+00
stgallen		I		waste	2020-08-28 00:00:00+00
stgallen		A		waste	2021-08-23 00:00:00+00
stgallen		A		paper	2022-05-27 00:00:00+00
stgallen		A		organic	2022-01-03 00:00:00+00
stgallen		A		waste	2022-05-30 00:00:00+00
stgallen		H		cardboard	2020-08-11 00:00:00+00
stgallen		H		organic	2020-07-23 00:00:00+00
stgallen		H		waste	2020-07-30 00:00:00+00
stgallen		H		organic	2020-11-19 00:00:00+00
stgallen		H		waste	2021-01-14 00:00:00+00
stgallen		H		waste	2021-01-28 00:00:00+00
stgallen		H		waste	2021-02-04 00:00:00+00
stgallen		H		waste	2021-04-15 00:00:00+00
stgallen		K		metal	2022-04-25 00:00:00+00
stgallen		K		waste	2021-10-15 00:00:00+00
stgallen		K		waste	2022-03-04 00:00:00+00
stgallen		K		organic	2022-04-08 00:00:00+00
stgallen		K		waste	2022-06-17 00:00:00+00
stgallen		K		organic	2020-09-18 00:00:00+00
stgallen		K		organic	2020-10-16 00:00:00+00
stgallen		K		organic	2020-11-06 00:00:00+00
stgallen		K		organic	2021-03-12 00:00:00+00
stgallen		K		organic	2021-03-19 00:00:00+00
stgallen		K		organic	2021-06-11 00:00:00+00
stgallen		L Ost		organic	2020-07-10 00:00:00+00
stgallen		L Ost		cardboard	2020-09-02 00:00:00+00
stgallen		L Ost		cardboard	2020-09-30 00:00:00+00
stgallen		L Ost		organic	2020-09-11 00:00:00+00
stgallen		L Ost		paper	2021-05-26 00:00:00+00
stgallen		L Ost		organic	2020-10-02 00:00:00+00
stgallen		L Ost		organic	2020-10-23 00:00:00+00
stgallen		L Ost		waste	2020-11-13 00:00:00+00
stgallen		L Ost		organic	2020-11-20 00:00:00+00
stgallen		L Ost		waste	2021-01-22 00:00:00+00
stgallen		L Ost		waste	2021-04-01 00:00:00+00
stgallen		L Ost		waste	2021-06-04 00:00:00+00
stgallen		F		waste	2020-12-02 00:00:00+00
stgallen		F		waste	2020-12-09 00:00:00+00
stgallen		F		waste	2021-01-27 00:00:00+00
stgallen		F		organic	2021-02-17 00:00:00+00
stgallen		F		organic	2021-03-03 00:00:00+00
stgallen		C		paper	2020-08-19 00:00:00+00
stgallen		C		organic	2020-08-04 00:00:00+00
stgallen		C		waste	2020-09-15 00:00:00+00
stgallen		C		organic	2020-09-22 00:00:00+00
stgallen		C		waste	2020-10-06 00:00:00+00
stgallen		C		waste	2021-03-09 00:00:00+00
stgallen		H		cardboard	2021-12-28 00:00:00+00
stgallen		H		organic	2021-12-30 00:00:00+00
stgallen		C		organic	2021-07-13 00:00:00+00
stgallen		C		waste	2021-09-14 00:00:00+00
stgallen		C		waste	2021-10-12 00:00:00+00
stgallen		C		waste	2022-03-08 00:00:00+00
stgallen		C		waste	2022-05-10 00:00:00+00
stgallen		B		waste	2021-08-16 00:00:00+00
stgallen		B		organic	2021-08-30 00:00:00+00
stgallen		B		waste	2021-10-18 00:00:00+00
stgallen		B		waste	2022-02-21 00:00:00+00
stgallen		D		cardboard	2021-10-06 00:00:00+00
stgallen		D		organic	2021-08-03 00:00:00+00
stgallen		D		waste	2021-08-10 00:00:00+00
stgallen		D		cardboard	2021-12-01 00:00:00+00
stgallen		D		waste	2021-11-09 00:00:00+00
stgallen		D		waste	2022-01-11 00:00:00+00
stgallen		D		waste	2022-01-18 00:00:00+00
stgallen		D		organic	2022-04-12 00:00:00+00
stgallen		F		waste	2021-09-22 00:00:00+00
stgallen		F		organic	2021-10-13 00:00:00+00
stgallen		F		waste	2021-10-27 00:00:00+00
stgallen		F		waste	2022-05-04 00:00:00+00
stgallen		I		metal	2021-09-27 00:00:00+00
stgallen		I		paper	2021-09-16 00:00:00+00
stgallen		I		waste	2021-09-03 00:00:00+00
stgallen		I		organic	2021-09-17 00:00:00+00
stgallen		I		cardboard	2022-05-12 00:00:00+00
stgallen		I		waste	2021-10-29 00:00:00+00
stgallen		I		organic	2021-12-17 00:00:00+00
stgallen		G		paper	2021-08-17 00:00:00+00
stgallen		G		waste	2021-07-22 00:00:00+00
stgallen		G		cardboard	2022-05-10 00:00:00+00
stgallen		G		waste	2021-11-04 00:00:00+00
stgallen		G		organic	2021-12-09 00:00:00+00
stgallen		G		organic	2021-12-23 00:00:00+00
stgallen		G		organic	2022-03-17 00:00:00+00
stgallen		G		organic	2022-03-31 00:00:00+00
stgallen		G		waste	2022-04-28 00:00:00+00
stgallen		G		waste	2022-06-09 00:00:00+00
stgallen		E		organic	2021-07-07 00:00:00+00
stgallen		E		cardboard	2021-10-25 00:00:00+00
stgallen		E		cardboard	2022-01-17 00:00:00+00
stgallen		E		paper	2022-03-28 00:00:00+00
stgallen		E		organic	2021-09-15 00:00:00+00
stgallen		E		cardboard	2022-05-09 00:00:00+00
stgallen		E		waste	2021-12-15 00:00:00+00
stgallen		E		organic	2022-03-30 00:00:00+00
stgallen		E		organic	2022-05-11 00:00:00+00
stgallen		E		organic	2022-06-22 00:00:00+00
stgallen		L Ost		metal	2021-09-30 00:00:00+00
stgallen		L Ost		paper	2021-11-10 00:00:00+00
stgallen		L Ost		paper	2022-01-05 00:00:00+00
stgallen		L Ost		paper	2022-02-02 00:00:00+00
stgallen		L Ost		paper	2022-03-02 00:00:00+00
stgallen		L Ost		organic	2021-12-17 00:00:00+00
stgallen		L Ost		waste	2022-04-29 00:00:00+00
stgallen		L Ost		waste	2022-06-24 00:00:00+00
stgallen		L West		organic	2021-07-16 00:00:00+00
stgallen		L West		organic	2021-08-06 00:00:00+00
stgallen		L West		organic	2021-10-08 00:00:00+00
stgallen		L West		organic	2021-10-22 00:00:00+00
stgallen		L West		waste	2022-02-25 00:00:00+00
stgallen		L West		waste	2022-03-18 00:00:00+00
stgallen		L West		waste	2022-04-01 00:00:00+00
stgallen		A		organic	2020-08-03 00:00:00+00
stgallen		A		waste	2020-08-24 00:00:00+00
stgallen		A		paper	2021-02-05 00:00:00+00
stgallen		A		cardboard	2021-01-22 00:00:00+00
stgallen		A		organic	2020-09-14 00:00:00+00
stgallen		A		waste	2020-10-12 00:00:00+00
stgallen		A		organic	2021-01-04 00:00:00+00
stgallen		E		waste	2020-07-01 00:00:00+00
stgallen		E		waste	2020-10-21 00:00:00+00
stgallen		E		waste	2020-12-09 00:00:00+00
stgallen		E		waste	2021-03-17 00:00:00+00
stgallen		D		waste	2020-08-04 00:00:00+00
stgallen		D		cardboard	2021-03-24 00:00:00+00
stgallen		D		paper	2021-04-07 00:00:00+00
stgallen		D		waste	2020-09-29 00:00:00+00
stgallen		D		waste	2021-01-05 00:00:00+00
stgallen		D		waste	2021-01-12 00:00:00+00
stgallen		D		organic	2021-05-11 00:00:00+00
stgallen		D		organic	2021-06-29 00:00:00+00
stgallen		L West		cardboard	2020-07-15 00:00:00+00
stgallen		L West		paper	2021-02-10 00:00:00+00
stgallen		L West		organic	2020-12-04 00:00:00+00
stgallen		L West		organic	2021-06-04 00:00:00+00
stgallen		G		organic	2020-12-24 00:00:00+00
stgallen		G		organic	2021-02-25 00:00:00+00
stgallen		G		organic	2021-05-20 00:00:00+00
stgallen		G		waste	2021-06-03 00:00:00+00
stgallen		G		organic	2021-06-10 00:00:00+00
stgallen		B		waste	2020-07-06 00:00:00+00
stgallen		B		organic	2020-07-06 00:00:00+00
stgallen		B		waste	2020-07-27 00:00:00+00
stgallen		B		cardboard	2021-05-21 00:00:00+00
stgallen		B		organic	2021-02-01 00:00:00+00
stgallen		B		organic	2021-04-12 00:00:00+00
stgallen		B		waste	2021-06-21 00:00:00+00
stgallen		D		metal	2021-09-30 00:00:00+00
stgallen		D		paper	2022-06-01 00:00:00+00
stgallen		D		organic	2021-09-28 00:00:00+00
stgallen		D		waste	2021-12-21 00:00:00+00
stgallen		D		organic	2021-12-28 00:00:00+00
stgallen		D		waste	2022-03-15 00:00:00+00
stgallen		D		waste	2022-03-22 00:00:00+00
stgallen		D		organic	2022-06-21 00:00:00+00
stgallen		D		waste	2022-06-28 00:00:00+00
stgallen		L West		paper	2021-12-15 00:00:00+00
stgallen		L West		organic	2021-09-24 00:00:00+00
stgallen		L West		waste	2022-01-07 00:00:00+00
stgallen		L West		organic	2022-06-17 00:00:00+00
stgallen		I		cardboard	2021-11-25 00:00:00+00
stgallen		I		organic	2021-11-26 00:00:00+00
stgallen		I		waste	2022-06-10 00:00:00+00
stgallen		F		cardboard	2021-08-09 00:00:00+00
stgallen		F		waste	2021-09-08 00:00:00+00
stgallen		F		organic	2022-03-23 00:00:00+00
stgallen		F		organic	2022-06-01 00:00:00+00
stgallen		F		organic	2022-06-29 00:00:00+00
stgallen		E		waste	2021-10-27 00:00:00+00
stgallen		E		waste	2022-04-20 00:00:00+00
stgallen		L Ost		cardboard	2021-12-22 00:00:00+00
stgallen		L Ost		waste	2021-08-20 00:00:00+00
stgallen		L Ost		organic	2021-08-20 00:00:00+00
stgallen		L Ost		waste	2021-11-05 00:00:00+00
stgallen		L Ost		organic	2022-05-20 00:00:00+00
stgallen		G		organic	2021-07-15 00:00:00+00
stgallen		G		cardboard	2021-12-21 00:00:00+00
stgallen		G		paper	2022-03-01 00:00:00+00
stgallen		G		waste	2021-09-09 00:00:00+00
stgallen		G		organic	2021-09-16 00:00:00+00
stgallen		G		waste	2021-12-02 00:00:00+00
stgallen		G		waste	2022-02-17 00:00:00+00
stgallen		G		waste	2022-06-23 00:00:00+00
stgallen		B		cardboard	2021-09-10 00:00:00+00
stgallen		B		cardboard	2022-01-28 00:00:00+00
stgallen		B		waste	2022-02-28 00:00:00+00
stgallen		B		organic	2022-04-11 00:00:00+00
stgallen		C		metal	2021-09-30 00:00:00+00
stgallen		C		cardboard	2022-05-11 00:00:00+00
stgallen		C		organic	2022-02-01 00:00:00+00
stgallen		C		waste	2022-04-12 00:00:00+00
stgallen		C		organic	2022-06-21 00:00:00+00
stgallen		A		paper	2021-09-17 00:00:00+00
stgallen		A		waste	2021-09-20 00:00:00+00
stgallen		A		waste	2022-01-31 00:00:00+00
stgallen		K		waste	2021-08-13 00:00:00+00
stgallen		K		organic	2021-09-17 00:00:00+00
stgallen		K		paper	2022-05-05 00:00:00+00
stgallen		K		organic	2022-06-17 00:00:00+00
stgallen		K		waste	2022-06-24 00:00:00+00
stgallen		H		organic	2020-07-02 00:00:00+00
stgallen		H		paper	2020-11-17 00:00:00+00
stgallen		H		organic	2020-08-13 00:00:00+00
stgallen		H		waste	2020-08-20 00:00:00+00
stgallen		H		cardboard	2021-02-23 00:00:00+00
stgallen		H		waste	2021-03-04 00:00:00+00
stgallen		I		organic	2020-10-23 00:00:00+00
stgallen		I		organic	2021-01-22 00:00:00+00
stgallen		I		waste	2021-01-15 00:00:00+00
stgallen		I		waste	2021-04-09 00:00:00+00
stgallen		L Ost		waste	2020-07-17 00:00:00+00
stgallen		L Ost		waste	2020-07-24 00:00:00+00
stgallen		L Ost		organic	2020-08-07 00:00:00+00
stgallen		L Ost		cardboard	2021-03-17 00:00:00+00
stgallen		L Ost		cardboard	2021-06-09 00:00:00+00
stgallen		L Ost		waste	2020-11-06 00:00:00+00
stgallen		L Ost		organic	2021-03-12 00:00:00+00
stgallen		C		metal	2021-04-29 00:00:00+00
stgallen		C		organic	2020-08-11 00:00:00+00
stgallen		C		paper	2021-01-06 00:00:00+00
stgallen		C		organic	2021-06-22 00:00:00+00
stgallen		C		organic	2021-06-29 00:00:00+00
stgallen		F		cardboard	2021-06-14 00:00:00+00
stgallen		F		waste	2021-06-02 00:00:00+00
stgallen		D		paper	2021-01-13 00:00:00+00
stgallen		D		organic	2020-10-13 00:00:00+00
stgallen		D		waste	2020-11-03 00:00:00+00
stgallen		D		organic	2020-11-10 00:00:00+00
stgallen		D		waste	2021-03-16 00:00:00+00
stgallen		D		organic	2021-04-13 00:00:00+00
stgallen		A		cardboard	2020-10-30 00:00:00+00
stgallen		A		organic	2020-08-24 00:00:00+00
stgallen		A		organic	2020-12-21 00:00:00+00
stgallen		A		waste	2021-03-29 00:00:00+00
stgallen		A		waste	2021-05-25 00:00:00+00
stgallen		A		waste	2021-06-28 00:00:00+00
stgallen		L West		waste	2020-08-07 00:00:00+00
stgallen		L West		paper	2020-11-18 00:00:00+00
stgallen		L West		organic	2021-01-15 00:00:00+00
stgallen		L West		waste	2021-02-12 00:00:00+00
stgallen		E		paper	2020-08-17 00:00:00+00
stgallen		E		organic	2020-07-29 00:00:00+00
stgallen		E		waste	2020-10-07 00:00:00+00
stgallen		E		organic	2021-01-06 00:00:00+00
stgallen		E		organic	2021-03-17 00:00:00+00
stgallen		E		organic	2021-03-24 00:00:00+00
stgallen		E		organic	2021-04-07 00:00:00+00
stgallen		E		organic	2021-05-26 00:00:00+00
stgallen		G		paper	2021-01-05 00:00:00+00
stgallen		G		organic	2020-08-27 00:00:00+00
stgallen		G		waste	2021-02-25 00:00:00+00
stgallen		G		organic	2021-04-29 00:00:00+00
stgallen		B		cardboard	2021-02-26 00:00:00+00
stgallen		B		waste	2020-10-05 00:00:00+00
stgallen		B		waste	2020-10-26 00:00:00+00
stgallen		D		cardboard	2021-08-11 00:00:00+00
stgallen		D		waste	2022-01-25 00:00:00+00
stgallen		I		organic	2020-07-03 00:00:00+00
stgallen		I		paper	2021-02-04 00:00:00+00
stgallen		I		organic	2021-02-05 00:00:00+00
stgallen		I		waste	2021-02-26 00:00:00+00
stgallen		I		waste	2021-06-11 00:00:00+00
stgallen		H		waste	2020-07-09 00:00:00+00
stgallen		H		waste	2020-07-16 00:00:00+00
stgallen		H		paper	2021-04-06 00:00:00+00
stgallen		H		waste	2020-09-17 00:00:00+00
stgallen		H		organic	2021-01-21 00:00:00+00
stgallen		H		organic	2021-05-20 00:00:00+00
stgallen		A		waste	2021-07-05 00:00:00+00
stgallen		A		cardboard	2021-07-09 00:00:00+00
stgallen		A		waste	2021-09-06 00:00:00+00
stgallen		A		waste	2021-09-27 00:00:00+00
stgallen		A		organic	2022-01-17 00:00:00+00
stgallen		L Ost		waste	2020-08-28 00:00:00+00
stgallen		L Ost		organic	2021-01-15 00:00:00+00
stgallen		L Ost		organic	2021-01-22 00:00:00+00
stgallen		L Ost		organic	2021-04-30 00:00:00+00
stgallen		L Ost		waste	2021-05-07 00:00:00+00
stgallen		K		paper	2021-07-01 00:00:00+00
stgallen		K		organic	2022-01-14 00:00:00+00
stgallen		K		waste	2022-02-25 00:00:00+00
stgallen		K		waste	2022-06-03 00:00:00+00
stgallen		A		organic	2020-08-17 00:00:00+00
stgallen		A		waste	2020-08-31 00:00:00+00
stgallen		A		paper	2021-05-28 00:00:00+00
stgallen		A		waste	2021-03-15 00:00:00+00
stgallen		E		organic	2020-08-05 00:00:00+00
stgallen		E		organic	2020-08-12 00:00:00+00
stgallen		E		organic	2020-11-04 00:00:00+00
stgallen		E		waste	2020-12-02 00:00:00+00
stgallen		E		waste	2021-03-24 00:00:00+00
stgallen		D		waste	2020-07-21 00:00:00+00
stgallen		D		cardboard	2021-06-16 00:00:00+00
stgallen		D		organic	2021-03-16 00:00:00+00
stgallen		D		organic	2021-04-06 00:00:00+00
stgallen		D		organic	2021-05-04 00:00:00+00
stgallen		L West		waste	2020-07-10 00:00:00+00
stgallen		L West		cardboard	2020-09-09 00:00:00+00
stgallen		L West		waste	2020-07-24 00:00:00+00
stgallen		L West		organic	2020-08-28 00:00:00+00
stgallen		L West		waste	2020-09-11 00:00:00+00
stgallen		L West		waste	2020-11-27 00:00:00+00
stgallen		L West		waste	2021-02-05 00:00:00+00
stgallen		L West		waste	2021-03-19 00:00:00+00
stgallen		L West		organic	2021-05-07 00:00:00+00
stgallen		I		waste	2021-07-30 00:00:00+00
stgallen		I		organic	2021-12-03 00:00:00+00
stgallen		I		waste	2021-12-10 00:00:00+00
stgallen		I		waste	2021-12-17 00:00:00+00
stgallen		I		waste	2022-01-21 00:00:00+00
stgallen		I		waste	2022-03-18 00:00:00+00
stgallen		I		organic	2022-06-10 00:00:00+00
stgallen		H		cardboard	2022-01-25 00:00:00+00
stgallen		H		waste	2021-09-23 00:00:00+00
stgallen		H		organic	2022-02-03 00:00:00+00
stgallen		L Ost		organic	2021-08-06 00:00:00+00
stgallen		L Ost		organic	2021-11-19 00:00:00+00
stgallen		L Ost		organic	2022-01-14 00:00:00+00
stgallen		L Ost		organic	2022-03-04 00:00:00+00
stgallen		L Ost		organic	2022-03-25 00:00:00+00
stgallen		L Ost		organic	2022-05-06 00:00:00+00
stgallen		L Ost		waste	2022-05-20 00:00:00+00
stgallen		L West		waste	2021-07-02 00:00:00+00
stgallen		L West		metal	2022-04-28 00:00:00+00
stgallen		L West		cardboard	2021-09-08 00:00:00+00
stgallen		L West		organic	2021-08-13 00:00:00+00
stgallen		E		paper	2021-08-16 00:00:00+00
stgallen		E		cardboard	2021-09-27 00:00:00+00
stgallen		E		organic	2021-08-04 00:00:00+00
stgallen		E		organic	2021-11-17 00:00:00+00
stgallen		E		organic	2022-04-27 00:00:00+00
stgallen		E		organic	2022-05-18 00:00:00+00
stgallen		G		paper	2020-07-21 00:00:00+00
stgallen		G		organic	2021-02-04 00:00:00+00
stgallen		B		cardboard	2020-11-06 00:00:00+00
stgallen		B		paper	2020-12-18 00:00:00+00
stgallen		B		waste	2020-10-19 00:00:00+00
stgallen		B		waste	2021-01-04 00:00:00+00
stgallen		F		cardboard	2021-07-12 00:00:00+00
stgallen		F		cardboard	2021-10-04 00:00:00+00
stgallen		F		cardboard	2022-02-21 00:00:00+00
stgallen		F		cardboard	2022-06-13 00:00:00+00
stgallen		F		waste	2021-12-01 00:00:00+00
stgallen		F		organic	2021-12-01 00:00:00+00
stgallen		F		organic	2022-03-09 00:00:00+00
stgallen		F		organic	2022-03-30 00:00:00+00
stgallen		C		waste	2021-08-03 00:00:00+00
stgallen		C		organic	2021-09-07 00:00:00+00
stgallen		C		paper	2022-06-22 00:00:00+00
stgallen		C		organic	2021-10-19 00:00:00+00
stgallen		C		organic	2021-12-21 00:00:00+00
stgallen		C		waste	2022-03-29 00:00:00+00
stgallen		C		waste	2022-05-17 00:00:00+00
stgallen		G		cardboard	2021-07-06 00:00:00+00
stgallen		G		organic	2021-07-29 00:00:00+00
stgallen		G		waste	2022-03-10 00:00:00+00
stgallen		G		waste	2022-03-31 00:00:00+00
stgallen		B		cardboard	2021-07-16 00:00:00+00
stgallen		B		metal	2021-10-01 00:00:00+00
stgallen		B		organic	2021-07-12 00:00:00+00
stgallen		B		cardboard	2021-11-05 00:00:00+00
stgallen		B		organic	2021-08-16 00:00:00+00
stgallen		B		waste	2021-08-30 00:00:00+00
stgallen		B		waste	2021-11-29 00:00:00+00
stgallen		B		organic	2021-12-20 00:00:00+00
stgallen		B		waste	2022-04-19 00:00:00+00
stgallen		B		organic	2022-04-20 00:00:00+00
stgallen		B		waste	2022-05-23 00:00:00+00
stgallen		K		waste	2021-01-22 00:00:00+00
stgallen		K		organic	2021-02-26 00:00:00+00
stgallen		C		organic	2020-07-14 00:00:00+00
stgallen		C		waste	2020-09-29 00:00:00+00
stgallen		C		waste	2021-04-13 00:00:00+00
stgallen		F		organic	2020-07-01 00:00:00+00
stgallen		F		paper	2021-01-11 00:00:00+00
stgallen		F		paper	2021-03-08 00:00:00+00
stgallen		F		organic	2020-09-02 00:00:00+00
stgallen		F		waste	2021-03-03 00:00:00+00
stgallen		K		cardboard	2021-02-25 00:00:00+00
stgallen		K		organic	2020-09-25 00:00:00+00
stgallen		K		organic	2021-01-22 00:00:00+00
stgallen		K		waste	2021-04-16 00:00:00+00
stgallen		K		organic	2021-06-04 00:00:00+00
stgallen		D		organic	2020-07-14 00:00:00+00
stgallen		D		paper	2020-11-18 00:00:00+00
stgallen		D		cardboard	2021-01-27 00:00:00+00
stgallen		D		waste	2020-11-10 00:00:00+00
stgallen		D		organic	2021-06-22 00:00:00+00
stgallen		C		cardboard	2020-10-28 00:00:00+00
stgallen		C		waste	2021-03-23 00:00:00+00
stgallen		C		organic	2021-03-23 00:00:00+00
stgallen		C		organic	2021-03-30 00:00:00+00
stgallen		C		waste	2021-04-27 00:00:00+00
stgallen		F		paper	2020-11-16 00:00:00+00
stgallen		F		organic	2020-09-30 00:00:00+00
stgallen		F		organic	2020-12-30 00:00:00+00
stgallen		F		waste	2021-01-20 00:00:00+00
stgallen		F		waste	2021-04-28 00:00:00+00
stgallen		E		waste	2020-07-08 00:00:00+00
stgallen		E		cardboard	2020-08-31 00:00:00+00
stgallen		E		cardboard	2020-12-21 00:00:00+00
stgallen		E		cardboard	2021-02-15 00:00:00+00
stgallen		E		waste	2020-09-02 00:00:00+00
stgallen		E		waste	2021-04-21 00:00:00+00
stgallen		E		waste	2021-06-16 00:00:00+00
stgallen		A		metal	2021-04-30 00:00:00+00
stgallen		A		waste	2020-10-05 00:00:00+00
stgallen		A		waste	2020-11-02 00:00:00+00
stgallen		A		organic	2020-12-14 00:00:00+00
stgallen		A		waste	2021-03-08 00:00:00+00
stgallen		A		organic	2021-04-26 00:00:00+00
stgallen		A		organic	2021-05-10 00:00:00+00
stgallen		G		waste	2020-07-16 00:00:00+00
stgallen		G		paper	2020-10-13 00:00:00+00
stgallen		G		organic	2020-08-20 00:00:00+00
stgallen		G		organic	2021-01-07 00:00:00+00
stgallen		G		organic	2021-01-21 00:00:00+00
stgallen		G		organic	2021-02-18 00:00:00+00
stgallen		G		waste	2021-06-10 00:00:00+00
stgallen		G		organic	2021-06-17 00:00:00+00
stgallen		L West		waste	2020-10-30 00:00:00+00
stgallen		L West		waste	2021-02-19 00:00:00+00
stgallen		L West		organic	2021-04-09 00:00:00+00
stgallen		I		paper	2020-10-15 00:00:00+00
stgallen		I		waste	2020-09-11 00:00:00+00
stgallen		I		waste	2021-05-21 00:00:00+00
stgallen		H		metal	2020-09-23 00:00:00+00
stgallen		H		waste	2020-08-13 00:00:00+00
stgallen		H		cardboard	2021-01-26 00:00:00+00
stgallen		H		organic	2020-08-27 00:00:00+00
stgallen		H		paper	2021-06-01 00:00:00+00
stgallen		H		waste	2021-04-08 00:00:00+00
stgallen		H		waste	2021-05-14 00:00:00+00
stgallen		H		organic	2021-06-17 00:00:00+00
stgallen		L Ost		cardboard	2020-07-08 00:00:00+00
stgallen		L Ost		organic	2020-08-14 00:00:00+00
stgallen		L Ost		paper	2021-01-06 00:00:00+00
stgallen		L Ost		cardboard	2021-01-20 00:00:00+00
stgallen		L Ost		waste	2020-09-25 00:00:00+00
stgallen		L Ost		organic	2020-10-30 00:00:00+00
stgallen		L Ost		organic	2021-05-28 00:00:00+00
stgallen		L Ost		waste	2021-05-21 00:00:00+00
stgallen		L Ost		waste	2021-06-11 00:00:00+00
stgallen		D		cardboard	2021-11-03 00:00:00+00
stgallen		D		cardboard	2021-12-29 00:00:00+00
stgallen		D		paper	2022-02-09 00:00:00+00
stgallen		D		waste	2021-09-28 00:00:00+00
stgallen		D		cardboard	2022-06-15 00:00:00+00
stgallen		D		waste	2021-10-19 00:00:00+00
stgallen		D		organic	2021-11-23 00:00:00+00
stgallen		D		organic	2021-12-07 00:00:00+00
stgallen		D		organic	2021-12-14 00:00:00+00
stgallen		D		organic	2022-01-11 00:00:00+00
stgallen		D		waste	2022-02-01 00:00:00+00
stgallen		D		organic	2022-03-29 00:00:00+00
stgallen		D		organic	2022-04-05 00:00:00+00
stgallen		D		organic	2022-05-17 00:00:00+00
stgallen		D		organic	2022-06-07 00:00:00+00
stgallen		K		paper	2021-07-29 00:00:00+00
stgallen		K		organic	2021-07-16 00:00:00+00
stgallen		K		cardboard	2021-12-02 00:00:00+00
stgallen		K		waste	2021-10-29 00:00:00+00
stgallen		K		organic	2021-11-26 00:00:00+00
stgallen		K		organic	2022-01-28 00:00:00+00
stgallen		K		waste	2022-02-11 00:00:00+00
stgallen		A		paper	2022-04-29 00:00:00+00
stgallen		A		organic	2022-05-16 00:00:00+00
stgallen		C		organic	2021-07-27 00:00:00+00
stgallen		C		organic	2021-11-23 00:00:00+00
stgallen		C		waste	2022-03-15 00:00:00+00
stgallen		C		organic	2022-03-29 00:00:00+00
stgallen		C		organic	2022-04-05 00:00:00+00
stgallen		C		organic	2022-06-14 00:00:00+00
stgallen		F		cardboard	2021-09-06 00:00:00+00
stgallen		F		organic	2021-09-22 00:00:00+00
stgallen		F		waste	2021-11-10 00:00:00+00
stgallen		F		organic	2021-11-10 00:00:00+00
stgallen		F		waste	2021-12-22 00:00:00+00
stgallen		F		organic	2022-02-09 00:00:00+00
stgallen		F		waste	2022-03-30 00:00:00+00
stgallen		F		organic	2022-05-18 00:00:00+00
stgallen		B		cardboard	2022-03-25 00:00:00+00
stgallen		B		organic	2021-09-27 00:00:00+00
stgallen		B		organic	2021-10-04 00:00:00+00
stgallen		B		organic	2021-11-03 00:00:00+00
stgallen		B		organic	2021-11-15 00:00:00+00
stgallen		B		organic	2022-02-28 00:00:00+00
stgallen		B		waste	2022-04-04 00:00:00+00
stgallen		G		cardboard	2022-02-15 00:00:00+00
stgallen		G		organic	2021-09-09 00:00:00+00
stgallen		G		organic	2021-11-18 00:00:00+00
stgallen		G		organic	2022-01-06 00:00:00+00
stgallen		G		organic	2022-04-14 00:00:00+00
stgallen		H		waste	2022-03-24 00:00:00+00
stgallen		H		organic	2021-07-08 00:00:00+00
stgallen		H		waste	2021-07-22 00:00:00+00
stgallen		H		organic	2022-06-09 00:00:00+00
stgallen		I		organic	2021-08-27 00:00:00+00
stgallen		I		paper	2022-04-28 00:00:00+00
stgallen		I		waste	2022-02-11 00:00:00+00
stgallen		L West		cardboard	2021-11-03 00:00:00+00
stgallen		L West		cardboard	2021-12-01 00:00:00+00
stgallen		L West		paper	2022-02-09 00:00:00+00
stgallen		L West		waste	2021-12-03 00:00:00+00
stgallen		L West		organic	2022-01-21 00:00:00+00
stgallen		L West		waste	2022-04-08 00:00:00+00
stgallen		L West		organic	2022-04-08 00:00:00+00
stgallen		L West		waste	2022-04-22 00:00:00+00
stgallen		L West		organic	2022-04-29 00:00:00+00
stgallen		E		waste	2021-07-21 00:00:00+00
stgallen		E		organic	2021-09-01 00:00:00+00
stgallen		E		organic	2021-10-06 00:00:00+00
stgallen		B		waste	2020-11-02 00:00:00+00
stgallen		B		waste	2021-01-25 00:00:00+00
stgallen		B		organic	2021-02-08 00:00:00+00
stgallen		B		waste	2021-03-08 00:00:00+00
stgallen		B		waste	2021-04-19 00:00:00+00
stgallen		B		organic	2021-05-03 00:00:00+00
stgallen		B		waste	2021-06-07 00:00:00+00
stgallen		K		organic	2022-07-01 00:00:00+00
stgallen		E		organic	2022-07-06 00:00:00+00
stgallen		G		organic	2022-07-07 00:00:00+00
stgallen		L Ost		organic	2022-07-08 00:00:00+00
stgallen		L West		organic	2022-07-08 00:00:00+00
stgallen		A		organic	2022-07-11 00:00:00+00
stgallen		G		organic	2022-07-14 00:00:00+00
stgallen		L Ost		organic	2022-07-15 00:00:00+00
stgallen		A		organic	2022-07-18 00:00:00+00
stgallen		C		organic	2022-07-19 00:00:00+00
stgallen		D		organic	2022-07-26 00:00:00+00
stgallen		G		organic	2022-07-28 00:00:00+00
stgallen		H		organic	2022-07-28 00:00:00+00
stgallen		L Ost		organic	2022-07-29 00:00:00+00
stgallen		L West		organic	2022-07-29 00:00:00+00
stgallen		E		organic	2022-08-03 00:00:00+00
stgallen		H		organic	2022-08-04 00:00:00+00
stgallen		L Ost		organic	2022-08-05 00:00:00+00
stgallen		A		organic	2022-08-08 00:00:00+00
stgallen		C		organic	2022-08-09 00:00:00+00
stgallen		D		organic	2022-08-09 00:00:00+00
stgallen		F		organic	2022-08-10 00:00:00+00
stgallen		G		organic	2022-08-11 00:00:00+00
stgallen		G		organic	2022-08-18 00:00:00+00
stgallen		F		organic	2022-08-24 00:00:00+00
stgallen		H		organic	2022-08-25 00:00:00+00
stgallen		L West		organic	2022-08-26 00:00:00+00
stgallen		B		organic	2022-08-29 00:00:00+00
stgallen		A		organic	2022-09-05 00:00:00+00
stgallen		F		organic	2022-09-07 00:00:00+00
stgallen		E		organic	2022-09-14 00:00:00+00
stgallen		G		organic	2022-09-15 00:00:00+00
stgallen		L Ost		organic	2022-09-16 00:00:00+00
stgallen		C		organic	2022-09-20 00:00:00+00
stgallen		L Ost		organic	2022-09-23 00:00:00+00
stgallen		D		organic	2022-10-04 00:00:00+00
stgallen		G		organic	2022-10-06 00:00:00+00
stgallen		H		organic	2022-10-06 00:00:00+00
stgallen		I		organic	2022-10-07 00:00:00+00
stgallen		E		organic	2022-10-19 00:00:00+00
stgallen		H		organic	2022-10-20 00:00:00+00
stgallen		A		organic	2022-10-24 00:00:00+00
stgallen		G		organic	2022-10-27 00:00:00+00
stgallen		L West		organic	2022-11-04 00:00:00+00
stgallen		A		organic	2022-11-07 00:00:00+00
stgallen		B		organic	2022-11-07 00:00:00+00
stgallen		E		organic	2022-11-09 00:00:00+00
stgallen		I		organic	2022-11-11 00:00:00+00
stgallen		C		organic	2022-11-15 00:00:00+00
stgallen		L West		organic	2022-11-18 00:00:00+00
stgallen		L West		organic	2022-11-25 00:00:00+00
stgallen		F		organic	2022-11-30 00:00:00+00
stgallen		L Ost		organic	2022-12-02 00:00:00+00
stgallen		L West		organic	2022-12-02 00:00:00+00
stgallen		C		organic	2022-12-06 00:00:00+00
stgallen		F		organic	2022-12-07 00:00:00+00
stgallen		H		organic	2022-12-08 00:00:00+00
stgallen		A		organic	2022-12-12 00:00:00+00
stgallen		D		organic	2022-12-13 00:00:00+00
stgallen		H		organic	2022-12-15 00:00:00+00
stgallen		L Ost		organic	2022-12-16 00:00:00+00
stgallen		A		organic	2022-12-28 00:00:00+00
stgallen		K		organic	2022-12-30 00:00:00+00
stgallen		D		organic	2023-01-03 00:00:00+00
stgallen		F		organic	2023-01-04 00:00:00+00
stgallen		I		organic	2023-01-06 00:00:00+00
stgallen		L Ost		organic	2023-01-06 00:00:00+00
stgallen		B		organic	2023-01-09 00:00:00+00
stgallen		I		organic	2023-01-13 00:00:00+00
stgallen		B		organic	2023-01-16 00:00:00+00
stgallen		H		organic	2023-01-19 00:00:00+00
stgallen		E		organic	2023-01-25 00:00:00+00
stgallen		L Ost		organic	2023-01-27 00:00:00+00
stgallen		L West		organic	2023-01-27 00:00:00+00
stgallen		A		organic	2023-01-30 00:00:00+00
stgallen		C		organic	2023-01-31 00:00:00+00
stgallen		G		organic	2023-02-02 00:00:00+00
stgallen		H		organic	2023-02-02 00:00:00+00
stgallen		L Ost		organic	2023-02-03 00:00:00+00
stgallen		F		organic	2023-02-08 00:00:00+00
stgallen		K		organic	2023-02-10 00:00:00+00
stgallen		L Ost		organic	2023-02-10 00:00:00+00
stgallen		L West		organic	2023-02-10 00:00:00+00
stgallen		D		organic	2023-02-14 00:00:00+00
stgallen		K		organic	2023-02-17 00:00:00+00
stgallen		L Ost		organic	2023-02-17 00:00:00+00
stgallen		L West		organic	2023-02-17 00:00:00+00
stgallen		F		organic	2023-02-22 00:00:00+00
stgallen		H		organic	2023-02-23 00:00:00+00
stgallen		C		organic	2023-02-28 00:00:00+00
stgallen		L Ost		organic	2023-03-03 00:00:00+00
stgallen		A		organic	2023-03-06 00:00:00+00
stgallen		B		organic	2023-03-06 00:00:00+00
stgallen		H		organic	2023-03-09 00:00:00+00
stgallen		K		organic	2023-03-10 00:00:00+00
stgallen		D		organic	2023-03-14 00:00:00+00
stgallen		G		organic	2023-03-16 00:00:00+00
stgallen		I		organic	2023-03-17 00:00:00+00
stgallen		B		organic	2023-03-20 00:00:00+00
stgallen		C		organic	2023-03-21 00:00:00+00
stgallen		H		organic	2023-03-23 00:00:00+00
stgallen		D		organic	2023-03-28 00:00:00+00
stgallen		L Ost		organic	2023-03-31 00:00:00+00
stgallen		H		organic	2023-04-06 00:00:00+00
stgallen		F		organic	2023-04-12 00:00:00+00
stgallen		H		organic	2023-04-13 00:00:00+00
stgallen		I		organic	2023-04-14 00:00:00+00
stgallen		L West		organic	2023-04-14 00:00:00+00
stgallen		B		organic	2023-04-17 00:00:00+00
stgallen		G		organic	2023-04-20 00:00:00+00
stgallen		I		organic	2023-04-28 00:00:00+00
stgallen		K		organic	2023-04-28 00:00:00+00
stgallen		E		organic	2023-05-03 00:00:00+00
stgallen		G		organic	2023-05-04 00:00:00+00
stgallen		B		organic	2023-05-15 00:00:00+00
stgallen		E		organic	2023-05-17 00:00:00+00
stgallen		G		organic	2023-05-17 00:00:00+00
stgallen		I		organic	2023-05-19 00:00:00+00
stgallen		B		organic	2023-05-22 00:00:00+00
stgallen		I		organic	2023-05-26 00:00:00+00
stgallen		F		organic	2023-05-31 00:00:00+00
stgallen		H		organic	2023-06-01 00:00:00+00
stgallen		F		organic	2023-06-07 00:00:00+00
stgallen		G		organic	2023-06-08 00:00:00+00
stgallen		K		organic	2023-06-09 00:00:00+00
stgallen		L Ost		organic	2023-06-09 00:00:00+00
stgallen		A		organic	2023-06-12 00:00:00+00
stgallen		B		organic	2023-06-12 00:00:00+00
stgallen		C		organic	2023-06-13 00:00:00+00
stgallen		D		organic	2023-06-13 00:00:00+00
stgallen		E		organic	2023-06-14 00:00:00+00
stgallen		G		organic	2023-06-15 00:00:00+00
stgallen		H		organic	2023-06-15 00:00:00+00
stgallen		L West		organic	2023-06-16 00:00:00+00
stgallen		B		organic	2023-06-26 00:00:00+00
stgallen		K		organic	2023-06-30 00:00:00+00
stgallen		F		cardboard	2022-08-08 00:00:00+00
stgallen		D		cardboard	2022-08-10 00:00:00+00
stgallen		L West		cardboard	2022-08-10 00:00:00+00
stgallen		K		cardboard	2022-08-11 00:00:00+00
stgallen		K		cardboard	2022-09-08 00:00:00+00
stgallen		G		cardboard	2022-09-27 00:00:00+00
stgallen		I		cardboard	2022-09-29 00:00:00+00
stgallen		A		cardboard	2022-09-30 00:00:00+00
stgallen		F		cardboard	2022-10-03 00:00:00+00
stgallen		H		cardboard	2022-10-04 00:00:00+00
stgallen		B		cardboard	2022-10-07 00:00:00+00
stgallen		G		cardboard	2022-10-25 00:00:00+00
stgallen		H		cardboard	2022-11-02 00:00:00+00
stgallen		K		cardboard	2022-11-03 00:00:00+00
stgallen		G		cardboard	2022-11-22 00:00:00+00
stgallen		K		cardboard	2022-12-01 00:00:00+00
stgallen		H		cardboard	2022-12-27 00:00:00+00
stgallen		L West		cardboard	2022-12-28 00:00:00+00
stgallen		I		cardboard	2023-01-19 00:00:00+00
stgallen		K		cardboard	2023-01-26 00:00:00+00
stgallen		B		cardboard	2023-01-27 00:00:00+00
stgallen		G		cardboard	2023-03-14 00:00:00+00
stgallen		L Ost		cardboard	2023-03-15 00:00:00+00
stgallen		L West		cardboard	2023-03-22 00:00:00+00
stgallen		B		cardboard	2023-03-24 00:00:00+00
stgallen		G		cardboard	2023-04-11 00:00:00+00
stgallen		D		cardboard	2023-04-19 00:00:00+00
stgallen		E		cardboard	2023-05-08 00:00:00+00
stgallen		I		cardboard	2023-05-11 00:00:00+00
stgallen		D		cardboard	2023-05-17 00:00:00+00
stgallen		B		waste	2022-07-04 00:00:00+00
stgallen		L West		waste	2022-07-08 00:00:00+00
stgallen		C		waste	2022-07-12 00:00:00+00
stgallen		D		waste	2022-07-12 00:00:00+00
stgallen		H		waste	2022-07-14 00:00:00+00
stgallen		I		waste	2022-07-15 00:00:00+00
stgallen		L Ost		waste	2022-07-15 00:00:00+00
stgallen		I		waste	2022-07-22 00:00:00+00
stgallen		L West		waste	2022-07-22 00:00:00+00
stgallen		C		waste	2022-07-26 00:00:00+00
stgallen		F		waste	2022-07-27 00:00:00+00
stgallen		K		waste	2022-07-29 00:00:00+00
stgallen		D		waste	2022-08-02 00:00:00+00
stgallen		F		waste	2022-08-03 00:00:00+00
stgallen		I		waste	2022-08-05 00:00:00+00
stgallen		L Ost		waste	2022-08-05 00:00:00+00
stgallen		G		waste	2022-08-11 00:00:00+00
stgallen		I		waste	2022-08-12 00:00:00+00
stgallen		K		waste	2022-08-19 00:00:00+00
stgallen		F		waste	2022-08-24 00:00:00+00
stgallen		G		waste	2022-08-25 00:00:00+00
stgallen		B		waste	2022-08-29 00:00:00+00
stgallen		F		waste	2022-08-31 00:00:00+00
stgallen		K		waste	2022-09-02 00:00:00+00
stgallen		E		waste	2022-09-14 00:00:00+00
stgallen		H		waste	2022-09-15 00:00:00+00
stgallen		K		waste	2022-09-16 00:00:00+00
stgallen		B		waste	2022-09-19 00:00:00+00
stgallen		G		waste	2022-09-22 00:00:00+00
stgallen		H		waste	2022-09-22 00:00:00+00
stgallen		L Ost		waste	2022-09-23 00:00:00+00
stgallen		D		waste	2022-09-27 00:00:00+00
stgallen		F		waste	2022-09-28 00:00:00+00
stgallen		H		waste	2022-09-29 00:00:00+00
stgallen		I		waste	2022-09-30 00:00:00+00
stgallen		E		waste	2022-10-05 00:00:00+00
stgallen		G		waste	2022-10-06 00:00:00+00
stgallen		L West		waste	2022-10-07 00:00:00+00
stgallen		A		waste	2022-10-10 00:00:00+00
stgallen		C		waste	2022-10-11 00:00:00+00
stgallen		D		waste	2022-10-18 00:00:00+00
stgallen		E		waste	2022-10-19 00:00:00+00
stgallen		F		waste	2022-10-19 00:00:00+00
stgallen		A		waste	2022-10-24 00:00:00+00
stgallen		C		waste	2022-10-25 00:00:00+00
stgallen		E		waste	2022-10-26 00:00:00+00
stgallen		F		waste	2022-10-26 00:00:00+00
stgallen		K		waste	2022-10-28 00:00:00+00
stgallen		L West		waste	2022-10-28 00:00:00+00
stgallen		B		waste	2022-10-31 00:00:00+00
stgallen		E		waste	2022-11-02 00:00:00+00
stgallen		H		waste	2022-11-10 00:00:00+00
stgallen		D		waste	2022-11-22 00:00:00+00
stgallen		G		waste	2022-11-24 00:00:00+00
stgallen		H		waste	2022-11-24 00:00:00+00
stgallen		B		waste	2022-11-28 00:00:00+00
stgallen		G		waste	2022-12-01 00:00:00+00
stgallen		L Ost		waste	2022-12-02 00:00:00+00
stgallen		L West		waste	2022-12-02 00:00:00+00
stgallen		D		waste	2022-12-06 00:00:00+00
stgallen		G		waste	2022-12-08 00:00:00+00
stgallen		I		waste	2022-12-09 00:00:00+00
stgallen		C		waste	2022-12-13 00:00:00+00
stgallen		G		waste	2022-12-15 00:00:00+00
stgallen		B		waste	2022-12-19 00:00:00+00
stgallen		I		waste	2022-12-23 00:00:00+00
stgallen		L West		waste	2022-12-23 00:00:00+00
stgallen		A		waste	2022-12-27 00:00:00+00
stgallen		B		waste	2022-12-27 00:00:00+00
stgallen		F		waste	2022-12-28 00:00:00+00
stgallen		G		waste	2022-12-29 00:00:00+00
stgallen		L West		waste	2022-12-30 00:00:00+00
stgallen		C		waste	2023-01-03 00:00:00+00
stgallen		I		waste	2023-01-06 00:00:00+00
stgallen		D		waste	2023-01-10 00:00:00+00
stgallen		B		waste	2023-01-16 00:00:00+00
stgallen		F		waste	2023-01-25 00:00:00+00
stgallen		I		waste	2023-01-27 00:00:00+00
stgallen		H		waste	2023-02-02 00:00:00+00
stgallen		D		waste	2023-02-07 00:00:00+00
stgallen		E		waste	2023-02-08 00:00:00+00
stgallen		A		waste	2023-02-13 00:00:00+00
stgallen		K		waste	2023-02-17 00:00:00+00
stgallen		C		waste	2023-02-21 00:00:00+00
stgallen		E		waste	2023-02-22 00:00:00+00
stgallen		L Ost		waste	2023-02-24 00:00:00+00
stgallen		L West		waste	2023-02-24 00:00:00+00
stgallen		B		waste	2023-02-27 00:00:00+00
stgallen		I		waste	2023-03-03 00:00:00+00
stgallen		K		waste	2023-03-03 00:00:00+00
stgallen		B		waste	2023-03-06 00:00:00+00
stgallen		D		waste	2023-03-14 00:00:00+00
stgallen		F		waste	2023-03-15 00:00:00+00
stgallen		H		waste	2023-03-16 00:00:00+00
stgallen		I		waste	2023-03-31 00:00:00+00
stgallen		L Ost		waste	2023-03-31 00:00:00+00
stgallen		F		waste	2023-04-05 00:00:00+00
stgallen		C		waste	2023-04-18 00:00:00+00
stgallen		B		waste	2023-04-24 00:00:00+00
stgallen		G		waste	2023-05-04 00:00:00+00
stgallen		I		waste	2023-05-05 00:00:00+00
stgallen		E		waste	2023-05-10 00:00:00+00
stgallen		F		waste	2023-05-10 00:00:00+00
stgallen		H		waste	2023-05-11 00:00:00+00
stgallen		I		waste	2023-05-12 00:00:00+00
stgallen		C		waste	2023-05-16 00:00:00+00
stgallen		K		waste	2023-05-19 00:00:00+00
stgallen		D		waste	2023-05-23 00:00:00+00
stgallen		E		waste	2023-05-24 00:00:00+00
stgallen		A		waste	2023-05-30 00:00:00+00
stgallen		K		waste	2023-06-02 00:00:00+00
stgallen		C		waste	2023-06-13 00:00:00+00
stgallen		F		waste	2023-06-14 00:00:00+00
stgallen		K		waste	2023-06-16 00:00:00+00
stgallen		D		waste	2023-06-20 00:00:00+00
stgallen		E		waste	2023-06-21 00:00:00+00
stgallen		F		waste	2023-06-21 00:00:00+00
stgallen		D		waste	2023-06-27 00:00:00+00
stgallen		C		metal	2022-09-29 00:00:00+00
stgallen		L Ost		metal	2022-09-29 00:00:00+00
stgallen		A		metal	2022-09-30 00:00:00+00
stgallen		E		metal	2023-04-25 00:00:00+00
stgallen		F		metal	2023-04-25 00:00:00+00
stgallen		H		metal	2023-04-26 00:00:00+00
stgallen		I		paper	2022-07-21 00:00:00+00
stgallen		H		paper	2022-07-26 00:00:00+00
stgallen		B		paper	2022-07-29 00:00:00+00
stgallen		C		paper	2022-08-17 00:00:00+00
stgallen		L Ost		paper	2022-08-17 00:00:00+00
stgallen		H		paper	2022-08-23 00:00:00+00
stgallen		I		paper	2022-09-15 00:00:00+00
stgallen		K		paper	2022-09-22 00:00:00+00
stgallen		H		paper	2022-10-18 00:00:00+00
stgallen		L Ost		paper	2022-11-09 00:00:00+00
stgallen		K		paper	2022-11-17 00:00:00+00
stgallen		E		paper	2022-12-05 00:00:00+00
stgallen		C		paper	2022-12-07 00:00:00+00
stgallen		K		paper	2022-12-15 00:00:00+00
stgallen		I		paper	2023-01-05 00:00:00+00
stgallen		A		paper	2023-01-06 00:00:00+00
stgallen		H		paper	2023-01-10 00:00:00+00
stgallen		D		paper	2023-02-08 00:00:00+00
stgallen		H		paper	2023-03-07 00:00:00+00
stgallen		K		paper	2023-03-09 00:00:00+00
stgallen		I		paper	2023-03-30 00:00:00+00
stgallen		F		paper	2023-04-03 00:00:00+00
stgallen		D		paper	2023-04-05 00:00:00+00
stgallen		L West		paper	2023-05-03 00:00:00+00
stgallen		C		paper	2023-05-24 00:00:00+00
stgallen		A		paper	2023-05-26 00:00:00+00
stgallen		F		paper	2023-05-30 00:00:00+00
stgallen		G		paper	2023-06-20 00:00:00+00
stgallen		F		paper	2023-06-26 00:00:00+00
stgallen		L West		paper	2023-06-28 00:00:00+00
stgallen		K		paper	2023-06-29 00:00:00+00
stgallen		E		cardboard	2020-07-06 00:00:00+00
stgallen		E		waste	2020-09-09 00:00:00+00
stgallen		E		waste	2020-12-23 00:00:00+00
stgallen		E		organic	2021-05-19 00:00:00+00
stgallen		K		organic	2020-07-03 00:00:00+00
stgallen		K		paper	2020-11-19 00:00:00+00
stgallen		K		cardboard	2021-01-28 00:00:00+00
stgallen		K		paper	2021-05-06 00:00:00+00
stgallen		K		waste	2021-02-05 00:00:00+00
stgallen		D		organic	2020-08-04 00:00:00+00
stgallen		D		waste	2020-09-15 00:00:00+00
stgallen		A		organic	2020-09-07 00:00:00+00
stgallen		A		waste	2021-02-15 00:00:00+00
stgallen		F		waste	2020-07-01 00:00:00+00
stgallen		F		waste	2020-07-15 00:00:00+00
stgallen		F		waste	2020-10-21 00:00:00+00
stgallen		F		organic	2020-12-16 00:00:00+00
stgallen		F		organic	2020-12-23 00:00:00+00
stgallen		F		organic	2021-03-10 00:00:00+00
stgallen		L West		organic	2020-07-24 00:00:00+00
stgallen		L West		organic	2020-10-16 00:00:00+00
stgallen		L West		organic	2021-05-28 00:00:00+00
stgallen		C		cardboard	2020-11-25 00:00:00+00
stgallen		C		paper	2021-04-28 00:00:00+00
stgallen		C		cardboard	2021-05-12 00:00:00+00
stgallen		C		organic	2020-10-20 00:00:00+00
stgallen		C		waste	2020-11-17 00:00:00+00
stgallen		C		organic	2020-12-08 00:00:00+00
stgallen		B		cardboard	2020-07-17 00:00:00+00
stgallen		B		paper	2020-08-28 00:00:00+00
stgallen		B		paper	2020-11-20 00:00:00+00
stgallen		G		cardboard	2020-07-07 00:00:00+00
stgallen		G		organic	2020-07-30 00:00:00+00
stgallen		G		paper	2020-11-10 00:00:00+00
stgallen		G		paper	2020-12-08 00:00:00+00
stgallen		G		organic	2020-11-26 00:00:00+00
stgallen		G		waste	2021-02-11 00:00:00+00
stgallen		G		waste	2021-03-11 00:00:00+00
stgallen		G		organic	2021-06-03 00:00:00+00
stgallen		H		organic	2021-07-01 00:00:00+00
stgallen		H		waste	2021-07-15 00:00:00+00
stgallen		H		organic	2021-08-12 00:00:00+00
stgallen		H		organic	2021-08-26 00:00:00+00
stgallen		H		organic	2021-11-04 00:00:00+00
stgallen		H		organic	2022-01-13 00:00:00+00
stgallen		H		organic	2022-02-10 00:00:00+00
stgallen		H		waste	2022-03-03 00:00:00+00
stgallen		H		waste	2022-04-28 00:00:00+00
stgallen		D		organic	2021-08-24 00:00:00+00
stgallen		D		organic	2021-10-12 00:00:00+00
stgallen		D		waste	2021-11-30 00:00:00+00
stgallen		A		waste	2021-08-02 00:00:00+00
stgallen		A		cardboard	2022-04-14 00:00:00+00
stgallen		A		cardboard	2022-05-13 00:00:00+00
stgallen		A		organic	2021-11-15 00:00:00+00
stgallen		A		waste	2021-12-27 00:00:00+00
stgallen		A		organic	2022-02-21 00:00:00+00
stgallen		A		organic	2022-05-09 00:00:00+00
stgallen		C		waste	2021-08-17 00:00:00+00
stgallen		C		waste	2022-04-19 00:00:00+00
stgallen		B		paper	2022-05-06 00:00:00+00
stgallen		B		waste	2021-09-27 00:00:00+00
stgallen		B		organic	2021-10-25 00:00:00+00
stgallen		B		organic	2022-02-07 00:00:00+00
stgallen		B		organic	2022-06-08 00:00:00+00
stgallen		B		waste	2022-06-20 00:00:00+00
stgallen		G		organic	2021-08-05 00:00:00+00
stgallen		G		waste	2021-08-12 00:00:00+00
stgallen		G		organic	2021-11-11 00:00:00+00
stgallen		F		organic	2021-07-28 00:00:00+00
stgallen		F		organic	2021-09-01 00:00:00+00
stgallen		F		organic	2022-03-16 00:00:00+00
stgallen		F		waste	2022-06-22 00:00:00+00
stgallen		I		waste	2021-07-09 00:00:00+00
stgallen		I		organic	2021-07-16 00:00:00+00
stgallen		I		paper	2021-11-11 00:00:00+00
stgallen		I		waste	2021-08-27 00:00:00+00
stgallen		I		cardboard	2022-02-17 00:00:00+00
stgallen		I		waste	2022-03-04 00:00:00+00
stgallen		I		waste	2022-06-03 00:00:00+00
stgallen		L West		organic	2021-07-09 00:00:00+00
stgallen		L West		paper	2021-09-22 00:00:00+00
stgallen		L West		paper	2022-03-09 00:00:00+00
stgallen		L Ost		waste	2021-07-16 00:00:00+00
stgallen		L Ost		organic	2021-11-26 00:00:00+00
stgallen		L Ost		waste	2021-12-03 00:00:00+00
stgallen		L Ost		waste	2022-01-14 00:00:00+00
stgallen		L Ost		organic	2022-02-18 00:00:00+00
stgallen		E		organic	2022-06-29 00:00:00+00
stgallen		I		paper	2021-04-01 00:00:00+00
stgallen		I		waste	2020-12-31 00:00:00+00
stgallen		H		paper	2021-05-04 00:00:00+00
stgallen		H		organic	2020-12-17 00:00:00+00
stgallen		L Ost		waste	2020-07-03 00:00:00+00
stgallen		L Ost		organic	2021-02-12 00:00:00+00
stgallen		K		cardboard	2021-08-12 00:00:00+00
stgallen		K		waste	2021-10-22 00:00:00+00
stgallen		K		waste	2022-04-01 00:00:00+00
stgallen		K		waste	2022-05-06 00:00:00+00
stgallen		I		waste	2020-08-07 00:00:00+00
stgallen		I		organic	2020-08-21 00:00:00+00
stgallen		I		cardboard	2021-04-15 00:00:00+00
stgallen		I		organic	2021-04-30 00:00:00+00
stgallen		A		paper	2021-08-20 00:00:00+00
stgallen		A		organic	2021-08-02 00:00:00+00
stgallen		A		cardboard	2021-11-26 00:00:00+00
stgallen		A		organic	2021-11-08 00:00:00+00
stgallen		A		waste	2021-12-06 00:00:00+00
stgallen		A		organic	2021-12-06 00:00:00+00
stgallen		A		waste	2022-05-09 00:00:00+00
stgallen		H		organic	2020-07-09 00:00:00+00
stgallen		H		organic	2020-07-16 00:00:00+00
stgallen		H		waste	2020-08-06 00:00:00+00
stgallen		H		paper	2021-01-12 00:00:00+00
stgallen		H		organic	2020-08-20 00:00:00+00
stgallen		H		cardboard	2021-05-18 00:00:00+00
stgallen		H		organic	2020-10-01 00:00:00+00
stgallen		H		waste	2020-10-22 00:00:00+00
stgallen		H		organic	2020-11-12 00:00:00+00
stgallen		H		organic	2020-12-03 00:00:00+00
stgallen		H		organic	2021-04-22 00:00:00+00
stgallen		K		paper	2021-10-21 00:00:00+00
stgallen		K		cardboard	2022-02-24 00:00:00+00
stgallen		K		organic	2021-11-12 00:00:00+00
stgallen		K		waste	2021-12-31 00:00:00+00
stgallen		K		waste	2022-01-07 00:00:00+00
stgallen		K		waste	2022-01-14 00:00:00+00
stgallen		K		waste	2022-04-29 00:00:00+00
stgallen		K		paper	2020-12-17 00:00:00+00
stgallen		K		paper	2021-04-08 00:00:00+00
stgallen		K		organic	2020-10-09 00:00:00+00
stgallen		K		organic	2020-12-18 00:00:00+00
stgallen		K		waste	2020-12-31 00:00:00+00
stgallen		K		organic	2021-01-29 00:00:00+00
stgallen		K		organic	2021-03-05 00:00:00+00
stgallen		K		organic	2021-04-30 00:00:00+00
stgallen		L Ost		organic	2021-02-26 00:00:00+00
stgallen		L Ost		waste	2021-05-14 00:00:00+00
stgallen		F		metal	2020-09-22 00:00:00+00
stgallen		F		waste	2020-09-23 00:00:00+00
stgallen		F		waste	2020-10-14 00:00:00+00
stgallen		F		organic	2020-11-18 00:00:00+00
stgallen		F		waste	2021-02-24 00:00:00+00
stgallen		F		organic	2021-04-07 00:00:00+00
stgallen		F		waste	2021-05-05 00:00:00+00
stgallen		F		organic	2021-05-19 00:00:00+00
stgallen		F		organic	2021-06-30 00:00:00+00
stgallen		C		metal	2020-09-24 00:00:00+00
stgallen		C		paper	2021-03-31 00:00:00+00
stgallen		C		waste	2020-10-13 00:00:00+00
stgallen		C		organic	2020-12-22 00:00:00+00
stgallen		C		organic	2021-02-23 00:00:00+00
stgallen		H		waste	2021-07-08 00:00:00+00
stgallen		H		cardboard	2022-02-22 00:00:00+00
stgallen		H		paper	2022-04-05 00:00:00+00
stgallen		H		waste	2021-11-11 00:00:00+00
stgallen		C		paper	2021-10-13 00:00:00+00
stgallen		C		waste	2021-08-24 00:00:00+00
stgallen		C		organic	2021-12-28 00:00:00+00
stgallen		C		organic	2022-03-15 00:00:00+00
stgallen		C		organic	2022-04-12 00:00:00+00
stgallen		B		cardboard	2021-08-13 00:00:00+00
stgallen		B		paper	2021-08-27 00:00:00+00
stgallen		B		waste	2022-03-21 00:00:00+00
stgallen		D		organic	2021-07-13 00:00:00+00
stgallen		D		paper	2022-05-04 00:00:00+00
stgallen		D		organic	2021-11-30 00:00:00+00
stgallen		D		organic	2022-01-04 00:00:00+00
stgallen		D		organic	2022-01-25 00:00:00+00
stgallen		D		organic	2022-02-08 00:00:00+00
stgallen		F		metal	2021-09-28 00:00:00+00
stgallen		F		cardboard	2022-05-16 00:00:00+00
stgallen		F		waste	2021-12-29 00:00:00+00
stgallen		F		organic	2022-04-06 00:00:00+00
stgallen		F		organic	2022-04-20 00:00:00+00
stgallen		F		organic	2022-05-11 00:00:00+00
stgallen		I		organic	2021-07-23 00:00:00+00
stgallen		I		paper	2022-02-03 00:00:00+00
stgallen		I		waste	2021-09-24 00:00:00+00
stgallen		I		organic	2021-10-15 00:00:00+00
stgallen		I		waste	2022-02-04 00:00:00+00
stgallen		I		organic	2022-03-11 00:00:00+00
stgallen		I		organic	2022-05-20 00:00:00+00
stgallen		I		waste	2022-06-24 00:00:00+00
stgallen		G		waste	2021-08-05 00:00:00+00
stgallen		G		waste	2022-02-24 00:00:00+00
stgallen		G		waste	2022-05-12 00:00:00+00
stgallen		G		organic	2022-05-25 00:00:00+00
stgallen		E		organic	2021-07-21 00:00:00+00
stgallen		E		paper	2021-11-08 00:00:00+00
stgallen		E		organic	2021-08-11 00:00:00+00
stgallen		E		organic	2021-09-08 00:00:00+00
stgallen		E		waste	2021-12-29 00:00:00+00
stgallen		E		waste	2022-02-16 00:00:00+00
stgallen		E		waste	2022-03-30 00:00:00+00
stgallen		E		organic	2022-05-25 00:00:00+00
stgallen		L Ost		paper	2022-04-27 00:00:00+00
stgallen		L Ost		organic	2022-01-21 00:00:00+00
stgallen		L Ost		waste	2022-03-04 00:00:00+00
stgallen		L West		waste	2021-08-20 00:00:00+00
stgallen		L West		waste	2021-08-27 00:00:00+00
stgallen		L West		organic	2022-02-18 00:00:00+00
stgallen		A		paper	2020-08-21 00:00:00+00
stgallen		A		organic	2020-08-10 00:00:00+00
stgallen		A		waste	2020-11-30 00:00:00+00
stgallen		A		waste	2021-01-11 00:00:00+00
stgallen		A		organic	2021-01-11 00:00:00+00
stgallen		A		waste	2021-02-08 00:00:00+00
stgallen		E		metal	2021-04-27 00:00:00+00
stgallen		E		paper	2020-09-14 00:00:00+00
stgallen		E		paper	2020-11-09 00:00:00+00
stgallen		E		organic	2021-01-13 00:00:00+00
stgallen		D		cardboard	2020-07-15 00:00:00+00
stgallen		D		metal	2020-09-24 00:00:00+00
stgallen		D		cardboard	2020-09-09 00:00:00+00
stgallen		D		organic	2020-07-28 00:00:00+00
stgallen		D		waste	2020-08-18 00:00:00+00
stgallen		D		cardboard	2020-12-30 00:00:00+00
stgallen		D		organic	2020-08-25 00:00:00+00
stgallen		D		waste	2020-09-08 00:00:00+00
stgallen		D		waste	2021-01-26 00:00:00+00
stgallen		D		waste	2021-02-02 00:00:00+00
stgallen		D		organic	2021-04-27 00:00:00+00
stgallen		D		waste	2021-06-01 00:00:00+00
stgallen		L West		waste	2020-09-25 00:00:00+00
stgallen		L West		waste	2020-12-18 00:00:00+00
stgallen		L West		organic	2021-03-05 00:00:00+00
stgallen		L West		organic	2021-06-11 00:00:00+00
stgallen		G		paper	2020-08-18 00:00:00+00
stgallen		G		waste	2020-08-06 00:00:00+00
stgallen		G		cardboard	2021-04-13 00:00:00+00
stgallen		B		organic	2020-11-02 00:00:00+00
stgallen		B		organic	2021-06-14 00:00:00+00
stgallen		D		paper	2021-08-25 00:00:00+00
stgallen		D		waste	2021-08-03 00:00:00+00
stgallen		D		paper	2021-11-17 00:00:00+00
stgallen		D		waste	2021-08-17 00:00:00+00
stgallen		D		paper	2022-01-12 00:00:00+00
stgallen		D		waste	2021-10-12 00:00:00+00
stgallen		D		waste	2021-11-23 00:00:00+00
stgallen		D		waste	2022-02-15 00:00:00+00
stgallen		D		waste	2022-02-22 00:00:00+00
stgallen		H		metal	2021-09-29 00:00:00+00
stgallen		H		cardboard	2022-03-22 00:00:00+00
stgallen		H		waste	2022-02-03 00:00:00+00
stgallen		H		organic	2022-06-23 00:00:00+00
stgallen		H		waste	2022-06-30 00:00:00+00
stgallen		L West		paper	2022-04-06 00:00:00+00
stgallen		L West		waste	2021-12-17 00:00:00+00
stgallen		L West		waste	2021-12-31 00:00:00+00
stgallen		L West		organic	2022-01-28 00:00:00+00
stgallen		L West		waste	2022-05-13 00:00:00+00
stgallen		I		paper	2021-07-22 00:00:00+00
stgallen		I		cardboard	2021-07-08 00:00:00+00
stgallen		I		organic	2021-07-09 00:00:00+00
stgallen		I		waste	2021-07-16 00:00:00+00
stgallen		I		waste	2021-10-22 00:00:00+00
stgallen		I		waste	2021-11-12 00:00:00+00
stgallen		I		waste	2022-05-06 00:00:00+00
stgallen		F		organic	2021-11-24 00:00:00+00
stgallen		F		organic	2022-01-05 00:00:00+00
stgallen		F		waste	2022-01-19 00:00:00+00
stgallen		F		organic	2022-01-26 00:00:00+00
stgallen		E		waste	2021-07-07 00:00:00+00
stgallen		E		paper	2021-12-06 00:00:00+00
stgallen		E		waste	2021-08-25 00:00:00+00
stgallen		E		waste	2021-10-06 00:00:00+00
stgallen		E		waste	2021-11-03 00:00:00+00
stgallen		E		organic	2022-06-08 00:00:00+00
stgallen		L Ost		cardboard	2021-09-29 00:00:00+00
stgallen		L Ost		organic	2021-09-24 00:00:00+00
stgallen		L Ost		waste	2022-01-28 00:00:00+00
stgallen		L Ost		waste	2022-03-25 00:00:00+00
stgallen		L Ost		organic	2022-04-29 00:00:00+00
stgallen		G		organic	2021-07-22 00:00:00+00
stgallen		G		paper	2022-06-21 00:00:00+00
stgallen		G		organic	2021-09-30 00:00:00+00
stgallen		G		organic	2021-10-21 00:00:00+00
stgallen		G		waste	2021-10-28 00:00:00+00
stgallen		G		organic	2022-01-20 00:00:00+00
stgallen		G		waste	2022-04-07 00:00:00+00
stgallen		B		paper	2021-07-30 00:00:00+00
stgallen		B		organic	2021-07-19 00:00:00+00
stgallen		B		waste	2021-08-02 00:00:00+00
stgallen		B		organic	2021-12-13 00:00:00+00
stgallen		B		waste	2021-12-27 00:00:00+00
stgallen		B		organic	2021-12-27 00:00:00+00
stgallen		B		waste	2022-06-27 00:00:00+00
stgallen		C		organic	2021-07-06 00:00:00+00
stgallen		C		paper	2021-07-21 00:00:00+00
stgallen		C		metal	2022-04-28 00:00:00+00
stgallen		C		organic	2021-07-20 00:00:00+00
stgallen		C		cardboard	2021-10-27 00:00:00+00
stgallen		C		waste	2021-09-28 00:00:00+00
stgallen		C		organic	2022-02-08 00:00:00+00
stgallen		C		organic	2022-04-26 00:00:00+00
stgallen		A		waste	2021-07-12 00:00:00+00
stgallen		A		cardboard	2021-08-06 00:00:00+00
stgallen		A		organic	2021-10-25 00:00:00+00
stgallen		A		organic	2021-12-13 00:00:00+00
stgallen		A		organic	2022-05-30 00:00:00+00
stgallen		K		waste	2021-07-30 00:00:00+00
stgallen		K		waste	2021-09-03 00:00:00+00
stgallen		K		paper	2022-04-07 00:00:00+00
stgallen		K		waste	2021-10-08 00:00:00+00
stgallen		K		organic	2022-01-21 00:00:00+00
stgallen		K		waste	2022-05-20 00:00:00+00
stgallen		H		waste	2020-07-02 00:00:00+00
stgallen		H		waste	2020-10-01 00:00:00+00
stgallen		H		organic	2020-10-29 00:00:00+00
stgallen		H		organic	2020-12-24 00:00:00+00
stgallen		H		waste	2021-01-07 00:00:00+00
stgallen		H		organic	2021-02-11 00:00:00+00
stgallen		H		waste	2021-04-22 00:00:00+00
stgallen		I		paper	2021-04-29 00:00:00+00
stgallen		I		cardboard	2021-06-10 00:00:00+00
stgallen		I		organic	2020-12-11 00:00:00+00
stgallen		I		organic	2021-06-04 00:00:00+00
stgallen		L Ost		paper	2020-08-19 00:00:00+00
stgallen		L Ost		cardboard	2020-10-28 00:00:00+00
stgallen		L Ost		organic	2020-09-18 00:00:00+00
stgallen		L Ost		waste	2020-10-23 00:00:00+00
stgallen		L Ost		organic	2020-12-18 00:00:00+00
stgallen		C		paper	2020-10-14 00:00:00+00
stgallen		C		waste	2020-11-10 00:00:00+00
stgallen		K		waste	2020-07-10 00:00:00+00
stgallen		K		paper	2020-09-24 00:00:00+00
stgallen		K		waste	2020-10-23 00:00:00+00
stgallen		F		organic	2020-07-15 00:00:00+00
stgallen		F		waste	2020-07-22 00:00:00+00
stgallen		F		organic	2020-11-25 00:00:00+00
stgallen		F		organic	2021-06-23 00:00:00+00
stgallen		D		paper	2020-07-29 00:00:00+00
stgallen		D		waste	2020-09-01 00:00:00+00
stgallen		D		paper	2021-06-02 00:00:00+00
stgallen		A		organic	2020-07-27 00:00:00+00
stgallen		A		waste	2020-12-21 00:00:00+00
stgallen		A		waste	2021-01-25 00:00:00+00
stgallen		L West		waste	2020-07-17 00:00:00+00
stgallen		L West		organic	2020-07-17 00:00:00+00
stgallen		L West		cardboard	2020-10-07 00:00:00+00
stgallen		L West		organic	2020-10-23 00:00:00+00
stgallen		L West		waste	2020-11-20 00:00:00+00
stgallen		L West		waste	2021-01-15 00:00:00+00
stgallen		E		organic	2020-09-02 00:00:00+00
stgallen		E		cardboard	2021-04-12 00:00:00+00
stgallen		E		waste	2020-11-11 00:00:00+00
stgallen		E		waste	2020-11-25 00:00:00+00
stgallen		E		waste	2020-12-16 00:00:00+00
stgallen		E		waste	2021-01-20 00:00:00+00
stgallen		G		waste	2020-09-10 00:00:00+00
stgallen		G		organic	2020-09-10 00:00:00+00
stgallen		G		waste	2021-03-18 00:00:00+00
stgallen		B		paper	2020-10-23 00:00:00+00
stgallen		B		organic	2020-09-07 00:00:00+00
stgallen		B		organic	2020-09-28 00:00:00+00
stgallen		B		organic	2021-01-25 00:00:00+00
stgallen		B		organic	2021-02-15 00:00:00+00
stgallen		B		organic	2021-02-22 00:00:00+00
stgallen		B		organic	2021-03-08 00:00:00+00
stgallen		B		waste	2021-04-12 00:00:00+00
stgallen		D		waste	2021-07-13 00:00:00+00
stgallen		D		waste	2021-07-27 00:00:00+00
stgallen		D		waste	2021-10-26 00:00:00+00
stgallen		D		organic	2022-05-31 00:00:00+00
stgallen		I		organic	2020-09-18 00:00:00+00
stgallen		I		organic	2020-10-30 00:00:00+00
stgallen		I		organic	2020-12-18 00:00:00+00
stgallen		I		organic	2021-04-16 00:00:00+00
stgallen		I		waste	2021-04-01 00:00:00+00
stgallen		H		cardboard	2020-09-08 00:00:00+00
stgallen		H		cardboard	2021-03-23 00:00:00+00
stgallen		H		waste	2020-10-15 00:00:00+00
stgallen		H		organic	2020-11-26 00:00:00+00
stgallen		H		organic	2021-04-29 00:00:00+00
stgallen		H		waste	2021-05-20 00:00:00+00
stgallen		H		waste	2021-06-03 00:00:00+00
stgallen		A		organic	2021-07-19 00:00:00+00
stgallen		A		waste	2021-08-30 00:00:00+00
stgallen		L Ost		waste	2020-07-10 00:00:00+00
stgallen		L Ost		paper	2020-09-16 00:00:00+00
stgallen		L Ost		organic	2021-05-14 00:00:00+00
stgallen		K		organic	2021-07-02 00:00:00+00
stgallen		K		organic	2021-10-01 00:00:00+00
stgallen		K		organic	2021-10-22 00:00:00+00
stgallen		K		waste	2022-05-13 00:00:00+00
stgallen		A		organic	2021-03-08 00:00:00+00
stgallen		A		organic	2021-03-15 00:00:00+00
stgallen		A		waste	2021-04-06 00:00:00+00
stgallen		A		organic	2021-06-28 00:00:00+00
stgallen		E		cardboard	2021-05-10 00:00:00+00
stgallen		E		organic	2021-03-10 00:00:00+00
stgallen		E		waste	2021-06-09 00:00:00+00
stgallen		D		organic	2020-09-29 00:00:00+00
stgallen		D		waste	2020-11-24 00:00:00+00
stgallen		D		waste	2021-02-16 00:00:00+00
stgallen		D		organic	2021-06-01 00:00:00+00
stgallen		D		organic	2021-06-15 00:00:00+00
stgallen		L West		organic	2020-07-03 00:00:00+00
stgallen		L West		paper	2020-07-29 00:00:00+00
stgallen		L West		organic	2020-10-30 00:00:00+00
stgallen		L West		organic	2021-01-29 00:00:00+00
stgallen		L West		waste	2021-01-22 00:00:00+00
stgallen		I		organic	2022-04-29 00:00:00+00
stgallen		I		waste	2022-05-13 00:00:00+00
stgallen		H		organic	2021-08-19 00:00:00+00
stgallen		H		waste	2021-11-18 00:00:00+00
stgallen		H		organic	2021-11-25 00:00:00+00
stgallen		H		waste	2022-04-07 00:00:00+00
stgallen		L Ost		waste	2021-07-09 00:00:00+00
stgallen		L Ost		paper	2021-10-13 00:00:00+00
stgallen		L Ost		organic	2021-12-24 00:00:00+00
stgallen		L Ost		waste	2021-12-31 00:00:00+00
stgallen		L Ost		organic	2022-03-11 00:00:00+00
stgallen		L Ost		waste	2022-04-08 00:00:00+00
stgallen		L Ost		organic	2022-04-22 00:00:00+00
stgallen		L Ost		waste	2022-05-27 00:00:00+00
stgallen		L West		organic	2022-01-14 00:00:00+00
stgallen		L West		organic	2022-04-13 00:00:00+00
stgallen		L West		organic	2022-06-03 00:00:00+00
stgallen		L West		waste	2022-06-17 00:00:00+00
stgallen		E		paper	2021-10-11 00:00:00+00
stgallen		E		organic	2021-08-25 00:00:00+00
stgallen		E		organic	2021-11-10 00:00:00+00
stgallen		E		waste	2021-12-08 00:00:00+00
stgallen		E		organic	2022-03-23 00:00:00+00
stgallen		E		organic	2022-05-04 00:00:00+00
stgallen		G		waste	2021-01-21 00:00:00+00
stgallen		B		cardboard	2021-01-29 00:00:00+00
stgallen		B		cardboard	2021-03-26 00:00:00+00
stgallen		B		organic	2020-11-30 00:00:00+00
stgallen		B		organic	2020-12-07 00:00:00+00
stgallen		B		waste	2021-01-18 00:00:00+00
stgallen		B		organic	2021-01-18 00:00:00+00
stgallen		F		waste	2021-07-28 00:00:00+00
stgallen		F		organic	2021-11-17 00:00:00+00
stgallen		F		waste	2021-11-24 00:00:00+00
stgallen		F		waste	2022-04-06 00:00:00+00
stgallen		C		cardboard	2021-09-29 00:00:00+00
stgallen		C		waste	2021-08-10 00:00:00+00
stgallen		C		organic	2021-10-05 00:00:00+00
stgallen		C		waste	2021-10-26 00:00:00+00
stgallen		C		waste	2022-02-08 00:00:00+00
stgallen		C		organic	2022-04-19 00:00:00+00
stgallen		C		waste	2022-06-28 00:00:00+00
stgallen		G		waste	2021-07-15 00:00:00+00
stgallen		G		organic	2021-08-12 00:00:00+00
stgallen		G		paper	2022-04-26 00:00:00+00
stgallen		G		waste	2021-11-25 00:00:00+00
stgallen		G		organic	2021-12-16 00:00:00+00
stgallen		G		waste	2022-02-03 00:00:00+00
stgallen		G		waste	2022-02-10 00:00:00+00
stgallen		G		organic	2022-06-16 00:00:00+00
stgallen		B		waste	2021-10-11 00:00:00+00
stgallen		B		waste	2021-11-15 00:00:00+00
stgallen		B		organic	2022-02-21 00:00:00+00
stgallen		B		organic	2022-04-25 00:00:00+00
stgallen		B		organic	2022-06-27 00:00:00+00
stgallen		K		paper	2020-08-27 00:00:00+00
stgallen		K		waste	2020-07-31 00:00:00+00
stgallen		K		cardboard	2020-11-05 00:00:00+00
stgallen		K		organic	2020-09-04 00:00:00+00
stgallen		K		organic	2020-11-27 00:00:00+00
stgallen		K		waste	2021-01-08 00:00:00+00
stgallen		K		waste	2021-03-05 00:00:00+00
stgallen		K		waste	2021-03-12 00:00:00+00
stgallen		C		paper	2020-11-11 00:00:00+00
stgallen		C		paper	2021-02-03 00:00:00+00
stgallen		C		cardboard	2021-02-17 00:00:00+00
stgallen		C		organic	2020-11-10 00:00:00+00
stgallen		C		waste	2021-01-12 00:00:00+00
stgallen		C		organic	2021-03-16 00:00:00+00
stgallen		F		cardboard	2020-11-02 00:00:00+00
stgallen		F		cardboard	2020-11-30 00:00:00+00
stgallen		F		organic	2020-08-12 00:00:00+00
stgallen		F		organic	2021-02-03 00:00:00+00
stgallen		K		organic	2021-06-18 00:00:00+00
stgallen		D		paper	2020-12-16 00:00:00+00
stgallen		D		waste	2020-08-25 00:00:00+00
stgallen		C		waste	2020-07-21 00:00:00+00
stgallen		C		organic	2020-09-15 00:00:00+00
stgallen		C		organic	2020-11-24 00:00:00+00
stgallen		C		waste	2020-12-29 00:00:00+00
stgallen		C		waste	2021-03-02 00:00:00+00
stgallen		C		organic	2021-03-09 00:00:00+00
stgallen		C		waste	2021-06-01 00:00:00+00
stgallen		C		waste	2021-06-22 00:00:00+00
stgallen		F		organic	2020-11-11 00:00:00+00
stgallen		F		waste	2020-11-18 00:00:00+00
stgallen		F		waste	2021-04-14 00:00:00+00
stgallen		E		waste	2020-07-22 00:00:00+00
stgallen		E		organic	2020-12-30 00:00:00+00
stgallen		E		waste	2021-05-19 00:00:00+00
stgallen		A		organic	2020-11-09 00:00:00+00
stgallen		A		waste	2021-03-01 00:00:00+00
stgallen		A		organic	2021-03-01 00:00:00+00
stgallen		A		waste	2021-04-19 00:00:00+00
stgallen		A		waste	2021-06-21 00:00:00+00
stgallen		G		waste	2020-07-09 00:00:00+00
stgallen		G		organic	2020-09-24 00:00:00+00
stgallen		G		organic	2020-11-19 00:00:00+00
stgallen		G		waste	2020-12-17 00:00:00+00
stgallen		G		organic	2021-03-04 00:00:00+00
stgallen		G		organic	2021-03-25 00:00:00+00
stgallen		L West		waste	2020-08-14 00:00:00+00
stgallen		L West		paper	2020-12-16 00:00:00+00
stgallen		L West		cardboard	2021-05-19 00:00:00+00
stgallen		L West		organic	2021-02-12 00:00:00+00
stgallen		L West		organic	2021-02-26 00:00:00+00
stgallen		L West		organic	2021-03-12 00:00:00+00
stgallen		I		paper	2020-07-23 00:00:00+00
stgallen		I		waste	2020-09-18 00:00:00+00
stgallen		I		paper	2021-05-27 00:00:00+00
stgallen		I		organic	2021-01-29 00:00:00+00
stgallen		I		waste	2021-05-14 00:00:00+00
stgallen		I		waste	2021-05-28 00:00:00+00
stgallen		H		organic	2020-07-30 00:00:00+00
stgallen		H		paper	2020-12-15 00:00:00+00
stgallen		H		cardboard	2020-12-01 00:00:00+00
stgallen		H		waste	2020-09-24 00:00:00+00
stgallen		H		organic	2021-02-04 00:00:00+00
stgallen		H		organic	2021-03-25 00:00:00+00
stgallen		L Ost		organic	2020-07-03 00:00:00+00
stgallen		L Ost		metal	2020-09-24 00:00:00+00
stgallen		L Ost		waste	2020-08-14 00:00:00+00
stgallen		L Ost		organic	2020-12-04 00:00:00+00
stgallen		L Ost		waste	2020-12-18 00:00:00+00
stgallen		L Ost		organic	2021-02-19 00:00:00+00
stgallen		L Ost		organic	2021-06-25 00:00:00+00
stgallen		L Ost		waste	2021-06-25 00:00:00+00
stgallen		D		metal	2022-04-28 00:00:00+00
stgallen		D		paper	2021-12-15 00:00:00+00
stgallen		K		waste	2022-03-18 00:00:00+00
stgallen		K		organic	2022-03-25 00:00:00+00
stgallen		A		organic	2022-02-28 00:00:00+00
stgallen		A		waste	2022-03-28 00:00:00+00
stgallen		A		organic	2022-04-04 00:00:00+00
stgallen		A		organic	2022-06-27 00:00:00+00
stgallen		C		cardboard	2022-02-16 00:00:00+00
stgallen		F		waste	2021-07-07 00:00:00+00
stgallen		F		organic	2021-07-21 00:00:00+00
stgallen		F		waste	2021-08-11 00:00:00+00
stgallen		F		organic	2021-10-06 00:00:00+00
stgallen		B		organic	2021-07-05 00:00:00+00
stgallen		B		waste	2021-07-19 00:00:00+00
stgallen		B		cardboard	2021-12-31 00:00:00+00
stgallen		B		cardboard	2022-02-25 00:00:00+00
stgallen		B		waste	2021-11-22 00:00:00+00
stgallen		G		cardboard	2021-10-26 00:00:00+00
stgallen		G		cardboard	2022-01-18 00:00:00+00
stgallen		G		waste	2021-12-16 00:00:00+00
stgallen		G		organic	2022-03-24 00:00:00+00
stgallen		H		organic	2021-12-09 00:00:00+00
stgallen		H		waste	2022-05-05 00:00:00+00
stgallen		H		waste	2022-06-02 00:00:00+00
stgallen		H		paper	2021-11-16 00:00:00+00
stgallen		H		waste	2021-09-02 00:00:00+00
stgallen		I		organic	2021-07-02 00:00:00+00
stgallen		I		organic	2021-09-10 00:00:00+00
stgallen		I		waste	2021-12-03 00:00:00+00
stgallen		I		organic	2022-01-07 00:00:00+00
stgallen		L West		organic	2021-07-23 00:00:00+00
stgallen		L West		waste	2021-08-06 00:00:00+00
stgallen		L West		organic	2021-08-27 00:00:00+00
stgallen		L West		waste	2021-10-29 00:00:00+00
stgallen		L West		waste	2021-11-12 00:00:00+00
stgallen		L West		organic	2022-03-11 00:00:00+00
stgallen		E		cardboard	2021-12-20 00:00:00+00
stgallen		E		cardboard	2022-02-14 00:00:00+00
stgallen		E		waste	2021-10-20 00:00:00+00
stgallen		E		organic	2022-02-02 00:00:00+00
stgallen		E		organic	2022-03-16 00:00:00+00
stgallen		E		waste	2022-06-22 00:00:00+00
stgallen		B		paper	2020-09-25 00:00:00+00
stgallen		B		cardboard	2021-04-23 00:00:00+00
stgallen		B		organic	2020-11-23 00:00:00+00
stgallen		B		waste	2020-12-14 00:00:00+00
stgallen		B		waste	2021-02-15 00:00:00+00
stgallen		B		organic	2021-03-22 00:00:00+00
stgallen		B		organic	2021-04-19 00:00:00+00
stgallen		B		waste	2021-04-26 00:00:00+00
stgallen		A		organic	2022-07-04 00:00:00+00
stgallen		H		organic	2022-07-07 00:00:00+00
stgallen		K		organic	2022-07-15 00:00:00+00
stgallen		I		organic	2022-07-22 00:00:00+00
stgallen		K		organic	2022-07-22 00:00:00+00
stgallen		B		organic	2022-07-25 00:00:00+00
stgallen		C		organic	2022-07-26 00:00:00+00
stgallen		I		organic	2022-08-05 00:00:00+00
stgallen		L West		organic	2022-08-05 00:00:00+00
stgallen		I		organic	2022-08-12 00:00:00+00
stgallen		L West		organic	2022-08-12 00:00:00+00
stgallen		C		organic	2022-08-16 00:00:00+00
stgallen		D		organic	2022-08-23 00:00:00+00
stgallen		G		organic	2022-08-25 00:00:00+00
stgallen		A		organic	2022-08-29 00:00:00+00
stgallen		G		organic	2022-09-01 00:00:00+00
stgallen		K		organic	2022-09-02 00:00:00+00
stgallen		L Ost		organic	2022-09-02 00:00:00+00
stgallen		L West		organic	2022-09-02 00:00:00+00
stgallen		G		organic	2022-09-22 00:00:00+00
stgallen		H		organic	2022-09-22 00:00:00+00
stgallen		L West		organic	2022-09-23 00:00:00+00
stgallen		F		organic	2022-10-05 00:00:00+00
stgallen		L West		organic	2022-10-07 00:00:00+00
stgallen		A		organic	2022-10-10 00:00:00+00
stgallen		L Ost		organic	2022-10-21 00:00:00+00
stgallen		C		organic	2022-10-25 00:00:00+00
stgallen		D		organic	2022-10-25 00:00:00+00
stgallen		G		organic	2022-11-03 00:00:00+00
stgallen		K		organic	2022-11-04 00:00:00+00
stgallen		L Ost		organic	2022-11-04 00:00:00+00
stgallen		C		organic	2022-11-08 00:00:00+00
stgallen		H		organic	2022-11-10 00:00:00+00
stgallen		E		organic	2022-11-16 00:00:00+00
stgallen		G		organic	2022-11-17 00:00:00+00
stgallen		I		organic	2022-11-18 00:00:00+00
stgallen		L Ost		organic	2022-11-18 00:00:00+00
stgallen		B		organic	2022-11-21 00:00:00+00
stgallen		D		organic	2022-11-22 00:00:00+00
stgallen		E		organic	2022-11-23 00:00:00+00
stgallen		E		organic	2022-11-30 00:00:00+00
stgallen		H		organic	2022-12-01 00:00:00+00
stgallen		A		organic	2022-12-05 00:00:00+00
stgallen		C		organic	2022-12-13 00:00:00+00
stgallen		E		organic	2022-12-14 00:00:00+00
stgallen		I		organic	2022-12-16 00:00:00+00
stgallen		L West		organic	2022-12-16 00:00:00+00
stgallen		A		organic	2022-12-19 00:00:00+00
stgallen		C		organic	2022-12-20 00:00:00+00
stgallen		I		organic	2022-12-23 00:00:00+00
stgallen		D		organic	2022-12-27 00:00:00+00
stgallen		E		organic	2022-12-28 00:00:00+00
stgallen		G		organic	2022-12-29 00:00:00+00
stgallen		C		organic	2023-01-03 00:00:00+00
stgallen		I		organic	2023-01-20 00:00:00+00
stgallen		K		organic	2023-01-27 00:00:00+00
stgallen		D		organic	2023-01-31 00:00:00+00
stgallen		L West		organic	2023-02-03 00:00:00+00
stgallen		D		organic	2023-02-07 00:00:00+00
stgallen		A		organic	2023-02-20 00:00:00+00
stgallen		B		organic	2023-02-27 00:00:00+00
stgallen		E		organic	2023-03-01 00:00:00+00
stgallen		F		organic	2023-03-08 00:00:00+00
stgallen		A		organic	2023-03-13 00:00:00+00
stgallen		C		organic	2023-03-14 00:00:00+00
stgallen		D		organic	2023-03-21 00:00:00+00
stgallen		L West		organic	2023-03-24 00:00:00+00
stgallen		F		organic	2023-03-29 00:00:00+00
stgallen		H		organic	2023-03-30 00:00:00+00
stgallen		L West		organic	2023-03-31 00:00:00+00
stgallen		A		organic	2023-04-03 00:00:00+00
stgallen		B		organic	2023-04-03 00:00:00+00
stgallen		F		organic	2023-04-05 00:00:00+00
stgallen		I		organic	2023-04-05 00:00:00+00
stgallen		K		organic	2023-04-05 00:00:00+00
stgallen		L Ost		organic	2023-04-05 00:00:00+00
stgallen		L West		organic	2023-04-05 00:00:00+00
stgallen		G		organic	2023-04-06 00:00:00+00
stgallen		G		organic	2023-04-13 00:00:00+00
stgallen		C		organic	2023-04-18 00:00:00+00
stgallen		D		organic	2023-04-18 00:00:00+00
stgallen		H		organic	2023-04-20 00:00:00+00
stgallen		L West		organic	2023-04-21 00:00:00+00
stgallen		E		organic	2023-04-26 00:00:00+00
stgallen		G		organic	2023-04-27 00:00:00+00
stgallen		L Ost		organic	2023-04-28 00:00:00+00
stgallen		B		organic	2023-05-01 00:00:00+00
stgallen		K		organic	2023-05-05 00:00:00+00
stgallen		B		organic	2023-05-08 00:00:00+00
stgallen		C		organic	2023-05-09 00:00:00+00
stgallen		F		organic	2023-05-10 00:00:00+00
stgallen		G		organic	2023-05-11 00:00:00+00
stgallen		K		organic	2023-05-12 00:00:00+00
stgallen		L West		organic	2023-05-12 00:00:00+00
stgallen		C		organic	2023-05-16 00:00:00+00
stgallen		E		organic	2023-05-24 00:00:00+00
stgallen		L West		organic	2023-05-26 00:00:00+00
stgallen		A		organic	2023-06-05 00:00:00+00
stgallen		I		organic	2023-06-09 00:00:00+00
stgallen		F		organic	2023-06-14 00:00:00+00
stgallen		L Ost		organic	2023-06-16 00:00:00+00
stgallen		A		organic	2023-06-19 00:00:00+00
stgallen		C		organic	2023-06-20 00:00:00+00
stgallen		D		organic	2023-06-20 00:00:00+00
stgallen		H		organic	2023-06-22 00:00:00+00
stgallen		I		organic	2023-06-23 00:00:00+00
stgallen		C		organic	2023-06-27 00:00:00+00
stgallen		E		organic	2023-06-28 00:00:00+00
stgallen		G		cardboard	2022-07-05 00:00:00+00
stgallen		L Ost		cardboard	2022-07-06 00:00:00+00
stgallen		I		cardboard	2022-07-07 00:00:00+00
stgallen		A		cardboard	2022-07-08 00:00:00+00
stgallen		H		cardboard	2022-07-12 00:00:00+00
stgallen		D		cardboard	2022-07-13 00:00:00+00
stgallen		L West		cardboard	2022-07-13 00:00:00+00
stgallen		G		cardboard	2022-08-02 00:00:00+00
stgallen		I		cardboard	2022-08-04 00:00:00+00
stgallen		A		cardboard	2022-08-05 00:00:00+00
stgallen		A		cardboard	2022-09-02 00:00:00+00
stgallen		D		cardboard	2022-09-07 00:00:00+00
stgallen		L West		cardboard	2022-09-07 00:00:00+00
stgallen		C		cardboard	2022-09-28 00:00:00+00
stgallen		L Ost		cardboard	2022-09-28 00:00:00+00
stgallen		D		cardboard	2022-10-05 00:00:00+00
stgallen		E		cardboard	2022-10-24 00:00:00+00
stgallen		C		cardboard	2022-10-26 00:00:00+00
stgallen		L Ost		cardboard	2022-10-26 00:00:00+00
stgallen		F		cardboard	2022-11-28 00:00:00+00
stgallen		G		cardboard	2022-12-20 00:00:00+00
stgallen		I		cardboard	2022-12-22 00:00:00+00
stgallen		A		cardboard	2022-12-23 00:00:00+00
stgallen		K		cardboard	2022-12-29 00:00:00+00
stgallen		E		cardboard	2023-01-16 00:00:00+00
stgallen		K		cardboard	2023-02-23 00:00:00+00
stgallen		I		cardboard	2023-03-16 00:00:00+00
stgallen		A		cardboard	2023-03-17 00:00:00+00
stgallen		E		cardboard	2023-04-11 00:00:00+00
stgallen		L Ost		cardboard	2023-04-12 00:00:00+00
stgallen		F		cardboard	2023-04-17 00:00:00+00
stgallen		H		cardboard	2023-05-16 00:00:00+00
stgallen		G		cardboard	2023-06-06 00:00:00+00
stgallen		C		cardboard	2023-06-07 00:00:00+00
stgallen		L Ost		cardboard	2023-06-07 00:00:00+00
stgallen		I		cardboard	2023-06-08 00:00:00+00
stgallen		L West		cardboard	2023-06-14 00:00:00+00
stgallen		K		waste	2022-07-01 00:00:00+00
stgallen		L Ost		waste	2022-07-01 00:00:00+00
stgallen		C		waste	2022-07-05 00:00:00+00
stgallen		F		waste	2022-07-06 00:00:00+00
stgallen		G		waste	2022-07-07 00:00:00+00
stgallen		C		waste	2022-07-19 00:00:00+00
stgallen		E		waste	2022-07-20 00:00:00+00
stgallen		H		waste	2022-07-21 00:00:00+00
stgallen		L Ost		waste	2022-07-22 00:00:00+00
stgallen		L West		waste	2022-07-29 00:00:00+00
stgallen		B		waste	2022-08-02 00:00:00+00
stgallen		G		waste	2022-08-04 00:00:00+00
stgallen		H		waste	2022-08-04 00:00:00+00
stgallen		A		waste	2022-08-08 00:00:00+00
stgallen		B		waste	2022-08-08 00:00:00+00
stgallen		E		waste	2022-08-10 00:00:00+00
stgallen		E		waste	2022-08-17 00:00:00+00
stgallen		B		waste	2022-08-22 00:00:00+00
stgallen		G		waste	2022-09-01 00:00:00+00
stgallen		H		waste	2022-09-01 00:00:00+00
stgallen		L West		waste	2022-09-02 00:00:00+00
stgallen		A		waste	2022-09-05 00:00:00+00
stgallen		B		waste	2022-09-05 00:00:00+00
stgallen		H		waste	2022-09-08 00:00:00+00
stgallen		I		waste	2022-09-09 00:00:00+00
stgallen		L West		waste	2022-09-09 00:00:00+00
stgallen		B		waste	2022-09-12 00:00:00+00
stgallen		L West		waste	2022-09-16 00:00:00+00
stgallen		D		waste	2022-09-20 00:00:00+00
stgallen		K		waste	2022-09-23 00:00:00+00
stgallen		A		waste	2022-09-26 00:00:00+00
stgallen		A		waste	2022-10-03 00:00:00+00
stgallen		B		waste	2022-10-03 00:00:00+00
stgallen		C		waste	2022-10-04 00:00:00+00
stgallen		D		waste	2022-10-04 00:00:00+00
stgallen		B		waste	2022-10-10 00:00:00+00
stgallen		H		waste	2022-10-27 00:00:00+00
stgallen		L Ost		waste	2022-10-28 00:00:00+00
stgallen		D		waste	2022-11-02 00:00:00+00
stgallen		L Ost		waste	2022-11-04 00:00:00+00
stgallen		A		waste	2022-11-07 00:00:00+00
stgallen		D		waste	2022-11-08 00:00:00+00
stgallen		C		waste	2022-11-15 00:00:00+00
stgallen		F		waste	2022-11-16 00:00:00+00
stgallen		B		waste	2022-11-21 00:00:00+00
stgallen		I		waste	2022-11-25 00:00:00+00
stgallen		K		waste	2022-12-02 00:00:00+00
stgallen		A		waste	2022-12-05 00:00:00+00
stgallen		L Ost		waste	2022-12-09 00:00:00+00
stgallen		D		waste	2022-12-13 00:00:00+00
stgallen		L Ost		waste	2022-12-16 00:00:00+00
stgallen		I		waste	2022-12-30 00:00:00+00
stgallen		D		waste	2023-01-03 00:00:00+00
stgallen		F		waste	2023-01-04 00:00:00+00
stgallen		A		waste	2023-01-09 00:00:00+00
stgallen		E		waste	2023-01-11 00:00:00+00
stgallen		H		waste	2023-01-12 00:00:00+00
stgallen		K		waste	2023-01-13 00:00:00+00
stgallen		L West		waste	2023-01-13 00:00:00+00
stgallen		D		waste	2023-01-17 00:00:00+00
stgallen		L Ost		waste	2023-01-27 00:00:00+00
stgallen		A		waste	2023-01-30 00:00:00+00
stgallen		G		waste	2023-02-09 00:00:00+00
stgallen		C		waste	2023-02-14 00:00:00+00
stgallen		D		waste	2023-02-14 00:00:00+00
stgallen		E		waste	2023-02-15 00:00:00+00
stgallen		G		waste	2023-02-16 00:00:00+00
stgallen		H		waste	2023-02-16 00:00:00+00
stgallen		L Ost		waste	2023-02-17 00:00:00+00
stgallen		F		waste	2023-03-01 00:00:00+00
stgallen		G		waste	2023-03-09 00:00:00+00
stgallen		L Ost		waste	2023-03-10 00:00:00+00
stgallen		B		waste	2023-03-13 00:00:00+00
stgallen		K		waste	2023-03-17 00:00:00+00
stgallen		A		waste	2023-03-20 00:00:00+00
stgallen		B		waste	2023-03-20 00:00:00+00
stgallen		C		waste	2023-03-21 00:00:00+00
stgallen		E		waste	2023-03-22 00:00:00+00
stgallen		F		waste	2023-03-22 00:00:00+00
stgallen		G		waste	2023-03-23 00:00:00+00
stgallen		I		waste	2023-03-24 00:00:00+00
stgallen		L West		waste	2023-03-24 00:00:00+00
stgallen		A		waste	2023-03-27 00:00:00+00
stgallen		F		waste	2023-03-29 00:00:00+00
stgallen		H		waste	2023-03-30 00:00:00+00
stgallen		A		waste	2023-04-03 00:00:00+00
stgallen		E		waste	2023-04-05 00:00:00+00
stgallen		K		waste	2023-04-06 00:00:00+00
stgallen		L Ost		waste	2023-04-06 00:00:00+00
stgallen		L West		waste	2023-04-06 00:00:00+00
stgallen		A		waste	2023-04-11 00:00:00+00
stgallen		C		waste	2023-04-11 00:00:00+00
stgallen		L West		waste	2023-04-14 00:00:00+00
stgallen		G		waste	2023-04-27 00:00:00+00
stgallen		H		waste	2023-04-27 00:00:00+00
stgallen		I		waste	2023-04-28 00:00:00+00
stgallen		D		waste	2023-05-02 00:00:00+00
stgallen		L Ost		waste	2023-05-05 00:00:00+00
stgallen		C		waste	2023-05-09 00:00:00+00
stgallen		D		waste	2023-05-09 00:00:00+00
stgallen		G		waste	2023-05-11 00:00:00+00
stgallen		L West		waste	2023-05-12 00:00:00+00
stgallen		D		waste	2023-05-16 00:00:00+00
stgallen		F		waste	2023-05-17 00:00:00+00
stgallen		H		waste	2023-05-19 00:00:00+00
stgallen		L Ost		waste	2023-05-19 00:00:00+00
stgallen		B		waste	2023-05-22 00:00:00+00
stgallen		H		waste	2023-05-25 00:00:00+00
stgallen		I		waste	2023-05-26 00:00:00+00
stgallen		L West		waste	2023-05-26 00:00:00+00
stgallen		D		waste	2023-05-30 00:00:00+00
stgallen		I		waste	2023-06-02 00:00:00+00
stgallen		L Ost		waste	2023-06-02 00:00:00+00
stgallen		G		waste	2023-06-08 00:00:00+00
stgallen		L Ost		waste	2023-06-09 00:00:00+00
stgallen		L West		waste	2023-06-09 00:00:00+00
stgallen		E		waste	2023-06-14 00:00:00+00
stgallen		L Ost		waste	2023-06-23 00:00:00+00
stgallen		B		waste	2023-06-26 00:00:00+00
stgallen		C		waste	2023-06-27 00:00:00+00
stgallen		E		waste	2023-06-28 00:00:00+00
stgallen		F		waste	2023-06-28 00:00:00+00
stgallen		L West		metal	2022-09-29 00:00:00+00
stgallen		B		metal	2022-09-30 00:00:00+00
stgallen		K		metal	2023-04-24 00:00:00+00
stgallen		D		metal	2023-04-27 00:00:00+00
stgallen		B		metal	2023-04-28 00:00:00+00
stgallen		B		paper	2022-07-01 00:00:00+00
stgallen		G		paper	2022-07-19 00:00:00+00
stgallen		C		paper	2022-07-20 00:00:00+00
stgallen		D		paper	2022-08-24 00:00:00+00
stgallen		G		paper	2022-10-11 00:00:00+00
stgallen		C		paper	2022-10-12 00:00:00+00
stgallen		D		paper	2022-10-19 00:00:00+00
stgallen		G		paper	2022-11-08 00:00:00+00
stgallen		F		paper	2022-11-14 00:00:00+00
stgallen		H		paper	2022-12-13 00:00:00+00
stgallen		B		paper	2022-12-16 00:00:00+00
stgallen		E		paper	2023-01-02 00:00:00+00
stgallen		L Ost		paper	2023-01-04 00:00:00+00
stgallen		E		paper	2023-01-30 00:00:00+00
stgallen		G		paper	2023-01-31 00:00:00+00
stgallen		A		paper	2023-03-03 00:00:00+00
stgallen		B		paper	2023-03-10 00:00:00+00
stgallen		H		paper	2023-04-04 00:00:00+00
stgallen		B		paper	2023-04-06 00:00:00+00
stgallen		K		paper	2023-04-06 00:00:00+00
stgallen		L Ost		paper	2023-04-26 00:00:00+00
stgallen		I		paper	2023-04-27 00:00:00+00
stgallen		E		paper	2023-05-22 00:00:00+00
stgallen		H		paper	2023-05-30 00:00:00+00
stgallen		L West		paper	2023-05-31 00:00:00+00
stgallen		A		paper	2023-06-23 00:00:00+00
stgallen		E		waste	2020-09-23 00:00:00+00
stgallen		K		waste	2020-08-07 00:00:00+00
stgallen		K		waste	2020-08-21 00:00:00+00
stgallen		K		organic	2020-10-02 00:00:00+00
stgallen		K		waste	2020-10-16 00:00:00+00
stgallen		K		organic	2020-10-30 00:00:00+00
stgallen		K		organic	2021-05-07 00:00:00+00
stgallen		D		paper	2020-07-01 00:00:00+00
stgallen		D		paper	2020-09-23 00:00:00+00
stgallen		D		waste	2021-06-29 00:00:00+00
stgallen		A		organic	2020-11-16 00:00:00+00
stgallen		A		organic	2020-11-23 00:00:00+00
stgallen		A		waste	2021-02-01 00:00:00+00
stgallen		A		waste	2021-04-26 00:00:00+00
stgallen		F		waste	2020-08-05 00:00:00+00
stgallen		F		organic	2020-08-05 00:00:00+00
stgallen		F		paper	2021-05-31 00:00:00+00
stgallen		F		waste	2020-11-11 00:00:00+00
stgallen		F		waste	2021-03-10 00:00:00+00
stgallen		L West		organic	2020-07-10 00:00:00+00
stgallen		L West		organic	2020-08-21 00:00:00+00
stgallen		L West		waste	2020-10-16 00:00:00+00
stgallen		L West		waste	2021-04-30 00:00:00+00
stgallen		L West		waste	2021-05-07 00:00:00+00
stgallen		C		cardboard	2020-07-08 00:00:00+00
stgallen		C		waste	2020-09-08 00:00:00+00
stgallen		C		organic	2021-01-19 00:00:00+00
stgallen		B		organic	2020-07-13 00:00:00+00
stgallen		B		waste	2020-08-24 00:00:00+00
stgallen		B		waste	2020-08-31 00:00:00+00
stgallen		B		paper	2021-04-09 00:00:00+00
stgallen		B		organic	2020-09-21 00:00:00+00
stgallen		B		waste	2020-11-09 00:00:00+00
stgallen		B		organic	2021-01-11 00:00:00+00
stgallen		B		organic	2021-03-29 00:00:00+00
stgallen		B		waste	2021-05-10 00:00:00+00
stgallen		B		organic	2021-05-17 00:00:00+00
stgallen		G		waste	2020-07-02 00:00:00+00
stgallen		G		organic	2020-11-05 00:00:00+00
stgallen		G		waste	2020-12-10 00:00:00+00
stgallen		G		organic	2021-03-18 00:00:00+00
stgallen		G		organic	2021-04-08 00:00:00+00
stgallen		G		waste	2021-04-22 00:00:00+00
stgallen		H		cardboard	2021-07-13 00:00:00+00
stgallen		H		waste	2021-10-07 00:00:00+00
stgallen		H		organic	2021-10-21 00:00:00+00
stgallen		H		waste	2022-01-06 00:00:00+00
stgallen		H		organic	2022-03-31 00:00:00+00
stgallen		H		organic	2022-04-14 00:00:00+00
stgallen		H		organic	2022-04-28 00:00:00+00
stgallen		H		waste	2022-05-19 00:00:00+00
stgallen		D		organic	2021-09-07 00:00:00+00
stgallen		D		waste	2021-11-16 00:00:00+00
stgallen		D		organic	2022-04-19 00:00:00+00
stgallen		D		organic	2022-06-28 00:00:00+00
stgallen		A		organic	2021-08-23 00:00:00+00
stgallen		A		waste	2021-12-20 00:00:00+00
stgallen		A		organic	2022-01-31 00:00:00+00
stgallen		A		waste	2022-02-28 00:00:00+00
stgallen		A		organic	2022-03-07 00:00:00+00
stgallen		A		organic	2022-03-21 00:00:00+00
stgallen		A		organic	2022-04-11 00:00:00+00
stgallen		B		organic	2021-08-09 00:00:00+00
stgallen		B		paper	2022-04-08 00:00:00+00
stgallen		B		waste	2021-09-20 00:00:00+00
stgallen		B		organic	2022-03-07 00:00:00+00
stgallen		B		waste	2022-03-28 00:00:00+00
stgallen		G		cardboard	2021-09-28 00:00:00+00
stgallen		G		paper	2022-01-04 00:00:00+00
stgallen		G		waste	2021-09-16 00:00:00+00
stgallen		G		waste	2021-10-14 00:00:00+00
stgallen		F		paper	2021-09-20 00:00:00+00
stgallen		F		cardboard	2021-12-27 00:00:00+00
stgallen		F		cardboard	2022-01-24 00:00:00+00
stgallen		F		paper	2022-04-04 00:00:00+00
stgallen		F		organic	2021-12-08 00:00:00+00
stgallen		F		organic	2022-01-12 00:00:00+00
stgallen		F		organic	2022-02-16 00:00:00+00
stgallen		I		waste	2021-10-15 00:00:00+00
stgallen		I		organic	2021-11-19 00:00:00+00
stgallen		I		organic	2021-12-24 00:00:00+00
stgallen		I		waste	2022-05-20 00:00:00+00
stgallen		L West		cardboard	2021-12-29 00:00:00+00
stgallen		L West		cardboard	2022-06-15 00:00:00+00
stgallen		L West		organic	2021-10-15 00:00:00+00
stgallen		L West		waste	2021-11-05 00:00:00+00
stgallen		L West		waste	2021-11-26 00:00:00+00
stgallen		L West		waste	2021-12-10 00:00:00+00
stgallen		L West		waste	2022-01-28 00:00:00+00
stgallen		L Ost		organic	2021-07-16 00:00:00+00
stgallen		L Ost		waste	2021-08-13 00:00:00+00
stgallen		L Ost		cardboard	2022-03-16 00:00:00+00
stgallen		L Ost		organic	2021-12-31 00:00:00+00
stgallen		L Ost		waste	2022-04-14 00:00:00+00
stgallen		L Ost		waste	2022-04-22 00:00:00+00
stgallen		E		cardboard	2022-03-14 00:00:00+00
stgallen		E		waste	2021-09-22 00:00:00+00
stgallen		E		organic	2021-09-29 00:00:00+00
stgallen		E		waste	2021-12-01 00:00:00+00
stgallen		E		waste	2022-01-26 00:00:00+00
stgallen		I		cardboard	2021-01-21 00:00:00+00
stgallen		I		waste	2020-11-06 00:00:00+00
stgallen		I		organic	2021-01-15 00:00:00+00
stgallen		I		waste	2021-03-05 00:00:00+00
stgallen		I		waste	2021-04-30 00:00:00+00
stgallen		I		organic	2021-05-28 00:00:00+00
stgallen		H		paper	2020-09-22 00:00:00+00
stgallen		H		cardboard	2020-11-03 00:00:00+00
stgallen		H		waste	2020-09-10 00:00:00+00
stgallen		H		organic	2020-10-15 00:00:00+00
stgallen		H		organic	2021-03-04 00:00:00+00
stgallen		H		organic	2021-04-15 00:00:00+00
stgallen		H		organic	2021-06-03 00:00:00+00
stgallen		H		waste	2021-06-24 00:00:00+00
stgallen		L Ost		paper	2020-11-11 00:00:00+00
stgallen		K		waste	2021-07-02 00:00:00+00
stgallen		K		cardboard	2021-12-30 00:00:00+00
stgallen		K		paper	2022-02-10 00:00:00+00
stgallen		K		waste	2022-02-04 00:00:00+00
stgallen		K		organic	2022-03-11 00:00:00+00
stgallen		K		waste	2022-04-22 00:00:00+00
stgallen		I		cardboard	2020-12-24 00:00:00+00
stgallen		I		organic	2020-10-09 00:00:00+00
stgallen		I		organic	2020-11-06 00:00:00+00
stgallen		I		organic	2020-11-27 00:00:00+00
stgallen		I		waste	2021-02-19 00:00:00+00
stgallen		I		organic	2021-03-05 00:00:00+00
stgallen		I		waste	2021-03-26 00:00:00+00
stgallen		I		waste	2021-04-16 00:00:00+00
stgallen		I		organic	2021-05-21 00:00:00+00
stgallen		I		waste	2021-06-25 00:00:00+00
stgallen		A		waste	2021-08-09 00:00:00+00
stgallen		A		cardboard	2022-02-18 00:00:00+00
stgallen		A		organic	2021-11-03 00:00:00+00
stgallen		A		organic	2022-03-28 00:00:00+00
stgallen		A		waste	2022-04-19 00:00:00+00
stgallen		A		organic	2022-06-13 00:00:00+00
stgallen		A		waste	2022-06-27 00:00:00+00
stgallen		H		paper	2021-02-09 00:00:00+00
stgallen		H		cardboard	2021-06-15 00:00:00+00
stgallen		H		organic	2021-04-08 00:00:00+00
stgallen		H		organic	2021-06-10 00:00:00+00
stgallen		K		paper	2021-11-18 00:00:00+00
stgallen		K		organic	2021-12-03 00:00:00+00
stgallen		K		waste	2022-02-18 00:00:00+00
stgallen		K		waste	2022-03-25 00:00:00+00
stgallen		K		organic	2022-04-01 00:00:00+00
stgallen		K		waste	2020-07-24 00:00:00+00
stgallen		K		organic	2020-08-14 00:00:00+00
stgallen		K		organic	2020-08-28 00:00:00+00
stgallen		K		waste	2021-01-29 00:00:00+00
stgallen		K		waste	2021-02-19 00:00:00+00
stgallen		K		waste	2021-03-26 00:00:00+00
stgallen		K		waste	2021-04-01 00:00:00+00
stgallen		K		waste	2021-06-18 00:00:00+00
stgallen		L Ost		organic	2020-09-04 00:00:00+00
stgallen		L Ost		organic	2020-09-25 00:00:00+00
stgallen		L Ost		waste	2020-11-20 00:00:00+00
stgallen		L Ost		waste	2020-12-24 00:00:00+00
stgallen		L Ost		waste	2021-02-19 00:00:00+00
stgallen		L Ost		organic	2021-03-19 00:00:00+00
stgallen		L Ost		organic	2021-06-11 00:00:00+00
stgallen		L Ost		waste	2021-05-28 00:00:00+00
stgallen		F		cardboard	2020-07-13 00:00:00+00
stgallen		F		cardboard	2021-01-25 00:00:00+00
stgallen		F		waste	2020-10-28 00:00:00+00
stgallen		F		waste	2021-01-13 00:00:00+00
stgallen		F		organic	2021-06-09 00:00:00+00
stgallen		C		paper	2021-06-23 00:00:00+00
stgallen		C		organic	2020-10-06 00:00:00+00
stgallen		C		organic	2020-10-13 00:00:00+00
stgallen		C		waste	2021-02-16 00:00:00+00
stgallen		C		waste	2021-04-06 00:00:00+00
stgallen		C		waste	2021-04-20 00:00:00+00
stgallen		H		waste	2021-11-04 00:00:00+00
stgallen		H		organic	2022-04-07 00:00:00+00
stgallen		C		paper	2022-03-02 00:00:00+00
stgallen		C		waste	2021-10-05 00:00:00+00
stgallen		C		waste	2021-12-21 00:00:00+00
stgallen		C		organic	2022-02-15 00:00:00+00
stgallen		C		waste	2022-03-01 00:00:00+00
stgallen		C		organic	2022-05-03 00:00:00+00
stgallen		C		waste	2022-05-24 00:00:00+00
stgallen		B		cardboard	2022-04-22 00:00:00+00
stgallen		B		organic	2021-11-29 00:00:00+00
stgallen		B		organic	2022-01-17 00:00:00+00
stgallen		B		organic	2022-05-09 00:00:00+00
stgallen		B		organic	2022-05-23 00:00:00+00
stgallen		B		waste	2022-06-07 00:00:00+00
stgallen		D		organic	2021-07-27 00:00:00+00
stgallen		D		organic	2021-08-10 00:00:00+00
stgallen		D		organic	2021-11-02 00:00:00+00
stgallen		D		waste	2022-05-17 00:00:00+00
stgallen		F		cardboard	2021-11-29 00:00:00+00
stgallen		F		waste	2021-10-13 00:00:00+00
stgallen		F		organic	2022-02-23 00:00:00+00
stgallen		F		waste	2022-03-23 00:00:00+00
stgallen		I		waste	2021-09-10 00:00:00+00
stgallen		I		paper	2022-05-27 00:00:00+00
stgallen		I		waste	2021-12-24 00:00:00+00
stgallen		I		organic	2022-01-28 00:00:00+00
stgallen		I		organic	2022-02-18 00:00:00+00
stgallen		G		waste	2021-07-29 00:00:00+00
stgallen		G		cardboard	2021-11-23 00:00:00+00
stgallen		G		cardboard	2022-03-15 00:00:00+00
stgallen		G		waste	2022-01-20 00:00:00+00
stgallen		G		organic	2022-02-03 00:00:00+00
stgallen		G		waste	2022-03-03 00:00:00+00
stgallen		G		waste	2022-06-30 00:00:00+00
stgallen		E		paper	2022-04-25 00:00:00+00
stgallen		E		cardboard	2022-06-07 00:00:00+00
stgallen		E		organic	2021-12-08 00:00:00+00
stgallen		L Ost		waste	2021-09-10 00:00:00+00
stgallen		L Ost		paper	2022-05-25 00:00:00+00
stgallen		L Ost		paper	2022-06-22 00:00:00+00
stgallen		L Ost		waste	2021-10-01 00:00:00+00
stgallen		L Ost		organic	2022-01-28 00:00:00+00
stgallen		L Ost		organic	2022-02-11 00:00:00+00
stgallen		L West		cardboard	2021-07-14 00:00:00+00
stgallen		L West		waste	2022-01-21 00:00:00+00
stgallen		L West		waste	2022-02-11 00:00:00+00
stgallen		A		cardboard	2020-08-07 00:00:00+00
stgallen		A		organic	2020-07-20 00:00:00+00
stgallen		A		cardboard	2020-09-04 00:00:00+00
stgallen		A		cardboard	2021-02-19 00:00:00+00
stgallen		A		waste	2020-09-21 00:00:00+00
stgallen		A		cardboard	2021-05-14 00:00:00+00
stgallen		A		waste	2020-10-19 00:00:00+00
stgallen		A		organic	2020-10-19 00:00:00+00
stgallen		A		waste	2020-12-14 00:00:00+00
stgallen		A		waste	2021-05-31 00:00:00+00
stgallen		E		paper	2021-01-04 00:00:00+00
stgallen		E		organic	2020-09-30 00:00:00+00
stgallen		E		organic	2021-06-02 00:00:00+00
stgallen		E		organic	2021-06-23 00:00:00+00
stgallen		D		paper	2020-10-21 00:00:00+00
stgallen		D		paper	2021-02-10 00:00:00+00
stgallen		D		waste	2021-03-09 00:00:00+00
stgallen		D		waste	2021-03-23 00:00:00+00
stgallen		D		organic	2021-03-23 00:00:00+00
stgallen		L West		metal	2020-09-24 00:00:00+00
stgallen		L West		paper	2021-01-13 00:00:00+00
stgallen		L West		organic	2020-09-11 00:00:00+00
stgallen		L West		waste	2020-10-02 00:00:00+00
stgallen		L West		waste	2021-05-21 00:00:00+00
stgallen		G		organic	2020-07-02 00:00:00+00
stgallen		G		cardboard	2020-11-24 00:00:00+00
stgallen		G		waste	2020-09-03 00:00:00+00
stgallen		G		waste	2021-03-25 00:00:00+00
stgallen		G		waste	2021-05-27 00:00:00+00
stgallen		B		cardboard	2020-08-14 00:00:00+00
stgallen		B		cardboard	2020-12-04 00:00:00+00
stgallen		B		organic	2020-10-12 00:00:00+00
stgallen		B		waste	2021-05-03 00:00:00+00
stgallen		B		organic	2021-06-28 00:00:00+00
stgallen		B		waste	2021-06-28 00:00:00+00
stgallen		D		paper	2022-04-06 00:00:00+00
stgallen		D		organic	2021-09-21 00:00:00+00
stgallen		D		organic	2022-03-08 00:00:00+00
stgallen		D		organic	2022-05-10 00:00:00+00
stgallen		D		organic	2022-05-24 00:00:00+00
stgallen		D		waste	2022-06-14 00:00:00+00
stgallen		H		organic	2021-07-22 00:00:00+00
stgallen		H		organic	2021-07-29 00:00:00+00
stgallen		H		cardboard	2021-11-30 00:00:00+00
stgallen		H		waste	2021-08-12 00:00:00+00
stgallen		H		organic	2021-09-23 00:00:00+00
stgallen		H		waste	2021-10-14 00:00:00+00
stgallen		H		organic	2021-12-02 00:00:00+00
stgallen		H		organic	2022-01-20 00:00:00+00
stgallen		H		waste	2022-03-17 00:00:00+00
stgallen		L West		paper	2021-07-28 00:00:00+00
stgallen		L West		metal	2021-09-30 00:00:00+00
stgallen		L West		waste	2021-07-30 00:00:00+00
stgallen		L West		waste	2021-08-13 00:00:00+00
stgallen		L West		waste	2021-10-15 00:00:00+00
stgallen		L West		waste	2022-02-04 00:00:00+00
stgallen		L West		organic	2022-02-04 00:00:00+00
stgallen		L West		organic	2022-02-11 00:00:00+00
stgallen		L West		waste	2022-03-11 00:00:00+00
stgallen		L West		organic	2022-03-25 00:00:00+00
stgallen		L West		organic	2022-04-01 00:00:00+00
stgallen		L West		waste	2022-04-14 00:00:00+00
stgallen		L West		organic	2022-04-22 00:00:00+00
stgallen		I		waste	2021-08-06 00:00:00+00
stgallen		I		waste	2021-10-01 00:00:00+00
stgallen		I		waste	2021-11-19 00:00:00+00
stgallen		I		organic	2021-12-31 00:00:00+00
stgallen		I		organic	2022-02-25 00:00:00+00
stgallen		I		waste	2022-03-25 00:00:00+00
stgallen		I		organic	2022-04-08 00:00:00+00
stgallen		F		organic	2021-08-25 00:00:00+00
stgallen		F		organic	2021-12-29 00:00:00+00
stgallen		F		organic	2022-05-04 00:00:00+00
stgallen		E		waste	2021-07-28 00:00:00+00
stgallen		L Ost		waste	2021-08-06 00:00:00+00
stgallen		L Ost		organic	2021-08-27 00:00:00+00
stgallen		L Ost		organic	2021-09-03 00:00:00+00
stgallen		L Ost		organic	2021-11-12 00:00:00+00
stgallen		L Ost		organic	2021-12-10 00:00:00+00
stgallen		L Ost		waste	2022-02-18 00:00:00+00
stgallen		L Ost		organic	2022-04-13 00:00:00+00
stgallen		L Ost		organic	2022-05-13 00:00:00+00
stgallen		G		organic	2021-10-14 00:00:00+00
stgallen		G		organic	2022-02-24 00:00:00+00
stgallen		G		waste	2022-04-21 00:00:00+00
stgallen		G		organic	2022-05-12 00:00:00+00
stgallen		B		paper	2021-09-24 00:00:00+00
stgallen		B		waste	2021-08-23 00:00:00+00
stgallen		B		organic	2021-11-08 00:00:00+00
stgallen		B		waste	2021-12-13 00:00:00+00
stgallen		B		organic	2022-03-21 00:00:00+00
stgallen		C		waste	2021-07-06 00:00:00+00
stgallen		C		paper	2021-12-08 00:00:00+00
stgallen		C		cardboard	2021-11-24 00:00:00+00
stgallen		C		paper	2022-02-02 00:00:00+00
stgallen		C		waste	2021-08-31 00:00:00+00
stgallen		C		cardboard	2022-03-16 00:00:00+00
stgallen		C		paper	2022-04-27 00:00:00+00
stgallen		C		organic	2022-01-18 00:00:00+00
stgallen		C		waste	2022-01-25 00:00:00+00
stgallen		C		organic	2022-01-25 00:00:00+00
stgallen		C		organic	2022-03-22 00:00:00+00
stgallen		C		waste	2022-04-05 00:00:00+00
stgallen		A		cardboard	2021-10-29 00:00:00+00
stgallen		A		waste	2021-11-02 00:00:00+00
stgallen		A		waste	2022-02-21 00:00:00+00
stgallen		A		waste	2022-06-20 00:00:00+00
stgallen		A		organic	2022-06-20 00:00:00+00
stgallen		K		organic	2021-07-30 00:00:00+00
stgallen		K		paper	2021-12-16 00:00:00+00
stgallen		K		organic	2022-06-24 00:00:00+00
stgallen		H		paper	2020-07-28 00:00:00+00
stgallen		H		waste	2020-11-26 00:00:00+00
stgallen		H		organic	2021-05-06 00:00:00+00
stgallen		I		organic	2020-07-10 00:00:00+00
stgallen		I		organic	2020-10-16 00:00:00+00
stgallen		I		waste	2020-10-30 00:00:00+00
stgallen		I		waste	2020-12-18 00:00:00+00
stgallen		I		waste	2021-01-29 00:00:00+00
stgallen		L Ost		metal	2021-04-29 00:00:00+00
stgallen		L Ost		organic	2020-08-21 00:00:00+00
stgallen		L Ost		waste	2020-10-16 00:00:00+00
stgallen		L Ost		waste	2021-03-12 00:00:00+00
stgallen		L Ost		organic	2021-04-23 00:00:00+00
stgallen		C		waste	2020-07-14 00:00:00+00
stgallen		C		waste	2020-08-18 00:00:00+00
stgallen		C		cardboard	2020-12-23 00:00:00+00
stgallen		C		waste	2020-09-22 00:00:00+00
stgallen		C		waste	2020-10-27 00:00:00+00
stgallen		C		organic	2020-10-27 00:00:00+00
stgallen		K		waste	2020-07-03 00:00:00+00
stgallen		K		cardboard	2021-05-20 00:00:00+00
stgallen		K		waste	2020-12-18 00:00:00+00
stgallen		F		metal	2021-04-27 00:00:00+00
stgallen		F		paper	2020-10-19 00:00:00+00
stgallen		F		waste	2020-08-19 00:00:00+00
stgallen		F		waste	2020-09-30 00:00:00+00
stgallen		F		organic	2020-12-02 00:00:00+00
stgallen		F		organic	2021-02-24 00:00:00+00
stgallen		F		organic	2021-03-17 00:00:00+00
stgallen		F		waste	2021-06-30 00:00:00+00
stgallen		D		waste	2020-07-07 00:00:00+00
stgallen		D		organic	2020-10-06 00:00:00+00
stgallen		A		waste	2020-07-06 00:00:00+00
stgallen		A		waste	2020-07-13 00:00:00+00
stgallen		A		waste	2020-07-20 00:00:00+00
stgallen		A		paper	2020-09-18 00:00:00+00
stgallen		A		paper	2020-10-16 00:00:00+00
stgallen		A		cardboard	2020-10-02 00:00:00+00
stgallen		A		paper	2021-01-08 00:00:00+00
stgallen		A		organic	2020-09-21 00:00:00+00
stgallen		A		waste	2021-05-10 00:00:00+00
stgallen		L West		paper	2020-09-23 00:00:00+00
stgallen		L West		cardboard	2020-11-04 00:00:00+00
stgallen		L West		waste	2020-12-24 00:00:00+00
stgallen		L West		organic	2021-06-25 00:00:00+00
stgallen		E		waste	2020-10-14 00:00:00+00
stgallen		E		organic	2021-01-20 00:00:00+00
stgallen		E		organic	2021-02-10 00:00:00+00
stgallen		E		organic	2021-05-05 00:00:00+00
stgallen		E		organic	2021-06-09 00:00:00+00
stgallen		G		paper	2021-02-02 00:00:00+00
stgallen		G		organic	2020-10-15 00:00:00+00
stgallen		G		waste	2020-11-19 00:00:00+00
stgallen		G		waste	2020-12-24 00:00:00+00
stgallen		G		waste	2020-12-31 00:00:00+00
stgallen		G		waste	2021-05-20 00:00:00+00
stgallen		G		waste	2021-06-24 00:00:00+00
stgallen		B		cardboard	2020-10-09 00:00:00+00
stgallen		B		paper	2021-06-04 00:00:00+00
stgallen		B		organic	2020-11-09 00:00:00+00
stgallen		B		waste	2021-03-29 00:00:00+00
stgallen		B		organic	2021-06-21 00:00:00+00
stgallen		D		paper	2021-07-28 00:00:00+00
stgallen		D		cardboard	2022-02-23 00:00:00+00
stgallen		D		waste	2022-02-08 00:00:00+00
stgallen		D		waste	2022-04-05 00:00:00+00
stgallen		I		waste	2020-07-03 00:00:00+00
stgallen		I		waste	2020-10-16 00:00:00+00
stgallen		I		organic	2020-11-13 00:00:00+00
stgallen		I		waste	2020-11-27 00:00:00+00
stgallen		H		waste	2020-07-23 00:00:00+00
stgallen		H		organic	2020-09-10 00:00:00+00
stgallen		H		waste	2020-11-12 00:00:00+00
stgallen		H		waste	2020-12-03 00:00:00+00
stgallen		H		organic	2020-12-10 00:00:00+00
stgallen		H		waste	2021-01-21 00:00:00+00
stgallen		H		waste	2021-06-17 00:00:00+00
stgallen		A		paper	2021-12-10 00:00:00+00
stgallen		A		organic	2021-09-06 00:00:00+00
stgallen		A		waste	2021-11-08 00:00:00+00
stgallen		A		organic	2022-01-10 00:00:00+00
stgallen		A		organic	2022-01-24 00:00:00+00
stgallen		A		organic	2022-04-25 00:00:00+00
stgallen		A		waste	2022-05-02 00:00:00+00
stgallen		L Ost		paper	2020-12-09 00:00:00+00
stgallen		L Ost		organic	2020-11-06 00:00:00+00
stgallen		L Ost		organic	2021-03-26 00:00:00+00
stgallen		L Ost		waste	2021-04-23 00:00:00+00
stgallen		L Ost		organic	2021-06-18 00:00:00+00
stgallen		K		cardboard	2022-01-27 00:00:00+00
stgallen		K		organic	2021-08-27 00:00:00+00
stgallen		K		organic	2022-02-04 00:00:00+00
stgallen		A		organic	2020-07-06 00:00:00+00
stgallen		A		cardboard	2020-11-27 00:00:00+00
stgallen		A		paper	2021-03-05 00:00:00+00
stgallen		A		organic	2021-02-15 00:00:00+00
stgallen		E		organic	2020-07-01 00:00:00+00
stgallen		E		paper	2021-02-01 00:00:00+00
stgallen		E		paper	2021-03-01 00:00:00+00
stgallen		E		organic	2020-10-21 00:00:00+00
stgallen		E		organic	2021-03-31 00:00:00+00
stgallen		E		waste	2021-04-07 00:00:00+00
stgallen		E		waste	2021-05-26 00:00:00+00
stgallen		E		waste	2021-06-23 00:00:00+00
stgallen		D		paper	2021-03-10 00:00:00+00
stgallen		D		waste	2020-10-13 00:00:00+00
stgallen		D		organic	2020-10-20 00:00:00+00
stgallen		D		organic	2020-12-01 00:00:00+00
stgallen		D		organic	2021-01-05 00:00:00+00
stgallen		D		waste	2021-01-19 00:00:00+00
stgallen		L West		paper	2020-08-26 00:00:00+00
stgallen		L West		paper	2021-06-02 00:00:00+00
stgallen		L West		organic	2020-11-13 00:00:00+00
stgallen		L West		organic	2021-04-30 00:00:00+00
stgallen		I		cardboard	2021-12-23 00:00:00+00
stgallen		I		organic	2021-09-24 00:00:00+00
stgallen		I		waste	2021-10-08 00:00:00+00
stgallen		I		organic	2021-10-08 00:00:00+00
stgallen		I		organic	2022-01-14 00:00:00+00
stgallen		I		waste	2022-02-18 00:00:00+00
stgallen		I		organic	2022-03-25 00:00:00+00
stgallen		I		organic	2022-05-13 00:00:00+00
stgallen		H		organic	2021-08-05 00:00:00+00
stgallen		H		paper	2021-12-14 00:00:00+00
stgallen		H		cardboard	2022-04-19 00:00:00+00
stgallen		H		waste	2021-09-30 00:00:00+00
stgallen		H		organic	2021-11-11 00:00:00+00
stgallen		H		waste	2021-12-09 00:00:00+00
stgallen		H		organic	2021-12-16 00:00:00+00
stgallen		H		waste	2022-01-27 00:00:00+00
stgallen		H		organic	2022-01-27 00:00:00+00
stgallen		H		waste	2022-02-17 00:00:00+00
stgallen		H		waste	2022-03-10 00:00:00+00
stgallen		H		organic	2022-03-10 00:00:00+00
stgallen		H		organic	2022-06-16 00:00:00+00
stgallen		L Ost		cardboard	2022-04-13 00:00:00+00
stgallen		L Ost		waste	2021-10-08 00:00:00+00
stgallen		L Ost		organic	2022-06-17 00:00:00+00
stgallen		L West		organic	2021-08-20 00:00:00+00
stgallen		L West		organic	2021-09-17 00:00:00+00
stgallen		L West		organic	2021-10-01 00:00:00+00
stgallen		L West		organic	2021-12-24 00:00:00+00
stgallen		L West		waste	2022-03-25 00:00:00+00
stgallen		E		waste	2021-08-04 00:00:00+00
stgallen		E		cardboard	2021-11-22 00:00:00+00
stgallen		E		organic	2021-12-22 00:00:00+00
stgallen		E		waste	2022-01-05 00:00:00+00
stgallen		G		cardboard	2021-01-19 00:00:00+00
stgallen		G		organic	2020-10-01 00:00:00+00
stgallen		B		organic	2020-08-03 00:00:00+00
stgallen		B		cardboard	2021-06-18 00:00:00+00
stgallen		B		waste	2021-03-22 00:00:00+00
stgallen		B		organic	2021-05-31 00:00:00+00
stgallen		F		waste	2021-07-14 00:00:00+00
stgallen		F		waste	2021-09-01 00:00:00+00
stgallen		F		organic	2022-04-13 00:00:00+00
stgallen		F		organic	2022-05-25 00:00:00+00
stgallen		C		cardboard	2021-12-22 00:00:00+00
stgallen		C		paper	2022-05-25 00:00:00+00
stgallen		C		organic	2021-10-26 00:00:00+00
stgallen		C		waste	2022-06-14 00:00:00+00
stgallen		C		organic	2022-06-28 00:00:00+00
stgallen		G		cardboard	2021-08-03 00:00:00+00
stgallen		G		paper	2021-10-12 00:00:00+00
stgallen		G		waste	2021-12-09 00:00:00+00
stgallen		G		organic	2022-03-10 00:00:00+00
stgallen		G		organic	2022-05-19 00:00:00+00
stgallen		G		waste	2022-06-02 00:00:00+00
stgallen		B		waste	2021-09-06 00:00:00+00
stgallen		B		organic	2021-09-13 00:00:00+00
stgallen		B		waste	2021-10-25 00:00:00+00
stgallen		B		waste	2022-01-31 00:00:00+00
stgallen		B		organic	2022-04-04 00:00:00+00
stgallen		B		waste	2022-05-02 00:00:00+00
stgallen		K		metal	2021-04-26 00:00:00+00
stgallen		K		organic	2020-07-17 00:00:00+00
stgallen		K		paper	2021-02-11 00:00:00+00
stgallen		K		paper	2021-06-03 00:00:00+00
stgallen		K		organic	2020-11-20 00:00:00+00
stgallen		K		organic	2020-12-11 00:00:00+00
stgallen		K		waste	2021-02-26 00:00:00+00
stgallen		K		organic	2021-03-26 00:00:00+00
stgallen		K		waste	2021-06-25 00:00:00+00
stgallen		C		organic	2020-09-29 00:00:00+00
stgallen		C		cardboard	2021-06-09 00:00:00+00
stgallen		C		organic	2020-12-01 00:00:00+00
stgallen		C		waste	2021-02-23 00:00:00+00
stgallen		C		organic	2021-03-02 00:00:00+00
stgallen		C		organic	2021-04-20 00:00:00+00
stgallen		F		waste	2020-07-08 00:00:00+00
stgallen		F		paper	2020-09-21 00:00:00+00
stgallen		F		waste	2020-08-12 00:00:00+00
stgallen		F		paper	2021-05-03 00:00:00+00
stgallen		F		organic	2020-12-09 00:00:00+00
stgallen		F		organic	2021-04-21 00:00:00+00
stgallen		K		cardboard	2020-07-16 00:00:00+00
stgallen		K		organic	2020-07-10 00:00:00+00
stgallen		K		organic	2020-08-07 00:00:00+00
stgallen		K		cardboard	2021-06-17 00:00:00+00
stgallen		K		waste	2020-10-30 00:00:00+00
stgallen		K		organic	2020-12-04 00:00:00+00
stgallen		K		organic	2021-02-05 00:00:00+00
stgallen		K		organic	2021-04-09 00:00:00+00
stgallen		D		cardboard	2020-12-02 00:00:00+00
stgallen		D		cardboard	2021-05-19 00:00:00+00
stgallen		D		waste	2020-11-17 00:00:00+00
stgallen		D		waste	2021-03-30 00:00:00+00
stgallen		D		waste	2021-05-25 00:00:00+00
stgallen		C		waste	2020-07-28 00:00:00+00
stgallen		C		waste	2020-11-03 00:00:00+00
stgallen		C		organic	2020-11-17 00:00:00+00
stgallen		C		waste	2020-12-08 00:00:00+00
stgallen		C		waste	2021-02-02 00:00:00+00
stgallen		C		organic	2021-02-02 00:00:00+00
stgallen		C		organic	2021-06-08 00:00:00+00
stgallen		C		waste	2021-06-15 00:00:00+00
stgallen		F		cardboard	2020-09-07 00:00:00+00
stgallen		F		paper	2020-12-14 00:00:00+00
stgallen		F		organic	2020-08-19 00:00:00+00
stgallen		F		waste	2020-09-09 00:00:00+00
stgallen		F		waste	2020-09-16 00:00:00+00
stgallen		F		organic	2021-02-10 00:00:00+00
stgallen		F		waste	2021-04-21 00:00:00+00
stgallen		F		waste	2021-05-12 00:00:00+00
stgallen		F		organic	2021-06-16 00:00:00+00
stgallen		E		waste	2020-07-29 00:00:00+00
stgallen		E		cardboard	2020-11-23 00:00:00+00
stgallen		E		organic	2020-08-26 00:00:00+00
stgallen		E		waste	2021-01-06 00:00:00+00
stgallen		E		waste	2021-01-13 00:00:00+00
stgallen		E		waste	2021-02-03 00:00:00+00
stgallen		E		organic	2021-02-24 00:00:00+00
stgallen		A		paper	2021-06-25 00:00:00+00
stgallen		A		waste	2021-05-03 00:00:00+00
stgallen		G		cardboard	2020-10-27 00:00:00+00
stgallen		G		cardboard	2020-12-22 00:00:00+00
stgallen		G		waste	2020-10-22 00:00:00+00
stgallen		G		waste	2020-10-29 00:00:00+00
stgallen		G		waste	2021-03-04 00:00:00+00
stgallen		G		organic	2021-04-15 00:00:00+00
stgallen		G		waste	2021-05-14 00:00:00+00
stgallen		L West		cardboard	2020-08-12 00:00:00+00
stgallen		L West		cardboard	2021-02-24 00:00:00+00
stgallen		L West		waste	2021-06-04 00:00:00+00
stgallen		I		organic	2020-07-17 00:00:00+00
stgallen		I		paper	2020-11-12 00:00:00+00
stgallen		I		organic	2020-08-14 00:00:00+00
stgallen		I		cardboard	2021-02-18 00:00:00+00
stgallen		I		cardboard	2021-03-18 00:00:00+00
stgallen		I		organic	2020-10-02 00:00:00+00
stgallen		I		waste	2020-11-20 00:00:00+00
stgallen		H		metal	2021-04-28 00:00:00+00
stgallen		H		cardboard	2020-12-29 00:00:00+00
stgallen		H		waste	2020-11-05 00:00:00+00
stgallen		H		organic	2021-01-28 00:00:00+00
stgallen		H		organic	2021-02-18 00:00:00+00
stgallen		H		organic	2021-05-27 00:00:00+00
stgallen		L Ost		cardboard	2021-04-14 00:00:00+00
stgallen		L Ost		waste	2021-02-12 00:00:00+00
stgallen		L Ost		waste	2021-03-26 00:00:00+00
stgallen		D		paper	2021-10-20 00:00:00+00
stgallen		D		paper	2022-06-29 00:00:00+00
stgallen		D		waste	2022-03-29 00:00:00+00
stgallen		K		organic	2021-09-03 00:00:00+00
stgallen		K		organic	2022-04-22 00:00:00+00
stgallen		A		waste	2022-02-14 00:00:00+00
stgallen		A		waste	2022-04-25 00:00:00+00
stgallen		C		waste	2021-07-20 00:00:00+00
stgallen		C		cardboard	2021-09-01 00:00:00+00
stgallen		C		organic	2021-08-31 00:00:00+00
stgallen		C		organic	2021-11-02 00:00:00+00
stgallen		C		waste	2021-11-16 00:00:00+00
stgallen		C		organic	2021-11-30 00:00:00+00
stgallen		C		waste	2021-12-14 00:00:00+00
stgallen		C		organic	2021-12-14 00:00:00+00
stgallen		C		organic	2022-01-04 00:00:00+00
stgallen		F		metal	2022-04-26 00:00:00+00
stgallen		F		paper	2021-10-18 00:00:00+00
stgallen		F		waste	2021-08-25 00:00:00+00
stgallen		F		paper	2022-05-02 00:00:00+00
stgallen		B		organic	2021-08-02 00:00:00+00
stgallen		B		organic	2021-09-20 00:00:00+00
stgallen		B		organic	2021-10-18 00:00:00+00
stgallen		B		waste	2022-04-25 00:00:00+00
stgallen		B		organic	2022-05-30 00:00:00+00
stgallen		B		waste	2022-06-13 00:00:00+00
stgallen		G		waste	2022-01-06 00:00:00+00
stgallen		G		organic	2022-06-02 00:00:00+00
stgallen		G		organic	2022-06-09 00:00:00+00
stgallen		L Ost		paper	2021-09-15 00:00:00+00
stgallen		L Ost		waste	2021-11-19 00:00:00+00
stgallen		L Ost		organic	2022-04-01 00:00:00+00
stgallen		L Ost		organic	2022-05-27 00:00:00+00
stgallen		L Ost		organic	2022-06-10 00:00:00+00
stgallen		H		paper	2022-05-03 00:00:00+00
stgallen		H		waste	2021-09-16 00:00:00+00
stgallen		H		waste	2021-10-28 00:00:00+00
stgallen		H		organic	2021-12-23 00:00:00+00
stgallen		H		organic	2022-02-24 00:00:00+00
stgallen		H		organic	2022-03-24 00:00:00+00
stgallen		H		waste	2022-03-31 00:00:00+00
stgallen		I		metal	2022-04-25 00:00:00+00
stgallen		I		paper	2021-12-09 00:00:00+00
stgallen		I		organic	2022-02-11 00:00:00+00
stgallen		L West		waste	2021-07-23 00:00:00+00
stgallen		L West		waste	2021-09-10 00:00:00+00
stgallen		L West		organic	2022-05-06 00:00:00+00
stgallen		E		organic	2022-01-12 00:00:00+00
stgallen		E		organic	2022-01-19 00:00:00+00
stgallen		E		organic	2022-02-09 00:00:00+00
stgallen		E		organic	2022-02-23 00:00:00+00
stgallen		E		waste	2022-06-08 00:00:00+00
stgallen		B		paper	2020-07-31 00:00:00+00
stgallen		B		waste	2020-07-20 00:00:00+00
stgallen		B		cardboard	2020-09-11 00:00:00+00
stgallen		B		cardboard	2020-12-31 00:00:00+00
stgallen		B		organic	2020-08-24 00:00:00+00
stgallen		B		waste	2020-11-16 00:00:00+00
stgallen		B		waste	2020-12-07 00:00:00+00
stgallen		B		organic	2020-12-28 00:00:00+00
stgallen		B		waste	2021-05-31 00:00:00+00
stgallen		I		organic	2022-07-01 00:00:00+00
stgallen		L Ost		organic	2022-07-01 00:00:00+00
stgallen		D		organic	2022-07-12 00:00:00+00
stgallen		E		organic	2022-07-13 00:00:00+00
stgallen		F		organic	2022-07-13 00:00:00+00
stgallen		I		organic	2022-07-15 00:00:00+00
stgallen		L West		organic	2022-07-15 00:00:00+00
stgallen		D		organic	2022-07-19 00:00:00+00
stgallen		F		organic	2022-07-20 00:00:00+00
stgallen		L Ost		organic	2022-07-22 00:00:00+00
stgallen		A		organic	2022-07-25 00:00:00+00
stgallen		I		organic	2022-07-29 00:00:00+00
stgallen		K		organic	2022-07-29 00:00:00+00
stgallen		F		organic	2022-08-03 00:00:00+00
stgallen		K		organic	2022-08-05 00:00:00+00
stgallen		E		organic	2022-08-10 00:00:00+00
stgallen		H		organic	2022-08-11 00:00:00+00
stgallen		L Ost		organic	2022-08-12 00:00:00+00
stgallen		B		organic	2022-08-15 00:00:00+00
stgallen		E		organic	2022-08-17 00:00:00+00
stgallen		K		organic	2022-08-19 00:00:00+00
stgallen		L Ost		organic	2022-08-19 00:00:00+00
stgallen		B		organic	2022-08-22 00:00:00+00
stgallen		H		organic	2022-09-01 00:00:00+00
stgallen		B		organic	2022-09-05 00:00:00+00
stgallen		D		organic	2022-09-06 00:00:00+00
stgallen		G		organic	2022-09-08 00:00:00+00
stgallen		I		organic	2022-09-09 00:00:00+00
stgallen		K		organic	2022-09-09 00:00:00+00
stgallen		L West		organic	2022-09-09 00:00:00+00
stgallen		B		organic	2022-09-12 00:00:00+00
stgallen		C		organic	2022-09-13 00:00:00+00
stgallen		H		organic	2022-09-15 00:00:00+00
stgallen		I		organic	2022-09-16 00:00:00+00
stgallen		K		organic	2022-09-16 00:00:00+00
stgallen		L West		organic	2022-09-16 00:00:00+00
stgallen		D		organic	2022-09-20 00:00:00+00
stgallen		E		organic	2022-09-21 00:00:00+00
stgallen		I		organic	2022-09-23 00:00:00+00
stgallen		C		organic	2022-09-27 00:00:00+00
stgallen		D		organic	2022-09-27 00:00:00+00
stgallen		L West		organic	2022-09-30 00:00:00+00
stgallen		A		organic	2022-10-03 00:00:00+00
stgallen		C		organic	2022-10-04 00:00:00+00
stgallen		C		organic	2022-10-11 00:00:00+00
stgallen		F		organic	2022-10-12 00:00:00+00
stgallen		A		organic	2022-10-17 00:00:00+00
stgallen		D		organic	2022-10-18 00:00:00+00
stgallen		G		organic	2022-10-20 00:00:00+00
stgallen		H		organic	2022-10-27 00:00:00+00
stgallen		D		organic	2022-11-03 00:00:00+00
stgallen		H		organic	2022-11-03 00:00:00+00
stgallen		K		organic	2022-11-11 00:00:00+00
stgallen		C		organic	2022-11-22 00:00:00+00
stgallen		H		organic	2022-11-24 00:00:00+00
stgallen		B		organic	2022-11-28 00:00:00+00
stgallen		D		organic	2022-11-29 00:00:00+00
stgallen		D		organic	2022-12-20 00:00:00+00
stgallen		G		organic	2022-12-22 00:00:00+00
stgallen		L West		organic	2022-12-23 00:00:00+00
stgallen		H		organic	2022-12-29 00:00:00+00
stgallen		I		organic	2022-12-30 00:00:00+00
stgallen		L Ost		organic	2022-12-30 00:00:00+00
stgallen		B		organic	2023-01-02 00:00:00+00
stgallen		E		organic	2023-01-04 00:00:00+00
stgallen		H		organic	2023-01-05 00:00:00+00
stgallen		G		organic	2023-01-12 00:00:00+00
stgallen		K		organic	2023-01-13 00:00:00+00
stgallen		L Ost		organic	2023-01-13 00:00:00+00
stgallen		L West		organic	2023-01-13 00:00:00+00
stgallen		C		organic	2023-01-17 00:00:00+00
stgallen		G		organic	2023-01-19 00:00:00+00
stgallen		B		organic	2023-01-23 00:00:00+00
stgallen		C		organic	2023-01-24 00:00:00+00
stgallen		F		organic	2023-01-25 00:00:00+00
stgallen		B		organic	2023-01-30 00:00:00+00
stgallen		E		organic	2023-02-01 00:00:00+00
stgallen		I		organic	2023-02-03 00:00:00+00
stgallen		H		organic	2023-02-09 00:00:00+00
stgallen		I		organic	2023-02-10 00:00:00+00
stgallen		F		organic	2023-02-15 00:00:00+00
stgallen		E		organic	2023-02-22 00:00:00+00
stgallen		K		organic	2023-02-24 00:00:00+00
stgallen		L Ost		organic	2023-02-24 00:00:00+00
stgallen		L West		organic	2023-02-24 00:00:00+00
stgallen		A		organic	2023-02-27 00:00:00+00
stgallen		E		organic	2023-03-08 00:00:00+00
stgallen		I		organic	2023-03-10 00:00:00+00
stgallen		L Ost		organic	2023-03-10 00:00:00+00
stgallen		E		organic	2023-03-15 00:00:00+00
stgallen		F		organic	2023-03-15 00:00:00+00
stgallen		L Ost		organic	2023-03-17 00:00:00+00
stgallen		L West		organic	2023-03-17 00:00:00+00
stgallen		F		organic	2023-03-22 00:00:00+00
stgallen		C		organic	2023-03-28 00:00:00+00
stgallen		I		organic	2023-03-31 00:00:00+00
stgallen		C		organic	2023-04-11 00:00:00+00
stgallen		D		organic	2023-04-11 00:00:00+00
stgallen		A		organic	2023-04-12 00:00:00+00
stgallen		B		organic	2023-04-12 00:00:00+00
stgallen		K		organic	2023-04-14 00:00:00+00
stgallen		L Ost		organic	2023-04-14 00:00:00+00
stgallen		A		organic	2023-04-17 00:00:00+00
stgallen		F		organic	2023-04-19 00:00:00+00
stgallen		I		organic	2023-04-21 00:00:00+00
stgallen		K		organic	2023-04-21 00:00:00+00
stgallen		L Ost		organic	2023-04-21 00:00:00+00
stgallen		C		organic	2023-04-25 00:00:00+00
stgallen		A		organic	2023-05-01 00:00:00+00
stgallen		D		organic	2023-05-02 00:00:00+00
stgallen		I		organic	2023-05-05 00:00:00+00
stgallen		A		organic	2023-05-08 00:00:00+00
stgallen		I		organic	2023-05-12 00:00:00+00
stgallen		A		organic	2023-05-15 00:00:00+00
stgallen		C		organic	2023-05-23 00:00:00+00
stgallen		F		organic	2023-05-24 00:00:00+00
stgallen		G		organic	2023-05-25 00:00:00+00
stgallen		H		organic	2023-05-25 00:00:00+00
stgallen		D		organic	2023-05-30 00:00:00+00
stgallen		B		organic	2023-05-31 00:00:00+00
stgallen		G		organic	2023-06-01 00:00:00+00
stgallen		K		organic	2023-06-02 00:00:00+00
stgallen		I		organic	2023-06-16 00:00:00+00
stgallen		E		organic	2023-06-21 00:00:00+00
stgallen		F		organic	2023-06-21 00:00:00+00
stgallen		G		organic	2023-06-22 00:00:00+00
stgallen		F		organic	2023-06-28 00:00:00+00
stgallen		H		organic	2023-06-29 00:00:00+00
stgallen		L Ost		organic	2023-06-30 00:00:00+00
stgallen		L West		organic	2023-06-30 00:00:00+00
stgallen		C		cardboard	2022-07-06 00:00:00+00
stgallen		F		cardboard	2022-07-11 00:00:00+00
stgallen		E		cardboard	2022-08-02 00:00:00+00
stgallen		C		cardboard	2022-08-03 00:00:00+00
stgallen		G		cardboard	2022-08-30 00:00:00+00
stgallen		L Ost		cardboard	2022-08-31 00:00:00+00
stgallen		F		cardboard	2022-09-05 00:00:00+00
stgallen		E		cardboard	2022-09-26 00:00:00+00
stgallen		L West		cardboard	2022-10-05 00:00:00+00
stgallen		B		cardboard	2022-11-04 00:00:00+00
stgallen		L Ost		cardboard	2022-11-23 00:00:00+00
stgallen		L West		cardboard	2022-11-30 00:00:00+00
stgallen		B		cardboard	2022-12-02 00:00:00+00
stgallen		E		cardboard	2022-12-19 00:00:00+00
stgallen		C		cardboard	2022-12-21 00:00:00+00
stgallen		D		cardboard	2022-12-28 00:00:00+00
stgallen		G		cardboard	2023-01-17 00:00:00+00
stgallen		C		cardboard	2023-01-18 00:00:00+00
stgallen		L Ost		cardboard	2023-01-18 00:00:00+00
stgallen		A		cardboard	2023-01-20 00:00:00+00
stgallen		D		cardboard	2023-01-25 00:00:00+00
stgallen		L West		cardboard	2023-01-25 00:00:00+00
stgallen		E		cardboard	2023-02-13 00:00:00+00
stgallen		L Ost		cardboard	2023-02-15 00:00:00+00
stgallen		F		cardboard	2023-02-20 00:00:00+00
stgallen		D		cardboard	2023-02-22 00:00:00+00
stgallen		H		cardboard	2023-03-21 00:00:00+00
stgallen		D		cardboard	2023-03-22 00:00:00+00
stgallen		C		cardboard	2023-04-12 00:00:00+00
stgallen		I		cardboard	2023-04-13 00:00:00+00
stgallen		H		cardboard	2023-04-18 00:00:00+00
stgallen		B		cardboard	2023-04-21 00:00:00+00
stgallen		C		cardboard	2023-05-10 00:00:00+00
stgallen		E		cardboard	2023-06-05 00:00:00+00
stgallen		K		cardboard	2023-06-15 00:00:00+00
stgallen		I		waste	2022-07-01 00:00:00+00
stgallen		F		waste	2022-07-13 00:00:00+00
stgallen		G		waste	2022-07-14 00:00:00+00
stgallen		K		waste	2022-07-15 00:00:00+00
stgallen		A		waste	2022-07-18 00:00:00+00
stgallen		B		waste	2022-07-18 00:00:00+00
stgallen		G		waste	2022-07-21 00:00:00+00
stgallen		K		waste	2022-07-22 00:00:00+00
stgallen		I		waste	2022-07-29 00:00:00+00
stgallen		K		waste	2022-08-05 00:00:00+00
stgallen		C		waste	2022-08-09 00:00:00+00
stgallen		K		waste	2022-08-12 00:00:00+00
stgallen		L West		waste	2022-08-12 00:00:00+00
stgallen		F		waste	2022-08-17 00:00:00+00
stgallen		H		waste	2022-08-18 00:00:00+00
stgallen		E		waste	2022-08-24 00:00:00+00
stgallen		H		waste	2022-08-25 00:00:00+00
stgallen		D		waste	2022-08-30 00:00:00+00
stgallen		F		waste	2022-09-07 00:00:00+00
stgallen		L Ost		waste	2022-09-09 00:00:00+00
stgallen		G		waste	2022-09-15 00:00:00+00
stgallen		I		waste	2022-09-16 00:00:00+00
stgallen		L West		waste	2022-09-23 00:00:00+00
stgallen		K		waste	2022-09-30 00:00:00+00
stgallen		H		waste	2022-10-06 00:00:00+00
stgallen		K		waste	2022-10-07 00:00:00+00
stgallen		G		waste	2022-10-13 00:00:00+00
stgallen		I		waste	2022-10-14 00:00:00+00
stgallen		K		waste	2022-10-14 00:00:00+00
stgallen		G		waste	2022-10-20 00:00:00+00
stgallen		K		waste	2022-10-21 00:00:00+00
stgallen		L Ost		waste	2022-10-21 00:00:00+00
stgallen		B		waste	2022-10-24 00:00:00+00
stgallen		I		waste	2022-10-28 00:00:00+00
stgallen		B		waste	2022-11-07 00:00:00+00
stgallen		E		waste	2022-11-09 00:00:00+00
stgallen		G		waste	2022-11-10 00:00:00+00
stgallen		L Ost		waste	2022-11-11 00:00:00+00
stgallen		E		waste	2022-11-16 00:00:00+00
stgallen		H		waste	2022-11-17 00:00:00+00
stgallen		A		waste	2022-11-21 00:00:00+00
stgallen		E		waste	2022-11-23 00:00:00+00
stgallen		A		waste	2022-11-28 00:00:00+00
stgallen		C		waste	2022-11-29 00:00:00+00
stgallen		D		waste	2022-11-29 00:00:00+00
stgallen		H		waste	2022-12-01 00:00:00+00
stgallen		B		waste	2022-12-05 00:00:00+00
stgallen		E		waste	2022-12-07 00:00:00+00
stgallen		F		waste	2022-12-07 00:00:00+00
stgallen		H		waste	2022-12-08 00:00:00+00
stgallen		L West		waste	2022-12-09 00:00:00+00
stgallen		A		waste	2022-12-12 00:00:00+00
stgallen		H		waste	2022-12-15 00:00:00+00
stgallen		I		waste	2022-12-16 00:00:00+00
stgallen		L West		waste	2022-12-16 00:00:00+00
stgallen		E		waste	2022-12-21 00:00:00+00
stgallen		F		waste	2022-12-21 00:00:00+00
stgallen		G		waste	2022-12-22 00:00:00+00
stgallen		E		waste	2022-12-28 00:00:00+00
stgallen		H		waste	2022-12-29 00:00:00+00
stgallen		L Ost		waste	2022-12-30 00:00:00+00
stgallen		H		waste	2023-01-05 00:00:00+00
stgallen		K		waste	2023-01-06 00:00:00+00
stgallen		L West		waste	2023-01-06 00:00:00+00
stgallen		C		waste	2023-01-10 00:00:00+00
stgallen		F		waste	2023-01-11 00:00:00+00
stgallen		G		waste	2023-01-12 00:00:00+00
stgallen		I		waste	2023-01-13 00:00:00+00
stgallen		L Ost		waste	2023-01-13 00:00:00+00
stgallen		A		waste	2023-01-16 00:00:00+00
stgallen		C		waste	2023-01-17 00:00:00+00
stgallen		G		waste	2023-01-19 00:00:00+00
stgallen		H		waste	2023-01-19 00:00:00+00
stgallen		B		waste	2023-01-23 00:00:00+00
stgallen		E		waste	2023-01-25 00:00:00+00
stgallen		B		waste	2023-01-30 00:00:00+00
stgallen		F		waste	2023-02-01 00:00:00+00
stgallen		I		waste	2023-02-03 00:00:00+00
stgallen		K		waste	2023-02-03 00:00:00+00
stgallen		L West		waste	2023-02-03 00:00:00+00
stgallen		B		waste	2023-02-06 00:00:00+00
stgallen		A		waste	2023-02-20 00:00:00+00
stgallen		B		waste	2023-02-20 00:00:00+00
stgallen		D		waste	2023-02-21 00:00:00+00
stgallen		F		waste	2023-02-22 00:00:00+00
stgallen		H		waste	2023-02-23 00:00:00+00
stgallen		G		waste	2023-03-02 00:00:00+00
stgallen		A		waste	2023-03-06 00:00:00+00
stgallen		C		waste	2023-03-07 00:00:00+00
stgallen		A		waste	2023-03-13 00:00:00+00
stgallen		C		waste	2023-03-14 00:00:00+00
stgallen		E		waste	2023-03-15 00:00:00+00
stgallen		L West		waste	2023-03-17 00:00:00+00
stgallen		H		waste	2023-03-23 00:00:00+00
stgallen		K		waste	2023-03-24 00:00:00+00
stgallen		B		waste	2023-03-27 00:00:00+00
stgallen		C		waste	2023-03-28 00:00:00+00
stgallen		L West		waste	2023-03-31 00:00:00+00
stgallen		H		waste	2023-04-13 00:00:00+00
stgallen		K		waste	2023-04-14 00:00:00+00
stgallen		L Ost		waste	2023-04-14 00:00:00+00
stgallen		A		waste	2023-04-17 00:00:00+00
stgallen		D		waste	2023-04-18 00:00:00+00
stgallen		E		waste	2023-04-19 00:00:00+00
stgallen		F		waste	2023-04-19 00:00:00+00
stgallen		I		waste	2023-04-21 00:00:00+00
stgallen		L West		waste	2023-04-21 00:00:00+00
stgallen		C		waste	2023-04-25 00:00:00+00
stgallen		L West		waste	2023-04-28 00:00:00+00
stgallen		B		waste	2023-05-01 00:00:00+00
stgallen		H		waste	2023-05-04 00:00:00+00
stgallen		K		waste	2023-05-05 00:00:00+00
stgallen		L West		waste	2023-05-05 00:00:00+00
stgallen		G		waste	2023-05-19 00:00:00+00
stgallen		I		waste	2023-05-19 00:00:00+00
stgallen		C		waste	2023-05-23 00:00:00+00
stgallen		G		waste	2023-05-25 00:00:00+00
stgallen		K		waste	2023-05-26 00:00:00+00
stgallen		B		waste	2023-05-30 00:00:00+00
stgallen		C		waste	2023-05-30 00:00:00+00
stgallen		F		waste	2023-05-31 00:00:00+00
stgallen		I		waste	2023-06-09 00:00:00+00
stgallen		K		waste	2023-06-09 00:00:00+00
stgallen		A		waste	2023-06-12 00:00:00+00
stgallen		D		waste	2023-06-13 00:00:00+00
stgallen		G		waste	2023-06-15 00:00:00+00
stgallen		I		waste	2023-06-16 00:00:00+00
stgallen		L West		waste	2023-06-16 00:00:00+00
stgallen		A		waste	2023-06-19 00:00:00+00
stgallen		I		waste	2023-06-23 00:00:00+00
stgallen		L West		waste	2023-06-23 00:00:00+00
stgallen		H		waste	2023-06-29 00:00:00+00
stgallen		K		waste	2023-06-30 00:00:00+00
stgallen		K		metal	2022-09-26 00:00:00+00
stgallen		E		metal	2022-09-27 00:00:00+00
stgallen		H		metal	2022-09-28 00:00:00+00
stgallen		C		metal	2023-04-27 00:00:00+00
stgallen		L Ost		metal	2023-04-27 00:00:00+00
stgallen		L West		metal	2023-04-27 00:00:00+00
stgallen		A		metal	2023-04-28 00:00:00+00
stgallen		A		paper	2022-07-22 00:00:00+00
stgallen		L West		paper	2022-07-27 00:00:00+00
stgallen		I		paper	2022-08-18 00:00:00+00
stgallen		D		paper	2022-09-21 00:00:00+00
stgallen		L West		paper	2022-09-21 00:00:00+00
stgallen		L Ost		paper	2022-10-12 00:00:00+00
stgallen		L West		paper	2022-10-19 00:00:00+00
stgallen		E		paper	2022-11-07 00:00:00+00
stgallen		H		paper	2022-11-15 00:00:00+00
stgallen		D		paper	2022-11-16 00:00:00+00
stgallen		L Ost		paper	2022-12-07 00:00:00+00
stgallen		A		paper	2022-12-09 00:00:00+00
stgallen		F		paper	2022-12-12 00:00:00+00
stgallen		D		paper	2022-12-14 00:00:00+00
stgallen		L West		paper	2022-12-14 00:00:00+00
stgallen		B		paper	2023-01-13 00:00:00+00
stgallen		L West		paper	2023-03-08 00:00:00+00
stgallen		L West		paper	2023-04-05 00:00:00+00
stgallen		F		paper	2023-05-01 00:00:00+00
stgallen		H		paper	2023-06-27 00:00:00+00
stgallen		D		paper	2023-06-28 00:00:00+00
thalwil	8800	A		waste	2023-01-09 00:00:00+00
thalwil	8800	A		waste	2023-01-16 00:00:00+00
thalwil	8800	A		waste	2023-01-23 00:00:00+00
thalwil	8800	A		waste	2023-01-30 00:00:00+00
thalwil	8800	A		waste	2023-02-06 00:00:00+00
thalwil	8800	A		waste	2023-02-13 00:00:00+00
thalwil	8800	A		waste	2023-02-20 00:00:00+00
thalwil	8800	A		waste	2023-02-27 00:00:00+00
thalwil	8800	A		waste	2023-03-06 00:00:00+00
thalwil	8800	A		waste	2023-03-13 00:00:00+00
thalwil	8800	A		waste	2023-03-20 00:00:00+00
thalwil	8800	A		waste	2023-03-27 00:00:00+00
thalwil	8800	A		waste	2023-04-03 00:00:00+00
thalwil	8800	A		waste	2023-04-17 00:00:00+00
thalwil	8800	A		waste	2023-04-24 00:00:00+00
thalwil	8800	A		waste	2023-05-08 00:00:00+00
thalwil	8800	A		waste	2023-05-15 00:00:00+00
thalwil	8800	A		waste	2023-05-22 00:00:00+00
thalwil	8800	A		waste	2023-06-05 00:00:00+00
thalwil	8800	A		waste	2023-06-12 00:00:00+00
thalwil	8800	A		waste	2023-06-19 00:00:00+00
thalwil	8800	A		waste	2023-06-26 00:00:00+00
thalwil	8800	A		waste	2023-07-03 00:00:00+00
thalwil	8800	A		waste	2023-07-10 00:00:00+00
thalwil	8800	A		waste	2023-07-17 00:00:00+00
thalwil	8800	A		waste	2023-07-24 00:00:00+00
thalwil	8800	A		waste	2023-07-31 00:00:00+00
thalwil	8800	A		waste	2023-08-07 00:00:00+00
thalwil	8800	A		waste	2023-08-14 00:00:00+00
thalwil	8800	A		waste	2023-08-21 00:00:00+00
thalwil	8800	A		waste	2023-08-28 00:00:00+00
thalwil	8800	A		waste	2023-09-04 00:00:00+00
thalwil	8800	A		waste	2023-09-11 00:00:00+00
thalwil	8800	A		waste	2023-09-18 00:00:00+00
thalwil	8800	A		waste	2023-09-25 00:00:00+00
thalwil	8800	A		waste	2023-10-02 00:00:00+00
thalwil	8800	A		waste	2023-10-09 00:00:00+00
thalwil	8800	A		waste	2023-10-16 00:00:00+00
thalwil	8800	A		waste	2023-10-23 00:00:00+00
thalwil	8800	A		waste	2023-10-30 00:00:00+00
thalwil	8800	A		waste	2023-11-06 00:00:00+00
thalwil	8800	A		waste	2023-11-13 00:00:00+00
thalwil	8800	A		waste	2023-11-20 00:00:00+00
thalwil	8800	A		waste	2023-11-27 00:00:00+00
thalwil	8800	A		waste	2023-12-04 00:00:00+00
thalwil	8800	A		waste	2023-12-11 00:00:00+00
thalwil	8800	A		waste	2023-12-18 00:00:00+00
thalwil	8800	B		waste	2023-01-10 00:00:00+00
thalwil	8800	B		waste	2023-01-17 00:00:00+00
thalwil	8800	B		waste	2023-01-24 00:00:00+00
thalwil	8800	B		waste	2023-01-31 00:00:00+00
thalwil	8800	B		waste	2023-02-07 00:00:00+00
thalwil	8800	B		waste	2023-02-14 00:00:00+00
thalwil	8800	B		waste	2023-02-21 00:00:00+00
thalwil	8800	B		waste	2023-02-28 00:00:00+00
thalwil	8800	B		waste	2023-03-07 00:00:00+00
thalwil	8800	B		waste	2023-03-14 00:00:00+00
thalwil	8800	B		waste	2023-03-21 00:00:00+00
thalwil	8800	B		waste	2023-03-28 00:00:00+00
thalwil	8800	B		waste	2023-04-04 00:00:00+00
thalwil	8800	B		waste	2023-04-18 00:00:00+00
thalwil	8800	B		waste	2023-04-25 00:00:00+00
thalwil	8800	B		waste	2023-05-02 00:00:00+00
thalwil	8800	B		waste	2023-05-09 00:00:00+00
thalwil	8800	B		waste	2023-05-16 00:00:00+00
thalwil	8800	B		waste	2023-05-23 00:00:00+00
thalwil	8800	B		waste	2023-05-30 00:00:00+00
thalwil	8800	B		waste	2023-06-06 00:00:00+00
thalwil	8800	B		waste	2023-06-13 00:00:00+00
thalwil	8800	B		waste	2023-06-20 00:00:00+00
thalwil	8800	B		waste	2023-06-27 00:00:00+00
thalwil	8800	B		waste	2023-07-04 00:00:00+00
thalwil	8800	B		waste	2023-07-11 00:00:00+00
thalwil	8800	B		waste	2023-07-18 00:00:00+00
thalwil	8800	B		waste	2023-07-25 00:00:00+00
thalwil	8800	B		waste	2023-08-08 00:00:00+00
thalwil	8800	B		waste	2023-08-15 00:00:00+00
thalwil	8800	B		waste	2023-08-22 00:00:00+00
thalwil	8800	B		waste	2023-08-29 00:00:00+00
thalwil	8800	B		waste	2023-09-05 00:00:00+00
thalwil	8800	B		waste	2023-09-12 00:00:00+00
thalwil	8800	B		waste	2023-09-19 00:00:00+00
thalwil	8800	B		waste	2023-09-26 00:00:00+00
thalwil	8800	B		waste	2023-10-03 00:00:00+00
thalwil	8800	B		waste	2023-10-10 00:00:00+00
thalwil	8800	B		waste	2023-10-17 00:00:00+00
thalwil	8800	B		waste	2023-10-24 00:00:00+00
thalwil	8800	B		waste	2023-10-31 00:00:00+00
thalwil	8800	B		waste	2023-11-07 00:00:00+00
thalwil	8800	B		waste	2023-11-14 00:00:00+00
thalwil	8800	B		waste	2023-11-21 00:00:00+00
thalwil	8800	B		waste	2023-11-28 00:00:00+00
thalwil	8800	B		waste	2023-12-05 00:00:00+00
thalwil	8800	B		waste	2023-12-12 00:00:00+00
thalwil	8800	B		waste	2023-12-19 00:00:00+00
thalwil	8800	C		waste	2023-01-06 00:00:00+00
thalwil	8800	C		waste	2023-01-13 00:00:00+00
thalwil	8800	C		waste	2023-01-20 00:00:00+00
thalwil	8800	C		waste	2023-01-27 00:00:00+00
thalwil	8800	C		waste	2023-02-03 00:00:00+00
thalwil	8800	C		waste	2023-02-10 00:00:00+00
thalwil	8800	C		waste	2023-02-17 00:00:00+00
thalwil	8800	C		waste	2023-02-24 00:00:00+00
thalwil	8800	C		waste	2023-03-03 00:00:00+00
thalwil	8800	C		waste	2023-03-10 00:00:00+00
thalwil	8800	C		waste	2023-03-17 00:00:00+00
thalwil	8800	C		waste	2023-03-24 00:00:00+00
thalwil	8800	C		waste	2023-03-31 00:00:00+00
thalwil	8800	C		waste	2023-04-14 00:00:00+00
thalwil	8800	C		waste	2023-04-21 00:00:00+00
thalwil	8800	C		waste	2023-04-28 00:00:00+00
thalwil	8800	C		waste	2023-05-05 00:00:00+00
thalwil	8800	C		waste	2023-05-12 00:00:00+00
thalwil	8800	C		waste	2023-05-19 00:00:00+00
thalwil	8800	C		waste	2023-05-26 00:00:00+00
thalwil	8800	C		waste	2023-06-02 00:00:00+00
thalwil	8800	C		waste	2023-06-09 00:00:00+00
thalwil	8800	C		waste	2023-06-16 00:00:00+00
thalwil	8800	C		waste	2023-06-23 00:00:00+00
thalwil	8800	C		waste	2023-06-30 00:00:00+00
thalwil	8800	C		waste	2023-07-07 00:00:00+00
thalwil	8800	C		waste	2023-07-14 00:00:00+00
thalwil	8800	C		waste	2023-07-21 00:00:00+00
thalwil	8800	C		waste	2023-07-28 00:00:00+00
thalwil	8800	C		waste	2023-08-04 00:00:00+00
thalwil	8800	C		waste	2023-08-11 00:00:00+00
thalwil	8800	C		waste	2023-08-18 00:00:00+00
thalwil	8800	C		waste	2023-08-25 00:00:00+00
thalwil	8800	C		waste	2023-09-01 00:00:00+00
thalwil	8800	C		waste	2023-09-08 00:00:00+00
thalwil	8800	C		waste	2023-09-15 00:00:00+00
thalwil	8800	C		waste	2023-09-22 00:00:00+00
thalwil	8800	C		waste	2023-09-29 00:00:00+00
thalwil	8800	C		waste	2023-10-06 00:00:00+00
thalwil	8800	C		waste	2023-10-13 00:00:00+00
thalwil	8800	C		waste	2023-10-20 00:00:00+00
thalwil	8800	C		waste	2023-10-27 00:00:00+00
thalwil	8800	C		waste	2023-11-03 00:00:00+00
thalwil	8800	C		waste	2023-11-10 00:00:00+00
thalwil	8800	C		waste	2023-11-17 00:00:00+00
thalwil	8800	C		waste	2023-11-24 00:00:00+00
thalwil	8800	C		waste	2023-12-01 00:00:00+00
thalwil	8800	C		waste	2023-12-08 00:00:00+00
thalwil	8800	C		waste	2023-12-15 00:00:00+00
thalwil	8800	C		waste	2023-12-22 00:00:00+00
thalwil	8800	C		waste	2023-12-29 00:00:00+00
thalwil	8800	A		organic	2023-01-11 00:00:00+00
thalwil	8800	A		organic	2023-01-18 00:00:00+00
thalwil	8800	A		organic	2023-01-25 00:00:00+00
thalwil	8800	A		organic	2023-02-01 00:00:00+00
thalwil	8800	A		organic	2023-02-08 00:00:00+00
thalwil	8800	A		organic	2023-02-15 00:00:00+00
thalwil	8800	A		organic	2023-02-22 00:00:00+00
thalwil	8800	A		organic	2023-03-01 00:00:00+00
thalwil	8800	A		organic	2023-03-08 00:00:00+00
thalwil	8800	A		organic	2023-03-15 00:00:00+00
thalwil	8800	A		organic	2023-03-22 00:00:00+00
thalwil	8800	A		organic	2023-03-29 00:00:00+00
thalwil	8800	A		organic	2023-04-05 00:00:00+00
thalwil	8800	A		organic	2023-04-12 00:00:00+00
thalwil	8800	A		organic	2023-04-19 00:00:00+00
thalwil	8800	A		organic	2023-04-26 00:00:00+00
thalwil	8800	A		organic	2023-05-03 00:00:00+00
thalwil	8800	A		organic	2023-05-10 00:00:00+00
thalwil	8800	A		organic	2023-05-17 00:00:00+00
thalwil	8800	A		organic	2023-05-24 00:00:00+00
thalwil	8800	A		organic	2023-05-31 00:00:00+00
thalwil	8800	A		organic	2023-06-07 00:00:00+00
thalwil	8800	A		organic	2023-06-14 00:00:00+00
thalwil	8800	A		organic	2023-06-21 00:00:00+00
thalwil	8800	A		organic	2023-06-28 00:00:00+00
thalwil	8800	A		organic	2023-07-05 00:00:00+00
thalwil	8800	A		organic	2023-07-12 00:00:00+00
thalwil	8800	A		organic	2023-07-19 00:00:00+00
thalwil	8800	A		organic	2023-07-26 00:00:00+00
thalwil	8800	A		organic	2023-08-02 00:00:00+00
thalwil	8800	A		organic	2023-08-09 00:00:00+00
thalwil	8800	A		organic	2023-08-16 00:00:00+00
thalwil	8800	A		organic	2023-08-23 00:00:00+00
thalwil	8800	A		organic	2023-08-30 00:00:00+00
thalwil	8800	A		organic	2023-09-06 00:00:00+00
thalwil	8800	A		organic	2023-09-13 00:00:00+00
thalwil	8800	A		organic	2023-09-20 00:00:00+00
thalwil	8800	A		organic	2023-09-27 00:00:00+00
thalwil	8800	A		organic	2023-10-04 00:00:00+00
thalwil	8800	A		organic	2023-10-11 00:00:00+00
thalwil	8800	A		organic	2023-10-18 00:00:00+00
thalwil	8800	A		organic	2023-10-25 00:00:00+00
thalwil	8800	A		organic	2023-11-01 00:00:00+00
thalwil	8800	A		organic	2023-11-08 00:00:00+00
thalwil	8800	A		organic	2023-11-15 00:00:00+00
thalwil	8800	A		organic	2023-11-22 00:00:00+00
thalwil	8800	A		organic	2023-11-29 00:00:00+00
thalwil	8800	A		organic	2023-12-06 00:00:00+00
thalwil	8800	A		organic	2023-12-13 00:00:00+00
thalwil	8800	A		organic	2023-12-20 00:00:00+00
thalwil	8800	B		organic	2023-01-11 00:00:00+00
thalwil	8800	B		organic	2023-01-18 00:00:00+00
thalwil	8800	B		organic	2023-01-25 00:00:00+00
thalwil	8800	B		organic	2023-02-01 00:00:00+00
thalwil	8800	B		organic	2023-02-08 00:00:00+00
thalwil	8800	B		organic	2023-02-15 00:00:00+00
thalwil	8800	B		organic	2023-02-22 00:00:00+00
thalwil	8800	B		organic	2023-03-01 00:00:00+00
thalwil	8800	B		organic	2023-03-08 00:00:00+00
thalwil	8800	B		organic	2023-03-15 00:00:00+00
thalwil	8800	B		organic	2023-03-22 00:00:00+00
thalwil	8800	B		organic	2023-03-29 00:00:00+00
thalwil	8800	B		organic	2023-04-05 00:00:00+00
thalwil	8800	B		organic	2023-04-12 00:00:00+00
thalwil	8800	B		organic	2023-04-19 00:00:00+00
thalwil	8800	B		organic	2023-04-26 00:00:00+00
thalwil	8800	B		organic	2023-05-03 00:00:00+00
thalwil	8800	B		organic	2023-05-10 00:00:00+00
thalwil	8800	B		organic	2023-05-17 00:00:00+00
thalwil	8800	B		organic	2023-05-24 00:00:00+00
thalwil	8800	B		organic	2023-05-31 00:00:00+00
thalwil	8800	B		organic	2023-06-07 00:00:00+00
thalwil	8800	B		organic	2023-06-14 00:00:00+00
thalwil	8800	B		organic	2023-06-21 00:00:00+00
thalwil	8800	B		organic	2023-06-28 00:00:00+00
thalwil	8800	B		organic	2023-07-05 00:00:00+00
thalwil	8800	B		organic	2023-07-12 00:00:00+00
thalwil	8800	B		organic	2023-07-19 00:00:00+00
thalwil	8800	B		organic	2023-07-26 00:00:00+00
thalwil	8800	B		organic	2023-08-02 00:00:00+00
thalwil	8800	B		organic	2023-08-09 00:00:00+00
thalwil	8800	B		organic	2023-08-16 00:00:00+00
thalwil	8800	B		organic	2023-08-23 00:00:00+00
thalwil	8800	B		organic	2023-08-30 00:00:00+00
thalwil	8800	B		organic	2023-09-06 00:00:00+00
thalwil	8800	B		organic	2023-09-13 00:00:00+00
thalwil	8800	B		organic	2023-09-20 00:00:00+00
thalwil	8800	B		organic	2023-09-27 00:00:00+00
thalwil	8800	B		organic	2023-10-04 00:00:00+00
thalwil	8800	B		organic	2023-10-11 00:00:00+00
thalwil	8800	B		organic	2023-10-18 00:00:00+00
thalwil	8800	B		organic	2023-10-25 00:00:00+00
thalwil	8800	B		organic	2023-11-01 00:00:00+00
thalwil	8800	B		organic	2023-11-08 00:00:00+00
thalwil	8800	B		organic	2023-11-15 00:00:00+00
thalwil	8800	B		organic	2023-11-22 00:00:00+00
thalwil	8800	B		organic	2023-11-29 00:00:00+00
thalwil	8800	B		organic	2023-12-06 00:00:00+00
thalwil	8800	B		organic	2023-12-13 00:00:00+00
thalwil	8800	B		organic	2023-12-20 00:00:00+00
thalwil	8800	C		organic	2023-01-11 00:00:00+00
thalwil	8800	C		organic	2023-01-18 00:00:00+00
thalwil	8800	C		organic	2023-01-25 00:00:00+00
thalwil	8800	C		organic	2023-02-01 00:00:00+00
thalwil	8800	C		organic	2023-02-08 00:00:00+00
thalwil	8800	C		organic	2023-02-15 00:00:00+00
thalwil	8800	C		organic	2023-02-22 00:00:00+00
thalwil	8800	C		organic	2023-03-01 00:00:00+00
thalwil	8800	C		organic	2023-03-08 00:00:00+00
thalwil	8800	C		organic	2023-03-15 00:00:00+00
thalwil	8800	C		organic	2023-03-22 00:00:00+00
thalwil	8800	C		organic	2023-03-29 00:00:00+00
thalwil	8800	C		organic	2023-04-05 00:00:00+00
thalwil	8800	C		organic	2023-04-12 00:00:00+00
thalwil	8800	C		organic	2023-04-19 00:00:00+00
thalwil	8800	C		organic	2023-04-26 00:00:00+00
thalwil	8800	C		organic	2023-05-03 00:00:00+00
thalwil	8800	C		organic	2023-05-10 00:00:00+00
thalwil	8800	C		organic	2023-05-17 00:00:00+00
thalwil	8800	C		organic	2023-05-24 00:00:00+00
thalwil	8800	C		organic	2023-05-31 00:00:00+00
thalwil	8800	C		organic	2023-06-07 00:00:00+00
thalwil	8800	C		organic	2023-06-14 00:00:00+00
thalwil	8800	C		organic	2023-06-21 00:00:00+00
thalwil	8800	C		organic	2023-06-28 00:00:00+00
thalwil	8800	C		organic	2023-07-05 00:00:00+00
thalwil	8800	C		organic	2023-07-12 00:00:00+00
thalwil	8800	C		organic	2023-07-19 00:00:00+00
thalwil	8800	C		organic	2023-07-26 00:00:00+00
thalwil	8800	C		organic	2023-08-02 00:00:00+00
thalwil	8800	C		organic	2023-08-09 00:00:00+00
thalwil	8800	C		organic	2023-08-16 00:00:00+00
thalwil	8800	C		organic	2023-08-23 00:00:00+00
thalwil	8800	C		organic	2023-08-30 00:00:00+00
thalwil	8800	C		organic	2023-09-06 00:00:00+00
thalwil	8800	C		organic	2023-09-13 00:00:00+00
thalwil	8800	C		organic	2023-09-20 00:00:00+00
thalwil	8800	C		organic	2023-09-27 00:00:00+00
thalwil	8800	C		organic	2023-10-04 00:00:00+00
thalwil	8800	C		organic	2023-10-11 00:00:00+00
thalwil	8800	C		organic	2023-10-18 00:00:00+00
thalwil	8800	C		organic	2023-10-25 00:00:00+00
thalwil	8800	C		organic	2023-11-01 00:00:00+00
thalwil	8800	C		organic	2023-11-08 00:00:00+00
thalwil	8800	C		organic	2023-11-15 00:00:00+00
thalwil	8800	C		organic	2023-11-22 00:00:00+00
thalwil	8800	C		organic	2023-11-29 00:00:00+00
thalwil	8800	C		organic	2023-12-06 00:00:00+00
thalwil	8800	C		organic	2023-12-13 00:00:00+00
thalwil	8800	C		organic	2023-12-20 00:00:00+00
thalwil	8800	A		cardboard	2023-02-02 00:00:00+00
thalwil	8800	A		cardboard	2023-03-02 00:00:00+00
thalwil	8800	A		cardboard	2023-04-06 00:00:00+00
thalwil	8800	A		cardboard	2023-05-04 00:00:00+00
thalwil	8800	A		cardboard	2023-06-01 00:00:00+00
thalwil	8800	A		cardboard	2023-07-06 00:00:00+00
thalwil	8800	A		cardboard	2023-08-03 00:00:00+00
thalwil	8800	A		cardboard	2023-09-07 00:00:00+00
thalwil	8800	A		cardboard	2023-10-05 00:00:00+00
thalwil	8800	A		cardboard	2023-11-02 00:00:00+00
thalwil	8800	B		cardboard	2023-01-12 00:00:00+00
thalwil	8800	B		cardboard	2023-02-09 00:00:00+00
thalwil	8800	B		cardboard	2023-03-09 00:00:00+00
thalwil	8800	B		cardboard	2023-04-13 00:00:00+00
thalwil	8800	B		cardboard	2023-05-11 00:00:00+00
thalwil	8800	B		cardboard	2023-06-08 00:00:00+00
thalwil	8800	B		cardboard	2023-07-13 00:00:00+00
thalwil	8800	B		cardboard	2023-08-10 00:00:00+00
thalwil	8800	B		cardboard	2023-10-12 00:00:00+00
thalwil	8800	B		cardboard	2023-11-09 00:00:00+00
thalwil	8800	C		cardboard	2023-01-19 00:00:00+00
thalwil	8800	C		cardboard	2023-02-16 00:00:00+00
thalwil	8800	C		cardboard	2023-03-16 00:00:00+00
thalwil	8800	C		cardboard	2023-04-20 00:00:00+00
thalwil	8800	C		cardboard	2023-06-15 00:00:00+00
thalwil	8800	C		cardboard	2023-07-20 00:00:00+00
thalwil	8800	C		cardboard	2023-08-17 00:00:00+00
thalwil	8800	C		cardboard	2023-09-21 00:00:00+00
thalwil	8800	C		cardboard	2023-10-19 00:00:00+00
thalwil	8800	C		cardboard	2023-11-16 00:00:00+00
thalwil	8800	A		paper	2023-01-07 00:00:00+00
thalwil	8800	A		paper	2023-02-04 00:00:00+00
thalwil	8800	A		paper	2023-03-04 00:00:00+00
thalwil	8800	A		paper	2023-04-01 00:00:00+00
thalwil	8800	A		paper	2023-05-06 00:00:00+00
thalwil	8800	A		paper	2023-06-03 00:00:00+00
thalwil	8800	A		paper	2023-07-01 00:00:00+00
thalwil	8800	A		paper	2023-08-05 00:00:00+00
thalwil	8800	A		paper	2023-09-02 00:00:00+00
thalwil	8800	A		paper	2023-10-07 00:00:00+00
thalwil	8800	A		paper	2023-11-04 00:00:00+00
thalwil	8800	A		paper	2023-12-02 00:00:00+00
thalwil	8800	B		paper	2023-01-07 00:00:00+00
thalwil	8800	B		paper	2023-02-04 00:00:00+00
thalwil	8800	B		paper	2023-03-04 00:00:00+00
thalwil	8800	B		paper	2023-04-01 00:00:00+00
thalwil	8800	B		paper	2023-05-06 00:00:00+00
thalwil	8800	B		paper	2023-06-03 00:00:00+00
thalwil	8800	B		paper	2023-07-01 00:00:00+00
thalwil	8800	B		paper	2023-08-05 00:00:00+00
thalwil	8800	B		paper	2023-09-02 00:00:00+00
thalwil	8800	B		paper	2023-10-07 00:00:00+00
thalwil	8800	B		paper	2023-11-04 00:00:00+00
thalwil	8800	B		paper	2023-12-02 00:00:00+00
thalwil	8800	C		paper	2023-01-07 00:00:00+00
thalwil	8800	C		paper	2023-02-04 00:00:00+00
thalwil	8800	C		paper	2023-03-04 00:00:00+00
thalwil	8800	C		paper	2023-04-01 00:00:00+00
thalwil	8800	C		paper	2023-05-06 00:00:00+00
thalwil	8800	C		paper	2023-06-03 00:00:00+00
thalwil	8800	C		paper	2023-07-01 00:00:00+00
thalwil	8800	C		paper	2023-08-05 00:00:00+00
thalwil	8800	C		paper	2023-09-02 00:00:00+00
thalwil	8800	C		paper	2023-10-07 00:00:00+00
thalwil	8800	C		paper	2023-11-04 00:00:00+00
thalwil	8800	C		paper	2023-12-02 00:00:00+00
thalwil	8800	A		waste	2023-01-03 00:00:00+00
thalwil	8800	C		waste	2023-04-11 00:00:00+00
thalwil	8800	A		waste	2023-04-11 00:00:00+00
thalwil	8800	A		waste	2023-05-02 00:00:00+00
thalwil	8800	C		cardboard	2023-05-25 00:00:00+00
thalwil	8800	A		waste	2023-05-30 00:00:00+00
thalwil	8800	B		waste	2023-08-02 00:00:00+00
thalwil	8800	A		waste	2023-12-27 00:00:00+00
thalwil	8800			special	2023-06-28 00:00:00+00
thalwil	8800			special	2023-06-29 00:00:00+00
thalwil	8800			special	2023-09-02 00:00:00+00
thalwil	8800	A		metal	2023-01-26 00:00:00+00
thalwil	8800	A		metal	2023-03-23 00:00:00+00
thalwil	8800			incombustibles	2023-03-30 00:00:00+00
thalwil	8800			incombustibles	2023-06-29 00:00:00+00
thalwil	8800			incombustibles	2023-09-28 00:00:00+00
thalwil	8800			incombustibles	2023-11-30 00:00:00+00
thalwil	8800	B		waste	2023-04-12 00:00:00+00
thalwil	8800	A		cardboard	2023-12-07 00:00:00+00
thalwil	8800			cardboard	2023-12-14 00:00:00+00
thalwil	8800	C		cardboard	2023-12-21 00:00:00+00
thalwil	8800	B		waste	2023-12-28 00:00:00+00
thalwil	8800			cardboard	2023-09-14 00:00:00+00
thalwil	8800	A		metal	2023-06-22 00:00:00+00
thalwil	8800	A		metal	2023-08-24 00:00:00+00
thalwil	8800	A		metal	2023-11-23 00:00:00+00
thalwil	8800	B		metal	2023-01-26 00:00:00+00
thalwil	8800	B		metal	2023-03-23 00:00:00+00
thalwil	8800	B		metal	2023-06-22 00:00:00+00
thalwil	8800	B		metal	2023-08-24 00:00:00+00
thalwil	8800	B		metal	2023-11-23 00:00:00+00
thalwil	8800	C		metal	2023-01-26 00:00:00+00
thalwil	8800	C		metal	2023-03-23 00:00:00+00
thalwil	8800	C		metal	2023-06-22 00:00:00+00
thalwil	8800	C		metal	2023-08-24 00:00:00+00
thalwil	8800	C		metal	2023-11-23 00:00:00+00
\.


--
-- Data for Name: station; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.station (region, zip, name, oil, metal, glass, textile) FROM stdin;
basel	4058	Kirchgasse 9	f	t	t	f
basel	4058	Rheinfelderstrasse 35	f	t	t	f
basel	4056	Schlachthofstrasse 18	f	t	t	f
basel	4056	Entenweidstrasse 86	f	t	t	f
basel	4055	Spalenring 1	f	t	t	f
basel	4052	Sevogelstrasse 91	f	t	t	f
basel	4058	Schwarzwaldallee 220	f	t	t	f
basel	4053	Walkeweg 36	f	t	t	f
basel	4058	Wittlingerstrasse 170	f	t	t	f
basel	4055	Oekolampadstrasse 6	f	t	t	f
basel	4125	Im Niederholzboden	f	t	t	f
basel	4125	Kornfeldstrasse	f	t	t	f
basel	4125	Grenzacherweg	f	t	t	f
basel	4125	Steingrubenweg	f	t	t	f
basel	4051	Petersgraben 51	f	t	t	f
basel	4055	Belforterstrasse 142	f	t	t	f
basel	4058	Erlenstrasse 1	f	t	t	f
basel	4059	Zur Gempenfluh 36	f	t	t	f
basel	4051	Höhenweg / Erdbeergraben	f	t	t	f
basel	4056	Lenzgasse 41	f	t	t	f
basel	4057	Hochbergerstrasse 75	f	t	t	f
basel	4057	Feldbergstrasse 99	f	t	t	f
basel	4057	Efringerstrasse 28	f	t	t	f
basel	4054	Neubadstrasse 150	f	t	t	f
basel	4053	Giornicostrasse150	f	t	t	f
basel	4056	Lichtstrasse 1	f	t	t	f
basel	4054	Rümelinbachweg 6	f	t	t	f
basel	4057	Klybeckstrasse 170	f	t	t	f
basel	4052	Birsstrasse 90	f	t	t	f
basel	4053	Dornacherstrasse 339	f	t	t	f
basel	4059	Bruderholzallee 197	f	t	t	f
basel	4125	Rössligasse	f	t	t	f
basel	4125	Mühlestiegstrasse	f	t	t	f
basel	4053	Thiersteinerallee 12	f	t	t	f
basel	4058	Mattenstrasse 22	f	t	t	f
basel	4058	Signalstrasse 25	f	t	t	f
basel	4126	Brohegasse	f	t	t	f
basel	4051	Henric Petri-Strasse 9	f	t	t	f
basel	4052	St.Alban-Ring 282	f	t	t	f
basel	4057	Klingentalstrasse 45	f	t	t	f
basel	4057	Inselstrasse 76	f	t	t	f
basel	4055	St.Galler-Ring 7	f	t	t	f
basel	4056	St.Johanns-Platz 8	f	t	t	f
basel	4058	Erlenstrasse 74	f	t	t	f
basel	4058	Fasanenstrasse 182	f	t	t	f
basel	4058	Teichgässlein 7	f	t	t	f
basel	4056	Spitalstrasse 52	f	t	t	f
basel	4059	Bruderholzallee 32	f	t	t	f
basel	4052	Brunngässlein 41	f	t	t	f
basel	4052	Zürcherstrasse 158	f	t	t	f
basel	4052	Gellertstrasse 151	f	t	t	f
basel	4053	Tellstrasse 2	f	t	t	f
basel	4055	Bungestrasse 6	f	t	t	f
basel	4058	Grenzacherstrasse/ Grenzacher-Promenade	f	t	t	f
basel	4055	Michelbacherstrasse 8	f	t	t	f
basel	4052	Karl Barth-Platz 9	f	t	t	f
basel	4058	Clarastrasse 46	f	t	t	f
basel	4125	Haselrain	f	t	t	f
basel	4125	Bahnhofstrasse	f	t	t	f
basel	4125	Niederholzstrasse	f	t	t	f
basel	4125	Bluttrainweg	f	t	t	f
basel	4125	Hinter der Mühle	f	t	t	f
basel	4059	Schäublinstrasse 140	f	t	t	f
basel	4054	Bundesplatz	f	t	t	f
basel	4057	Bonergasse 71	f	t	t	f
basel	4053	Gundeldingerstrasse 207	f	t	t	f
zurich	8001	Bahnhofquai vis-à-vis 5	f	t	t	t
zurich	8001	Gessnerallee vis-à-vis 36	f	t	t	t
zurich	8001	Hirschengraben 13	f	t	t	t
zurich	8001	Utoquai 21	f	t	f	f
zurich	8002	Am Schanzengraben 25	f	t	t	t
zurich	8002	Brunaustrasse 6	t	t	t	t
zurich	8002	General-Guisan-Quai 31	f	t	f	f
zurich	8002	General-Guisan-Quai 37	f	t	f	f
zurich	8002	Grütlstrasse 4	f	t	t	t
zurich	8002	Klopstockstrasse 23	t	t	t	t
zurich	8002	Mythenquai 1	f	t	f	f
zurich	8002	Mythenquai 21	f	t	f	f
zurich	8003	Aegertenstrasse vis-à-vis 16	f	t	t	t
zurich	8003	Bertastrasse vis à -vis 59	f	t	t	f
zurich	8003	Fritschistrasse vis-à-vis 11	f	t	t	t
zurich	8003	Idaplatz 4	f	t	t	t
zurich	8003	Letzigraben 26	f	t	t	t
zurich	8003	Meinrad-Lienert-Strasse vis-à-vis 1	f	t	t	t
zurich	8003	Schlossgasse vis-à-vis 22	f	t	t	f
zurich	8003	Seebahnstrasse 89 vis-à-vis Post	f	t	t	t
zurich	8003	Zentralstrasse vis-à-vis 76	t	t	t	t
zurich	8004	Albisriederplatz 6	t	t	t	t
zurich	8004	Bullingerstrasse 41	f	t	t	t
zurich	8004	Erismannstrasse 31	t	t	t	t
zurich	8004	Hohlstrasse vis-à-vis 90	f	t	t	t
zurich	8004	Kanzleistrasse 137	f	t	t	t
zurich	8004	Kochstrasse 21	f	t	t	t
zurich	8004	Lagerstrasse 47	f	t	t	f
zurich	8004	Molkenstrasse vis à vis 5	f	t	t	t
zurich	8004	Seebahnstrasse 171	f	t	t	t
zurich	8004	St. Jakobstr. vis-à-vis 29	t	t	t	t
zurich	8004	Tellstrasse 31	t	t	t	t
zurich	8004	Weberstrasse 3	f	t	t	t
zurich	8004	Zimmerlistrasse vis-à-vis 4	f	t	t	t
zurich	8005	Geroldstrasse 35	f	t	t	t
zurich	8005	Hardturmstrasse 126	f	t	t	t
zurich	8005	Heinrichstrasse 200 unter Viadukt	t	t	t	t
zurich	8005	Josefstrasse 92	f	t	t	f
zurich	8005	Konradstrasse 79	f	t	t	t
zurich	8005	Röntgenstrasse 39	f	t	t	t
zurich	8005	Sportweg 39	f	t	t	t
zurich	8006	Kronenstrasse 19	f	t	t	t
zurich	8006	Ottikerstrasse vis-à-vis 61	f	t	t	t
zurich	8006	Scheuchzerstrasse vis-à-vis 98	f	t	t	t
zurich	8006	Sonneggstrasse 26	f	t	t	t
zurich	8006	Sonneggstrasse vis-à-vis 84	f	t	t	t
zurich	8006	Vogelsang vis-à-vis 33	f	t	t	t
zurich	8006	Weinbergstrasse 131	t	t	t	t
zurich	8008	Bellerivestrasse 158	f	t	f	f
zurich	8008	Bleulerstrasse 70	f	t	t	t
zurich	8008	Höschgasse 4	f	t	f	f
zurich	8008	Mittelstrasse 6	f	t	t	t
zurich	8008	Mühlebachstrasse 200	f	t	t	t
zurich	8008	Mühlebachstrasse 35	t	t	t	t
zurich	8008	Riesbachstrasse 61	f	t	t	t
zurich	8008	Seefeldquai 8	f	t	f	f
zurich	8008	Seefeldstrasse 152	t	t	t	t
zurich	8008	Seefeldstrasse 233	f	t	t	t
zurich	8008	Utoquai 46	f	t	f	f
zurich	8032	Bergstrasse vis-à-vis 142	t	t	t	t
zurich	8032	Dolderstrasse vis à vis 39	f	t	t	t
zurich	8032	Forchstrasse 261	f	t	t	t
zurich	8032	Hammerstrasse vis-à-vis 43	f	t	t	t
zurich	8032	Merkurstrasse 4	f	t	t	f
zurich	8032	Schönleinstrasse 14	f	t	t	t
zurich	8037	Hönggerstrasse vis-à-vis 41	f	t	t	t
zurich	8037	Käferholzstrasse 44	f	t	t	t
zurich	8037	Lehenstrasse 65	f	t	t	t
zurich	8037	Rebbergstrasse vis-à-vis 19	f	t	t	t
zurich	8037	Rosengartenstrasse 10	f	t	t	t
zurich	8037	Rousseaustrasse vis-à-vis 101	t	t	t	t
zurich	8037	Wasserwerkstrasse 109	t	t	t	t
zurich	8037	Weihersteig 7	f	t	t	t
zurich	8038	Alte Kalchbühlstrasse 15	t	t	t	t
zurich	8038	Etzelstrasse vis-à-vis 6	f	t	t	t
zurich	8038	Morgentalstrasse vis à vis 73	f	t	t	t
zurich	8038	Mythenquai 307	f	t	f	f
zurich	8038	Mythenquai 317	f	t	f	f
zurich	8038	Paradiesstrasse 45	f	t	t	t
zurich	8038	Salomon-Vögelin-Strasse 3	f	t	t	t
zurich	8038	Tannenrauchstrasse 116	f	t	t	t
zurich	8041	Leimbachstrasse 160	t	t	t	t
zurich	8041	Maneggpromenade vis-à-vis 88	f	t	t	t
zurich	8041	Tuchmacherstrasse 18	f	t	t	t
zurich	8044	Moussonstrasse 22	f	t	t	t
zurich	8044	Spyristrasse 20	f	t	t	t
zurich	8044	Zürichbergstrasse 196	f	t	t	t
zurich	8044	Zürichbergstrasse vis-à-vis 80	t	t	t	t
zurich	8045	Arbentalstrasse 329	f	t	t	t
zurich	8045	Bachtobelstr. vis-à-vis 10	f	t	t	t
zurich	8045	Giesshübelstr. vis-à-vis 106	t	t	t	t
zurich	8045	Hegianwandweg 75	f	t	t	t
zurich	8045	Schweighofstrasse 7	f	t	t	t
zurich	8046	Georg-Kempf-Strasse 53	f	t	t	t
zurich	8046	Glaubtenstrasse 98	f	t	t	t
zurich	8046	Im Isengrind vis-à-vis 24	f	t	t	t
zurich	8046	Lerchenhalde vis à vis 53	f	t	t	t
zurich	8046	Mühlackerstrasse 122	t	t	f	t
zurich	8046	Riedenhaldenstrasse 280	t	t	t	t
zurich	8046	Schwandenholzstrasse 194	f	t	t	t
zurich	8046	Wehntalerstrasse 440	f	t	t	t
zurich	8046	Wehntalerstrasse 597	f	t	t	t
zurich	8046	Wolfswinkel vis à vis 41	f	t	t	f
zurich	8047	Albisriederstrasse 334	t	t	t	t
zurich	8047	Letzigraben 104	f	t	t	t
zurich	8047	Mühlezelgstrasse 1a	f	t	t	t
zurich	8047	Triemlistrasse 22	f	t	t	t
zurich	8048	Altstetterstr. 162	f	t	t	f
zurich	8048	Dachslernstrasse vis à vis 9	t	t	t	t
zurich	8048	Ernst-Zöbeli-Strasse vis-à-vis 4	f	t	t	t
zurich	8048	Eugen-Huber-Strasse 4	f	t	t	t
zurich	8048	Hardgutstrasse vis-à-vis 9	t	t	t	t
zurich	8048	Hohlstrasse 665	f	t	t	t
zurich	8048	Loogartenstrasse 37	t	t	t	t
zurich	8048	Rautistrasse 345	f	t	t	t
zurich	8048	Rautistrasse 77	f	t	t	t
zurich	8049	Appenzellerstrasse vis-à-vis 73	f	t	t	t
zurich	8049	Geeringstrasse 95	f	t	t	t
zurich	8049	Im Stelzenacker 11	t	t	t	t
zurich	8049	Paul-Feyerabend-Hof vis-à-vis 3	f	t	t	t
zurich	8049	Riedhofstrasse 9	t	t	t	t
zurich	8049	Riedhofstrasse vis-à-vis 104	f	t	t	t
zurich	8049	Riedhofstrasse vis-à-vis 378	f	t	t	f
zurich	8049	Werdinsel vis à vis 1	f	t	t	t
zurich	8050	Baumackerstasse- vis-à-vis 28	f	t	t	t
zurich	8050	Binzmühlestrasse 210	f	t	t	t
zurich	8050	Dörflistasse 90 vis-à-vis Stadthof 11	t	t	t	t
zurich	8050	Hagenholzstrasse 110	t	t	t	t
zurich	8050	Neunbrunnenstrasse 60	f	t	t	f
zurich	8050	Oleanderstrasse 1	f	t	t	t
zurich	8050	Opfikonstrasse 18	f	t	t	t
zurich	8050	Regensbergstrasse vis-à-vis 30	f	t	t	t
zurich	8050	Tramstrasse 55	f	t	t	t
zurich	8050	Tramstrasse vis-à-vis 208	f	t	t	t
zurich	8050	Wattstrasse vis à vis 6	f	t	t	t
zurich	8051	Bocklerstrasse vis-à-vis 14	t	t	t	t
zurich	8051	Dübendorfstrasse 350	f	t	t	t
zurich	8051	Helen-Keller-Strasse 4a	f	t	t	t
zurich	8051	Hirzenbachstrasse 40	f	t	t	t
zurich	8051	Im Altried vis-à-vis 3	f	t	t	t
zurich	8051	Kronwiesenstrasse 29	f	t	t	t
zurich	8051	Luchswiesenstrasse 25	t	t	t	t
zurich	8051	Luegislandstrasse 173	t	t	t	t
zurich	8051	Ueberlandstrasse 14	f	t	t	t
zurich	8051	Ueberlandstrasse 381	f	t	t	t
zurich	8051	Ueberlandstrasse 409	f	t	t	f
zurich	8052	Bahnhaldensttrasse  17	t	t	t	t
zurich	8052	Birchstrasse vis-à-vis 408	f	t	t	t
zurich	8052	Hertensteinstrasse 41	f	t	t	f
zurich	8052	Köschenrütistrasse 72	f	t	t	f
zurich	8052	Schaffhauserstrasse vis-à-vis 502	t	t	t	t
zurich	8052	Stiglenstrasse 50	f	t	t	t
zurich	8053	Drusbergstrasse 135	t	t	t	t
zurich	8053	Katzenschwanzstr. vis-à-vis 28	t	t	t	t
zurich	8053	Trichtenhausenstasse 93	f	t	t	t
zurich	8053	Waserstrasse vis-à-vis 36	f	t	t	t
zurich	8053	Witikonerstrasse 390	f	t	t	t
zurich	8055	Berneggweg vis-à-vis 8	f	t	t	t
zurich	8055	Birmensdorferstr. 488	t	t	t	t
zurich	8055	Birmensdorferstrasse 432	f	t	t	t
zurich	8055	Friesenbergstrasse 193	f	t	t	t
zurich	8055	Gutstrasse 149	t	t	t	t
zurich	8055	Schweighofstr. 357	t	t	t	t
zurich	8055	Talwiesenstrasse 169	f	t	t	t
zurich	8055	Talwiesenstrasse vis-à-vis 118	t	t	t	t
zurich	8057	Anna-Heer-Strasse vis-à-vis 14	f	t	t	t
zurich	8057	Hoffeld vis-à-vis 46	t	t	t	t
zurich	8057	Im Waidegg 1	t	t	t	t
zurich	8057	Langmauerstrasse 90	f	t	t	t
zurich	8057	Letzistrasse vis-à-vis 50	f	t	t	t
zurich	8057	Milchbuckstrasse 2	f	t	t	t
zurich	8057	Mimosenstrasse vis à vis 1	f	t	t	t
zurich	8057	Ringstrasse 72	f	t	t	t
zurich	8057	Viktoriastrasse 34	f	t	t	t
zurich	8057	Zeppelinstrasse 43	f	t	t	f
zurich	8064	Bändlistrasse 94	f	t	t	t
zurich	8064	Grünauring vis-à-vis 25	f	t	t	t
zurich	8064	Grünauring vis-à-vis 37	f	t	t	t
zurich	8064	Hardhof 9 bei Wasserversorgung	t	t	t	t
stgallen		Sturzeneggstrasse	f	t	t	f
stgallen		Stationsstrasse	f	t	t	t
stgallen		Schorenplatz	f	t	t	t
stgallen		Blumenbergplatz	f	t	t	f
stgallen		Spelteriniplatz	f	t	t	f
stgallen		Heiligkreuz	f	t	t	f
stgallen		Brauerstrasse	f	t	t	f
stgallen		Ahornstrasse	f	t	t	t
stgallen		Teufener Strasse	f	t	t	t
stgallen		Grabenpärkli	f	t	t	f
stgallen		Mühlegg	f	t	t	f
stgallen		EKZ Grossacker	f	t	t	t
stgallen		Güterbahnhofstrasse 6	t	f	t	f
stgallen		Steinachstrasse 92	t	f	t	f
stgallen		EKZ Neumarkt/Davidstrasse	f	t	t	f
stgallen		Pic-o-Pello-Platz/Wallstrasse	f	t	t	f
stgallen		Schulhaus Rotmonten	f	t	t	f
stgallen		Bahnhof Winkeln	f	t	t	t
stgallen		Bahnhof Haggen	t	t	t	f
stgallen		Riethüsli, Im Grund	f	t	t	t
stgallen		Dreilindenstrasse	f	t	t	f
stgallen		KVA/Sonderabfallsammelstelle Rechenwaldstrasse 32	t	f	t	f
stgallen		EKZ Lerchenfeld	f	t	t	f
stgallen		Parkplatz Schlössli	f	t	t	f
stgallen		Burgstrasse/Zeughaus	f	t	t	f
stgallen		Spiltrücklistrasse	f	t	t	t
stgallen		Untere Büschenstrasse	f	t	t	f
stgallen		Bachstrasse	f	t	t	f
stgallen		EKZ Gallusmarkt	f	t	t	t
stgallen		Sömmerliwaldstrasse	t	t	t	f
thalwil	8800	Hofwiesenstrasse	f	t	t	t
thalwil	8800	Sihlhaldenstrasse	t	t	t	t
thalwil	8800	Säumerstrasse, Armbrustschützen	t	t	t	t
thalwil	8800	Seehalden-/Alpenstrasse	f	t	t	t
thalwil	8800	Breitelistrasse	t	t	t	t
thalwil	8800	Kronenbergstrasse	f	t	t	t
thalwil	8800	Florastrasse, bei Coop	f	t	t	t
thalwil	8800	Alter Schiessstand, Dorfstrasse 71	t	t	t	t
thalwil	8800	Häuslerstrasse	f	t	t	t
thalwil	8800	Schwandelstrasse, bei Migros	\N	t	t	t
thalwil	8800	Tödistrasse, beim Schulhaus Feld	f	t	t	t
thalwil	8800	Bahnhofareal, beim Güterschuppen	f	f	f	t
\.


--
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (region, area, waste_type, col_date);


--
-- Name: station station_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (region, name);


--
-- Name: idx_region; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_region ON public.calendar USING btree (region);


--
-- Name: idx_station_region; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_station_region ON public.station USING btree (region);


--
-- Name: idx_waste_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_waste_type ON public.calendar USING btree (waste_type);


--
-- PostgreSQL database dump complete
--

