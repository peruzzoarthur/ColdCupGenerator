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

INSERT INTO public."Category" (id, level, type) VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', 1, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 2, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('77551761-7c4a-49ba-94ac-2e2906f75320', 3, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('7444c087-c10a-49b5-a76c-4c4cb12b1d02', 4, 'ALL');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "isFinished", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "isGroupMatchesFinished") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'Copa Test', false, false, '2024-06-14 03:00:00', '2024-06-16 03:00:00', 60, 7, 14, 'GROUPS', 'SUPERSET', false);


--
-- Data for Name: CategoryGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('9719159d-05d0-42b8-b642-32b9b10ac2c2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', false);


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('8f00b871-8252-4d1f-86b8-419ebab66a0d', 'Complex CK', 'Rua Gomes Tortinho, 266');


--
-- Data for Name: Court; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', 'V2', true, '8f00b871-8252-4d1f-86b8-419ebab66a0d');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', 'V1', true, '8f00b871-8252-4d1f-86b8-419ebab66a0d');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: DoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('2403d4e0-31de-4ed2-b035-0b10022af50a', 'A', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('82f6e522-58eb-49de-b14a-1fbf862a8d0b', 'B', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('7de4f513-9a98-4df6-bfdf-644bcf1b9a5d', 'C', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL);


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (1, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'af007eda-96a7-469f-b801-5dad7cab49f0', NULL, '2403d4e0-31de-4ed2-b035-0b10022af50a');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (2, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b4d9aa08-3a97-4d1a-b5f6-301d864b0ad4', NULL, '2403d4e0-31de-4ed2-b035-0b10022af50a');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (3, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '034ebc00-b433-4ab1-9d54-0e208d0d29e6', NULL, '2403d4e0-31de-4ed2-b035-0b10022af50a');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (4, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '49fe9c58-e7ac-450f-8336-8202e5e2508f', NULL, '82f6e522-58eb-49de-b14a-1fbf862a8d0b');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (5, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '8064e333-42f1-455a-ba61-5b83eb4b7f14', NULL, '82f6e522-58eb-49de-b14a-1fbf862a8d0b');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (6, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f7a5d4e7-81d6-4f9a-a39a-ca1805ee07a3', NULL, '82f6e522-58eb-49de-b14a-1fbf862a8d0b');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (7, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '3a5acdff-b741-48bf-83e5-b8506357ee22', NULL, '7de4f513-9a98-4df6-bfdf-644bcf1b9a5d');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (8, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fa52ac96-4e9e-42df-aaa0-01a6bda3a458', NULL, '7de4f513-9a98-4df6-bfdf-644bcf1b9a5d');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (9, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f84e760c-c69a-43b8-8804-b3892d7743a8', NULL, '7de4f513-9a98-4df6-bfdf-644bcf1b9a5d');


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('9b8e5c2d-b42c-42b5-a8d9-fc32cb5e62c2', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('8d5a8933-a2ed-464e-a72c-a019f6cb62c8', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('2fd0f454-7528-4bfa-8024-cd5a1292c8c7', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('2dbc2198-6bf3-443f-98ba-ff9f811e526a', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b6f3475b-53eb-4ea4-89a7-e0a76271788c', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('f7e07fb2-19f9-4109-9a65-6547620d01dd', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('71a27da5-3b5e-43b6-8ddc-43b70f2d14ae', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('400ab11f-236c-4409-94af-569759362b68', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('6d95388d-30ed-4df6-b7bb-c9f8e5d0e5fb', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('ff4defbf-5890-4d50-b6bb-88f6bf1f6455', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('787329d7-c9e6-4bae-a050-089a490752da', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7357dee0-c73b-4cc2-b2f9-6fb9d1c024d8', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('e13de78d-f29b-4232-94d0-5048237f5d32', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7a645e71-d6d5-4c1c-b77e-1932950f577b', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('5bc6aa5f-8b87-42a9-93b4-23ae9a377166', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('d53e75db-3df9-4dce-95ee-390aed5b81e3', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('224c61af-6b1d-4463-a1b9-c346834a1364', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('9407fe65-6dc9-4ed4-b69c-1c0807d38a51', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7530e440-26c2-4a90-bd4a-2292e590d9b7', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('57cee46a-f914-49ce-ab0f-1058abe139fb', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('347ad779-d660-4a84-815f-2a4d2b10d3ee', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('fe620601-1ed8-4476-80db-df028d75dc5b', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('4bffb22a-9176-4b35-9214-a3a6d7e846d9', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('0100d07e-8ab3-48c9-8555-2b7a2f40b44e', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7b9ae0dc-6792-406f-b4e5-6c109404dd28', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7eb43817-d948-48d1-b13d-051aa7168c55', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('8bf58a48-168a-4d50-888a-594edcca3c96', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('80d3a9c4-016a-4ec2-ac8b-306595c355ff', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('ee0b1f98-48fa-4482-87bd-d6c7f7615a06', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7e9f0889-28dd-4b03-a546-c5d3b1281d7c', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('fce16ddd-bf03-465a-96b2-cda50aea30aa', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b647400f-cfd0-44bc-9215-9638f23ba13c', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('50f8f6f6-16d5-42e2-8a6f-6e6da63b2a45', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7f5339be-434f-4065-bde7-5c51d53c7f94', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('3353acee-7169-44e0-957b-2cbf0555ed37', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('ae856c5d-840b-47a2-9264-d7c10dd475f9', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('af007eda-96a7-469f-b801-5dad7cab49f0', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b4d9aa08-3a97-4d1a-b5f6-301d864b0ad4', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('034ebc00-b433-4ab1-9d54-0e208d0d29e6', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('49fe9c58-e7ac-450f-8336-8202e5e2508f', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('8064e333-42f1-455a-ba61-5b83eb4b7f14', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('f7a5d4e7-81d6-4f9a-a39a-ca1805ee07a3', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '36a05385-cf0d-4482-9183-88ba7bef8654', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('3a5acdff-b741-48bf-83e5-b8506357ee22', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('fa52ac96-4e9e-42df-aaa0-01a6bda3a458', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('f84e760c-c69a-43b8-8804-b3892d7743a8', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2403d4e0-31de-4ed2-b035-0b10022af50a');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '82f6e522-58eb-49de-b14a-1fbf862a8d0b');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '7de4f513-9a98-4df6-bfdf-644bcf1b9a5d');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2403d4e0-31de-4ed2-b035-0b10022af50a');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '82f6e522-58eb-49de-b14a-1fbf862a8d0b');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '7de4f513-9a98-4df6-bfdf-644bcf1b9a5d');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2403d4e0-31de-4ed2-b035-0b10022af50a');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '82f6e522-58eb-49de-b14a-1fbf862a8d0b');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '7de4f513-9a98-4df6-bfdf-644bcf1b9a5d');


--
-- Data for Name: EventRequest; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('06fd499a-936f-40fa-a979-45cdf9a03189', 'SUPER', 1, NULL, NULL, '9b8e5c2d-b42c-42b5-a8d9-fc32cb5e62c2', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('f9fecd12-ac0f-4025-957a-31560be14b1e', 'SUPER', 1, NULL, NULL, '8d5a8933-a2ed-464e-a72c-a019f6cb62c8', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e5a79c76-1c39-4637-95cd-8e338e5d1cc5', 'SUPER', 1, NULL, NULL, '2fd0f454-7528-4bfa-8024-cd5a1292c8c7', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('9a1c8e33-a81b-4cae-a94f-adfb549ad958', 'SUPER', 1, NULL, NULL, '2dbc2198-6bf3-443f-98ba-ff9f811e526a', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('60b7be7a-2f10-454c-b1b0-c542d55a7355', 'SUPER', 1, NULL, NULL, 'b6f3475b-53eb-4ea4-89a7-e0a76271788c', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('081d4724-40e6-4a97-9d1a-eb1ab6a18c79', 'SUPER', 1, NULL, NULL, 'f7e07fb2-19f9-4109-9a65-6547620d01dd', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('8db76589-7deb-46e1-9432-0845cef241ae', 'SUPER', 1, NULL, NULL, '71a27da5-3b5e-43b6-8ddc-43b70f2d14ae', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('c512f709-b016-4dc6-b8b8-d42082197135', 'SUPER', 1, NULL, NULL, '400ab11f-236c-4409-94af-569759362b68', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('f4095661-d357-4e92-93e1-2c3a18d07b73', 'SUPER', 1, NULL, NULL, '6d95388d-30ed-4df6-b7bb-c9f8e5d0e5fb', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0cd45c31-f165-450a-9128-c64bfa0203b7', 'SUPER', 1, NULL, NULL, 'ff4defbf-5890-4d50-b6bb-88f6bf1f6455', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('db42a90c-ce1d-49bd-b8f7-66fcf565221d', 'SUPER', 1, NULL, NULL, '787329d7-c9e6-4bae-a050-089a490752da', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('673545f8-50f2-492c-a0a6-9c30a5d7a5d0', 'SUPER', 1, NULL, NULL, '7357dee0-c73b-4cc2-b2f9-6fb9d1c024d8', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e68b2b66-912e-4788-a580-a78f3dad8662', 'SUPER', 1, NULL, NULL, 'e13de78d-f29b-4232-94d0-5048237f5d32', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('9801caa4-0602-4555-a0d6-33be92398a6c', 'SUPER', 1, NULL, NULL, '7a645e71-d6d5-4c1c-b77e-1932950f577b', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('869849da-bbc7-457f-8184-64bbb8800f35', 'SUPER', 1, NULL, NULL, '5bc6aa5f-8b87-42a9-93b4-23ae9a377166', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('5feef4dc-1a3c-486b-9f34-db08a94a91be', 'SUPER', 1, NULL, NULL, 'd53e75db-3df9-4dce-95ee-390aed5b81e3', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('55aeeb30-e350-40fb-ac4c-ff53af47b279', 'SUPER', 1, NULL, NULL, '224c61af-6b1d-4463-a1b9-c346834a1364', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e95434c6-f39a-4b38-b99b-76667d8015e7', 'SUPER', 1, NULL, NULL, '9407fe65-6dc9-4ed4-b69c-1c0807d38a51', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e81054c1-cfaa-4627-b5c9-0539bdc7ca6b', 'SUPER', 1, NULL, NULL, '7530e440-26c2-4a90-bd4a-2292e590d9b7', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('396cf8e4-f131-40bb-bf07-4b5eb3ebccb4', 'SUPER', 1, NULL, NULL, '57cee46a-f914-49ce-ab0f-1058abe139fb', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('eeafcc03-f7d4-488a-94cb-a86407c41253', 'SUPER', 1, NULL, NULL, '347ad779-d660-4a84-815f-2a4d2b10d3ee', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('9a35caec-d96d-47aa-b022-ece74a5f3ff3', 'SUPER', 1, NULL, NULL, 'fe620601-1ed8-4476-80db-df028d75dc5b', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('36f83db7-6456-4d77-ad98-ca05f9c73a67', 'SUPER', 1, NULL, NULL, '4bffb22a-9176-4b35-9214-a3a6d7e846d9', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('7a8a5366-c983-4c01-864c-ff1c33ca34f5', 'SUPER', 1, NULL, NULL, '0100d07e-8ab3-48c9-8555-2b7a2f40b44e', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('bbc7095a-22fc-4e61-acfc-da30cdec11c3', 'SUPER', 1, NULL, NULL, '7b9ae0dc-6792-406f-b4e5-6c109404dd28', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('cd8990f8-d7c8-4ef3-a09f-81ab007a8506', 'SUPER', 1, NULL, NULL, '7eb43817-d948-48d1-b13d-051aa7168c55', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ceee16f5-2ff2-4166-ba79-8c40bb948db6', 'SUPER', 1, NULL, NULL, '8bf58a48-168a-4d50-888a-594edcca3c96', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('c04c1334-55c1-4f88-82d6-e8360227dfc0', 'SUPER', 1, NULL, NULL, '80d3a9c4-016a-4ec2-ac8b-306595c355ff', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e986c7d1-e459-4995-b5b9-e4e1408d5e7e', 'SUPER', 1, NULL, NULL, 'ee0b1f98-48fa-4482-87bd-d6c7f7615a06', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0cc45aef-abc7-45cc-8985-ac757a33ac6d', 'SUPER', 1, NULL, NULL, '7e9f0889-28dd-4b03-a546-c5d3b1281d7c', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('4a745dca-3922-483f-a239-93ca8850e825', 'SUPER', 1, NULL, NULL, 'fce16ddd-bf03-465a-96b2-cda50aea30aa', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('a85984d9-2621-4958-8620-f8d025bb0014', 'SUPER', 1, NULL, NULL, 'b647400f-cfd0-44bc-9215-9638f23ba13c', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('649d2de5-3ae1-4ce1-9b35-068e0d4858fd', 'SUPER', 1, NULL, NULL, '50f8f6f6-16d5-42e2-8a6f-6e6da63b2a45', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('bd970dbc-a22a-43bc-869f-cda8669a8017', 'SUPER', 1, NULL, NULL, '7f5339be-434f-4065-bde7-5c51d53c7f94', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ee0622b2-e100-4795-847f-97e978e3e5b0', 'SUPER', 1, NULL, NULL, '3353acee-7169-44e0-957b-2cbf0555ed37', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('2560c461-572a-4d7d-9f08-ba989e512953', 'SUPER', 1, NULL, NULL, 'ae856c5d-840b-47a2-9264-d7c10dd475f9', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('a2e9a70b-7312-40da-b232-5a563e1e4299', 'SUPER', 1, '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9x2', 'af007eda-96a7-469f-b801-5dad7cab49f0', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', 'SUPER', 1, '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '9x2', 'b4d9aa08-3a97-4d1a-b5f6-301d864b0ad4', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('25c34dd1-a388-431f-97d3-43c3d0dea03f', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '2x9', '034ebc00-b433-4ab1-9d54-0e208d0d29e6', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e392629c-c345-47ac-887f-3347bb986f2a', 'SUPER', 1, 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '2x9', '49fe9c58-e7ac-450f-8336-8202e5e2508f', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('b21be499-8edd-4d06-bb25-661d80d8b28e', 'SUPER', 1, 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '2x9', '8064e333-42f1-455a-ba61-5b83eb4b7f14', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('545571b2-a281-4e0b-9f44-cf55be7b9ad2', 'SUPER', 1, '36a05385-cf0d-4482-9183-88ba7bef8654', '2x9', 'f7a5d4e7-81d6-4f9a-a39a-ca1805ee07a3', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('99720d44-e2ad-463e-9d05-f63f52054d4f', 'SUPER', 1, 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '2x9', '3a5acdff-b741-48bf-83e5-b8506357ee22', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('6d31eafc-3d8e-4d60-84d9-72fb089c428b', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '2x9', 'fa52ac96-4e9e-42df-aaa0-01a6bda3a458', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('d8ac929c-e20b-410d-8f5a-13b5287200b0', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '2x9', 'f84e760c-c69a-43b8-8804-b3892d7743a8', true);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c9bcecd0-a693-4af7-a613-80c367c40181', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5b247641-dd44-4a89-b18a-8f0f76b89c03', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8bca026c-8cfb-4d55-b012-f668badd30f9', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('70f7eae8-9039-4b31-979a-79ded3c85d2c', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0014cd88-1240-4846-8418-248f42a4a9c7', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('48a9fd86-86d1-4dae-b4cc-9ccf294acb20', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a066be42-5d38-436e-9a7b-2529310746f9', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d6ca8b79-f9e6-4121-b59d-c221835f1294', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fd280a4-5250-4d23-87b5-fcc66c6b5aaf', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fa63d2ee-4220-4cee-b7d9-084143591cf3', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('864f144a-be07-4418-b456-295b4df0b530', 'a2e9a70b-7312-40da-b232-5a563e1e4299', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6173b1d3-a2a5-47c3-9005-458c2291ae8d', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e86ae055-8947-4d2e-bf57-2bc7bf6afcc2', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4a9b1351-42b1-4df1-ac4c-a216be749eb0', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6f34b079-9e2b-4472-aec5-67f3b72286b6', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('72870079-b4bb-4912-8aaf-6e13465b6fbc', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bbfb3e9c-36e9-4d04-899c-2246f5d89bc1', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c59b8ad3-8c4b-415d-b1c7-57c2f4f59bad', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2f9fccb6-585f-4673-980e-96c95efd0496', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('04064951-beb0-4570-a69d-9ba0871ab34e', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('302b848a-cb30-4b43-8b3d-ebd8f371c91c', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a96045bc-1c21-4c80-8e02-54fb89f0d424', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('097e07c7-014c-4376-91ec-d9b29fc22c96', '25c34dd1-a388-431f-97d3-43c3d0dea03f', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8a6b19ff-1f6a-4d00-9eeb-1fc3785f8a96', '25c34dd1-a388-431f-97d3-43c3d0dea03f', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ea04f359-4399-4f37-a5ba-826a4a058496', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2a58203c-3857-43e9-8326-bf00be775c28', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5df4503a-6d44-444b-80cc-2b211cf67b6c', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('796ba22b-f1ee-4c7d-926a-5c37c372df81', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fcf15409-f7e0-4db3-9160-82c9e0f6c43b', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('30b03a77-5ee2-4c9d-8e02-5635218b6fb9', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8683adb4-ba04-4266-b51e-dd197a4f2b6a', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c0fa1b99-8de0-49dd-96b4-79af4429a6c7', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('93d749a7-e1c2-4332-9cef-0e8e9cbec03f', '25c34dd1-a388-431f-97d3-43c3d0dea03f', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('aff74bca-532b-4566-ba0f-a051e4760e76', 'e392629c-c345-47ac-887f-3347bb986f2a', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c55d89f5-b6c1-4964-9838-00910e4eda71', 'e392629c-c345-47ac-887f-3347bb986f2a', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2757d048-0ade-488a-a56c-7ce9e0cacb34', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('90a5c183-2419-464c-b546-aa31ccd50bc6', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2d253861-4d16-4fa1-9dfa-f41ce04c4946', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7e65f31d-5de4-4543-af65-fbd3d686a775', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('888d9307-8515-4c7a-9432-21f9150044dd', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('aefeed68-b973-4176-af7f-2f441cd11380', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a7d5ffcb-955c-4736-8c12-242bb26b0f81', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e7bbc1d5-d10b-446f-99d9-50ee0c4fbe52', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c87472cb-ff16-42b2-81dd-e86831a0bb28', 'e392629c-c345-47ac-887f-3347bb986f2a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b34f2583-049f-4d20-bd9f-ff0b2cd05444', 'b21be499-8edd-4d06-bb25-661d80d8b28e', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1e7b2e00-0696-4b95-b753-e38822d85d43', 'b21be499-8edd-4d06-bb25-661d80d8b28e', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('76866a0b-fa0c-4643-ba6f-738b6b92d00f', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b0e82491-2917-48aa-8f66-99d1e5f9c428', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d03f08f2-5341-4bcf-b56f-ef3919b2f771', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ed8be877-23a4-4303-ae76-149af71e950c', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e11bb82e-392f-4da1-8b04-d39631b5a94c', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('878b3525-eecc-4b11-a03e-cfdd75d46e79', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3f55e1e3-d683-4f43-b564-ba2b8e06f4a7', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4de46ee6-81af-4584-bfd9-f997f2ed2eb9', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c5e3a08e-9b38-49be-a74a-916341240ec6', 'b21be499-8edd-4d06-bb25-661d80d8b28e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9632e630-d564-4039-8c08-cb5e9e4be8ea', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('778b7505-7e8b-4a8c-951b-50cf9d3025d4', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('15ba70c4-4556-41af-8099-3672db770cdf', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fb179c94-eb6e-4980-a83c-1db48ef9a6c9', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('41d45897-68ef-476b-9be7-6eeb51c1657e', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b6a9f009-5fa5-496d-8025-14739c4570a7', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('83818a97-5fb3-4d75-81a0-ea903f435cc4', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e1a12755-1ecc-4178-aa53-afdf0239c71d', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('16aec435-729b-4647-8d96-f26386b0454b', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2bf6966b-7661-472c-9f06-5de568c7079d', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('66e9a1cd-ed02-4a85-b5e8-75f03dc88087', '545571b2-a281-4e0b-9f44-cf55be7b9ad2', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4b1e8618-514b-42cc-897f-f0fbd17fc757', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6cdf37a7-90ba-465d-8424-27645de08030', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1ee687bb-1f57-4cb5-98e7-a7ea24141401', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7d50a2e8-b7ab-4084-ab9c-922fc2d14919', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('665c3a8a-2e0f-4e9b-bbec-ec6e1b7ab108', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('87af0d3c-69ab-4c48-95b6-afdd3bdc9259', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('92fbd473-ea71-4466-867b-9b63e0576cf0', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b6ad8488-cd43-4ed3-b788-d433ad61f871', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('08b92fd6-bc4b-40d4-904e-dae41666a4d2', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('25bc695f-cfa9-421d-949d-5eb5a759a2af', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0166271f-789e-4a84-9080-67b3badfc069', '99720d44-e2ad-463e-9d05-f63f52054d4f', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('62d3245d-4c30-4d83-8c36-931127941284', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7ec6fce0-a63d-4463-9ff4-84beeccb0429', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e430a283-bf0c-403a-9b97-2f52454f205e', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5b88bf74-ec50-4ca2-bdbc-f4b1be16f1b7', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('72875980-4ab4-4131-a39b-0861d5886fb5', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e054d9d0-46c6-4af2-8792-44c9d6a6582a', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('585f90f8-cc8c-437f-94bc-36c328e31ee2', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1e3a86b9-1e2b-4830-ab48-36f992748d73', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('38a7d581-e2a9-4b0f-84d3-9a71498501f4', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9ae7d8ff-f8f4-4bfc-a704-4758e0739199', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4d437747-3f2d-418d-baa2-0c2905381120', 'd8ac929c-e20b-410d-8f5a-13b5287200b0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5aea8533-0068-482b-bf17-aa7e38e571f7', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5c694eff-5ba6-4e39-9c92-5a89fe69fd2d', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8822bfed-240a-4dc8-b0f4-e0ad021632b1', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4973e2b4-c221-438f-a840-e6ecf4676524', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f7767708-716f-4921-8be4-d43d881c6d99', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0f33ab69-1a5b-470a-b5c4-915e5e81e674', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('314b5fb6-2f71-42aa-8198-06719b5c927e', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4a6492f2-3c4e-498f-9e2a-cb6d95f192b0', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c75305ec-c838-4b12-9ffe-1e19d3dd4ad9', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f861f59a-4370-4a78-8408-4b80682867b9', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('32705880-ed61-4245-830f-7573b64663d8', '6d31eafc-3d8e-4d60-84d9-72fb089c428b', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');


--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('cd57fc63-3d9f-432f-91fb-6a0f99dc258b', 'Joao', 'Plasticat', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('2a81b0b4-e58c-4c83-941a-4e1461dab510', 'Arthur', 'Peruzzo', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('c01c44d8-b8f3-4574-b1d7-c49ed49dcd86', 'Maria', 'Querida', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('12fe83f6-0e4c-4dd2-8902-cafa67baf585', 'Medusa', 'Briguenta', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('8074665b-0bc2-4f04-8e9e-489923d6047d', 'Guel', 'de Deus', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('d7cc66da-a9b3-478b-9dc4-86cbac4d5280', 'Mercedita', 'Incansable', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('81515e85-d9b4-482c-8f94-a551b68fa7fd', 'Marley', 'Cevapranos', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('2f585eed-a7a3-4ead-8690-4e65c48b2c8c', 'Genesio', 'Hermafro', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('58f5ac09-2e77-44c9-ac0a-387d56e1cf68', 'O', 'Artista', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('4e840eaf-df44-4b5a-ab3c-00c419ee8f42', 'J', 'DC', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('631588eb-315e-4a8e-82f8-dd29bfb2014d', 'L', 'Totimoto', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('3712df79-de53-447b-bf02-2fa963dbd60d', 'Medusinha', 'Jovem', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('bf10a068-37f4-4709-9194-d9e6f29957fe', 'Juma', 'Asobrinha', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('05094b5a-7f7a-4c57-9392-b9b83a8e278f', 'Xu', 'Xu', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('431897ab-31c9-4029-bd07-17db27bd93f4', 'P', '1', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('542b9de3-0524-4f9d-a65e-f2f1b56c96c0', 'P', '2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('5787b04b-ef00-4db2-8906-6bf30aa5bd94', 'P', '3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('5018167e-2832-42ab-8419-948456879473', 'P', '4', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('1544913c-cf34-4774-b7e4-233d879dba63', 'Joao', 'Plasticat', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$9rILDzWm/XoF6ih/y4w+/A$xqJ6Asj1qTJ2F8uBRBWoI5PZG4uvobJC04Tck36Ojtk', '2018-06-22 03:00:00', '2024-06-14 01:17:57.633', '2024-06-14 01:18:57.291', 'cd57fc63-3d9f-432f-91fb-6a0f99dc258b', 'USER', NULL, NULL);
INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('dc5d1035-fccc-444e-9a05-4cadd202034b', 'Arthur', 'Peruzzo', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$qg0irEwYaQqEAcLTg28bVg$ysJ8X+BLBQMyDVUvla263GuG4xlmeK37aAe8YspQJDg', '1991-12-21 02:00:00', '2024-06-14 00:54:16.826', '2024-06-14 01:19:00.429', '2a81b0b4-e58c-4c83-941a-4e1461dab510', 'ADMIN', '$argon2id$v=19$m=65536,t=3,p=4$u6YDE8Wt6bpoEfD1TaBoKA$1y8EklfmlrTxr/UIc3yBhEUjyvKobiLU+/EXmzICrYg', NULL);


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', 'a0efa764-cb6c-472e-80da-16c076fdaeb8');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '9b8e5c2d-b42c-42b5-a8d9-fc32cb5e62c2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9b8e5c2d-b42c-42b5-a8d9-fc32cb5e62c2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '8d5a8933-a2ed-464e-a72c-a019f6cb62c8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8d5a8933-a2ed-464e-a72c-a019f6cb62c8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '2fd0f454-7528-4bfa-8024-cd5a1292c8c7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '2dbc2198-6bf3-443f-98ba-ff9f811e526a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '2dbc2198-6bf3-443f-98ba-ff9f811e526a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b6f3475b-53eb-4ea4-89a7-e0a76271788c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'b6f3475b-53eb-4ea4-89a7-e0a76271788c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'f7e07fb2-19f9-4109-9a65-6547620d01dd');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'f7e07fb2-19f9-4109-9a65-6547620d01dd');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '71a27da5-3b5e-43b6-8ddc-43b70f2d14ae');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '71a27da5-3b5e-43b6-8ddc-43b70f2d14ae');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '400ab11f-236c-4409-94af-569759362b68');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '400ab11f-236c-4409-94af-569759362b68');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '6d95388d-30ed-4df6-b7bb-c9f8e5d0e5fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6d95388d-30ed-4df6-b7bb-c9f8e5d0e5fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'ff4defbf-5890-4d50-b6bb-88f6bf1f6455');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '787329d7-c9e6-4bae-a050-089a490752da');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '787329d7-c9e6-4bae-a050-089a490752da');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '7357dee0-c73b-4cc2-b2f9-6fb9d1c024d8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '7357dee0-c73b-4cc2-b2f9-6fb9d1c024d8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e13de78d-f29b-4232-94d0-5048237f5d32');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e13de78d-f29b-4232-94d0-5048237f5d32');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '7a645e71-d6d5-4c1c-b77e-1932950f577b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '7a645e71-d6d5-4c1c-b77e-1932950f577b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '5bc6aa5f-8b87-42a9-93b4-23ae9a377166');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '5bc6aa5f-8b87-42a9-93b4-23ae9a377166');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'd53e75db-3df9-4dce-95ee-390aed5b81e3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '224c61af-6b1d-4463-a1b9-c346834a1364');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '224c61af-6b1d-4463-a1b9-c346834a1364');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9407fe65-6dc9-4ed4-b69c-1c0807d38a51');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '9407fe65-6dc9-4ed4-b69c-1c0807d38a51');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '7530e440-26c2-4a90-bd4a-2292e590d9b7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7530e440-26c2-4a90-bd4a-2292e590d9b7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '57cee46a-f914-49ce-ab0f-1058abe139fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '57cee46a-f914-49ce-ab0f-1058abe139fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '347ad779-d660-4a84-815f-2a4d2b10d3ee');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '347ad779-d660-4a84-815f-2a4d2b10d3ee');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'fe620601-1ed8-4476-80db-df028d75dc5b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '4bffb22a-9176-4b35-9214-a3a6d7e846d9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '0100d07e-8ab3-48c9-8555-2b7a2f40b44e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '7b9ae0dc-6792-406f-b4e5-6c109404dd28');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '7eb43817-d948-48d1-b13d-051aa7168c55');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '8bf58a48-168a-4d50-888a-594edcca3c96');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '8bf58a48-168a-4d50-888a-594edcca3c96');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '80d3a9c4-016a-4ec2-ac8b-306595c355ff');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '80d3a9c4-016a-4ec2-ac8b-306595c355ff');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'ee0b1f98-48fa-4482-87bd-d6c7f7615a06');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'ee0b1f98-48fa-4482-87bd-d6c7f7615a06');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '7e9f0889-28dd-4b03-a546-c5d3b1281d7c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '7e9f0889-28dd-4b03-a546-c5d3b1281d7c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'fce16ddd-bf03-465a-96b2-cda50aea30aa');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'fce16ddd-bf03-465a-96b2-cda50aea30aa');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b647400f-cfd0-44bc-9215-9638f23ba13c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b647400f-cfd0-44bc-9215-9638f23ba13c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '50f8f6f6-16d5-42e2-8a6f-6e6da63b2a45');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '50f8f6f6-16d5-42e2-8a6f-6e6da63b2a45');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7f5339be-434f-4065-bde7-5c51d53c7f94');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '7f5339be-434f-4065-bde7-5c51d53c7f94');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '3353acee-7169-44e0-957b-2cbf0555ed37');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '3353acee-7169-44e0-957b-2cbf0555ed37');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'ae856c5d-840b-47a2-9264-d7c10dd475f9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'ae856c5d-840b-47a2-9264-d7c10dd475f9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'af007eda-96a7-469f-b801-5dad7cab49f0');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'af007eda-96a7-469f-b801-5dad7cab49f0');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b4d9aa08-3a97-4d1a-b5f6-301d864b0ad4');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'b4d9aa08-3a97-4d1a-b5f6-301d864b0ad4');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '034ebc00-b433-4ab1-9d54-0e208d0d29e6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '034ebc00-b433-4ab1-9d54-0e208d0d29e6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '49fe9c58-e7ac-450f-8336-8202e5e2508f');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '49fe9c58-e7ac-450f-8336-8202e5e2508f');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '8064e333-42f1-455a-ba61-5b83eb4b7f14');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '8064e333-42f1-455a-ba61-5b83eb4b7f14');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f7a5d4e7-81d6-4f9a-a39a-ca1805ee07a3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'f7a5d4e7-81d6-4f9a-a39a-ca1805ee07a3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '3a5acdff-b741-48bf-83e5-b8506357ee22');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '3a5acdff-b741-48bf-83e5-b8506357ee22');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'fa52ac96-4e9e-42df-aaa0-01a6bda3a458');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'fa52ac96-4e9e-42df-aaa0-01a6bda3a458');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'f84e760c-c69a-43b8-8804-b3892d7743a8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f84e760c-c69a-43b8-8804-b3892d7743a8');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c01c44d8-b8f3-4574-b1d7-c49ed49dcd86');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '12fe83f6-0e4c-4dd2-8902-cafa67baf585');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'd7cc66da-a9b3-478b-9dc4-86cbac4d5280');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '81515e85-d9b4-482c-8f94-a551b68fa7fd');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '2f585eed-a7a3-4ead-8690-4e65c48b2c8c');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '58f5ac09-2e77-44c9-ac0a-387d56e1cf68');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '4e840eaf-df44-4b5a-ab3c-00c419ee8f42');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '631588eb-315e-4a8e-82f8-dd29bfb2014d');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '3712df79-de53-447b-bf02-2fa963dbd60d');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'bf10a068-37f4-4709-9194-d9e6f29957fe');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '2a81b0b4-e58c-4c83-941a-4e1461dab510');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '05094b5a-7f7a-4c57-9392-b9b83a8e278f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '431897ab-31c9-4029-bd07-17db27bd93f4');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '542b9de3-0524-4f9d-a65e-f2f1b56c96c0');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '5787b04b-ef00-4db2-8906-6bf30aa5bd94');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '5018167e-2832-42ab-8419-948456879473');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'cd57fc63-3d9f-432f-91fb-6a0f99dc258b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '8074665b-0bc2-4f04-8e9e-489923d6047d');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '06fd499a-936f-40fa-a979-45cdf9a03189');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '06fd499a-936f-40fa-a979-45cdf9a03189');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f9fecd12-ac0f-4025-957a-31560be14b1e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'f9fecd12-ac0f-4025-957a-31560be14b1e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'e5a79c76-1c39-4637-95cd-8e338e5d1cc5');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9a1c8e33-a81b-4cae-a94f-adfb549ad958');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '9a1c8e33-a81b-4cae-a94f-adfb549ad958');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '60b7be7a-2f10-454c-b1b0-c542d55a7355');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '60b7be7a-2f10-454c-b1b0-c542d55a7355');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '081d4724-40e6-4a97-9d1a-eb1ab6a18c79');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '081d4724-40e6-4a97-9d1a-eb1ab6a18c79');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8db76589-7deb-46e1-9432-0845cef241ae');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '8db76589-7deb-46e1-9432-0845cef241ae');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c512f709-b016-4dc6-b8b8-d42082197135');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'c512f709-b016-4dc6-b8b8-d42082197135');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f4095661-d357-4e92-93e1-2c3a18d07b73');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f4095661-d357-4e92-93e1-2c3a18d07b73');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '0cd45c31-f165-450a-9128-c64bfa0203b7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'db42a90c-ce1d-49bd-b8f7-66fcf565221d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'db42a90c-ce1d-49bd-b8f7-66fcf565221d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '673545f8-50f2-492c-a0a6-9c30a5d7a5d0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '673545f8-50f2-492c-a0a6-9c30a5d7a5d0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e68b2b66-912e-4788-a580-a78f3dad8662');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e68b2b66-912e-4788-a580-a78f3dad8662');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9801caa4-0602-4555-a0d6-33be92398a6c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9801caa4-0602-4555-a0d6-33be92398a6c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '869849da-bbc7-457f-8184-64bbb8800f35');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '869849da-bbc7-457f-8184-64bbb8800f35');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '5feef4dc-1a3c-486b-9f34-db08a94a91be');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '55aeeb30-e350-40fb-ac4c-ff53af47b279');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '55aeeb30-e350-40fb-ac4c-ff53af47b279');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'e95434c6-f39a-4b38-b99b-76667d8015e7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'e95434c6-f39a-4b38-b99b-76667d8015e7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'e81054c1-cfaa-4627-b5c9-0539bdc7ca6b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e81054c1-cfaa-4627-b5c9-0539bdc7ca6b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '396cf8e4-f131-40bb-bf07-4b5eb3ebccb4');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '396cf8e4-f131-40bb-bf07-4b5eb3ebccb4');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'eeafcc03-f7d4-488a-94cb-a86407c41253');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'eeafcc03-f7d4-488a-94cb-a86407c41253');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9a35caec-d96d-47aa-b022-ece74a5f3ff3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '36f83db7-6456-4d77-ad98-ca05f9c73a67');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7a8a5366-c983-4c01-864c-ff1c33ca34f5');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'bbc7095a-22fc-4e61-acfc-da30cdec11c3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'cd8990f8-d7c8-4ef3-a09f-81ab007a8506');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'ceee16f5-2ff2-4166-ba79-8c40bb948db6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'ceee16f5-2ff2-4166-ba79-8c40bb948db6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'c04c1334-55c1-4f88-82d6-e8360227dfc0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'c04c1334-55c1-4f88-82d6-e8360227dfc0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e986c7d1-e459-4995-b5b9-e4e1408d5e7e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e986c7d1-e459-4995-b5b9-e4e1408d5e7e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '0cc45aef-abc7-45cc-8985-ac757a33ac6d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '0cc45aef-abc7-45cc-8985-ac757a33ac6d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '4a745dca-3922-483f-a239-93ca8850e825');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '4a745dca-3922-483f-a239-93ca8850e825');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a85984d9-2621-4958-8620-f8d025bb0014');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'a85984d9-2621-4958-8620-f8d025bb0014');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '649d2de5-3ae1-4ce1-9b35-068e0d4858fd');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '649d2de5-3ae1-4ce1-9b35-068e0d4858fd');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'bd970dbc-a22a-43bc-869f-cda8669a8017');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'bd970dbc-a22a-43bc-869f-cda8669a8017');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'ee0622b2-e100-4795-847f-97e978e3e5b0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'ee0622b2-e100-4795-847f-97e978e3e5b0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '2560c461-572a-4d7d-9f08-ba989e512953');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2560c461-572a-4d7d-9f08-ba989e512953');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a2e9a70b-7312-40da-b232-5a563e1e4299');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a2e9a70b-7312-40da-b232-5a563e1e4299');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '25c34dd1-a388-431f-97d3-43c3d0dea03f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '25c34dd1-a388-431f-97d3-43c3d0dea03f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e392629c-c345-47ac-887f-3347bb986f2a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'e392629c-c345-47ac-887f-3347bb986f2a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b21be499-8edd-4d06-bb25-661d80d8b28e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'b21be499-8edd-4d06-bb25-661d80d8b28e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '545571b2-a281-4e0b-9f44-cf55be7b9ad2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '545571b2-a281-4e0b-9f44-cf55be7b9ad2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '99720d44-e2ad-463e-9d05-f63f52054d4f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '99720d44-e2ad-463e-9d05-f63f52054d4f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6d31eafc-3d8e-4d60-84d9-72fb089c428b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '6d31eafc-3d8e-4d60-84d9-72fb089c428b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'd8ac929c-e20b-410d-8f5a-13b5287200b0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'd8ac929c-e20b-410d-8f5a-13b5287200b0');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c9bcecd0-a693-4af7-a613-80c367c40181');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5b247641-dd44-4a89-b18a-8f0f76b89c03');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8bca026c-8cfb-4d55-b012-f668badd30f9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '70f7eae8-9039-4b31-979a-79ded3c85d2c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0014cd88-1240-4846-8418-248f42a4a9c7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '48a9fd86-86d1-4dae-b4cc-9ccf294acb20');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a066be42-5d38-436e-9a7b-2529310746f9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd6ca8b79-f9e6-4121-b59d-c221835f1294');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1fd280a4-5250-4d23-87b5-fcc66c6b5aaf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fa63d2ee-4220-4cee-b7d9-084143591cf3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '864f144a-be07-4418-b456-295b4df0b530');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6173b1d3-a2a5-47c3-9005-458c2291ae8d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e86ae055-8947-4d2e-bf57-2bc7bf6afcc2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4a9b1351-42b1-4df1-ac4c-a216be749eb0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6f34b079-9e2b-4472-aec5-67f3b72286b6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '72870079-b4bb-4912-8aaf-6e13465b6fbc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bbfb3e9c-36e9-4d04-899c-2246f5d89bc1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c59b8ad3-8c4b-415d-b1c7-57c2f4f59bad');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2f9fccb6-585f-4673-980e-96c95efd0496');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '04064951-beb0-4570-a69d-9ba0871ab34e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '302b848a-cb30-4b43-8b3d-ebd8f371c91c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a96045bc-1c21-4c80-8e02-54fb89f0d424');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '097e07c7-014c-4376-91ec-d9b29fc22c96');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8a6b19ff-1f6a-4d00-9eeb-1fc3785f8a96');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ea04f359-4399-4f37-a5ba-826a4a058496');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2a58203c-3857-43e9-8326-bf00be775c28');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5df4503a-6d44-444b-80cc-2b211cf67b6c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '796ba22b-f1ee-4c7d-926a-5c37c372df81');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fcf15409-f7e0-4db3-9160-82c9e0f6c43b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '30b03a77-5ee2-4c9d-8e02-5635218b6fb9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8683adb4-ba04-4266-b51e-dd197a4f2b6a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c0fa1b99-8de0-49dd-96b4-79af4429a6c7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '93d749a7-e1c2-4332-9cef-0e8e9cbec03f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'aff74bca-532b-4566-ba0f-a051e4760e76');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c55d89f5-b6c1-4964-9838-00910e4eda71');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2757d048-0ade-488a-a56c-7ce9e0cacb34');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '90a5c183-2419-464c-b546-aa31ccd50bc6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2d253861-4d16-4fa1-9dfa-f41ce04c4946');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7e65f31d-5de4-4543-af65-fbd3d686a775');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '888d9307-8515-4c7a-9432-21f9150044dd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'aefeed68-b973-4176-af7f-2f441cd11380');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a7d5ffcb-955c-4736-8c12-242bb26b0f81');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e7bbc1d5-d10b-446f-99d9-50ee0c4fbe52');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c87472cb-ff16-42b2-81dd-e86831a0bb28');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b34f2583-049f-4d20-bd9f-ff0b2cd05444');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1e7b2e00-0696-4b95-b753-e38822d85d43');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '76866a0b-fa0c-4643-ba6f-738b6b92d00f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b0e82491-2917-48aa-8f66-99d1e5f9c428');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd03f08f2-5341-4bcf-b56f-ef3919b2f771');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ed8be877-23a4-4303-ae76-149af71e950c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e11bb82e-392f-4da1-8b04-d39631b5a94c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '878b3525-eecc-4b11-a03e-cfdd75d46e79');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '3f55e1e3-d683-4f43-b564-ba2b8e06f4a7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4de46ee6-81af-4584-bfd9-f997f2ed2eb9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c5e3a08e-9b38-49be-a74a-916341240ec6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9632e630-d564-4039-8c08-cb5e9e4be8ea');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '778b7505-7e8b-4a8c-951b-50cf9d3025d4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '15ba70c4-4556-41af-8099-3672db770cdf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fb179c94-eb6e-4980-a83c-1db48ef9a6c9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '41d45897-68ef-476b-9be7-6eeb51c1657e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b6a9f009-5fa5-496d-8025-14739c4570a7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '83818a97-5fb3-4d75-81a0-ea903f435cc4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e1a12755-1ecc-4178-aa53-afdf0239c71d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '16aec435-729b-4647-8d96-f26386b0454b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2bf6966b-7661-472c-9f06-5de568c7079d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '66e9a1cd-ed02-4a85-b5e8-75f03dc88087');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4b1e8618-514b-42cc-897f-f0fbd17fc757');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6cdf37a7-90ba-465d-8424-27645de08030');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1ee687bb-1f57-4cb5-98e7-a7ea24141401');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7d50a2e8-b7ab-4084-ab9c-922fc2d14919');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '665c3a8a-2e0f-4e9b-bbec-ec6e1b7ab108');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '87af0d3c-69ab-4c48-95b6-afdd3bdc9259');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '92fbd473-ea71-4466-867b-9b63e0576cf0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b6ad8488-cd43-4ed3-b788-d433ad61f871');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '08b92fd6-bc4b-40d4-904e-dae41666a4d2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '25bc695f-cfa9-421d-949d-5eb5a759a2af');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0166271f-789e-4a84-9080-67b3badfc069');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '62d3245d-4c30-4d83-8c36-931127941284');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7ec6fce0-a63d-4463-9ff4-84beeccb0429');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e430a283-bf0c-403a-9b97-2f52454f205e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5b88bf74-ec50-4ca2-bdbc-f4b1be16f1b7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '72875980-4ab4-4131-a39b-0861d5886fb5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e054d9d0-46c6-4af2-8792-44c9d6a6582a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '585f90f8-cc8c-437f-94bc-36c328e31ee2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1e3a86b9-1e2b-4830-ab48-36f992748d73');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '38a7d581-e2a9-4b0f-84d3-9a71498501f4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9ae7d8ff-f8f4-4bfc-a704-4758e0739199');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4d437747-3f2d-418d-baa2-0c2905381120');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5aea8533-0068-482b-bf17-aa7e38e571f7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5c694eff-5ba6-4e39-9c92-5a89fe69fd2d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8822bfed-240a-4dc8-b0f4-e0ad021632b1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4973e2b4-c221-438f-a840-e6ecf4676524');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f7767708-716f-4921-8be4-d43d881c6d99');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0f33ab69-1a5b-470a-b5c4-915e5e81e674');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '314b5fb6-2f71-42aa-8198-06719b5c927e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4a6492f2-3c4e-498f-9e2a-cb6d95f192b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c75305ec-c838-4b12-9ffe-1e19d3dd4ad9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f861f59a-4370-4a78-8408-4b80682867b9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '32705880-ed61-4245-830f-7573b64663d8');


--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8f00b871-8252-4d1f-86b8-419ebab66a0d');


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '06fd499a-936f-40fa-a979-45cdf9a03189');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f9fecd12-ac0f-4025-957a-31560be14b1e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e5a79c76-1c39-4637-95cd-8e338e5d1cc5');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9a1c8e33-a81b-4cae-a94f-adfb549ad958');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '60b7be7a-2f10-454c-b1b0-c542d55a7355');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '081d4724-40e6-4a97-9d1a-eb1ab6a18c79');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8db76589-7deb-46e1-9432-0845cef241ae');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c512f709-b016-4dc6-b8b8-d42082197135');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f4095661-d357-4e92-93e1-2c3a18d07b73');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0cd45c31-f165-450a-9128-c64bfa0203b7');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'db42a90c-ce1d-49bd-b8f7-66fcf565221d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '673545f8-50f2-492c-a0a6-9c30a5d7a5d0');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e68b2b66-912e-4788-a580-a78f3dad8662');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9801caa4-0602-4555-a0d6-33be92398a6c');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '869849da-bbc7-457f-8184-64bbb8800f35');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5feef4dc-1a3c-486b-9f34-db08a94a91be');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '55aeeb30-e350-40fb-ac4c-ff53af47b279');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e95434c6-f39a-4b38-b99b-76667d8015e7');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e81054c1-cfaa-4627-b5c9-0539bdc7ca6b');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '396cf8e4-f131-40bb-bf07-4b5eb3ebccb4');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'eeafcc03-f7d4-488a-94cb-a86407c41253');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9a35caec-d96d-47aa-b022-ece74a5f3ff3');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36f83db7-6456-4d77-ad98-ca05f9c73a67');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7a8a5366-c983-4c01-864c-ff1c33ca34f5');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bbc7095a-22fc-4e61-acfc-da30cdec11c3');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cd8990f8-d7c8-4ef3-a09f-81ab007a8506');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ceee16f5-2ff2-4166-ba79-8c40bb948db6');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c04c1334-55c1-4f88-82d6-e8360227dfc0');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e986c7d1-e459-4995-b5b9-e4e1408d5e7e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0cc45aef-abc7-45cc-8985-ac757a33ac6d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4a745dca-3922-483f-a239-93ca8850e825');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a85984d9-2621-4958-8620-f8d025bb0014');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '649d2de5-3ae1-4ce1-9b35-068e0d4858fd');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bd970dbc-a22a-43bc-869f-cda8669a8017');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ee0622b2-e100-4795-847f-97e978e3e5b0');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2560c461-572a-4d7d-9f08-ba989e512953');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a2e9a70b-7312-40da-b232-5a563e1e4299');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6d3ee2af-10f6-4e6c-8a53-5bd3c35a0627');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '25c34dd1-a388-431f-97d3-43c3d0dea03f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e392629c-c345-47ac-887f-3347bb986f2a');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b21be499-8edd-4d06-bb25-661d80d8b28e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '545571b2-a281-4e0b-9f44-cf55be7b9ad2');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '99720d44-e2ad-463e-9d05-f63f52054d4f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6d31eafc-3d8e-4d60-84d9-72fb089c428b');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd8ac929c-e20b-410d-8f5a-13b5287200b0');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'c9bcecd0-a693-4af7-a613-80c367c40181');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c9bcecd0-a693-4af7-a613-80c367c40181');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5b247641-dd44-4a89-b18a-8f0f76b89c03');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '5b247641-dd44-4a89-b18a-8f0f76b89c03');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '8bca026c-8cfb-4d55-b012-f668badd30f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8bca026c-8cfb-4d55-b012-f668badd30f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '70f7eae8-9039-4b31-979a-79ded3c85d2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '70f7eae8-9039-4b31-979a-79ded3c85d2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '0014cd88-1240-4846-8418-248f42a4a9c7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '0014cd88-1240-4846-8418-248f42a4a9c7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '48a9fd86-86d1-4dae-b4cc-9ccf294acb20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '48a9fd86-86d1-4dae-b4cc-9ccf294acb20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a066be42-5d38-436e-9a7b-2529310746f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a066be42-5d38-436e-9a7b-2529310746f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'd6ca8b79-f9e6-4121-b59d-c221835f1294');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'd6ca8b79-f9e6-4121-b59d-c221835f1294');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '1fd280a4-5250-4d23-87b5-fcc66c6b5aaf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '1fd280a4-5250-4d23-87b5-fcc66c6b5aaf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'fa63d2ee-4220-4cee-b7d9-084143591cf3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'fa63d2ee-4220-4cee-b7d9-084143591cf3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '864f144a-be07-4418-b456-295b4df0b530');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '864f144a-be07-4418-b456-295b4df0b530');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '6173b1d3-a2a5-47c3-9005-458c2291ae8d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '6173b1d3-a2a5-47c3-9005-458c2291ae8d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'e86ae055-8947-4d2e-bf57-2bc7bf6afcc2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'e86ae055-8947-4d2e-bf57-2bc7bf6afcc2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '4a9b1351-42b1-4df1-ac4c-a216be749eb0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '4a9b1351-42b1-4df1-ac4c-a216be749eb0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '6f34b079-9e2b-4472-aec5-67f3b72286b6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '6f34b079-9e2b-4472-aec5-67f3b72286b6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '72870079-b4bb-4912-8aaf-6e13465b6fbc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '72870079-b4bb-4912-8aaf-6e13465b6fbc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'bbfb3e9c-36e9-4d04-899c-2246f5d89bc1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'bbfb3e9c-36e9-4d04-899c-2246f5d89bc1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c59b8ad3-8c4b-415d-b1c7-57c2f4f59bad');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c59b8ad3-8c4b-415d-b1c7-57c2f4f59bad');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '2f9fccb6-585f-4673-980e-96c95efd0496');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '2f9fccb6-585f-4673-980e-96c95efd0496');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '04064951-beb0-4570-a69d-9ba0871ab34e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '04064951-beb0-4570-a69d-9ba0871ab34e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '302b848a-cb30-4b43-8b3d-ebd8f371c91c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '302b848a-cb30-4b43-8b3d-ebd8f371c91c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a96045bc-1c21-4c80-8e02-54fb89f0d424');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a96045bc-1c21-4c80-8e02-54fb89f0d424');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '097e07c7-014c-4376-91ec-d9b29fc22c96');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '097e07c7-014c-4376-91ec-d9b29fc22c96');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '8a6b19ff-1f6a-4d00-9eeb-1fc3785f8a96');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '8a6b19ff-1f6a-4d00-9eeb-1fc3785f8a96');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'ea04f359-4399-4f37-a5ba-826a4a058496');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'ea04f359-4399-4f37-a5ba-826a4a058496');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '2a58203c-3857-43e9-8326-bf00be775c28');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '2a58203c-3857-43e9-8326-bf00be775c28');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '5df4503a-6d44-444b-80cc-2b211cf67b6c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5df4503a-6d44-444b-80cc-2b211cf67b6c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '796ba22b-f1ee-4c7d-926a-5c37c372df81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '796ba22b-f1ee-4c7d-926a-5c37c372df81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'fcf15409-f7e0-4db3-9160-82c9e0f6c43b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'fcf15409-f7e0-4db3-9160-82c9e0f6c43b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '30b03a77-5ee2-4c9d-8e02-5635218b6fb9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '30b03a77-5ee2-4c9d-8e02-5635218b6fb9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '8683adb4-ba04-4266-b51e-dd197a4f2b6a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '8683adb4-ba04-4266-b51e-dd197a4f2b6a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c0fa1b99-8de0-49dd-96b4-79af4429a6c7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'c0fa1b99-8de0-49dd-96b4-79af4429a6c7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '93d749a7-e1c2-4332-9cef-0e8e9cbec03f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '93d749a7-e1c2-4332-9cef-0e8e9cbec03f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'aff74bca-532b-4566-ba0f-a051e4760e76');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'aff74bca-532b-4566-ba0f-a051e4760e76');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'c55d89f5-b6c1-4964-9838-00910e4eda71');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'c55d89f5-b6c1-4964-9838-00910e4eda71');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2757d048-0ade-488a-a56c-7ce9e0cacb34');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '2757d048-0ade-488a-a56c-7ce9e0cacb34');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '90a5c183-2419-464c-b546-aa31ccd50bc6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '90a5c183-2419-464c-b546-aa31ccd50bc6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2d253861-4d16-4fa1-9dfa-f41ce04c4946');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '2d253861-4d16-4fa1-9dfa-f41ce04c4946');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '7e65f31d-5de4-4543-af65-fbd3d686a775');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '7e65f31d-5de4-4543-af65-fbd3d686a775');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '888d9307-8515-4c7a-9432-21f9150044dd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '888d9307-8515-4c7a-9432-21f9150044dd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'aefeed68-b973-4176-af7f-2f441cd11380');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'aefeed68-b973-4176-af7f-2f441cd11380');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'a7d5ffcb-955c-4736-8c12-242bb26b0f81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'a7d5ffcb-955c-4736-8c12-242bb26b0f81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e7bbc1d5-d10b-446f-99d9-50ee0c4fbe52');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'e7bbc1d5-d10b-446f-99d9-50ee0c4fbe52');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'c87472cb-ff16-42b2-81dd-e86831a0bb28');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'c87472cb-ff16-42b2-81dd-e86831a0bb28');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b34f2583-049f-4d20-bd9f-ff0b2cd05444');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'b34f2583-049f-4d20-bd9f-ff0b2cd05444');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '1e7b2e00-0696-4b95-b753-e38822d85d43');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '1e7b2e00-0696-4b95-b753-e38822d85d43');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '76866a0b-fa0c-4643-ba6f-738b6b92d00f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '76866a0b-fa0c-4643-ba6f-738b6b92d00f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b0e82491-2917-48aa-8f66-99d1e5f9c428');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'b0e82491-2917-48aa-8f66-99d1e5f9c428');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'd03f08f2-5341-4bcf-b56f-ef3919b2f771');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'd03f08f2-5341-4bcf-b56f-ef3919b2f771');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'ed8be877-23a4-4303-ae76-149af71e950c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'ed8be877-23a4-4303-ae76-149af71e950c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'e11bb82e-392f-4da1-8b04-d39631b5a94c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'e11bb82e-392f-4da1-8b04-d39631b5a94c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '878b3525-eecc-4b11-a03e-cfdd75d46e79');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '878b3525-eecc-4b11-a03e-cfdd75d46e79');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '3f55e1e3-d683-4f43-b564-ba2b8e06f4a7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '3f55e1e3-d683-4f43-b564-ba2b8e06f4a7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4de46ee6-81af-4584-bfd9-f997f2ed2eb9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '4de46ee6-81af-4584-bfd9-f997f2ed2eb9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'c5e3a08e-9b38-49be-a74a-916341240ec6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'c5e3a08e-9b38-49be-a74a-916341240ec6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '5aea8533-0068-482b-bf17-aa7e38e571f7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '5aea8533-0068-482b-bf17-aa7e38e571f7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '5c694eff-5ba6-4e39-9c92-5a89fe69fd2d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '5c694eff-5ba6-4e39-9c92-5a89fe69fd2d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '8822bfed-240a-4dc8-b0f4-e0ad021632b1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '8822bfed-240a-4dc8-b0f4-e0ad021632b1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4973e2b4-c221-438f-a840-e6ecf4676524');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4973e2b4-c221-438f-a840-e6ecf4676524');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f7767708-716f-4921-8be4-d43d881c6d99');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'f7767708-716f-4921-8be4-d43d881c6d99');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '0f33ab69-1a5b-470a-b5c4-915e5e81e674');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '0f33ab69-1a5b-470a-b5c4-915e5e81e674');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '314b5fb6-2f71-42aa-8198-06719b5c927e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '314b5fb6-2f71-42aa-8198-06719b5c927e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4a6492f2-3c4e-498f-9e2a-cb6d95f192b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4a6492f2-3c4e-498f-9e2a-cb6d95f192b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'c75305ec-c838-4b12-9ffe-1e19d3dd4ad9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'c75305ec-c838-4b12-9ffe-1e19d3dd4ad9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f861f59a-4370-4a78-8408-4b80682867b9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'f861f59a-4370-4a78-8408-4b80682867b9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '32705880-ed61-4245-830f-7573b64663d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '32705880-ed61-4245-830f-7573b64663d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '9632e630-d564-4039-8c08-cb5e9e4be8ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9632e630-d564-4039-8c08-cb5e9e4be8ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '778b7505-7e8b-4a8c-951b-50cf9d3025d4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '778b7505-7e8b-4a8c-951b-50cf9d3025d4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '15ba70c4-4556-41af-8099-3672db770cdf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '15ba70c4-4556-41af-8099-3672db770cdf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'fb179c94-eb6e-4980-a83c-1db48ef9a6c9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'fb179c94-eb6e-4980-a83c-1db48ef9a6c9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '41d45897-68ef-476b-9be7-6eeb51c1657e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '41d45897-68ef-476b-9be7-6eeb51c1657e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b6a9f009-5fa5-496d-8025-14739c4570a7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b6a9f009-5fa5-496d-8025-14739c4570a7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '83818a97-5fb3-4d75-81a0-ea903f435cc4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '83818a97-5fb3-4d75-81a0-ea903f435cc4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'e1a12755-1ecc-4178-aa53-afdf0239c71d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e1a12755-1ecc-4178-aa53-afdf0239c71d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '16aec435-729b-4647-8d96-f26386b0454b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '16aec435-729b-4647-8d96-f26386b0454b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '2bf6966b-7661-472c-9f06-5de568c7079d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2bf6966b-7661-472c-9f06-5de568c7079d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '66e9a1cd-ed02-4a85-b5e8-75f03dc88087');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '66e9a1cd-ed02-4a85-b5e8-75f03dc88087');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '4b1e8618-514b-42cc-897f-f0fbd17fc757');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4b1e8618-514b-42cc-897f-f0fbd17fc757');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '6cdf37a7-90ba-465d-8424-27645de08030');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '6cdf37a7-90ba-465d-8424-27645de08030');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '1ee687bb-1f57-4cb5-98e7-a7ea24141401');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '1ee687bb-1f57-4cb5-98e7-a7ea24141401');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7d50a2e8-b7ab-4084-ab9c-922fc2d14919');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '7d50a2e8-b7ab-4084-ab9c-922fc2d14919');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '665c3a8a-2e0f-4e9b-bbec-ec6e1b7ab108');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '665c3a8a-2e0f-4e9b-bbec-ec6e1b7ab108');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '87af0d3c-69ab-4c48-95b6-afdd3bdc9259');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '87af0d3c-69ab-4c48-95b6-afdd3bdc9259');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '92fbd473-ea71-4466-867b-9b63e0576cf0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '92fbd473-ea71-4466-867b-9b63e0576cf0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'b6ad8488-cd43-4ed3-b788-d433ad61f871');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'b6ad8488-cd43-4ed3-b788-d433ad61f871');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '08b92fd6-bc4b-40d4-904e-dae41666a4d2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '08b92fd6-bc4b-40d4-904e-dae41666a4d2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '25bc695f-cfa9-421d-949d-5eb5a759a2af');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '25bc695f-cfa9-421d-949d-5eb5a759a2af');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '0166271f-789e-4a84-9080-67b3badfc069');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '0166271f-789e-4a84-9080-67b3badfc069');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '62d3245d-4c30-4d83-8c36-931127941284');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '62d3245d-4c30-4d83-8c36-931127941284');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7ec6fce0-a63d-4463-9ff4-84beeccb0429');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '7ec6fce0-a63d-4463-9ff4-84beeccb0429');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e430a283-bf0c-403a-9b97-2f52454f205e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e430a283-bf0c-403a-9b97-2f52454f205e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5b88bf74-ec50-4ca2-bdbc-f4b1be16f1b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '5b88bf74-ec50-4ca2-bdbc-f4b1be16f1b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '72875980-4ab4-4131-a39b-0861d5886fb5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '72875980-4ab4-4131-a39b-0861d5886fb5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e054d9d0-46c6-4af2-8792-44c9d6a6582a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e054d9d0-46c6-4af2-8792-44c9d6a6582a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '585f90f8-cc8c-437f-94bc-36c328e31ee2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '585f90f8-cc8c-437f-94bc-36c328e31ee2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '1e3a86b9-1e2b-4830-ab48-36f992748d73');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '1e3a86b9-1e2b-4830-ab48-36f992748d73');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '38a7d581-e2a9-4b0f-84d3-9a71498501f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '38a7d581-e2a9-4b0f-84d3-9a71498501f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '9ae7d8ff-f8f4-4bfc-a704-4758e0739199');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9ae7d8ff-f8f4-4bfc-a704-4758e0739199');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '4d437747-3f2d-418d-baa2-0c2905381120');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4d437747-3f2d-418d-baa2-0c2905381120');


--
-- Data for Name: _InviteToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: EventMatch_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EventMatch_number_seq"', 9, true);


--
-- PostgreSQL database dump complete
--

