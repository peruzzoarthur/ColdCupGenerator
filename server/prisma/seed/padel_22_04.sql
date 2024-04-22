--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: ozzurep
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO ozzurep;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: ozzurep
--

COMMENT ON SCHEMA public IS '';


--
-- Name: CatType; Type: TYPE; Schema: public; Owner: ozzurep
--

CREATE TYPE public."CatType" AS ENUM (
    'ALL',
    'F',
    'M'
);


ALTER TYPE public."CatType" OWNER TO ozzurep;

--
-- Name: MatchType; Type: TYPE; Schema: public; Owner: ozzurep
--

CREATE TYPE public."MatchType" AS ENUM (
    'BO3',
    'BO5',
    'SUPERSET'
);


ALTER TYPE public."MatchType" OWNER TO ozzurep;

--
-- Name: PlayerPosition; Type: TYPE; Schema: public; Owner: ozzurep
--

CREATE TYPE public."PlayerPosition" AS ENUM (
    'REVES',
    'DRIVE'
);


ALTER TYPE public."PlayerPosition" OWNER TO ozzurep;

--
-- Name: Role; Type: TYPE; Schema: public; Owner: ozzurep
--

CREATE TYPE public."Role" AS ENUM (
    'USER',
    'ADMIN'
);


ALTER TYPE public."Role" OWNER TO ozzurep;

--
-- Name: SetType; Type: TYPE; Schema: public; Owner: ozzurep
--

CREATE TYPE public."SetType" AS ENUM (
    'NORMAL',
    'SUPER'
);


ALTER TYPE public."SetType" OWNER TO ozzurep;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Category" (
    id text NOT NULL,
    level integer NOT NULL,
    type public."CatType" NOT NULL
);


ALTER TABLE public."Category" OWNER TO ozzurep;

--
-- Name: Double; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Double" (
    id text NOT NULL,
    "categoryId" text NOT NULL
);


ALTER TABLE public."Double" OWNER TO ozzurep;

--
-- Name: Event; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Event" (
    id text NOT NULL,
    name text NOT NULL,
    "isActive" boolean DEFAULT false NOT NULL,
    "startDate" timestamp(3) without time zone,
    "finishDate" timestamp(3) without time zone,
    "matchDurationInMinutes" integer,
    "timeOfFirstMatch" integer,
    "timeOfLastMatch" integer
);


ALTER TABLE public."Event" OWNER TO ozzurep;

--
-- Name: EventDouble; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."EventDouble" (
    "eventId" text NOT NULL,
    "doubleId" text NOT NULL,
    "categoryId" text NOT NULL
);


ALTER TABLE public."EventDouble" OWNER TO ozzurep;

--
-- Name: Game; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Game" (
    id text NOT NULL,
    "setId" text NOT NULL,
    "winnerId" text
);


ALTER TABLE public."Game" OWNER TO ozzurep;

--
-- Name: Match; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Match" (
    id text NOT NULL,
    number integer NOT NULL,
    "isFinished" boolean DEFAULT false NOT NULL,
    "categoryId" text,
    "winnerDoublesId" text,
    "eventId" text,
    type public."MatchType" DEFAULT 'SUPERSET'::public."MatchType" NOT NULL,
    "matchDateId" text
);


ALTER TABLE public."Match" OWNER TO ozzurep;

--
-- Name: MatchDate; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."MatchDate" (
    id text NOT NULL,
    "eventId" text NOT NULL,
    "matchId" text,
    start timestamp(3) without time zone NOT NULL,
    finish timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."MatchDate" OWNER TO ozzurep;

--
-- Name: Match_number_seq; Type: SEQUENCE; Schema: public; Owner: ozzurep
--

CREATE SEQUENCE public."Match_number_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_number_seq" OWNER TO ozzurep;

--
-- Name: Match_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ozzurep
--

ALTER SEQUENCE public."Match_number_seq" OWNED BY public."Match".number;


--
-- Name: Place; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Place" (
    id text NOT NULL,
    name text,
    address text
);


ALTER TABLE public."Place" OWNER TO ozzurep;

--
-- Name: Player; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Player" (
    id text NOT NULL,
    email text,
    "firstName" text,
    "lastName" text,
    role public."Role" DEFAULT 'USER'::public."Role" NOT NULL,
    "position" public."PlayerPosition"
);


ALTER TABLE public."Player" OWNER TO ozzurep;

--
-- Name: Set; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."Set" (
    id text NOT NULL,
    type public."SetType" DEFAULT 'SUPER'::public."SetType" NOT NULL,
    "setWinnerId" text,
    result text,
    "isFinished" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Set" OWNER TO ozzurep;

--
-- Name: _CategoryToEvent; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_CategoryToEvent" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_CategoryToEvent" OWNER TO ozzurep;

--
-- Name: _CategoryToPlayer; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_CategoryToPlayer" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_CategoryToPlayer" OWNER TO ozzurep;

--
-- Name: _DoubleToMatch; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_DoubleToMatch" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_DoubleToMatch" OWNER TO ozzurep;

--
-- Name: _DoubleToPlayer; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_DoubleToPlayer" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_DoubleToPlayer" OWNER TO ozzurep;

--
-- Name: _DoubleToSet; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_DoubleToSet" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_DoubleToSet" OWNER TO ozzurep;

--
-- Name: _EventToGame; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_EventToGame" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_EventToGame" OWNER TO ozzurep;

--
-- Name: _EventToPlace; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_EventToPlace" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_EventToPlace" OWNER TO ozzurep;

--
-- Name: _EventToPlayer; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_EventToPlayer" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_EventToPlayer" OWNER TO ozzurep;

--
-- Name: _EventToSet; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_EventToSet" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_EventToSet" OWNER TO ozzurep;

--
-- Name: _GamesPlayed; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_GamesPlayed" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_GamesPlayed" OWNER TO ozzurep;

--
-- Name: _MatchToPlayer; Type: TABLE; Schema: public; Owner: ozzurep
--

CREATE TABLE public."_MatchToPlayer" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_MatchToPlayer" OWNER TO ozzurep;

--
-- Name: Match number; Type: DEFAULT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Match" ALTER COLUMN number SET DEFAULT nextval('public."Match_number_seq"'::regclass);


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Category" (id, level, type) FROM stdin;
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	1	ALL
7e7659df-b9f1-479d-9f22-ab9708251db1	2	ALL
d3888721-b342-4aeb-83bf-b7837b907253	3	ALL
7198a299-b9d0-46f9-bc64-1efd9e1c4d6d	4	ALL
\.


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Double" (id, "categoryId") FROM stdin;
dde24a97-e001-4b5f-826a-00418ee276af	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
2be5cff8-0a75-4469-b53b-3f18ce50c848	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
74e3802f-50f5-4bab-904c-8a79cf816757	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
65468222-69d0-4a8b-8cbf-1414811d78d7	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	7e7659df-b9f1-479d-9f22-ab9708251db1
d19703d2-774f-4d3e-bdb7-c48fd553c05a	7e7659df-b9f1-479d-9f22-ab9708251db1
80ea77b7-f96d-4e80-833a-2000e178e85b	7e7659df-b9f1-479d-9f22-ab9708251db1
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	7e7659df-b9f1-479d-9f22-ab9708251db1
461c42de-3db5-41e0-b4ad-5e2a8936a52a	7e7659df-b9f1-479d-9f22-ab9708251db1
\.


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch") FROM stdin;
305b9532-2001-404e-ad4f-5294e64d7752	Copa do Bem	t	2024-04-18 03:00:00	2024-04-20 03:00:00	60	8	16
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	Copa sem tempo	f	2024-04-23 03:00:00	2024-04-24 03:00:00	90	9	12
\.


--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."EventDouble" ("eventId", "doubleId", "categoryId") FROM stdin;
305b9532-2001-404e-ad4f-5294e64d7752	dde24a97-e001-4b5f-826a-00418ee276af	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
305b9532-2001-404e-ad4f-5294e64d7752	2be5cff8-0a75-4469-b53b-3f18ce50c848	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
305b9532-2001-404e-ad4f-5294e64d7752	74e3802f-50f5-4bab-904c-8a79cf816757	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
305b9532-2001-404e-ad4f-5294e64d7752	65468222-69d0-4a8b-8cbf-1414811d78d7	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
305b9532-2001-404e-ad4f-5294e64d7752	e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
305b9532-2001-404e-ad4f-5294e64d7752	c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
305b9532-2001-404e-ad4f-5294e64d7752	0b17b9ce-23b5-4242-bdd1-05f570ed14e6	7e7659df-b9f1-479d-9f22-ab9708251db1
305b9532-2001-404e-ad4f-5294e64d7752	d19703d2-774f-4d3e-bdb7-c48fd553c05a	7e7659df-b9f1-479d-9f22-ab9708251db1
305b9532-2001-404e-ad4f-5294e64d7752	80ea77b7-f96d-4e80-833a-2000e178e85b	7e7659df-b9f1-479d-9f22-ab9708251db1
305b9532-2001-404e-ad4f-5294e64d7752	5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	7e7659df-b9f1-479d-9f22-ab9708251db1
305b9532-2001-404e-ad4f-5294e64d7752	461c42de-3db5-41e0-b4ad-5e2a8936a52a	7e7659df-b9f1-479d-9f22-ab9708251db1
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	dde24a97-e001-4b5f-826a-00418ee276af	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	2be5cff8-0a75-4469-b53b-3f18ce50c848	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	74e3802f-50f5-4bab-904c-8a79cf816757	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	65468222-69d0-4a8b-8cbf-1414811d78d7	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	8eeb7c40-db68-4b92-b6fd-91606c1fcc99
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	461c42de-3db5-41e0-b4ad-5e2a8936a52a	7e7659df-b9f1-479d-9f22-ab9708251db1
\.


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Game" (id, "setId", "winnerId") FROM stdin;
\.


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") FROM stdin;
a222d326-e51e-4bc2-bfe1-0e06658c9940	1	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
8f9bcc79-ed7f-45a5-b8c9-f51a7b762130	2	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
164cfef7-c2ff-4070-8291-0aea148293ac	3	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
edc6f910-930a-4e24-be9b-f79026e45243	4	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
f24be4b3-d231-4e39-91e8-149642861abc	5	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
01cb05d9-e27d-4096-8428-530cdfc9bb7e	6	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
1386eb8a-3d6d-4fab-90b7-d0d98023c7fb	7	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
25828fd1-11bf-4b61-99a1-27777ff2e863	8	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
f33f3c49-b1f1-4346-98a0-f09c9eb4a579	9	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
95ddfa30-7d7d-4b58-998d-e154ca1507f3	10	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
81308401-c652-45d7-843f-73ea0f585db5	11	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
b67cde7a-b935-46a8-8236-948fc8e35f1e	12	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
8b9437b1-7c3e-453c-8bdf-1077fadff212	13	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
9ca2348f-7a6b-4724-82af-5fb66e6d8701	14	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
e32e8085-7d00-437a-86b6-a23fc643433d	15	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
017272d4-7251-4c6a-bae7-b9097934f388	16	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2	17	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
e2e83ce1-ca4d-4713-8f37-546061bc1766	18	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
12c44399-9a2d-4a50-9303-92d986c198cf	19	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
6ef50287-c4a1-4fca-aabd-2c48d2f0d255	20	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
170727cd-fd44-4dd5-9c38-ab436eb93907	21	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
307ae60a-a501-4f6e-9820-78089e50c607	22	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
0d78c6c7-e966-40f9-8229-26302b29337a	23	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
834632ee-a706-4111-88c3-248e4e9d9a3f	24	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
4e28c7d9-695b-4753-be86-4ecc7d0761ce	25	f	7e7659df-b9f1-479d-9f22-ab9708251db1	\N	305b9532-2001-404e-ad4f-5294e64d7752	SUPERSET	\N
2fb135df-55b5-4144-874b-adb9931c5ecf	26	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	SUPERSET	\N
7721a878-f289-4bea-bcd3-78b6e8376192	27	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	SUPERSET	\N
5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c	28	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	SUPERSET	\N
63b8e2c1-4fca-411a-886f-9d0b39f64f07	29	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	SUPERSET	\N
0122b617-7bc5-4cdf-9386-dfaae63a772f	30	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	SUPERSET	\N
54ce67aa-44d0-4cd6-8e3e-13418a5fff84	31	f	8eeb7c40-db68-4b92-b6fd-91606c1fcc99	\N	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	SUPERSET	\N
\.


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."MatchDate" (id, "eventId", "matchId", start, finish) FROM stdin;
55e1e34e-adee-4c05-973d-f3b6f5439317	305b9532-2001-404e-ad4f-5294e64d7752	\N	2024-04-20 18:00:00	2024-04-20 19:00:00
7c9273ab-fec9-4d3a-85d2-43eceeed2acf	305b9532-2001-404e-ad4f-5294e64d7752	\N	2024-04-20 19:00:00	2024-04-20 20:00:00
3d17e8ee-1bcf-4ed1-898f-8a37f5ca804a	305b9532-2001-404e-ad4f-5294e64d7752	a222d326-e51e-4bc2-bfe1-0e06658c9940	2024-04-18 11:00:00	2024-04-18 12:00:00
6e9dd10e-797e-4980-b1f6-3ca30d2b3745	305b9532-2001-404e-ad4f-5294e64d7752	8f9bcc79-ed7f-45a5-b8c9-f51a7b762130	2024-04-18 12:00:00	2024-04-18 13:00:00
04502a76-dc6f-4a06-875f-94b1030a3d60	305b9532-2001-404e-ad4f-5294e64d7752	164cfef7-c2ff-4070-8291-0aea148293ac	2024-04-18 13:00:00	2024-04-18 14:00:00
47315472-00d4-455a-8f3d-dcd1c5f34817	305b9532-2001-404e-ad4f-5294e64d7752	edc6f910-930a-4e24-be9b-f79026e45243	2024-04-18 14:00:00	2024-04-18 15:00:00
aad1b361-b210-4391-91de-515f040feed7	305b9532-2001-404e-ad4f-5294e64d7752	f24be4b3-d231-4e39-91e8-149642861abc	2024-04-18 15:00:00	2024-04-18 16:00:00
e1579539-abe4-4b0f-aa7d-8907ff78d1aa	305b9532-2001-404e-ad4f-5294e64d7752	01cb05d9-e27d-4096-8428-530cdfc9bb7e	2024-04-18 16:00:00	2024-04-18 17:00:00
2322b071-bb91-49ba-bd7e-5b2a05e8be87	305b9532-2001-404e-ad4f-5294e64d7752	1386eb8a-3d6d-4fab-90b7-d0d98023c7fb	2024-04-18 17:00:00	2024-04-18 18:00:00
d7f414a7-8bb1-4d8c-8d21-7b7accd82aca	305b9532-2001-404e-ad4f-5294e64d7752	25828fd1-11bf-4b61-99a1-27777ff2e863	2024-04-18 18:00:00	2024-04-18 19:00:00
a91419a2-c888-4483-8ff0-c47f3a5b38cc	305b9532-2001-404e-ad4f-5294e64d7752	f33f3c49-b1f1-4346-98a0-f09c9eb4a579	2024-04-18 19:00:00	2024-04-18 20:00:00
5882c4f0-b94e-4a96-ab27-fcdebc095a84	305b9532-2001-404e-ad4f-5294e64d7752	95ddfa30-7d7d-4b58-998d-e154ca1507f3	2024-04-19 11:00:00	2024-04-19 12:00:00
d7aaa5be-1f3f-441a-8827-95f7d43569bb	305b9532-2001-404e-ad4f-5294e64d7752	81308401-c652-45d7-843f-73ea0f585db5	2024-04-19 12:00:00	2024-04-19 13:00:00
ec10d40a-0daf-45f1-840d-891f85e57b58	305b9532-2001-404e-ad4f-5294e64d7752	b67cde7a-b935-46a8-8236-948fc8e35f1e	2024-04-19 13:00:00	2024-04-19 14:00:00
d88e39b6-1fbb-44e8-b7c8-101e8f720fc6	305b9532-2001-404e-ad4f-5294e64d7752	8b9437b1-7c3e-453c-8bdf-1077fadff212	2024-04-19 14:00:00	2024-04-19 15:00:00
8c3e5bd1-3e60-4047-893e-0c19e6bafb06	305b9532-2001-404e-ad4f-5294e64d7752	9ca2348f-7a6b-4724-82af-5fb66e6d8701	2024-04-19 15:00:00	2024-04-19 16:00:00
cfa760c9-3c6e-4c2d-b4d7-3c5f3ce66f16	305b9532-2001-404e-ad4f-5294e64d7752	e32e8085-7d00-437a-86b6-a23fc643433d	2024-04-19 16:00:00	2024-04-19 17:00:00
816c4071-b61e-43bb-bc43-4e0aec78b837	305b9532-2001-404e-ad4f-5294e64d7752	017272d4-7251-4c6a-bae7-b9097934f388	2024-04-19 17:00:00	2024-04-19 18:00:00
d9c8c2a7-18ab-471c-a3f4-f03d0b4f1138	305b9532-2001-404e-ad4f-5294e64d7752	6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2	2024-04-19 18:00:00	2024-04-19 19:00:00
85389d36-37db-45f1-94aa-30252835127d	305b9532-2001-404e-ad4f-5294e64d7752	e2e83ce1-ca4d-4713-8f37-546061bc1766	2024-04-19 19:00:00	2024-04-19 20:00:00
91cc8923-2797-42ce-a2b3-a27cf68bdf09	305b9532-2001-404e-ad4f-5294e64d7752	12c44399-9a2d-4a50-9303-92d986c198cf	2024-04-20 11:00:00	2024-04-20 12:00:00
e2de0062-22a2-40e4-97b2-0aaa2dfbdaf4	305b9532-2001-404e-ad4f-5294e64d7752	6ef50287-c4a1-4fca-aabd-2c48d2f0d255	2024-04-20 12:00:00	2024-04-20 13:00:00
d27341e9-a217-44b3-9539-2f57e1106d70	305b9532-2001-404e-ad4f-5294e64d7752	170727cd-fd44-4dd5-9c38-ab436eb93907	2024-04-20 13:00:00	2024-04-20 14:00:00
e79d9922-1be9-4cc2-9bba-0f304b24fab9	305b9532-2001-404e-ad4f-5294e64d7752	307ae60a-a501-4f6e-9820-78089e50c607	2024-04-20 14:00:00	2024-04-20 15:00:00
9e006811-30bc-4e0e-8cae-77acbd1e2b37	305b9532-2001-404e-ad4f-5294e64d7752	0d78c6c7-e966-40f9-8229-26302b29337a	2024-04-20 15:00:00	2024-04-20 16:00:00
c2f5e9c2-c106-43d7-bbf2-c756c7a89706	305b9532-2001-404e-ad4f-5294e64d7752	834632ee-a706-4111-88c3-248e4e9d9a3f	2024-04-20 16:00:00	2024-04-20 17:00:00
882f9a52-54c1-44f6-b8a7-4aee2ca6ad1b	305b9532-2001-404e-ad4f-5294e64d7752	4e28c7d9-695b-4753-be86-4ecc7d0761ce	2024-04-20 17:00:00	2024-04-20 18:00:00
039fa70d-6569-4895-92cc-f5364ca4f77d	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	2fb135df-55b5-4144-874b-adb9931c5ecf	2024-04-23 12:00:00	2024-04-23 13:30:00
996f62fe-a054-4700-83f0-d8257b4db9e8	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	7721a878-f289-4bea-bcd3-78b6e8376192	2024-04-23 13:30:00	2024-04-23 15:00:00
3d20df98-45c7-437b-a7b2-dcfbef3a0416	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c	2024-04-23 15:00:00	2024-04-23 16:30:00
2638f440-1f01-4f25-b373-2af796feadd2	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	63b8e2c1-4fca-411a-886f-9d0b39f64f07	2024-04-24 12:00:00	2024-04-24 13:30:00
0e6a6f4b-38da-437e-b510-b6e4ee979e83	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	0122b617-7bc5-4cdf-9386-dfaae63a772f	2024-04-24 13:30:00	2024-04-24 15:00:00
7f008bd2-c679-48f6-9931-de7d7c235b9f	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	54ce67aa-44d0-4cd6-8e3e-13418a5fff84	2024-04-24 15:00:00	2024-04-24 16:30:00
\.


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Place" (id, name, address) FROM stdin;
97b62351-2b3a-4657-94ee-aaa89611b36b	Complexo CK	General Gomes Tortinho, 255.
\.


--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Player" (id, email, "firstName", "lastName", role, "position") FROM stdin;
02ffbe02-8a57-4d7c-b24c-cbb92072f677	ArthurOzzurep@proton.me	Arthur	Ozzurep	USER	REVES
a018fc1f-1b61-4ef4-b1f2-64d16fde7181	JuJu@proton.me	Ju	Ju	USER	DRIVE
55daca93-04d8-4cdf-bb67-9e219cbf0722	MariaIj@proton.me	Maria	Ij	USER	REVES
0e431aaf-4ee6-449e-afd3-ead782188557	MedusaPluminha@proton.me	Medusa	Pluminha	USER	DRIVE
8238b3c0-f73e-4df9-886a-4af296b63d7f	XoanPlastic@proton.me	Xoan	Plastic	USER	DRIVE
ff0c9538-6d18-4df3-a333-0e47b71b3ce5	GueldeDeus@proton.me	Guel	deDeus	USER	REVES
8e2389aa-2a93-48fb-8007-3900e97fc8ed	JumaZobrinha@proton.me	Juma	Zobrinha	USER	DRIVE
e68c7a02-3bb8-464e-a7d4-41c7ec9af471	MedusinhaArteira@proton.me	Medusinha	Arteira	USER	REVES
607341a5-ab0b-43a0-b59f-3e2b2a4f8922	MercedesOrquita@proton.me	Mercedes	Orquita	USER	REVES
dfd1358d-f4db-4bc3-889b-a59d71ed5fda	MarleyCeva Pra Nos@proton.me	Marley	Ceva Pra Nos	USER	DRIVE
0eb0e343-32d8-4b00-8922-2f54d5d4ded0	Player1@proton.me	Player	1	USER	DRIVE
07fa9484-fa56-46a0-bce9-924e1e3cc2f5	Player2@proton.me	Player	2	USER	REVES
3f235d32-6c24-4f63-9a26-56a8dd320ba4	PlayerThree@proton.me	Player	Three	USER	DRIVE
5ae0e20e-3caf-459c-a5c7-a08d5182bc28	PlayerFour@proton.me	Player	Four	USER	REVES
ac81b09b-b4f6-4fc5-9649-266beefe9fbc	Player5@proton.me	Player	5	USER	DRIVE
83d3e050-7351-4efd-aef4-0360940d9d35	Player6@proton.me	Player	6	USER	REVES
55c2c9b5-0130-4293-a3a7-87258c56368e	P7@proton.me	P	7	USER	DRIVE
52989583-f841-4601-9616-6d8ade34aae9	P8@proton.me	P	8	USER	DRIVE
b4ac0047-06b1-4e56-81b3-1935ebaa6194	P9@proton.me	P	9	USER	DRIVE
f02dab57-971a-41de-99ca-1a1a93f9de35	P10@proton.me	P	10	USER	DRIVE
77e8219a-2fcc-4b82-afee-059cc7549134	JogadorA@proton.me	Jogador	A	USER	DRIVE
5cb3b9d0-309b-456f-a5c1-bca393d9d576	JogadorB@proton.me	Jogador	B	USER	DRIVE
\.


--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."Set" (id, type, "setWinnerId", result, "isFinished") FROM stdin;
a222d326-e51e-4bc2-bfe1-0e06658c9940	SUPER	\N	\N	f
8f9bcc79-ed7f-45a5-b8c9-f51a7b762130	SUPER	\N	\N	f
164cfef7-c2ff-4070-8291-0aea148293ac	SUPER	\N	\N	f
edc6f910-930a-4e24-be9b-f79026e45243	SUPER	\N	\N	f
f24be4b3-d231-4e39-91e8-149642861abc	SUPER	\N	\N	f
01cb05d9-e27d-4096-8428-530cdfc9bb7e	SUPER	\N	\N	f
1386eb8a-3d6d-4fab-90b7-d0d98023c7fb	SUPER	\N	\N	f
25828fd1-11bf-4b61-99a1-27777ff2e863	SUPER	\N	\N	f
f33f3c49-b1f1-4346-98a0-f09c9eb4a579	SUPER	\N	\N	f
95ddfa30-7d7d-4b58-998d-e154ca1507f3	SUPER	\N	\N	f
81308401-c652-45d7-843f-73ea0f585db5	SUPER	\N	\N	f
b67cde7a-b935-46a8-8236-948fc8e35f1e	SUPER	\N	\N	f
8b9437b1-7c3e-453c-8bdf-1077fadff212	SUPER	\N	\N	f
9ca2348f-7a6b-4724-82af-5fb66e6d8701	SUPER	\N	\N	f
e32e8085-7d00-437a-86b6-a23fc643433d	SUPER	\N	\N	f
017272d4-7251-4c6a-bae7-b9097934f388	SUPER	\N	\N	f
6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2	SUPER	\N	\N	f
e2e83ce1-ca4d-4713-8f37-546061bc1766	SUPER	\N	\N	f
12c44399-9a2d-4a50-9303-92d986c198cf	SUPER	\N	\N	f
6ef50287-c4a1-4fca-aabd-2c48d2f0d255	SUPER	\N	\N	f
170727cd-fd44-4dd5-9c38-ab436eb93907	SUPER	\N	\N	f
307ae60a-a501-4f6e-9820-78089e50c607	SUPER	\N	\N	f
0d78c6c7-e966-40f9-8229-26302b29337a	SUPER	\N	\N	f
834632ee-a706-4111-88c3-248e4e9d9a3f	SUPER	\N	\N	f
4e28c7d9-695b-4753-be86-4ecc7d0761ce	SUPER	\N	\N	f
2fb135df-55b5-4144-874b-adb9931c5ecf	SUPER	\N	\N	f
7721a878-f289-4bea-bcd3-78b6e8376192	SUPER	\N	\N	f
5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c	SUPER	\N	\N	f
63b8e2c1-4fca-411a-886f-9d0b39f64f07	SUPER	\N	\N	f
0122b617-7bc5-4cdf-9386-dfaae63a772f	SUPER	\N	\N	f
54ce67aa-44d0-4cd6-8e3e-13418a5fff84	SUPER	\N	\N	f
\.


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_CategoryToEvent" ("A", "B") FROM stdin;
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	305b9532-2001-404e-ad4f-5294e64d7752
7e7659df-b9f1-479d-9f22-ab9708251db1	305b9532-2001-404e-ad4f-5294e64d7752
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	53e3ce78-ce80-4aa3-a948-0c4d1cb38de5
\.


--
-- Data for Name: _CategoryToPlayer; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_CategoryToPlayer" ("A", "B") FROM stdin;
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	02ffbe02-8a57-4d7c-b24c-cbb92072f677
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	a018fc1f-1b61-4ef4-b1f2-64d16fde7181
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	55daca93-04d8-4cdf-bb67-9e219cbf0722
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	0e431aaf-4ee6-449e-afd3-ead782188557
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	8238b3c0-f73e-4df9-886a-4af296b63d7f
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	ff0c9538-6d18-4df3-a333-0e47b71b3ce5
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	8e2389aa-2a93-48fb-8007-3900e97fc8ed
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	e68c7a02-3bb8-464e-a7d4-41c7ec9af471
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	607341a5-ab0b-43a0-b59f-3e2b2a4f8922
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	dfd1358d-f4db-4bc3-889b-a59d71ed5fda
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	0eb0e343-32d8-4b00-8922-2f54d5d4ded0
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	07fa9484-fa56-46a0-bce9-924e1e3cc2f5
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	3f235d32-6c24-4f63-9a26-56a8dd320ba4
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	5ae0e20e-3caf-459c-a5c7-a08d5182bc28
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	ac81b09b-b4f6-4fc5-9649-266beefe9fbc
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	83d3e050-7351-4efd-aef4-0360940d9d35
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	55c2c9b5-0130-4293-a3a7-87258c56368e
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	52989583-f841-4601-9616-6d8ade34aae9
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	b4ac0047-06b1-4e56-81b3-1935ebaa6194
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	f02dab57-971a-41de-99ca-1a1a93f9de35
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	77e8219a-2fcc-4b82-afee-059cc7549134
8eeb7c40-db68-4b92-b6fd-91606c1fcc99	5cb3b9d0-309b-456f-a5c1-bca393d9d576
\.


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_DoubleToMatch" ("A", "B") FROM stdin;
dde24a97-e001-4b5f-826a-00418ee276af	a222d326-e51e-4bc2-bfe1-0e06658c9940
2be5cff8-0a75-4469-b53b-3f18ce50c848	a222d326-e51e-4bc2-bfe1-0e06658c9940
dde24a97-e001-4b5f-826a-00418ee276af	8f9bcc79-ed7f-45a5-b8c9-f51a7b762130
74e3802f-50f5-4bab-904c-8a79cf816757	8f9bcc79-ed7f-45a5-b8c9-f51a7b762130
dde24a97-e001-4b5f-826a-00418ee276af	164cfef7-c2ff-4070-8291-0aea148293ac
65468222-69d0-4a8b-8cbf-1414811d78d7	164cfef7-c2ff-4070-8291-0aea148293ac
dde24a97-e001-4b5f-826a-00418ee276af	edc6f910-930a-4e24-be9b-f79026e45243
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	edc6f910-930a-4e24-be9b-f79026e45243
dde24a97-e001-4b5f-826a-00418ee276af	f24be4b3-d231-4e39-91e8-149642861abc
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	f24be4b3-d231-4e39-91e8-149642861abc
2be5cff8-0a75-4469-b53b-3f18ce50c848	01cb05d9-e27d-4096-8428-530cdfc9bb7e
74e3802f-50f5-4bab-904c-8a79cf816757	01cb05d9-e27d-4096-8428-530cdfc9bb7e
2be5cff8-0a75-4469-b53b-3f18ce50c848	1386eb8a-3d6d-4fab-90b7-d0d98023c7fb
65468222-69d0-4a8b-8cbf-1414811d78d7	1386eb8a-3d6d-4fab-90b7-d0d98023c7fb
2be5cff8-0a75-4469-b53b-3f18ce50c848	25828fd1-11bf-4b61-99a1-27777ff2e863
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	25828fd1-11bf-4b61-99a1-27777ff2e863
2be5cff8-0a75-4469-b53b-3f18ce50c848	f33f3c49-b1f1-4346-98a0-f09c9eb4a579
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	f33f3c49-b1f1-4346-98a0-f09c9eb4a579
74e3802f-50f5-4bab-904c-8a79cf816757	95ddfa30-7d7d-4b58-998d-e154ca1507f3
65468222-69d0-4a8b-8cbf-1414811d78d7	95ddfa30-7d7d-4b58-998d-e154ca1507f3
74e3802f-50f5-4bab-904c-8a79cf816757	81308401-c652-45d7-843f-73ea0f585db5
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	81308401-c652-45d7-843f-73ea0f585db5
74e3802f-50f5-4bab-904c-8a79cf816757	b67cde7a-b935-46a8-8236-948fc8e35f1e
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	b67cde7a-b935-46a8-8236-948fc8e35f1e
65468222-69d0-4a8b-8cbf-1414811d78d7	8b9437b1-7c3e-453c-8bdf-1077fadff212
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	8b9437b1-7c3e-453c-8bdf-1077fadff212
65468222-69d0-4a8b-8cbf-1414811d78d7	9ca2348f-7a6b-4724-82af-5fb66e6d8701
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	9ca2348f-7a6b-4724-82af-5fb66e6d8701
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	e32e8085-7d00-437a-86b6-a23fc643433d
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	e32e8085-7d00-437a-86b6-a23fc643433d
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	017272d4-7251-4c6a-bae7-b9097934f388
d19703d2-774f-4d3e-bdb7-c48fd553c05a	017272d4-7251-4c6a-bae7-b9097934f388
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2
80ea77b7-f96d-4e80-833a-2000e178e85b	6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	e2e83ce1-ca4d-4713-8f37-546061bc1766
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	e2e83ce1-ca4d-4713-8f37-546061bc1766
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	12c44399-9a2d-4a50-9303-92d986c198cf
461c42de-3db5-41e0-b4ad-5e2a8936a52a	12c44399-9a2d-4a50-9303-92d986c198cf
d19703d2-774f-4d3e-bdb7-c48fd553c05a	6ef50287-c4a1-4fca-aabd-2c48d2f0d255
80ea77b7-f96d-4e80-833a-2000e178e85b	6ef50287-c4a1-4fca-aabd-2c48d2f0d255
d19703d2-774f-4d3e-bdb7-c48fd553c05a	170727cd-fd44-4dd5-9c38-ab436eb93907
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	170727cd-fd44-4dd5-9c38-ab436eb93907
d19703d2-774f-4d3e-bdb7-c48fd553c05a	307ae60a-a501-4f6e-9820-78089e50c607
461c42de-3db5-41e0-b4ad-5e2a8936a52a	307ae60a-a501-4f6e-9820-78089e50c607
80ea77b7-f96d-4e80-833a-2000e178e85b	0d78c6c7-e966-40f9-8229-26302b29337a
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	0d78c6c7-e966-40f9-8229-26302b29337a
80ea77b7-f96d-4e80-833a-2000e178e85b	834632ee-a706-4111-88c3-248e4e9d9a3f
461c42de-3db5-41e0-b4ad-5e2a8936a52a	834632ee-a706-4111-88c3-248e4e9d9a3f
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	4e28c7d9-695b-4753-be86-4ecc7d0761ce
461c42de-3db5-41e0-b4ad-5e2a8936a52a	4e28c7d9-695b-4753-be86-4ecc7d0761ce
2be5cff8-0a75-4469-b53b-3f18ce50c848	2fb135df-55b5-4144-874b-adb9931c5ecf
65468222-69d0-4a8b-8cbf-1414811d78d7	2fb135df-55b5-4144-874b-adb9931c5ecf
2be5cff8-0a75-4469-b53b-3f18ce50c848	7721a878-f289-4bea-bcd3-78b6e8376192
74e3802f-50f5-4bab-904c-8a79cf816757	7721a878-f289-4bea-bcd3-78b6e8376192
2be5cff8-0a75-4469-b53b-3f18ce50c848	5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c
dde24a97-e001-4b5f-826a-00418ee276af	63b8e2c1-4fca-411a-886f-9d0b39f64f07
2be5cff8-0a75-4469-b53b-3f18ce50c848	63b8e2c1-4fca-411a-886f-9d0b39f64f07
2be5cff8-0a75-4469-b53b-3f18ce50c848	0122b617-7bc5-4cdf-9386-dfaae63a772f
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	0122b617-7bc5-4cdf-9386-dfaae63a772f
74e3802f-50f5-4bab-904c-8a79cf816757	54ce67aa-44d0-4cd6-8e3e-13418a5fff84
65468222-69d0-4a8b-8cbf-1414811d78d7	54ce67aa-44d0-4cd6-8e3e-13418a5fff84
\.


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_DoubleToPlayer" ("A", "B") FROM stdin;
dde24a97-e001-4b5f-826a-00418ee276af	02ffbe02-8a57-4d7c-b24c-cbb92072f677
dde24a97-e001-4b5f-826a-00418ee276af	a018fc1f-1b61-4ef4-b1f2-64d16fde7181
2be5cff8-0a75-4469-b53b-3f18ce50c848	55daca93-04d8-4cdf-bb67-9e219cbf0722
2be5cff8-0a75-4469-b53b-3f18ce50c848	0e431aaf-4ee6-449e-afd3-ead782188557
74e3802f-50f5-4bab-904c-8a79cf816757	8238b3c0-f73e-4df9-886a-4af296b63d7f
74e3802f-50f5-4bab-904c-8a79cf816757	ff0c9538-6d18-4df3-a333-0e47b71b3ce5
65468222-69d0-4a8b-8cbf-1414811d78d7	8e2389aa-2a93-48fb-8007-3900e97fc8ed
65468222-69d0-4a8b-8cbf-1414811d78d7	e68c7a02-3bb8-464e-a7d4-41c7ec9af471
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	607341a5-ab0b-43a0-b59f-3e2b2a4f8922
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	dfd1358d-f4db-4bc3-889b-a59d71ed5fda
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	0eb0e343-32d8-4b00-8922-2f54d5d4ded0
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	07fa9484-fa56-46a0-bce9-924e1e3cc2f5
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	3f235d32-6c24-4f63-9a26-56a8dd320ba4
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	5ae0e20e-3caf-459c-a5c7-a08d5182bc28
d19703d2-774f-4d3e-bdb7-c48fd553c05a	ac81b09b-b4f6-4fc5-9649-266beefe9fbc
d19703d2-774f-4d3e-bdb7-c48fd553c05a	83d3e050-7351-4efd-aef4-0360940d9d35
80ea77b7-f96d-4e80-833a-2000e178e85b	55c2c9b5-0130-4293-a3a7-87258c56368e
80ea77b7-f96d-4e80-833a-2000e178e85b	52989583-f841-4601-9616-6d8ade34aae9
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	b4ac0047-06b1-4e56-81b3-1935ebaa6194
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	f02dab57-971a-41de-99ca-1a1a93f9de35
461c42de-3db5-41e0-b4ad-5e2a8936a52a	77e8219a-2fcc-4b82-afee-059cc7549134
461c42de-3db5-41e0-b4ad-5e2a8936a52a	5cb3b9d0-309b-456f-a5c1-bca393d9d576
\.


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_DoubleToSet" ("A", "B") FROM stdin;
dde24a97-e001-4b5f-826a-00418ee276af	a222d326-e51e-4bc2-bfe1-0e06658c9940
2be5cff8-0a75-4469-b53b-3f18ce50c848	a222d326-e51e-4bc2-bfe1-0e06658c9940
dde24a97-e001-4b5f-826a-00418ee276af	8f9bcc79-ed7f-45a5-b8c9-f51a7b762130
74e3802f-50f5-4bab-904c-8a79cf816757	8f9bcc79-ed7f-45a5-b8c9-f51a7b762130
dde24a97-e001-4b5f-826a-00418ee276af	164cfef7-c2ff-4070-8291-0aea148293ac
65468222-69d0-4a8b-8cbf-1414811d78d7	164cfef7-c2ff-4070-8291-0aea148293ac
dde24a97-e001-4b5f-826a-00418ee276af	edc6f910-930a-4e24-be9b-f79026e45243
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	edc6f910-930a-4e24-be9b-f79026e45243
dde24a97-e001-4b5f-826a-00418ee276af	f24be4b3-d231-4e39-91e8-149642861abc
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	f24be4b3-d231-4e39-91e8-149642861abc
2be5cff8-0a75-4469-b53b-3f18ce50c848	01cb05d9-e27d-4096-8428-530cdfc9bb7e
74e3802f-50f5-4bab-904c-8a79cf816757	01cb05d9-e27d-4096-8428-530cdfc9bb7e
2be5cff8-0a75-4469-b53b-3f18ce50c848	1386eb8a-3d6d-4fab-90b7-d0d98023c7fb
65468222-69d0-4a8b-8cbf-1414811d78d7	1386eb8a-3d6d-4fab-90b7-d0d98023c7fb
2be5cff8-0a75-4469-b53b-3f18ce50c848	25828fd1-11bf-4b61-99a1-27777ff2e863
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	25828fd1-11bf-4b61-99a1-27777ff2e863
2be5cff8-0a75-4469-b53b-3f18ce50c848	f33f3c49-b1f1-4346-98a0-f09c9eb4a579
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	f33f3c49-b1f1-4346-98a0-f09c9eb4a579
74e3802f-50f5-4bab-904c-8a79cf816757	95ddfa30-7d7d-4b58-998d-e154ca1507f3
65468222-69d0-4a8b-8cbf-1414811d78d7	95ddfa30-7d7d-4b58-998d-e154ca1507f3
74e3802f-50f5-4bab-904c-8a79cf816757	81308401-c652-45d7-843f-73ea0f585db5
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	81308401-c652-45d7-843f-73ea0f585db5
74e3802f-50f5-4bab-904c-8a79cf816757	b67cde7a-b935-46a8-8236-948fc8e35f1e
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	b67cde7a-b935-46a8-8236-948fc8e35f1e
65468222-69d0-4a8b-8cbf-1414811d78d7	8b9437b1-7c3e-453c-8bdf-1077fadff212
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	8b9437b1-7c3e-453c-8bdf-1077fadff212
65468222-69d0-4a8b-8cbf-1414811d78d7	9ca2348f-7a6b-4724-82af-5fb66e6d8701
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	9ca2348f-7a6b-4724-82af-5fb66e6d8701
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	e32e8085-7d00-437a-86b6-a23fc643433d
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	e32e8085-7d00-437a-86b6-a23fc643433d
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	017272d4-7251-4c6a-bae7-b9097934f388
d19703d2-774f-4d3e-bdb7-c48fd553c05a	017272d4-7251-4c6a-bae7-b9097934f388
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2
80ea77b7-f96d-4e80-833a-2000e178e85b	6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	e2e83ce1-ca4d-4713-8f37-546061bc1766
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	e2e83ce1-ca4d-4713-8f37-546061bc1766
0b17b9ce-23b5-4242-bdd1-05f570ed14e6	12c44399-9a2d-4a50-9303-92d986c198cf
461c42de-3db5-41e0-b4ad-5e2a8936a52a	12c44399-9a2d-4a50-9303-92d986c198cf
d19703d2-774f-4d3e-bdb7-c48fd553c05a	6ef50287-c4a1-4fca-aabd-2c48d2f0d255
80ea77b7-f96d-4e80-833a-2000e178e85b	6ef50287-c4a1-4fca-aabd-2c48d2f0d255
d19703d2-774f-4d3e-bdb7-c48fd553c05a	170727cd-fd44-4dd5-9c38-ab436eb93907
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	170727cd-fd44-4dd5-9c38-ab436eb93907
d19703d2-774f-4d3e-bdb7-c48fd553c05a	307ae60a-a501-4f6e-9820-78089e50c607
461c42de-3db5-41e0-b4ad-5e2a8936a52a	307ae60a-a501-4f6e-9820-78089e50c607
80ea77b7-f96d-4e80-833a-2000e178e85b	0d78c6c7-e966-40f9-8229-26302b29337a
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	0d78c6c7-e966-40f9-8229-26302b29337a
80ea77b7-f96d-4e80-833a-2000e178e85b	834632ee-a706-4111-88c3-248e4e9d9a3f
461c42de-3db5-41e0-b4ad-5e2a8936a52a	834632ee-a706-4111-88c3-248e4e9d9a3f
5b23abaa-0185-46a7-a6bc-9aa40f4c33ce	4e28c7d9-695b-4753-be86-4ecc7d0761ce
461c42de-3db5-41e0-b4ad-5e2a8936a52a	4e28c7d9-695b-4753-be86-4ecc7d0761ce
2be5cff8-0a75-4469-b53b-3f18ce50c848	2fb135df-55b5-4144-874b-adb9931c5ecf
65468222-69d0-4a8b-8cbf-1414811d78d7	2fb135df-55b5-4144-874b-adb9931c5ecf
2be5cff8-0a75-4469-b53b-3f18ce50c848	7721a878-f289-4bea-bcd3-78b6e8376192
74e3802f-50f5-4bab-904c-8a79cf816757	7721a878-f289-4bea-bcd3-78b6e8376192
2be5cff8-0a75-4469-b53b-3f18ce50c848	5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c
c8f7bf87-9c7f-4bc9-af9c-239dd336cac9	5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c
dde24a97-e001-4b5f-826a-00418ee276af	63b8e2c1-4fca-411a-886f-9d0b39f64f07
2be5cff8-0a75-4469-b53b-3f18ce50c848	63b8e2c1-4fca-411a-886f-9d0b39f64f07
2be5cff8-0a75-4469-b53b-3f18ce50c848	0122b617-7bc5-4cdf-9386-dfaae63a772f
e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e	0122b617-7bc5-4cdf-9386-dfaae63a772f
74e3802f-50f5-4bab-904c-8a79cf816757	54ce67aa-44d0-4cd6-8e3e-13418a5fff84
65468222-69d0-4a8b-8cbf-1414811d78d7	54ce67aa-44d0-4cd6-8e3e-13418a5fff84
\.


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_EventToGame" ("A", "B") FROM stdin;
\.


--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_EventToPlace" ("A", "B") FROM stdin;
305b9532-2001-404e-ad4f-5294e64d7752	97b62351-2b3a-4657-94ee-aaa89611b36b
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	97b62351-2b3a-4657-94ee-aaa89611b36b
\.


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_EventToPlayer" ("A", "B") FROM stdin;
\.


--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_EventToSet" ("A", "B") FROM stdin;
305b9532-2001-404e-ad4f-5294e64d7752	a222d326-e51e-4bc2-bfe1-0e06658c9940
305b9532-2001-404e-ad4f-5294e64d7752	8f9bcc79-ed7f-45a5-b8c9-f51a7b762130
305b9532-2001-404e-ad4f-5294e64d7752	164cfef7-c2ff-4070-8291-0aea148293ac
305b9532-2001-404e-ad4f-5294e64d7752	edc6f910-930a-4e24-be9b-f79026e45243
305b9532-2001-404e-ad4f-5294e64d7752	f24be4b3-d231-4e39-91e8-149642861abc
305b9532-2001-404e-ad4f-5294e64d7752	01cb05d9-e27d-4096-8428-530cdfc9bb7e
305b9532-2001-404e-ad4f-5294e64d7752	1386eb8a-3d6d-4fab-90b7-d0d98023c7fb
305b9532-2001-404e-ad4f-5294e64d7752	25828fd1-11bf-4b61-99a1-27777ff2e863
305b9532-2001-404e-ad4f-5294e64d7752	f33f3c49-b1f1-4346-98a0-f09c9eb4a579
305b9532-2001-404e-ad4f-5294e64d7752	95ddfa30-7d7d-4b58-998d-e154ca1507f3
305b9532-2001-404e-ad4f-5294e64d7752	81308401-c652-45d7-843f-73ea0f585db5
305b9532-2001-404e-ad4f-5294e64d7752	b67cde7a-b935-46a8-8236-948fc8e35f1e
305b9532-2001-404e-ad4f-5294e64d7752	8b9437b1-7c3e-453c-8bdf-1077fadff212
305b9532-2001-404e-ad4f-5294e64d7752	9ca2348f-7a6b-4724-82af-5fb66e6d8701
305b9532-2001-404e-ad4f-5294e64d7752	e32e8085-7d00-437a-86b6-a23fc643433d
305b9532-2001-404e-ad4f-5294e64d7752	017272d4-7251-4c6a-bae7-b9097934f388
305b9532-2001-404e-ad4f-5294e64d7752	6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2
305b9532-2001-404e-ad4f-5294e64d7752	e2e83ce1-ca4d-4713-8f37-546061bc1766
305b9532-2001-404e-ad4f-5294e64d7752	12c44399-9a2d-4a50-9303-92d986c198cf
305b9532-2001-404e-ad4f-5294e64d7752	6ef50287-c4a1-4fca-aabd-2c48d2f0d255
305b9532-2001-404e-ad4f-5294e64d7752	170727cd-fd44-4dd5-9c38-ab436eb93907
305b9532-2001-404e-ad4f-5294e64d7752	307ae60a-a501-4f6e-9820-78089e50c607
305b9532-2001-404e-ad4f-5294e64d7752	0d78c6c7-e966-40f9-8229-26302b29337a
305b9532-2001-404e-ad4f-5294e64d7752	834632ee-a706-4111-88c3-248e4e9d9a3f
305b9532-2001-404e-ad4f-5294e64d7752	4e28c7d9-695b-4753-be86-4ecc7d0761ce
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	2fb135df-55b5-4144-874b-adb9931c5ecf
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	7721a878-f289-4bea-bcd3-78b6e8376192
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	63b8e2c1-4fca-411a-886f-9d0b39f64f07
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	0122b617-7bc5-4cdf-9386-dfaae63a772f
53e3ce78-ce80-4aa3-a948-0c4d1cb38de5	54ce67aa-44d0-4cd6-8e3e-13418a5fff84
\.


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_GamesPlayed" ("A", "B") FROM stdin;
\.


--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: ozzurep
--

COPY public."_MatchToPlayer" ("A", "B") FROM stdin;
\.


--
-- Name: Match_number_seq; Type: SEQUENCE SET; Schema: public; Owner: ozzurep
--

SELECT pg_catalog.setval('public."Match_number_seq"', 31, true);


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);


--
-- Name: Double Double_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Double"
    ADD CONSTRAINT "Double_pkey" PRIMARY KEY (id);


--
-- Name: EventDouble EventDouble_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."EventDouble"
    ADD CONSTRAINT "EventDouble_pkey" PRIMARY KEY ("eventId", "doubleId", "categoryId");


--
-- Name: Event Event_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (id);


--
-- Name: Game Game_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Game"
    ADD CONSTRAINT "Game_pkey" PRIMARY KEY (id);


--
-- Name: MatchDate MatchDate_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."MatchDate"
    ADD CONSTRAINT "MatchDate_pkey" PRIMARY KEY (id);


--
-- Name: Match Match_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "Match_pkey" PRIMARY KEY (id);


--
-- Name: Place Place_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Place"
    ADD CONSTRAINT "Place_pkey" PRIMARY KEY (id);


--
-- Name: Player Player_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Player"
    ADD CONSTRAINT "Player_pkey" PRIMARY KEY (id);


--
-- Name: Set Set_pkey; Type: CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Set"
    ADD CONSTRAINT "Set_pkey" PRIMARY KEY (id);


--
-- Name: Category_level_type_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "Category_level_type_key" ON public."Category" USING btree (level, type);


--
-- Name: MatchDate_eventId_start_finish_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "MatchDate_eventId_start_finish_key" ON public."MatchDate" USING btree ("eventId", start, finish);


--
-- Name: MatchDate_id_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "MatchDate_id_key" ON public."MatchDate" USING btree (id);


--
-- Name: MatchDate_matchId_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "MatchDate_matchId_key" ON public."MatchDate" USING btree ("matchId");


--
-- Name: Match_matchDateId_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "Match_matchDateId_key" ON public."Match" USING btree ("matchDateId");


--
-- Name: Place_address_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "Place_address_key" ON public."Place" USING btree (address);


--
-- Name: Player_email_key; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "Player_email_key" ON public."Player" USING btree (email);


--
-- Name: _CategoryToEvent_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_CategoryToEvent_AB_unique" ON public."_CategoryToEvent" USING btree ("A", "B");


--
-- Name: _CategoryToEvent_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_CategoryToEvent_B_index" ON public."_CategoryToEvent" USING btree ("B");


--
-- Name: _CategoryToPlayer_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_CategoryToPlayer_AB_unique" ON public."_CategoryToPlayer" USING btree ("A", "B");


--
-- Name: _CategoryToPlayer_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_CategoryToPlayer_B_index" ON public."_CategoryToPlayer" USING btree ("B");


--
-- Name: _DoubleToMatch_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_DoubleToMatch_AB_unique" ON public."_DoubleToMatch" USING btree ("A", "B");


--
-- Name: _DoubleToMatch_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_DoubleToMatch_B_index" ON public."_DoubleToMatch" USING btree ("B");


--
-- Name: _DoubleToPlayer_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_DoubleToPlayer_AB_unique" ON public."_DoubleToPlayer" USING btree ("A", "B");


--
-- Name: _DoubleToPlayer_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_DoubleToPlayer_B_index" ON public."_DoubleToPlayer" USING btree ("B");


--
-- Name: _DoubleToSet_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_DoubleToSet_AB_unique" ON public."_DoubleToSet" USING btree ("A", "B");


--
-- Name: _DoubleToSet_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_DoubleToSet_B_index" ON public."_DoubleToSet" USING btree ("B");


--
-- Name: _EventToGame_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_EventToGame_AB_unique" ON public."_EventToGame" USING btree ("A", "B");


--
-- Name: _EventToGame_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_EventToGame_B_index" ON public."_EventToGame" USING btree ("B");


--
-- Name: _EventToPlace_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_EventToPlace_AB_unique" ON public."_EventToPlace" USING btree ("A", "B");


--
-- Name: _EventToPlace_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_EventToPlace_B_index" ON public."_EventToPlace" USING btree ("B");


--
-- Name: _EventToPlayer_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_EventToPlayer_AB_unique" ON public."_EventToPlayer" USING btree ("A", "B");


--
-- Name: _EventToPlayer_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_EventToPlayer_B_index" ON public."_EventToPlayer" USING btree ("B");


--
-- Name: _EventToSet_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_EventToSet_AB_unique" ON public."_EventToSet" USING btree ("A", "B");


--
-- Name: _EventToSet_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_EventToSet_B_index" ON public."_EventToSet" USING btree ("B");


--
-- Name: _GamesPlayed_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_GamesPlayed_AB_unique" ON public."_GamesPlayed" USING btree ("A", "B");


--
-- Name: _GamesPlayed_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_GamesPlayed_B_index" ON public."_GamesPlayed" USING btree ("B");


--
-- Name: _MatchToPlayer_AB_unique; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE UNIQUE INDEX "_MatchToPlayer_AB_unique" ON public."_MatchToPlayer" USING btree ("A", "B");


--
-- Name: _MatchToPlayer_B_index; Type: INDEX; Schema: public; Owner: ozzurep
--

CREATE INDEX "_MatchToPlayer_B_index" ON public."_MatchToPlayer" USING btree ("B");


--
-- Name: Double Double_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Double"
    ADD CONSTRAINT "Double_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EventDouble EventDouble_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."EventDouble"
    ADD CONSTRAINT "EventDouble_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EventDouble EventDouble_doubleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."EventDouble"
    ADD CONSTRAINT "EventDouble_doubleId_fkey" FOREIGN KEY ("doubleId") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EventDouble EventDouble_eventId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."EventDouble"
    ADD CONSTRAINT "EventDouble_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Game Game_setId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Game"
    ADD CONSTRAINT "Game_setId_fkey" FOREIGN KEY ("setId") REFERENCES public."Set"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Game Game_winnerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Game"
    ADD CONSTRAINT "Game_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: MatchDate MatchDate_eventId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."MatchDate"
    ADD CONSTRAINT "MatchDate_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: MatchDate MatchDate_matchId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."MatchDate"
    ADD CONSTRAINT "MatchDate_matchId_fkey" FOREIGN KEY ("matchId") REFERENCES public."Match"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Match Match_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "Match_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Match Match_eventId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "Match_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Match Match_winnerDoublesId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "Match_winnerDoublesId_fkey" FOREIGN KEY ("winnerDoublesId") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Set Set_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Set"
    ADD CONSTRAINT "Set_id_fkey" FOREIGN KEY (id) REFERENCES public."Match"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Set Set_setWinnerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."Set"
    ADD CONSTRAINT "Set_setWinnerId_fkey" FOREIGN KEY ("setWinnerId") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: _CategoryToEvent _CategoryToEvent_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_CategoryToEvent"
    ADD CONSTRAINT "_CategoryToEvent_A_fkey" FOREIGN KEY ("A") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CategoryToEvent _CategoryToEvent_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_CategoryToEvent"
    ADD CONSTRAINT "_CategoryToEvent_B_fkey" FOREIGN KEY ("B") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CategoryToPlayer _CategoryToPlayer_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_CategoryToPlayer"
    ADD CONSTRAINT "_CategoryToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CategoryToPlayer _CategoryToPlayer_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_CategoryToPlayer"
    ADD CONSTRAINT "_CategoryToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES public."Player"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DoubleToMatch _DoubleToMatch_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_DoubleToMatch"
    ADD CONSTRAINT "_DoubleToMatch_A_fkey" FOREIGN KEY ("A") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DoubleToMatch _DoubleToMatch_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_DoubleToMatch"
    ADD CONSTRAINT "_DoubleToMatch_B_fkey" FOREIGN KEY ("B") REFERENCES public."Match"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DoubleToPlayer _DoubleToPlayer_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_DoubleToPlayer"
    ADD CONSTRAINT "_DoubleToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DoubleToPlayer _DoubleToPlayer_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_DoubleToPlayer"
    ADD CONSTRAINT "_DoubleToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES public."Player"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DoubleToSet _DoubleToSet_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_DoubleToSet"
    ADD CONSTRAINT "_DoubleToSet_A_fkey" FOREIGN KEY ("A") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DoubleToSet _DoubleToSet_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_DoubleToSet"
    ADD CONSTRAINT "_DoubleToSet_B_fkey" FOREIGN KEY ("B") REFERENCES public."Set"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToGame _EventToGame_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToGame"
    ADD CONSTRAINT "_EventToGame_A_fkey" FOREIGN KEY ("A") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToGame _EventToGame_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToGame"
    ADD CONSTRAINT "_EventToGame_B_fkey" FOREIGN KEY ("B") REFERENCES public."Game"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToPlace _EventToPlace_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToPlace"
    ADD CONSTRAINT "_EventToPlace_A_fkey" FOREIGN KEY ("A") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToPlace _EventToPlace_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToPlace"
    ADD CONSTRAINT "_EventToPlace_B_fkey" FOREIGN KEY ("B") REFERENCES public."Place"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToPlayer _EventToPlayer_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToPlayer"
    ADD CONSTRAINT "_EventToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToPlayer _EventToPlayer_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToPlayer"
    ADD CONSTRAINT "_EventToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES public."Player"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToSet _EventToSet_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToSet"
    ADD CONSTRAINT "_EventToSet_A_fkey" FOREIGN KEY ("A") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _EventToSet _EventToSet_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_EventToSet"
    ADD CONSTRAINT "_EventToSet_B_fkey" FOREIGN KEY ("B") REFERENCES public."Set"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GamesPlayed _GamesPlayed_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_GamesPlayed"
    ADD CONSTRAINT "_GamesPlayed_A_fkey" FOREIGN KEY ("A") REFERENCES public."Double"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _GamesPlayed _GamesPlayed_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_GamesPlayed"
    ADD CONSTRAINT "_GamesPlayed_B_fkey" FOREIGN KEY ("B") REFERENCES public."Game"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _MatchToPlayer _MatchToPlayer_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_MatchToPlayer"
    ADD CONSTRAINT "_MatchToPlayer_A_fkey" FOREIGN KEY ("A") REFERENCES public."Match"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _MatchToPlayer _MatchToPlayer_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ozzurep
--

ALTER TABLE ONLY public."_MatchToPlayer"
    ADD CONSTRAINT "_MatchToPlayer_B_fkey" FOREIGN KEY ("B") REFERENCES public."Player"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: ozzurep
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

