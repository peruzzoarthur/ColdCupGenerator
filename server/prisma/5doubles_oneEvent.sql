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

INSERT INTO public."Category" (id, level, type) VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 1, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('2624ae54-5052-48bc-b73a-f860e3847d51', 2, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('07e96af6-4b7f-428a-bcba-df524a2c2630', 3, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('bf09c922-ed08-4866-9c69-a239333781e3', 4, 'ALL');


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('731f0ed2-73a4-4953-9d23-e94bde0f724e', 'Complexo CK', 'Rua General Gome Tortinho, 235');


--
-- Data for Name: Court; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('112c66c1-733e-427a-92f7-794cb992311f', 'V2', true, '731f0ed2-73a4-4953-9d23-e94bde0f724e');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('01b44790-615b-4909-a4bd-19b1ddbc7b8f', 'V3', true, '731f0ed2-73a4-4953-9d23-e94bde0f724e');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('d6ea75b5-02bf-45b9-94e8-53146c4cdae7', 'V1', true, '731f0ed2-73a4-4953-9d23-e94bde0f724e');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('91bce05f-b2d3-49f5-8c5e-bef227a5166e', 'e60ee2b2-0cad-4641-95f7-1eb3bf280d20');
INSERT INTO public."Double" (id, "categoryId") VALUES ('c0f0e854-a316-4900-a5a1-343854dbe09b', 'e60ee2b2-0cad-4641-95f7-1eb3bf280d20');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ebbad07b-7163-4d6c-885d-50543844fc9e', 'e60ee2b2-0cad-4641-95f7-1eb3bf280d20');
INSERT INTO public."Double" (id, "categoryId") VALUES ('09904e4d-804a-4ff4-882a-2e7181f752c1', '2624ae54-5052-48bc-b73a-f860e3847d51');
INSERT INTO public."Double" (id, "categoryId") VALUES ('3ebfdd27-cc16-47cd-a073-6c54d88f692f', '2624ae54-5052-48bc-b73a-f860e3847d51');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', 'ALLxALL #1', false, '2024-04-27 03:00:00', '2024-04-28 03:00:00', 60, 6, 12, 'ALLxALL');


--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', '91bce05f-b2d3-49f5-8c5e-bef227a5166e', 'e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '2024-04-27 09:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', 'c0f0e854-a316-4900-a5a1-343854dbe09b', 'e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '2024-04-27 09:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', 'ebbad07b-7163-4d6c-885d-50543844fc9e', 'e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '2024-04-27 09:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', '09904e4d-804a-4ff4-882a-2e7181f752c1', '2624ae54-5052-48bc-b73a-f860e3847d51', '2024-04-27 09:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', '3ebfdd27-cc16-47cd-a073-6c54d88f692f', '2624ae54-5052-48bc-b73a-f860e3847d51', '2024-04-27 09:00:00');


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('e845f432-5d90-41f2-a9f0-8cc4a4717f4f', 'ArthurOzzurep@proton.me', 'Arthur', 'Ozzurep', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('a0f0378f-36f7-4ab1-b78b-166d606656e4', 'JuJu@proton.me', 'Ju', 'Ju', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('37a07d03-271e-437f-9075-20445621f169', 'MariaIj@proton.me', 'Maria', 'Ij', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('882bddee-e09a-4444-a4f9-5ecb3376d5c7', 'MedusaPluminha@proton.me', 'Medusa', 'Pluminha', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('dd73c266-a31a-431d-8108-c86e850ad33d', 'XoanPlastic@proton.me', 'Xoan', 'Plastic', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('bf937e61-e005-49c3-b556-83cde57cf981', 'GueldeDeus@proton.me', 'Guel', 'deDeus', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('7adebdf0-0e5a-4020-98a1-ec8afac9a79a', 'JumaZobrinha@proton.me', 'Juma', 'Zobrinha', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('a34c61ff-0133-4c02-afeb-ba65d1d29607', 'MedusinhaArteira@proton.me', 'Medusinha', 'Arteira', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('5ee88f9e-dcfc-49df-8d18-640a66ce0010', 'MercedesOrquita@proton.me', 'Mercedes', 'Orquita', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('4a29567a-18da-40f4-8d2b-0e276ba9f3e7', 'MarleyCeva Pra Nos@proton.me', 'Marley', 'Ceva Pra Nos', 'USER', 'DRIVE');


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 'c917332e-734d-400a-9728-8983d8da1f33');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('2624ae54-5052-48bc-b73a-f860e3847d51', 'c917332e-734d-400a-9728-8983d8da1f33');


--
-- Data for Name: _CategoryToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 'e845f432-5d90-41f2-a9f0-8cc4a4717f4f');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 'a0f0378f-36f7-4ab1-b78b-166d606656e4');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '37a07d03-271e-437f-9075-20445621f169');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '882bddee-e09a-4444-a4f9-5ecb3376d5c7');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 'dd73c266-a31a-431d-8108-c86e850ad33d');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 'bf937e61-e005-49c3-b556-83cde57cf981');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '7adebdf0-0e5a-4020-98a1-ec8afac9a79a');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', 'a34c61ff-0133-4c02-afeb-ba65d1d29607');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '5ee88f9e-dcfc-49df-8d18-640a66ce0010');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('e60ee2b2-0cad-4641-95f7-1eb3bf280d20', '4a29567a-18da-40f4-8d2b-0e276ba9f3e7');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('112c66c1-733e-427a-92f7-794cb992311f', 'c917332e-734d-400a-9728-8983d8da1f33');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('01b44790-615b-4909-a4bd-19b1ddbc7b8f', 'c917332e-734d-400a-9728-8983d8da1f33');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('d6ea75b5-02bf-45b9-94e8-53146c4cdae7', 'c917332e-734d-400a-9728-8983d8da1f33');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('91bce05f-b2d3-49f5-8c5e-bef227a5166e', 'e845f432-5d90-41f2-a9f0-8cc4a4717f4f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('91bce05f-b2d3-49f5-8c5e-bef227a5166e', 'a0f0378f-36f7-4ab1-b78b-166d606656e4');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c0f0e854-a316-4900-a5a1-343854dbe09b', '37a07d03-271e-437f-9075-20445621f169');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c0f0e854-a316-4900-a5a1-343854dbe09b', '882bddee-e09a-4444-a4f9-5ecb3376d5c7');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ebbad07b-7163-4d6c-885d-50543844fc9e', 'dd73c266-a31a-431d-8108-c86e850ad33d');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ebbad07b-7163-4d6c-885d-50543844fc9e', 'bf937e61-e005-49c3-b556-83cde57cf981');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('09904e4d-804a-4ff4-882a-2e7181f752c1', '7adebdf0-0e5a-4020-98a1-ec8afac9a79a');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('09904e4d-804a-4ff4-882a-2e7181f752c1', 'a34c61ff-0133-4c02-afeb-ba65d1d29607');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3ebfdd27-cc16-47cd-a073-6c54d88f692f', '5ee88f9e-dcfc-49df-8d18-640a66ce0010');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3ebfdd27-cc16-47cd-a073-6c54d88f692f', '4a29567a-18da-40f4-8d2b-0e276ba9f3e7');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('c917332e-734d-400a-9728-8983d8da1f33', '731f0ed2-73a4-4953-9d23-e94bde0f724e');


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: Match_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Match_number_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

