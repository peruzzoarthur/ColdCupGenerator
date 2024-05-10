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

INSERT INTO public."Category" (id, level, type) VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', 1, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('374dce1b-6d12-4c32-a4f2-a3fc84f39188', 2, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('73054bad-8574-47bf-93f3-48b1c6c7e498', 3, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('9fe602e5-ea80-4190-8292-17aa8c74f5b1', 4, 'ALL');


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('fcd64cda-926b-4b81-b45c-7ff267aad07c', 'Complexo CK', 'General Gomes Tortinho, 35622');


--
-- Data for Name: Court; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('510b84c6-86d7-4f60-a2f6-0029d8473cf3', 'V1', true, 'fcd64cda-926b-4b81-b45c-7ff267aad07c');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('c958d32e-e6ee-439b-976b-d4fd6ffddaad', 'V2', true, 'fcd64cda-926b-4b81-b45c-7ff267aad07c');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('b04d32e5-9a70-4f3d-9740-03f274559e35', 'V3', true, 'fcd64cda-926b-4b81-b45c-7ff267aad07c');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('5715c897-ceec-4820-b556-0673055a7c07', '74924649-989a-4f80-bb6e-1e810fcddb89');
INSERT INTO public."Double" (id, "categoryId") VALUES ('453c39a4-f3b2-4b65-96b5-600e79524a53', '74924649-989a-4f80-bb6e-1e810fcddb89');
INSERT INTO public."Double" (id, "categoryId") VALUES ('5973752f-ab78-4474-83f9-90b7287be69a', '74924649-989a-4f80-bb6e-1e810fcddb89');
INSERT INTO public."Double" (id, "categoryId") VALUES ('9ce0a850-7979-465b-a99e-248c423e87b8', '374dce1b-6d12-4c32-a4f2-a3fc84f39188');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e5f7befc-957c-4378-aee8-1d02b1fbe88b', '374dce1b-6d12-4c32-a4f2-a3fc84f39188');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', 'Copa teste', false, '2024-05-12 03:00:00', '2024-05-15 03:00:00', 90, 7, 20, 'ALLxALL');


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', '5715c897-ceec-4820-b556-0673055a7c07', '74924649-989a-4f80-bb6e-1e810fcddb89', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', '453c39a4-f3b2-4b65-96b5-600e79524a53', '74924649-989a-4f80-bb6e-1e810fcddb89', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', '5973752f-ab78-4474-83f9-90b7287be69a', '74924649-989a-4f80-bb6e-1e810fcddb89', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', '9ce0a850-7979-465b-a99e-248c423e87b8', '374dce1b-6d12-4c32-a4f2-a3fc84f39188', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', 'e5f7befc-957c-4378-aee8-1d02b1fbe88b', '374dce1b-6d12-4c32-a4f2-a3fc84f39188', NULL);


--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('b61616b3-ec10-4a8a-9dcc-b14cd0654a77', 'CrystieGillease@proton.me', 'Crystie', 'Gillease', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('8e170bda-2b9f-4fe1-a851-e47a50e07f95', 'AveryCubbon@proton.me', 'Avery', 'Cubbon', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('1d5a8528-2e39-445a-b031-d7c271947c95', 'JoeSergeaunt@proton.me', 'Joe', 'Sergeaunt', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('b3bf35eb-42a5-4ae2-a675-c38c812a458d', 'MelFerrick@proton.me', 'Mel', 'Ferrick', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('3aa0e074-3376-460c-bc6a-6d94305a5cc7', 'MargieDrinkwater@proton.me', 'Margie', 'Drinkwater', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('2f15ca65-9da9-4ca4-bc58-924efcab7088', 'LannyGrocutt@proton.me', 'Lanny', 'Grocutt', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('457ac194-d835-4ab8-a6ff-4a2c05250c54', 'DevonneMaypes@proton.me', 'Devonne', 'Maypes', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('05ffc031-7ce7-4664-8cb6-2ea117e20ff8', 'JanettaCasterot@proton.me', 'Janetta', 'Casterot', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('4f85651c-0d41-4cd7-a006-25812488ea8a', 'SpenceShannahan@proton.me', 'Spence', 'Shannahan', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('db7f9a90-e8d2-4b24-8952-d19d2529df5a', 'ShanaGrallo@proton.me', 'Shana', 'Grallo', 'USER', 'REVES');


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '15ad4b68-a387-40fc-a511-da4d31989185');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('374dce1b-6d12-4c32-a4f2-a3fc84f39188', '15ad4b68-a387-40fc-a511-da4d31989185');


--
-- Data for Name: _CategoryToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', 'b61616b3-ec10-4a8a-9dcc-b14cd0654a77');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '8e170bda-2b9f-4fe1-a851-e47a50e07f95');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '1d5a8528-2e39-445a-b031-d7c271947c95');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', 'b3bf35eb-42a5-4ae2-a675-c38c812a458d');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '3aa0e074-3376-460c-bc6a-6d94305a5cc7');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '2f15ca65-9da9-4ca4-bc58-924efcab7088');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '457ac194-d835-4ab8-a6ff-4a2c05250c54');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '05ffc031-7ce7-4664-8cb6-2ea117e20ff8');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', '4f85651c-0d41-4cd7-a006-25812488ea8a');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('74924649-989a-4f80-bb6e-1e810fcddb89', 'db7f9a90-e8d2-4b24-8952-d19d2529df5a');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('510b84c6-86d7-4f60-a2f6-0029d8473cf3', '15ad4b68-a387-40fc-a511-da4d31989185');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('c958d32e-e6ee-439b-976b-d4fd6ffddaad', '15ad4b68-a387-40fc-a511-da4d31989185');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('b04d32e5-9a70-4f3d-9740-03f274559e35', '15ad4b68-a387-40fc-a511-da4d31989185');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5715c897-ceec-4820-b556-0673055a7c07', 'b61616b3-ec10-4a8a-9dcc-b14cd0654a77');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5715c897-ceec-4820-b556-0673055a7c07', '8e170bda-2b9f-4fe1-a851-e47a50e07f95');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('453c39a4-f3b2-4b65-96b5-600e79524a53', '1d5a8528-2e39-445a-b031-d7c271947c95');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('453c39a4-f3b2-4b65-96b5-600e79524a53', 'b3bf35eb-42a5-4ae2-a675-c38c812a458d');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5973752f-ab78-4474-83f9-90b7287be69a', '3aa0e074-3376-460c-bc6a-6d94305a5cc7');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5973752f-ab78-4474-83f9-90b7287be69a', '2f15ca65-9da9-4ca4-bc58-924efcab7088');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('9ce0a850-7979-465b-a99e-248c423e87b8', '457ac194-d835-4ab8-a6ff-4a2c05250c54');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('9ce0a850-7979-465b-a99e-248c423e87b8', '05ffc031-7ce7-4664-8cb6-2ea117e20ff8');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e5f7befc-957c-4378-aee8-1d02b1fbe88b', '4f85651c-0d41-4cd7-a006-25812488ea8a');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e5f7befc-957c-4378-aee8-1d02b1fbe88b', 'db7f9a90-e8d2-4b24-8952-d19d2529df5a');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('15ad4b68-a387-40fc-a511-da4d31989185', 'fcd64cda-926b-4b81-b45c-7ff267aad07c');


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

