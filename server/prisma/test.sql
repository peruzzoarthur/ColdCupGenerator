--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

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
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Category" (id, level, type) VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 1, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('7e7659df-b9f1-479d-9f22-ab9708251db1', 2, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('d3888721-b342-4aeb-83bf-b7837b907253', 3, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('7198a299-b9d0-46f9-bc64-1efd9e1c4d6d', 4, 'ALL');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."Double" (id, "categoryId") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."Double" (id, "categoryId") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."Double" (id, "categoryId") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."Double" (id, "categoryId") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."Double" (id, "categoryId") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."Double" (id, "categoryId") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."Double" (id, "categoryId") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."Double" (id, "categoryId") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."Double" (id, "categoryId") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '7e7659df-b9f1-479d-9f22-ab9708251db1');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'Copa do Bem', true, '2024-04-18 03:00:00', '2024-04-20 03:00:00', 60, 8, 16);
INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'Copa sem tempo', false, '2024-04-23 03:00:00', '2024-04-24 03:00:00', 90, 9, 12);


--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'dde24a97-e001-4b5f-826a-00418ee276af', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '2be5cff8-0a75-4469-b53b-3f18ce50c848', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '74e3802f-50f5-4bab-904c-8a79cf816757', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '65468222-69d0-4a8b-8cbf-1414811d78d7', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'd19703d2-774f-4d3e-bdb7-c48fd553c05a', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '80ea77b7-f96d-4e80-833a-2000e178e85b', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '461c42de-3db5-41e0-b4ad-5e2a8936a52a', '7e7659df-b9f1-479d-9f22-ab9708251db1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'dde24a97-e001-4b5f-826a-00418ee276af', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '2be5cff8-0a75-4469-b53b-3f18ce50c848', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '74e3802f-50f5-4bab-904c-8a79cf816757', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '65468222-69d0-4a8b-8cbf-1414811d78d7', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '8eeb7c40-db68-4b92-b6fd-91606c1fcc99');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '461c42de-3db5-41e0-b4ad-5e2a8936a52a', '7e7659df-b9f1-479d-9f22-ab9708251db1');


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('a222d326-e51e-4bc2-bfe1-0e06658c9940', 1, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('8f9bcc79-ed7f-45a5-b8c9-f51a7b762130', 2, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('164cfef7-c2ff-4070-8291-0aea148293ac', 3, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('edc6f910-930a-4e24-be9b-f79026e45243', 4, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('f24be4b3-d231-4e39-91e8-149642861abc', 5, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('01cb05d9-e27d-4096-8428-530cdfc9bb7e', 6, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('1386eb8a-3d6d-4fab-90b7-d0d98023c7fb', 7, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('25828fd1-11bf-4b61-99a1-27777ff2e863', 8, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('f33f3c49-b1f1-4346-98a0-f09c9eb4a579', 9, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('95ddfa30-7d7d-4b58-998d-e154ca1507f3', 10, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('81308401-c652-45d7-843f-73ea0f585db5', 11, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('b67cde7a-b935-46a8-8236-948fc8e35f1e', 12, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('8b9437b1-7c3e-453c-8bdf-1077fadff212', 13, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('9ca2348f-7a6b-4724-82af-5fb66e6d8701', 14, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('e32e8085-7d00-437a-86b6-a23fc643433d', 15, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('017272d4-7251-4c6a-bae7-b9097934f388', 16, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2', 17, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('e2e83ce1-ca4d-4713-8f37-546061bc1766', 18, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('12c44399-9a2d-4a50-9303-92d986c198cf', 19, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('6ef50287-c4a1-4fca-aabd-2c48d2f0d255', 20, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('170727cd-fd44-4dd5-9c38-ab436eb93907', 21, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('307ae60a-a501-4f6e-9820-78089e50c607', 22, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('0d78c6c7-e966-40f9-8229-26302b29337a', 23, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('834632ee-a706-4111-88c3-248e4e9d9a3f', 24, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('4e28c7d9-695b-4753-be86-4ecc7d0761ce', 25, false, '7e7659df-b9f1-479d-9f22-ab9708251db1', NULL, '305b9532-2001-404e-ad4f-5294e64d7752', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('2fb135df-55b5-4144-874b-adb9931c5ecf', 26, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('7721a878-f289-4bea-bcd3-78b6e8376192', 27, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c', 28, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('63b8e2c1-4fca-411a-886f-9d0b39f64f07', 29, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('0122b617-7bc5-4cdf-9386-dfaae63a772f', 30, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId") VALUES ('54ce67aa-44d0-4cd6-8e3e-13418a5fff84', 31, false, '8eeb7c40-db68-4b92-b6fd-91606c1fcc99', NULL, '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', 'SUPERSET', NULL);


--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('a222d326-e51e-4bc2-bfe1-0e06658c9940', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('8f9bcc79-ed7f-45a5-b8c9-f51a7b762130', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('164cfef7-c2ff-4070-8291-0aea148293ac', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('edc6f910-930a-4e24-be9b-f79026e45243', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('f24be4b3-d231-4e39-91e8-149642861abc', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('01cb05d9-e27d-4096-8428-530cdfc9bb7e', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('1386eb8a-3d6d-4fab-90b7-d0d98023c7fb', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('25828fd1-11bf-4b61-99a1-27777ff2e863', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('f33f3c49-b1f1-4346-98a0-f09c9eb4a579', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('95ddfa30-7d7d-4b58-998d-e154ca1507f3', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('81308401-c652-45d7-843f-73ea0f585db5', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('b67cde7a-b935-46a8-8236-948fc8e35f1e', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('8b9437b1-7c3e-453c-8bdf-1077fadff212', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('9ca2348f-7a6b-4724-82af-5fb66e6d8701', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('e32e8085-7d00-437a-86b6-a23fc643433d', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('017272d4-7251-4c6a-bae7-b9097934f388', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('e2e83ce1-ca4d-4713-8f37-546061bc1766', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('12c44399-9a2d-4a50-9303-92d986c198cf', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('6ef50287-c4a1-4fca-aabd-2c48d2f0d255', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('170727cd-fd44-4dd5-9c38-ab436eb93907', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('307ae60a-a501-4f6e-9820-78089e50c607', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('0d78c6c7-e966-40f9-8229-26302b29337a', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('834632ee-a706-4111-88c3-248e4e9d9a3f', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('4e28c7d9-695b-4753-be86-4ecc7d0761ce', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('2fb135df-55b5-4144-874b-adb9931c5ecf', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('7721a878-f289-4bea-bcd3-78b6e8376192', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('63b8e2c1-4fca-411a-886f-9d0b39f64f07', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('0122b617-7bc5-4cdf-9386-dfaae63a772f', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('54ce67aa-44d0-4cd6-8e3e-13418a5fff84', 'SUPER', NULL, NULL, false);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('55e1e34e-adee-4c05-973d-f3b6f5439317', '305b9532-2001-404e-ad4f-5294e64d7752', NULL, '2024-04-20 18:00:00', '2024-04-20 19:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('7c9273ab-fec9-4d3a-85d2-43eceeed2acf', '305b9532-2001-404e-ad4f-5294e64d7752', NULL, '2024-04-20 19:00:00', '2024-04-20 20:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('3d17e8ee-1bcf-4ed1-898f-8a37f5ca804a', '305b9532-2001-404e-ad4f-5294e64d7752', 'a222d326-e51e-4bc2-bfe1-0e06658c9940', '2024-04-18 11:00:00', '2024-04-18 12:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('6e9dd10e-797e-4980-b1f6-3ca30d2b3745', '305b9532-2001-404e-ad4f-5294e64d7752', '8f9bcc79-ed7f-45a5-b8c9-f51a7b762130', '2024-04-18 12:00:00', '2024-04-18 13:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('04502a76-dc6f-4a06-875f-94b1030a3d60', '305b9532-2001-404e-ad4f-5294e64d7752', '164cfef7-c2ff-4070-8291-0aea148293ac', '2024-04-18 13:00:00', '2024-04-18 14:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('47315472-00d4-455a-8f3d-dcd1c5f34817', '305b9532-2001-404e-ad4f-5294e64d7752', 'edc6f910-930a-4e24-be9b-f79026e45243', '2024-04-18 14:00:00', '2024-04-18 15:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('aad1b361-b210-4391-91de-515f040feed7', '305b9532-2001-404e-ad4f-5294e64d7752', 'f24be4b3-d231-4e39-91e8-149642861abc', '2024-04-18 15:00:00', '2024-04-18 16:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('e1579539-abe4-4b0f-aa7d-8907ff78d1aa', '305b9532-2001-404e-ad4f-5294e64d7752', '01cb05d9-e27d-4096-8428-530cdfc9bb7e', '2024-04-18 16:00:00', '2024-04-18 17:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('2322b071-bb91-49ba-bd7e-5b2a05e8be87', '305b9532-2001-404e-ad4f-5294e64d7752', '1386eb8a-3d6d-4fab-90b7-d0d98023c7fb', '2024-04-18 17:00:00', '2024-04-18 18:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('d7f414a7-8bb1-4d8c-8d21-7b7accd82aca', '305b9532-2001-404e-ad4f-5294e64d7752', '25828fd1-11bf-4b61-99a1-27777ff2e863', '2024-04-18 18:00:00', '2024-04-18 19:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('a91419a2-c888-4483-8ff0-c47f3a5b38cc', '305b9532-2001-404e-ad4f-5294e64d7752', 'f33f3c49-b1f1-4346-98a0-f09c9eb4a579', '2024-04-18 19:00:00', '2024-04-18 20:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('5882c4f0-b94e-4a96-ab27-fcdebc095a84', '305b9532-2001-404e-ad4f-5294e64d7752', '95ddfa30-7d7d-4b58-998d-e154ca1507f3', '2024-04-19 11:00:00', '2024-04-19 12:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('d7aaa5be-1f3f-441a-8827-95f7d43569bb', '305b9532-2001-404e-ad4f-5294e64d7752', '81308401-c652-45d7-843f-73ea0f585db5', '2024-04-19 12:00:00', '2024-04-19 13:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('ec10d40a-0daf-45f1-840d-891f85e57b58', '305b9532-2001-404e-ad4f-5294e64d7752', 'b67cde7a-b935-46a8-8236-948fc8e35f1e', '2024-04-19 13:00:00', '2024-04-19 14:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('d88e39b6-1fbb-44e8-b7c8-101e8f720fc6', '305b9532-2001-404e-ad4f-5294e64d7752', '8b9437b1-7c3e-453c-8bdf-1077fadff212', '2024-04-19 14:00:00', '2024-04-19 15:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('8c3e5bd1-3e60-4047-893e-0c19e6bafb06', '305b9532-2001-404e-ad4f-5294e64d7752', '9ca2348f-7a6b-4724-82af-5fb66e6d8701', '2024-04-19 15:00:00', '2024-04-19 16:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('cfa760c9-3c6e-4c2d-b4d7-3c5f3ce66f16', '305b9532-2001-404e-ad4f-5294e64d7752', 'e32e8085-7d00-437a-86b6-a23fc643433d', '2024-04-19 16:00:00', '2024-04-19 17:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('816c4071-b61e-43bb-bc43-4e0aec78b837', '305b9532-2001-404e-ad4f-5294e64d7752', '017272d4-7251-4c6a-bae7-b9097934f388', '2024-04-19 17:00:00', '2024-04-19 18:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('d9c8c2a7-18ab-471c-a3f4-f03d0b4f1138', '305b9532-2001-404e-ad4f-5294e64d7752', '6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2', '2024-04-19 18:00:00', '2024-04-19 19:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('85389d36-37db-45f1-94aa-30252835127d', '305b9532-2001-404e-ad4f-5294e64d7752', 'e2e83ce1-ca4d-4713-8f37-546061bc1766', '2024-04-19 19:00:00', '2024-04-19 20:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('91cc8923-2797-42ce-a2b3-a27cf68bdf09', '305b9532-2001-404e-ad4f-5294e64d7752', '12c44399-9a2d-4a50-9303-92d986c198cf', '2024-04-20 11:00:00', '2024-04-20 12:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('e2de0062-22a2-40e4-97b2-0aaa2dfbdaf4', '305b9532-2001-404e-ad4f-5294e64d7752', '6ef50287-c4a1-4fca-aabd-2c48d2f0d255', '2024-04-20 12:00:00', '2024-04-20 13:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('d27341e9-a217-44b3-9539-2f57e1106d70', '305b9532-2001-404e-ad4f-5294e64d7752', '170727cd-fd44-4dd5-9c38-ab436eb93907', '2024-04-20 13:00:00', '2024-04-20 14:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('e79d9922-1be9-4cc2-9bba-0f304b24fab9', '305b9532-2001-404e-ad4f-5294e64d7752', '307ae60a-a501-4f6e-9820-78089e50c607', '2024-04-20 14:00:00', '2024-04-20 15:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('9e006811-30bc-4e0e-8cae-77acbd1e2b37', '305b9532-2001-404e-ad4f-5294e64d7752', '0d78c6c7-e966-40f9-8229-26302b29337a', '2024-04-20 15:00:00', '2024-04-20 16:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('c2f5e9c2-c106-43d7-bbf2-c756c7a89706', '305b9532-2001-404e-ad4f-5294e64d7752', '834632ee-a706-4111-88c3-248e4e9d9a3f', '2024-04-20 16:00:00', '2024-04-20 17:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('882f9a52-54c1-44f6-b8a7-4aee2ca6ad1b', '305b9532-2001-404e-ad4f-5294e64d7752', '4e28c7d9-695b-4753-be86-4ecc7d0761ce', '2024-04-20 17:00:00', '2024-04-20 18:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('039fa70d-6569-4895-92cc-f5364ca4f77d', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '2fb135df-55b5-4144-874b-adb9931c5ecf', '2024-04-23 12:00:00', '2024-04-23 13:30:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('996f62fe-a054-4700-83f0-d8257b4db9e8', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '7721a878-f289-4bea-bcd3-78b6e8376192', '2024-04-23 13:30:00', '2024-04-23 15:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('3d20df98-45c7-437b-a7b2-dcfbef3a0416', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c', '2024-04-23 15:00:00', '2024-04-23 16:30:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('2638f440-1f01-4f25-b373-2af796feadd2', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '63b8e2c1-4fca-411a-886f-9d0b39f64f07', '2024-04-24 12:00:00', '2024-04-24 13:30:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('0e6a6f4b-38da-437e-b510-b6e4ee979e83', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '0122b617-7bc5-4cdf-9386-dfaae63a772f', '2024-04-24 13:30:00', '2024-04-24 15:00:00');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish) VALUES ('7f008bd2-c679-48f6-9931-de7d7c235b9f', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '54ce67aa-44d0-4cd6-8e3e-13418a5fff84', '2024-04-24 15:00:00', '2024-04-24 16:30:00');


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('97b62351-2b3a-4657-94ee-aaa89611b36b', 'Complexo CK', 'General Gomes Tortinho, 255.');


--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('02ffbe02-8a57-4d7c-b24c-cbb92072f677', 'ArthurOzzurep@proton.me', 'Arthur', 'Ozzurep', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('a018fc1f-1b61-4ef4-b1f2-64d16fde7181', 'JuJu@proton.me', 'Ju', 'Ju', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('55daca93-04d8-4cdf-bb67-9e219cbf0722', 'MariaIj@proton.me', 'Maria', 'Ij', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('0e431aaf-4ee6-449e-afd3-ead782188557', 'MedusaPluminha@proton.me', 'Medusa', 'Pluminha', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('8238b3c0-f73e-4df9-886a-4af296b63d7f', 'XoanPlastic@proton.me', 'Xoan', 'Plastic', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('ff0c9538-6d18-4df3-a333-0e47b71b3ce5', 'GueldeDeus@proton.me', 'Guel', 'deDeus', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('8e2389aa-2a93-48fb-8007-3900e97fc8ed', 'JumaZobrinha@proton.me', 'Juma', 'Zobrinha', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('e68c7a02-3bb8-464e-a7d4-41c7ec9af471', 'MedusinhaArteira@proton.me', 'Medusinha', 'Arteira', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('607341a5-ab0b-43a0-b59f-3e2b2a4f8922', 'MercedesOrquita@proton.me', 'Mercedes', 'Orquita', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('dfd1358d-f4db-4bc3-889b-a59d71ed5fda', 'MarleyCeva Pra Nos@proton.me', 'Marley', 'Ceva Pra Nos', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('0eb0e343-32d8-4b00-8922-2f54d5d4ded0', 'Player1@proton.me', 'Player', '1', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('07fa9484-fa56-46a0-bce9-924e1e3cc2f5', 'Player2@proton.me', 'Player', '2', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('3f235d32-6c24-4f63-9a26-56a8dd320ba4', 'PlayerThree@proton.me', 'Player', 'Three', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('5ae0e20e-3caf-459c-a5c7-a08d5182bc28', 'PlayerFour@proton.me', 'Player', 'Four', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('ac81b09b-b4f6-4fc5-9649-266beefe9fbc', 'Player5@proton.me', 'Player', '5', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('83d3e050-7351-4efd-aef4-0360940d9d35', 'Player6@proton.me', 'Player', '6', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('55c2c9b5-0130-4293-a3a7-87258c56368e', 'P7@proton.me', 'P', '7', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('52989583-f841-4601-9616-6d8ade34aae9', 'P8@proton.me', 'P', '8', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('b4ac0047-06b1-4e56-81b3-1935ebaa6194', 'P9@proton.me', 'P', '9', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('f02dab57-971a-41de-99ca-1a1a93f9de35', 'P10@proton.me', 'P', '10', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('77e8219a-2fcc-4b82-afee-059cc7549134', 'JogadorA@proton.me', 'Jogador', 'A', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('5cb3b9d0-309b-456f-a5c1-bca393d9d576', 'JogadorB@proton.me', 'Jogador', 'B', 'USER', 'DRIVE');


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '305b9532-2001-404e-ad4f-5294e64d7752');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('7e7659df-b9f1-479d-9f22-ab9708251db1', '305b9532-2001-404e-ad4f-5294e64d7752');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '53e3ce78-ce80-4aa3-a948-0c4d1cb38de5');


--
-- Data for Name: _CategoryToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '02ffbe02-8a57-4d7c-b24c-cbb92072f677');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'a018fc1f-1b61-4ef4-b1f2-64d16fde7181');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '55daca93-04d8-4cdf-bb67-9e219cbf0722');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '0e431aaf-4ee6-449e-afd3-ead782188557');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '8238b3c0-f73e-4df9-886a-4af296b63d7f');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'ff0c9538-6d18-4df3-a333-0e47b71b3ce5');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '8e2389aa-2a93-48fb-8007-3900e97fc8ed');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'e68c7a02-3bb8-464e-a7d4-41c7ec9af471');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '607341a5-ab0b-43a0-b59f-3e2b2a4f8922');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'dfd1358d-f4db-4bc3-889b-a59d71ed5fda');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '0eb0e343-32d8-4b00-8922-2f54d5d4ded0');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '07fa9484-fa56-46a0-bce9-924e1e3cc2f5');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '3f235d32-6c24-4f63-9a26-56a8dd320ba4');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '5ae0e20e-3caf-459c-a5c7-a08d5182bc28');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'ac81b09b-b4f6-4fc5-9649-266beefe9fbc');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '83d3e050-7351-4efd-aef4-0360940d9d35');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '55c2c9b5-0130-4293-a3a7-87258c56368e');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '52989583-f841-4601-9616-6d8ade34aae9');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'b4ac0047-06b1-4e56-81b3-1935ebaa6194');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', 'f02dab57-971a-41de-99ca-1a1a93f9de35');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '77e8219a-2fcc-4b82-afee-059cc7549134');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('8eeb7c40-db68-4b92-b6fd-91606c1fcc99', '5cb3b9d0-309b-456f-a5c1-bca393d9d576');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'a222d326-e51e-4bc2-bfe1-0e06658c9940');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', 'a222d326-e51e-4bc2-bfe1-0e06658c9940');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '8f9bcc79-ed7f-45a5-b8c9-f51a7b762130');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '8f9bcc79-ed7f-45a5-b8c9-f51a7b762130');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '164cfef7-c2ff-4070-8291-0aea148293ac');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '164cfef7-c2ff-4070-8291-0aea148293ac');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'edc6f910-930a-4e24-be9b-f79026e45243');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', 'edc6f910-930a-4e24-be9b-f79026e45243');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'f24be4b3-d231-4e39-91e8-149642861abc');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'f24be4b3-d231-4e39-91e8-149642861abc');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '01cb05d9-e27d-4096-8428-530cdfc9bb7e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '01cb05d9-e27d-4096-8428-530cdfc9bb7e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '1386eb8a-3d6d-4fab-90b7-d0d98023c7fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '1386eb8a-3d6d-4fab-90b7-d0d98023c7fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '25828fd1-11bf-4b61-99a1-27777ff2e863');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '25828fd1-11bf-4b61-99a1-27777ff2e863');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', 'f33f3c49-b1f1-4346-98a0-f09c9eb4a579');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'f33f3c49-b1f1-4346-98a0-f09c9eb4a579');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '95ddfa30-7d7d-4b58-998d-e154ca1507f3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '95ddfa30-7d7d-4b58-998d-e154ca1507f3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '81308401-c652-45d7-843f-73ea0f585db5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '81308401-c652-45d7-843f-73ea0f585db5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', 'b67cde7a-b935-46a8-8236-948fc8e35f1e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'b67cde7a-b935-46a8-8236-948fc8e35f1e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '8b9437b1-7c3e-453c-8bdf-1077fadff212');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '8b9437b1-7c3e-453c-8bdf-1077fadff212');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '9ca2348f-7a6b-4724-82af-5fb66e6d8701');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '9ca2348f-7a6b-4724-82af-5fb66e6d8701');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', 'e32e8085-7d00-437a-86b6-a23fc643433d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'e32e8085-7d00-437a-86b6-a23fc643433d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '017272d4-7251-4c6a-bae7-b9097934f388');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '017272d4-7251-4c6a-bae7-b9097934f388');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', 'e2e83ce1-ca4d-4713-8f37-546061bc1766');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', 'e2e83ce1-ca4d-4713-8f37-546061bc1766');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '12c44399-9a2d-4a50-9303-92d986c198cf');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '12c44399-9a2d-4a50-9303-92d986c198cf');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '6ef50287-c4a1-4fca-aabd-2c48d2f0d255');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '6ef50287-c4a1-4fca-aabd-2c48d2f0d255');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '170727cd-fd44-4dd5-9c38-ab436eb93907');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '170727cd-fd44-4dd5-9c38-ab436eb93907');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '307ae60a-a501-4f6e-9820-78089e50c607');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '307ae60a-a501-4f6e-9820-78089e50c607');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '0d78c6c7-e966-40f9-8229-26302b29337a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '0d78c6c7-e966-40f9-8229-26302b29337a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '834632ee-a706-4111-88c3-248e4e9d9a3f');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '834632ee-a706-4111-88c3-248e4e9d9a3f');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '4e28c7d9-695b-4753-be86-4ecc7d0761ce');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '4e28c7d9-695b-4753-be86-4ecc7d0761ce');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '2fb135df-55b5-4144-874b-adb9931c5ecf');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '2fb135df-55b5-4144-874b-adb9931c5ecf');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '7721a878-f289-4bea-bcd3-78b6e8376192');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '7721a878-f289-4bea-bcd3-78b6e8376192');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '63b8e2c1-4fca-411a-886f-9d0b39f64f07');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '63b8e2c1-4fca-411a-886f-9d0b39f64f07');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '0122b617-7bc5-4cdf-9386-dfaae63a772f');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '0122b617-7bc5-4cdf-9386-dfaae63a772f');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '54ce67aa-44d0-4cd6-8e3e-13418a5fff84');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '54ce67aa-44d0-4cd6-8e3e-13418a5fff84');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '02ffbe02-8a57-4d7c-b24c-cbb92072f677');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'a018fc1f-1b61-4ef4-b1f2-64d16fde7181');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '55daca93-04d8-4cdf-bb67-9e219cbf0722');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '0e431aaf-4ee6-449e-afd3-ead782188557');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '8238b3c0-f73e-4df9-886a-4af296b63d7f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', 'ff0c9538-6d18-4df3-a333-0e47b71b3ce5');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '8e2389aa-2a93-48fb-8007-3900e97fc8ed');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', 'e68c7a02-3bb8-464e-a7d4-41c7ec9af471');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '607341a5-ab0b-43a0-b59f-3e2b2a4f8922');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', 'dfd1358d-f4db-4bc3-889b-a59d71ed5fda');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '0eb0e343-32d8-4b00-8922-2f54d5d4ded0');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '07fa9484-fa56-46a0-bce9-924e1e3cc2f5');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '3f235d32-6c24-4f63-9a26-56a8dd320ba4');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '5ae0e20e-3caf-459c-a5c7-a08d5182bc28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', 'ac81b09b-b4f6-4fc5-9649-266beefe9fbc');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '83d3e050-7351-4efd-aef4-0360940d9d35');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '55c2c9b5-0130-4293-a3a7-87258c56368e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '52989583-f841-4601-9616-6d8ade34aae9');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', 'b4ac0047-06b1-4e56-81b3-1935ebaa6194');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', 'f02dab57-971a-41de-99ca-1a1a93f9de35');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '77e8219a-2fcc-4b82-afee-059cc7549134');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '5cb3b9d0-309b-456f-a5c1-bca393d9d576');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'a222d326-e51e-4bc2-bfe1-0e06658c9940');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', 'a222d326-e51e-4bc2-bfe1-0e06658c9940');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '8f9bcc79-ed7f-45a5-b8c9-f51a7b762130');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '8f9bcc79-ed7f-45a5-b8c9-f51a7b762130');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '164cfef7-c2ff-4070-8291-0aea148293ac');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '164cfef7-c2ff-4070-8291-0aea148293ac');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'edc6f910-930a-4e24-be9b-f79026e45243');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', 'edc6f910-930a-4e24-be9b-f79026e45243');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', 'f24be4b3-d231-4e39-91e8-149642861abc');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'f24be4b3-d231-4e39-91e8-149642861abc');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '01cb05d9-e27d-4096-8428-530cdfc9bb7e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '01cb05d9-e27d-4096-8428-530cdfc9bb7e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '1386eb8a-3d6d-4fab-90b7-d0d98023c7fb');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '1386eb8a-3d6d-4fab-90b7-d0d98023c7fb');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '25828fd1-11bf-4b61-99a1-27777ff2e863');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '25828fd1-11bf-4b61-99a1-27777ff2e863');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', 'f33f3c49-b1f1-4346-98a0-f09c9eb4a579');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'f33f3c49-b1f1-4346-98a0-f09c9eb4a579');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '95ddfa30-7d7d-4b58-998d-e154ca1507f3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '95ddfa30-7d7d-4b58-998d-e154ca1507f3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '81308401-c652-45d7-843f-73ea0f585db5');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '81308401-c652-45d7-843f-73ea0f585db5');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', 'b67cde7a-b935-46a8-8236-948fc8e35f1e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'b67cde7a-b935-46a8-8236-948fc8e35f1e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '8b9437b1-7c3e-453c-8bdf-1077fadff212');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '8b9437b1-7c3e-453c-8bdf-1077fadff212');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '9ca2348f-7a6b-4724-82af-5fb66e6d8701');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '9ca2348f-7a6b-4724-82af-5fb66e6d8701');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', 'e32e8085-7d00-437a-86b6-a23fc643433d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', 'e32e8085-7d00-437a-86b6-a23fc643433d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '017272d4-7251-4c6a-bae7-b9097934f388');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '017272d4-7251-4c6a-bae7-b9097934f388');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', 'e2e83ce1-ca4d-4713-8f37-546061bc1766');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', 'e2e83ce1-ca4d-4713-8f37-546061bc1766');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0b17b9ce-23b5-4242-bdd1-05f570ed14e6', '12c44399-9a2d-4a50-9303-92d986c198cf');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '12c44399-9a2d-4a50-9303-92d986c198cf');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '6ef50287-c4a1-4fca-aabd-2c48d2f0d255');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '6ef50287-c4a1-4fca-aabd-2c48d2f0d255');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '170727cd-fd44-4dd5-9c38-ab436eb93907');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '170727cd-fd44-4dd5-9c38-ab436eb93907');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d19703d2-774f-4d3e-bdb7-c48fd553c05a', '307ae60a-a501-4f6e-9820-78089e50c607');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '307ae60a-a501-4f6e-9820-78089e50c607');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '0d78c6c7-e966-40f9-8229-26302b29337a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '0d78c6c7-e966-40f9-8229-26302b29337a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('80ea77b7-f96d-4e80-833a-2000e178e85b', '834632ee-a706-4111-88c3-248e4e9d9a3f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '834632ee-a706-4111-88c3-248e4e9d9a3f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5b23abaa-0185-46a7-a6bc-9aa40f4c33ce', '4e28c7d9-695b-4753-be86-4ecc7d0761ce');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('461c42de-3db5-41e0-b4ad-5e2a8936a52a', '4e28c7d9-695b-4753-be86-4ecc7d0761ce');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '2fb135df-55b5-4144-874b-adb9931c5ecf');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '2fb135df-55b5-4144-874b-adb9931c5ecf');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '7721a878-f289-4bea-bcd3-78b6e8376192');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '7721a878-f289-4bea-bcd3-78b6e8376192');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c8f7bf87-9c7f-4bc9-af9c-239dd336cac9', '5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('dde24a97-e001-4b5f-826a-00418ee276af', '63b8e2c1-4fca-411a-886f-9d0b39f64f07');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '63b8e2c1-4fca-411a-886f-9d0b39f64f07');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2be5cff8-0a75-4469-b53b-3f18ce50c848', '0122b617-7bc5-4cdf-9386-dfaae63a772f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e61ddd7d-c898-4dc5-b44f-481fe3c7ec0e', '0122b617-7bc5-4cdf-9386-dfaae63a772f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('74e3802f-50f5-4bab-904c-8a79cf816757', '54ce67aa-44d0-4cd6-8e3e-13418a5fff84');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('65468222-69d0-4a8b-8cbf-1414811d78d7', '54ce67aa-44d0-4cd6-8e3e-13418a5fff84');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '97b62351-2b3a-4657-94ee-aaa89611b36b');
INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '97b62351-2b3a-4657-94ee-aaa89611b36b');


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'a222d326-e51e-4bc2-bfe1-0e06658c9940');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '8f9bcc79-ed7f-45a5-b8c9-f51a7b762130');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '164cfef7-c2ff-4070-8291-0aea148293ac');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'edc6f910-930a-4e24-be9b-f79026e45243');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'f24be4b3-d231-4e39-91e8-149642861abc');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '01cb05d9-e27d-4096-8428-530cdfc9bb7e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '1386eb8a-3d6d-4fab-90b7-d0d98023c7fb');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '25828fd1-11bf-4b61-99a1-27777ff2e863');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'f33f3c49-b1f1-4346-98a0-f09c9eb4a579');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '95ddfa30-7d7d-4b58-998d-e154ca1507f3');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '81308401-c652-45d7-843f-73ea0f585db5');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'b67cde7a-b935-46a8-8236-948fc8e35f1e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '8b9437b1-7c3e-453c-8bdf-1077fadff212');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '9ca2348f-7a6b-4724-82af-5fb66e6d8701');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'e32e8085-7d00-437a-86b6-a23fc643433d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '017272d4-7251-4c6a-bae7-b9097934f388');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '6d1ab2ec-1b71-4f0b-a125-8aa1cb75aad2');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', 'e2e83ce1-ca4d-4713-8f37-546061bc1766');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '12c44399-9a2d-4a50-9303-92d986c198cf');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '6ef50287-c4a1-4fca-aabd-2c48d2f0d255');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '170727cd-fd44-4dd5-9c38-ab436eb93907');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '307ae60a-a501-4f6e-9820-78089e50c607');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '0d78c6c7-e966-40f9-8229-26302b29337a');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '834632ee-a706-4111-88c3-248e4e9d9a3f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('305b9532-2001-404e-ad4f-5294e64d7752', '4e28c7d9-695b-4753-be86-4ecc7d0761ce');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '2fb135df-55b5-4144-874b-adb9931c5ecf');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '7721a878-f289-4bea-bcd3-78b6e8376192');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '5e06c6f1-f33c-4a5c-8c6e-7d33dfd6455c');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '63b8e2c1-4fca-411a-886f-9d0b39f64f07');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '0122b617-7bc5-4cdf-9386-dfaae63a772f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('53e3ce78-ce80-4aa3-a948-0c4d1cb38de5', '54ce67aa-44d0-4cd6-8e3e-13418a5fff84');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: Match_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Match_number_seq"', 31, true);


--
-- PostgreSQL database dump complete
--

