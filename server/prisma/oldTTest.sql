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

INSERT INTO public."Category" (id, level, type) VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 1, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', 2, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('da2460a8-6adc-4454-acb0-425a0ebd0d40', 3, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('ae99a935-84d8-43a8-a631-6c106f13bb1f', 4, 'ALL');


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('3ee61dc5-5f35-4717-a2dd-1d6b48a21afd', 'Complexo CK', 'Rua General Gome Tortinho, 235');


--
-- Data for Name: Court; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('1e9c4214-b05e-453f-88c8-e6e7a75af89e', 'V1', true, '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('b730cfeb-c0c2-46eb-ba24-a992fbde8c36', 'V2', true, '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('cba3b179-8a75-4778-849b-6d5679804a75', 'V3', true, '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."Double" (id, "categoryId") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."Double" (id, "categoryId") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'ALLxALL #1', false, '2024-04-27 03:00:00', '2024-04-28 03:00:00', 60, 6, 12, 'ALLxALL');


--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '332228bb-22aa-4332-86e9-bb6ce9ca0a16', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '8f080fac-9af9-4a86-87df-fe40d4456757', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '3ea54404-7c49-412b-af78-651d60a384b7', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '987ee842-0181-4809-8933-adb3205c24b8', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');


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

INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('ba1f62d1-a407-4833-8768-f403cf997afe', 'Player1@proton.me', 'Player', '1', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('e38bf21f-8a6a-4989-b08b-e8ab00e4bc67', 'Player2@proton.me', 'Player', '2', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('befa3375-f030-41cb-bfd7-860e45f69e5e', 'PlayerThree@proton.me', 'Player', 'Three', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('d9bd04d3-0c14-4672-b5ab-7e85ece7b562', 'PlayerFour@proton.me', 'Player', 'Four', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('fb4d2529-5488-457a-831c-ab204391e042', 'Player5@proton.me', 'Player', '5', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('4f16ee2d-d177-4005-acd2-c0137e5bd60e', 'Player6@proton.me', 'Player', '6', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('31aa8379-4403-41cc-a5a9-c7472c4e9275', 'P7@proton.me', 'P', '7', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('90ceab20-9f47-4e74-9c2f-316ebfa5073f', 'P8@proton.me', 'P', '8', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('8142aac2-eb3d-416c-ab0e-2902c47b5d03', 'P9@proton.me', 'P', '9', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('d070d6f9-a1f9-4c7d-aa1c-0876d0598e84', 'P10@proton.me', 'P', '10', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('7f8d241a-baaf-4027-8cd9-ee2bb36fcfe5', 'JogadorA@proton.me', 'Jogador', 'A', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('fe448ac3-2208-45eb-a662-99111756c308', 'JogadorB@proton.me', 'Jogador', 'B', 'USER', 'DRIVE');


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', 'cb270033-04bc-4424-9628-dc3268a9e6e8');


--
-- Data for Name: _CategoryToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'ba1f62d1-a407-4833-8768-f403cf997afe');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'e38bf21f-8a6a-4989-b08b-e8ab00e4bc67');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'befa3375-f030-41cb-bfd7-860e45f69e5e');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'd9bd04d3-0c14-4672-b5ab-7e85ece7b562');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'fb4d2529-5488-457a-831c-ab204391e042');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '4f16ee2d-d177-4005-acd2-c0137e5bd60e');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '31aa8379-4403-41cc-a5a9-c7472c4e9275');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '90ceab20-9f47-4e74-9c2f-316ebfa5073f');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '8142aac2-eb3d-416c-ab0e-2902c47b5d03');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'd070d6f9-a1f9-4c7d-aa1c-0876d0598e84');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '7f8d241a-baaf-4027-8cd9-ee2bb36fcfe5');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'fe448ac3-2208-45eb-a662-99111756c308');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('1e9c4214-b05e-453f-88c8-e6e7a75af89e', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('b730cfeb-c0c2-46eb-ba24-a992fbde8c36', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('cba3b179-8a75-4778-849b-6d5679804a75', 'cb270033-04bc-4424-9628-dc3268a9e6e8');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'ba1f62d1-a407-4833-8768-f403cf997afe');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'e38bf21f-8a6a-4989-b08b-e8ab00e4bc67');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', 'befa3375-f030-41cb-bfd7-860e45f69e5e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', 'd9bd04d3-0c14-4672-b5ab-7e85ece7b562');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'fb4d2529-5488-457a-831c-ab204391e042');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4f16ee2d-d177-4005-acd2-c0137e5bd60e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '31aa8379-4403-41cc-a5a9-c7472c4e9275');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '90ceab20-9f47-4e74-9c2f-316ebfa5073f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', '8142aac2-eb3d-416c-ab0e-2902c47b5d03');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'd070d6f9-a1f9-4c7d-aa1c-0876d0598e84');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '7f8d241a-baaf-4027-8cd9-ee2bb36fcfe5');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', 'fe448ac3-2208-45eb-a662-99111756c308');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');


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

