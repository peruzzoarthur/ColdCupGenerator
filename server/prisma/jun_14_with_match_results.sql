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

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('13d917a8-2934-48fa-a4c4-e36629205597', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', false);


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
INSERT INTO public."Double" (id, "categoryId") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: DoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "doubleId") VALUES ('2d26a3bc-cbb0-4eb2-b887-ed88124d69a1', 'A', '13d917a8-2934-48fa-a4c4-e36629205597', NULL, NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "doubleId") VALUES ('5d9de0e6-e263-4ca9-956f-23cbdf00e619', 'B', '13d917a8-2934-48fa-a4c4-e36629205597', NULL, NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "doubleId") VALUES ('568bc695-168c-4c18-8c69-62d0418450b9', 'C', '13d917a8-2934-48fa-a4c4-e36629205597', NULL, NULL, NULL);


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (1, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bf7511c5-dad3-4233-be14-ee6c1fd8aa04', NULL, '2d26a3bc-cbb0-4eb2-b887-ed88124d69a1');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (2, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '89afc3a0-1636-437e-a726-caa6f2d215f2', NULL, '2d26a3bc-cbb0-4eb2-b887-ed88124d69a1');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (3, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '265f34bf-9381-472d-9234-81d551d522c5', NULL, '2d26a3bc-cbb0-4eb2-b887-ed88124d69a1');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (4, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '0a8bc958-13c9-4a40-ad35-c5596f8c8729', NULL, '5d9de0e6-e263-4ca9-956f-23cbdf00e619');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (5, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '088818b4-feb7-4918-bc63-c5ab2af910ad', NULL, '5d9de0e6-e263-4ca9-956f-23cbdf00e619');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (6, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a534c90a-4eef-4ece-9b15-f1d1594aa6a6', NULL, '5d9de0e6-e263-4ca9-956f-23cbdf00e619');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (7, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '5bfde307-f4d9-48e0-b1e4-c1365ec21b30', NULL, '568bc695-168c-4c18-8c69-62d0418450b9');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (8, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '4c114b5a-ca9c-41af-a2d5-cd7841172fe5', NULL, '568bc695-168c-4c18-8c69-62d0418450b9');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (9, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '0e4be3e0-1f6e-4255-8e36-c4effcd05a56', NULL, '568bc695-168c-4c18-8c69-62d0418450b9');


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
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('265f34bf-9381-472d-9234-81d551d522c5', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c89c7115-7648-4761-9623-f83da6325389', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('bf7511c5-dad3-4233-be14-ee6c1fd8aa04', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('89afc3a0-1636-437e-a726-caa6f2d215f2', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('0a8bc958-13c9-4a40-ad35-c5596f8c8729', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('088818b4-feb7-4918-bc63-c5ab2af910ad', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('a534c90a-4eef-4ece-9b15-f1d1594aa6a6', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('5bfde307-f4d9-48e0-b1e4-c1365ec21b30', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('4c114b5a-ca9c-41af-a2d5-cd7841172fe5', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '8044c7f9-b8d3-40f6-a295-29207cde163c', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('0e4be3e0-1f6e-4255-8e36-c4effcd05a56', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '8044c7f9-b8d3-40f6-a295-29207cde163c', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2d26a3bc-cbb0-4eb2-b887-ed88124d69a1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '5d9de0e6-e263-4ca9-956f-23cbdf00e619');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '568bc695-168c-4c18-8c69-62d0418450b9');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2d26a3bc-cbb0-4eb2-b887-ed88124d69a1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '5d9de0e6-e263-4ca9-956f-23cbdf00e619');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '568bc695-168c-4c18-8c69-62d0418450b9');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2d26a3bc-cbb0-4eb2-b887-ed88124d69a1');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '5d9de0e6-e263-4ca9-956f-23cbdf00e619');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8044c7f9-b8d3-40f6-a295-29207cde163c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '568bc695-168c-4c18-8c69-62d0418450b9');


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
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('26051582-4136-4ddd-be22-2cc827cbbf55', 'SUPER', 1, 'c89c7115-7648-4761-9623-f83da6325389', '9x4', '265f34bf-9381-472d-9234-81d551d522c5', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('468c5b7c-4545-49de-8047-9870ab060819', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9x2', 'bf7511c5-dad3-4233-be14-ee6c1fd8aa04', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9x2', '89afc3a0-1636-437e-a726-caa6f2d215f2', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('b9fa7ba0-440c-430d-ad99-9b952005ee81', 'SUPER', 1, '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9x4', '0a8bc958-13c9-4a40-ad35-c5596f8c8729', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('977bff0d-30d5-4259-850d-03cf6ecad35c', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6x9', '088818b4-feb7-4918-bc63-c5ab2af910ad', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('696505a2-9911-4f9d-8527-ca76df079e8f', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6x9', 'a534c90a-4eef-4ece-9b15-f1d1594aa6a6', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('29546d27-a806-4d48-9dc6-234d5b6ecbe6', 'SUPER', 1, '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '6x9', '5bfde307-f4d9-48e0-b1e4-c1365ec21b30', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('4755a387-a2d5-488d-91c9-45f1c8fc23ca', 'SUPER', 1, '8044c7f9-b8d3-40f6-a295-29207cde163c', '6x9', '4c114b5a-ca9c-41af-a2d5-cd7841172fe5', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e5e06a02-a1d4-478f-a41b-1b580cfbe040', 'SUPER', 1, '8044c7f9-b8d3-40f6-a295-29207cde163c', '6x9', '0e4be3e0-1f6e-4255-8e36-c4effcd05a56', true);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5d0daff1-1493-424a-bbc9-767750f31a5f', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e2b6898f-e70e-455e-adf5-9cd3235d9895', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('77a3ac75-b02c-47f4-b8ce-6bec3ea26635', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8d0ba094-bb94-480b-89ad-14f2b9525be3', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('984795b5-6bd5-4871-a2cb-0abb2bee2c57', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8a1e3674-2035-4bb4-891f-323131ab5909', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d154938b-a5b6-4f28-9a18-4c3b0a8065a6', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('779189ce-34d7-41ce-a685-d201c1d1cbb7', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e2052d20-9e9c-4a71-b9d7-8fb82a6b76e3', '26051582-4136-4ddd-be22-2cc827cbbf55', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4993c6cd-cd4b-44d2-88a1-3f715bbfa5b7', '26051582-4136-4ddd-be22-2cc827cbbf55', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('062af7b7-00e7-4d2e-b595-14f5365401ae', '26051582-4136-4ddd-be22-2cc827cbbf55', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1f0c22f6-7727-40f8-8536-3c4ba0a4bf22', '26051582-4136-4ddd-be22-2cc827cbbf55', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e17a2a76-9fcf-41e2-9961-a1e1d5c195ca', '26051582-4136-4ddd-be22-2cc827cbbf55', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8c5e391f-a40f-44f5-bcf7-3861b5a8b48f', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('82629327-08a9-482c-a538-23529f6b120b', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('21936afd-9612-4c38-92ea-8ea50594a137', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('60d3e1a6-f0c9-4996-8638-b7406eb1336f', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('deb4e7c2-a016-4591-a72d-14665c84bcdc', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('53b218c7-0561-4236-ade3-082cc2e6636d', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b75e8f4e-edc8-4704-80af-75e5245f1b2b', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('00106349-5965-4e92-b779-339cf331170f', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f3751b18-c6f3-46a2-9e6e-682713e7280b', '468c5b7c-4545-49de-8047-9870ab060819', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1c966cad-91fd-44ed-b786-38a055567c7d', '468c5b7c-4545-49de-8047-9870ab060819', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1e1e1e6d-1548-4fd5-b465-69776b8f4b57', '468c5b7c-4545-49de-8047-9870ab060819', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5675a350-2814-4d5c-a352-d111617ca61c', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('69468fec-802a-44e9-b4f0-0f08865db7e2', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('97cf0986-2a23-41d8-b0e8-5090f22d11e1', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('88e4a27f-a0f1-49e9-900d-d35b1937f910', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bf2f05b4-da2d-4d3e-af6e-9e9f823b4a75', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('57cda0d0-787e-4c9d-9a28-378f433dcad2', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9fbc9505-7eaf-41b0-ad26-80bbef74c7b3', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('df8df3c4-2410-4d94-aac7-a84e0cfa92d1', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d73f0b3f-8bfe-4fe9-b945-4015f65cf65d', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d13130ea-aba9-4d9d-a5d1-71cc275b2eb6', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f624327e-98e8-4de2-866f-d64518174f19', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6bd0d09d-7de5-4082-b572-3158828a96ab', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9db72559-ac5a-485b-ae83-5863889c4d3b', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2ce11766-ef41-4eca-b5ae-e5bdc8ef605d', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('53d9feb4-9c21-405c-b1b6-9dfec7640513', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5bb2d24d-edc7-41be-9686-410d224dc244', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5905252b-7f4d-44cb-affb-6cfaeba4b05f', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d7650151-ba8c-4bbc-8805-7162e6e2d8db', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('19a1f906-0302-478a-a04c-e5d406819c29', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e388f58c-6019-4adf-9589-368ceaa27021', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e66e61c9-074c-4d67-824c-f09d11f91869', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a9dd8ca7-5fa2-4d2a-a1df-5997a4dd5567', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b48837d9-759e-4851-b711-1f7168ebea6d', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('993512ae-e19b-4c35-84b6-f6a77d0b73a8', 'b9fa7ba0-440c-430d-ad99-9b952005ee81', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5102cbd8-4e49-472c-bf0a-5437acde2588', '977bff0d-30d5-4259-850d-03cf6ecad35c', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e215b6cc-5aa9-4885-a301-8e67a51916df', '977bff0d-30d5-4259-850d-03cf6ecad35c', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('27e49116-7764-4939-853a-5b30642a03fc', '977bff0d-30d5-4259-850d-03cf6ecad35c', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f2b1bfbc-45c0-4b59-8b61-c9c426cedf5c', '977bff0d-30d5-4259-850d-03cf6ecad35c', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1edaadd9-2048-4e0f-ac71-f454fb6d0c3b', '977bff0d-30d5-4259-850d-03cf6ecad35c', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('523b0f4f-9d72-409e-a9b2-0781772ba951', '977bff0d-30d5-4259-850d-03cf6ecad35c', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f312e1af-8ef6-497e-9289-e613efe78ca7', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('98af23ac-f524-491d-bc4e-1e6cf0400bcf', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e806fa4f-1048-4e0b-b715-6668c690644a', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7364ca65-73bc-4003-9c96-38a357169b82', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('206828c3-a1fc-4d92-a9f2-af6ee0ad9ddf', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9dacfb35-507a-45c5-b846-68c75527ca7e', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b7d96d2a-b453-4c58-a961-fd6f9e4ca7d0', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('96935de0-fc81-4daa-ac94-cf7dcfae449c', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9dcbc7f6-e325-447e-a252-ae2f37d477f1', '977bff0d-30d5-4259-850d-03cf6ecad35c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9678a0c9-432c-4b97-ab71-4ae3b2277f2c', '696505a2-9911-4f9d-8527-ca76df079e8f', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c19cbec2-ab70-4deb-a93a-61960a5df5a8', '696505a2-9911-4f9d-8527-ca76df079e8f', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bc46a858-8e20-4a88-8b9e-0094f8c586c5', '696505a2-9911-4f9d-8527-ca76df079e8f', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('22587588-e4a0-4441-b541-451e2352eb7a', '696505a2-9911-4f9d-8527-ca76df079e8f', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('83984aa3-7e22-4a7a-b2a0-ed7fa6af6729', '696505a2-9911-4f9d-8527-ca76df079e8f', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c34f2a6c-50f6-4b02-811d-1c89a2563a7b', '696505a2-9911-4f9d-8527-ca76df079e8f', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5d34000f-c784-4591-9a75-4a40a365b4a4', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('474f6c84-d25e-456e-88a1-f8dd4b738d37', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('132386ca-3e20-48ca-8dde-4ac3f53b9a1a', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('603085b6-4c32-4921-bfb9-1d297c8b3f0b', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6d2b4a06-6a88-4cf0-81fa-dcb0f5bacd7c', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('338a2617-d82d-44de-97e4-5c693460028c', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('dcdb5b87-a2f2-443d-a1f7-7199a05859e2', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('dad7482e-362c-4785-b60b-5ef69e2009f1', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('82494f04-82bf-475c-84ee-cd8e91348d46', '696505a2-9911-4f9d-8527-ca76df079e8f', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('596ea3fa-4d0e-4506-be44-d9eb83006f2c', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bdc788d5-a550-4b1e-87e6-6dffae9dedcb', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8cf2a1cd-2951-4c45-a90a-7cb363f9d306', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4ff26c86-52ea-4f15-ab08-e9c83b0beac2', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3c65457c-6e80-47ba-85ad-af948bae9932', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4b12bb63-5525-4e4b-86d3-320407dff38c', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a7b26fa2-e584-4844-8062-e60ee73f5bc7', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9a0877c6-030d-4e59-a3aa-7834f7c3d53f', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fe2c966-8bb3-48c0-bfda-fa8044ddcb2b', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4ace4f32-6a08-471d-9c23-6e128a6248a2', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c19046ba-45a3-40e7-a2d3-77bec50615c6', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2d663cbb-d69b-4f30-bb6b-a878e08afb97', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0e6145e1-1b5a-4931-ab4b-7d9f7a65a5e6', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6fb617fb-e7fa-4cff-963b-891e8a26ec2c', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8ee7b992-db1f-4de9-bc9f-faa88021b478', '29546d27-a806-4d48-9dc6-234d5b6ecbe6', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e8f58726-4ca5-4a1d-9d05-64e6739c391d', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('57402191-893f-4610-8ea7-ff9b13d2e6eb', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b703c20f-fff7-4c93-8f41-79a2d4792ee0', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('906980aa-7c59-4f7a-9dc3-27a0cfac0e2b', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('98201343-0a69-4b87-8c29-68b101391797', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('86e6471e-3a0d-44fb-abf9-fa358402b49a', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('91a9956d-2897-4b4d-a9fe-20e51ff280b7', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fae440e-95be-4cdd-8502-3dd92855eda1', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('aed36cbf-e615-4b4b-88ea-615de490086e', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('927cf61c-e17c-419c-8f6d-242b5f3ada7a', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('67726302-0c2a-4c39-a868-bf0fce303bd5', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('75c93da7-cd8a-4fdf-9164-38596ad875f8', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cf586a3f-bf4c-4eff-be2a-cfea34a9c736', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('38f5f59f-a175-46b1-8541-285426cd6baa', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8d9d1cd9-08b1-4f49-b118-e8388b33caa1', '4755a387-a2d5-488d-91c9-45f1c8fc23ca', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bd24c91c-3720-4997-9ef6-7a1f3a310ac8', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8d1b3d33-5f6b-4374-91fc-118b923a2178', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4543a378-18b7-43fc-ae00-63a9b959c10c', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f8f44099-38ba-45f3-91ba-f92fa724475b', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a11ffad1-9a0a-4cd9-9a40-fbaafd4799d9', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('74bba712-7c39-4638-8dfc-cfaeaa2ec9df', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e81ad8d4-e7a3-437a-b72f-af0be7be6b80', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('385da8f8-6a23-4344-a421-af3b7397e1da', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2e53ec98-810d-487d-bf2d-48ec2221093e', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a49fb833-39cd-485d-a0bb-bb31c2eb6e20', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2ce06fe0-5bde-49c5-abc8-15ef1c894563', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a78fa79f-4aab-47cf-afeb-69bdcdfe21a1', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d74dce99-6465-429f-8671-1ebbe347a49d', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7a0c8e5b-da29-4c9b-86ee-484ae7e019e5', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('37bd3c42-f5cb-4686-b583-c509062ea91c', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040', '8044c7f9-b8d3-40f6-a295-29207cde163c');


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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '2fd0f454-7528-4bfa-8024-cd5a1292c8c7');
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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'ff4defbf-5890-4d50-b6bb-88f6bf1f6455');
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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'd53e75db-3df9-4dce-95ee-390aed5b81e3');
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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'fe620601-1ed8-4476-80db-df028d75dc5b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'fe620601-1ed8-4476-80db-df028d75dc5b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '4bffb22a-9176-4b35-9214-a3a6d7e846d9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '4bffb22a-9176-4b35-9214-a3a6d7e846d9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '0100d07e-8ab3-48c9-8555-2b7a2f40b44e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '0100d07e-8ab3-48c9-8555-2b7a2f40b44e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '7b9ae0dc-6792-406f-b4e5-6c109404dd28');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '7b9ae0dc-6792-406f-b4e5-6c109404dd28');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '7eb43817-d948-48d1-b13d-051aa7168c55');
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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'bf7511c5-dad3-4233-be14-ee6c1fd8aa04');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'bf7511c5-dad3-4233-be14-ee6c1fd8aa04');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '89afc3a0-1636-437e-a726-caa6f2d215f2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '89afc3a0-1636-437e-a726-caa6f2d215f2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '265f34bf-9381-472d-9234-81d551d522c5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '265f34bf-9381-472d-9234-81d551d522c5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '0a8bc958-13c9-4a40-ad35-c5596f8c8729');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '0a8bc958-13c9-4a40-ad35-c5596f8c8729');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '088818b4-feb7-4918-bc63-c5ab2af910ad');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '088818b4-feb7-4918-bc63-c5ab2af910ad');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a534c90a-4eef-4ece-9b15-f1d1594aa6a6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'a534c90a-4eef-4ece-9b15-f1d1594aa6a6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '5bfde307-f4d9-48e0-b1e4-c1365ec21b30');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '5bfde307-f4d9-48e0-b1e4-c1365ec21b30');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '4c114b5a-ca9c-41af-a2d5-cd7841172fe5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4c114b5a-ca9c-41af-a2d5-cd7841172fe5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '0e4be3e0-1f6e-4255-8e36-c4effcd05a56');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '0e4be3e0-1f6e-4255-8e36-c4effcd05a56');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c01c44d8-b8f3-4574-b1d7-c49ed49dcd86');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '12fe83f6-0e4c-4dd2-8902-cafa67baf585');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'cd57fc63-3d9f-432f-91fb-6a0f99dc258b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '12fe83f6-0e4c-4dd2-8902-cafa67baf585');
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


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '06fd499a-936f-40fa-a979-45cdf9a03189');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '06fd499a-936f-40fa-a979-45cdf9a03189');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f9fecd12-ac0f-4025-957a-31560be14b1e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'f9fecd12-ac0f-4025-957a-31560be14b1e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'e5a79c76-1c39-4637-95cd-8e338e5d1cc5');
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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '0cd45c31-f165-450a-9128-c64bfa0203b7');
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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '5feef4dc-1a3c-486b-9f34-db08a94a91be');
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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '9a35caec-d96d-47aa-b022-ece74a5f3ff3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9a35caec-d96d-47aa-b022-ece74a5f3ff3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '36f83db7-6456-4d77-ad98-ca05f9c73a67');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '36f83db7-6456-4d77-ad98-ca05f9c73a67');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '7a8a5366-c983-4c01-864c-ff1c33ca34f5');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7a8a5366-c983-4c01-864c-ff1c33ca34f5');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'bbc7095a-22fc-4e61-acfc-da30cdec11c3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'bbc7095a-22fc-4e61-acfc-da30cdec11c3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'cd8990f8-d7c8-4ef3-a09f-81ab007a8506');
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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '468c5b7c-4545-49de-8047-9870ab060819');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '468c5b7c-4545-49de-8047-9870ab060819');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '26051582-4136-4ddd-be22-2cc827cbbf55');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '26051582-4136-4ddd-be22-2cc827cbbf55');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'b9fa7ba0-440c-430d-ad99-9b952005ee81');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b9fa7ba0-440c-430d-ad99-9b952005ee81');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '977bff0d-30d5-4259-850d-03cf6ecad35c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '977bff0d-30d5-4259-850d-03cf6ecad35c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '696505a2-9911-4f9d-8527-ca76df079e8f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '696505a2-9911-4f9d-8527-ca76df079e8f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '29546d27-a806-4d48-9dc6-234d5b6ecbe6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '29546d27-a806-4d48-9dc6-234d5b6ecbe6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '4755a387-a2d5-488d-91c9-45f1c8fc23ca');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4755a387-a2d5-488d-91c9-45f1c8fc23ca');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5d0daff1-1493-424a-bbc9-767750f31a5f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e2b6898f-e70e-455e-adf5-9cd3235d9895');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '77a3ac75-b02c-47f4-b8ce-6bec3ea26635');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8d0ba094-bb94-480b-89ad-14f2b9525be3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '984795b5-6bd5-4871-a2cb-0abb2bee2c57');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8a1e3674-2035-4bb4-891f-323131ab5909');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd154938b-a5b6-4f28-9a18-4c3b0a8065a6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '779189ce-34d7-41ce-a685-d201c1d1cbb7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e2052d20-9e9c-4a71-b9d7-8fb82a6b76e3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4993c6cd-cd4b-44d2-88a1-3f715bbfa5b7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '062af7b7-00e7-4d2e-b595-14f5365401ae');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1f0c22f6-7727-40f8-8536-3c4ba0a4bf22');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e17a2a76-9fcf-41e2-9961-a1e1d5c195ca');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8c5e391f-a40f-44f5-bcf7-3861b5a8b48f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '82629327-08a9-482c-a538-23529f6b120b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '21936afd-9612-4c38-92ea-8ea50594a137');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '60d3e1a6-f0c9-4996-8638-b7406eb1336f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'deb4e7c2-a016-4591-a72d-14665c84bcdc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '53b218c7-0561-4236-ade3-082cc2e6636d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b75e8f4e-edc8-4704-80af-75e5245f1b2b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00106349-5965-4e92-b779-339cf331170f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f3751b18-c6f3-46a2-9e6e-682713e7280b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1c966cad-91fd-44ed-b786-38a055567c7d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1e1e1e6d-1548-4fd5-b465-69776b8f4b57');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5675a350-2814-4d5c-a352-d111617ca61c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '69468fec-802a-44e9-b4f0-0f08865db7e2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '97cf0986-2a23-41d8-b0e8-5090f22d11e1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '88e4a27f-a0f1-49e9-900d-d35b1937f910');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bf2f05b4-da2d-4d3e-af6e-9e9f823b4a75');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '57cda0d0-787e-4c9d-9a28-378f433dcad2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9fbc9505-7eaf-41b0-ad26-80bbef74c7b3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'df8df3c4-2410-4d94-aac7-a84e0cfa92d1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd73f0b3f-8bfe-4fe9-b945-4015f65cf65d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd13130ea-aba9-4d9d-a5d1-71cc275b2eb6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f624327e-98e8-4de2-866f-d64518174f19');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6bd0d09d-7de5-4082-b572-3158828a96ab');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9db72559-ac5a-485b-ae83-5863889c4d3b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2ce11766-ef41-4eca-b5ae-e5bdc8ef605d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '53d9feb4-9c21-405c-b1b6-9dfec7640513');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5bb2d24d-edc7-41be-9686-410d224dc244');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5905252b-7f4d-44cb-affb-6cfaeba4b05f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd7650151-ba8c-4bbc-8805-7162e6e2d8db');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '19a1f906-0302-478a-a04c-e5d406819c29');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e388f58c-6019-4adf-9589-368ceaa27021');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e66e61c9-074c-4d67-824c-f09d11f91869');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a9dd8ca7-5fa2-4d2a-a1df-5997a4dd5567');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b48837d9-759e-4851-b711-1f7168ebea6d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '993512ae-e19b-4c35-84b6-f6a77d0b73a8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5102cbd8-4e49-472c-bf0a-5437acde2588');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e215b6cc-5aa9-4885-a301-8e67a51916df');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '27e49116-7764-4939-853a-5b30642a03fc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f2b1bfbc-45c0-4b59-8b61-c9c426cedf5c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1edaadd9-2048-4e0f-ac71-f454fb6d0c3b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '523b0f4f-9d72-409e-a9b2-0781772ba951');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f312e1af-8ef6-497e-9289-e613efe78ca7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '98af23ac-f524-491d-bc4e-1e6cf0400bcf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e806fa4f-1048-4e0b-b715-6668c690644a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7364ca65-73bc-4003-9c96-38a357169b82');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '206828c3-a1fc-4d92-a9f2-af6ee0ad9ddf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9dacfb35-507a-45c5-b846-68c75527ca7e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b7d96d2a-b453-4c58-a961-fd6f9e4ca7d0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '96935de0-fc81-4daa-ac94-cf7dcfae449c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9dcbc7f6-e325-447e-a252-ae2f37d477f1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9678a0c9-432c-4b97-ab71-4ae3b2277f2c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c19cbec2-ab70-4deb-a93a-61960a5df5a8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bc46a858-8e20-4a88-8b9e-0094f8c586c5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '22587588-e4a0-4441-b541-451e2352eb7a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '83984aa3-7e22-4a7a-b2a0-ed7fa6af6729');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c34f2a6c-50f6-4b02-811d-1c89a2563a7b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5d34000f-c784-4591-9a75-4a40a365b4a4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '474f6c84-d25e-456e-88a1-f8dd4b738d37');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '132386ca-3e20-48ca-8dde-4ac3f53b9a1a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '603085b6-4c32-4921-bfb9-1d297c8b3f0b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6d2b4a06-6a88-4cf0-81fa-dcb0f5bacd7c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '338a2617-d82d-44de-97e4-5c693460028c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'dcdb5b87-a2f2-443d-a1f7-7199a05859e2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'dad7482e-362c-4785-b60b-5ef69e2009f1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '82494f04-82bf-475c-84ee-cd8e91348d46');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '596ea3fa-4d0e-4506-be44-d9eb83006f2c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bdc788d5-a550-4b1e-87e6-6dffae9dedcb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8cf2a1cd-2951-4c45-a90a-7cb363f9d306');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4ff26c86-52ea-4f15-ab08-e9c83b0beac2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '3c65457c-6e80-47ba-85ad-af948bae9932');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4b12bb63-5525-4e4b-86d3-320407dff38c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a7b26fa2-e584-4844-8062-e60ee73f5bc7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9a0877c6-030d-4e59-a3aa-7834f7c3d53f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1fe2c966-8bb3-48c0-bfda-fa8044ddcb2b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4ace4f32-6a08-471d-9c23-6e128a6248a2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c19046ba-45a3-40e7-a2d3-77bec50615c6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2d663cbb-d69b-4f30-bb6b-a878e08afb97');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0e6145e1-1b5a-4931-ab4b-7d9f7a65a5e6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6fb617fb-e7fa-4cff-963b-891e8a26ec2c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8ee7b992-db1f-4de9-bc9f-faa88021b478');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e8f58726-4ca5-4a1d-9d05-64e6739c391d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '57402191-893f-4610-8ea7-ff9b13d2e6eb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b703c20f-fff7-4c93-8f41-79a2d4792ee0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '906980aa-7c59-4f7a-9dc3-27a0cfac0e2b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '98201343-0a69-4b87-8c29-68b101391797');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '86e6471e-3a0d-44fb-abf9-fa358402b49a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '91a9956d-2897-4b4d-a9fe-20e51ff280b7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1fae440e-95be-4cdd-8502-3dd92855eda1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'aed36cbf-e615-4b4b-88ea-615de490086e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '927cf61c-e17c-419c-8f6d-242b5f3ada7a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '67726302-0c2a-4c39-a868-bf0fce303bd5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '75c93da7-cd8a-4fdf-9164-38596ad875f8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cf586a3f-bf4c-4eff-be2a-cfea34a9c736');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '38f5f59f-a175-46b1-8541-285426cd6baa');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8d9d1cd9-08b1-4f49-b118-e8388b33caa1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bd24c91c-3720-4997-9ef6-7a1f3a310ac8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8d1b3d33-5f6b-4374-91fc-118b923a2178');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4543a378-18b7-43fc-ae00-63a9b959c10c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f8f44099-38ba-45f3-91ba-f92fa724475b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a11ffad1-9a0a-4cd9-9a40-fbaafd4799d9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '74bba712-7c39-4638-8dfc-cfaeaa2ec9df');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e81ad8d4-e7a3-437a-b72f-af0be7be6b80');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '385da8f8-6a23-4344-a421-af3b7397e1da');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2e53ec98-810d-487d-bf2d-48ec2221093e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a49fb833-39cd-485d-a0bb-bb31c2eb6e20');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2ce06fe0-5bde-49c5-abc8-15ef1c894563');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a78fa79f-4aab-47cf-afeb-69bdcdfe21a1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd74dce99-6465-429f-8671-1ebbe347a49d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7a0c8e5b-da29-4c9b-86ee-484ae7e019e5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '37bd3c42-f5cb-4686-b583-c509062ea91c');


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
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '468c5b7c-4545-49de-8047-9870ab060819');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '15ef5882-6b76-4aa4-ac2c-201fa5dcaa68');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '26051582-4136-4ddd-be22-2cc827cbbf55');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b9fa7ba0-440c-430d-ad99-9b952005ee81');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '977bff0d-30d5-4259-850d-03cf6ecad35c');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '696505a2-9911-4f9d-8527-ca76df079e8f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '29546d27-a806-4d48-9dc6-234d5b6ecbe6');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4755a387-a2d5-488d-91c9-45f1c8fc23ca');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e5e06a02-a1d4-478f-a41b-1b580cfbe040');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5d0daff1-1493-424a-bbc9-767750f31a5f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '5d0daff1-1493-424a-bbc9-767750f31a5f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e2b6898f-e70e-455e-adf5-9cd3235d9895');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'e2b6898f-e70e-455e-adf5-9cd3235d9895');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '77a3ac75-b02c-47f4-b8ce-6bec3ea26635');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '77a3ac75-b02c-47f4-b8ce-6bec3ea26635');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '8d0ba094-bb94-480b-89ad-14f2b9525be3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '8d0ba094-bb94-480b-89ad-14f2b9525be3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '984795b5-6bd5-4871-a2cb-0abb2bee2c57');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '984795b5-6bd5-4871-a2cb-0abb2bee2c57');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '8a1e3674-2035-4bb4-891f-323131ab5909');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '8a1e3674-2035-4bb4-891f-323131ab5909');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'd154938b-a5b6-4f28-9a18-4c3b0a8065a6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'd154938b-a5b6-4f28-9a18-4c3b0a8065a6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '779189ce-34d7-41ce-a685-d201c1d1cbb7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '779189ce-34d7-41ce-a685-d201c1d1cbb7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e2052d20-9e9c-4a71-b9d7-8fb82a6b76e3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'e2052d20-9e9c-4a71-b9d7-8fb82a6b76e3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '4993c6cd-cd4b-44d2-88a1-3f715bbfa5b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4993c6cd-cd4b-44d2-88a1-3f715bbfa5b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '062af7b7-00e7-4d2e-b595-14f5365401ae');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '062af7b7-00e7-4d2e-b595-14f5365401ae');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '1f0c22f6-7727-40f8-8536-3c4ba0a4bf22');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '1f0c22f6-7727-40f8-8536-3c4ba0a4bf22');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e17a2a76-9fcf-41e2-9961-a1e1d5c195ca');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'e17a2a76-9fcf-41e2-9961-a1e1d5c195ca');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '8c5e391f-a40f-44f5-bcf7-3861b5a8b48f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '8c5e391f-a40f-44f5-bcf7-3861b5a8b48f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '82629327-08a9-482c-a538-23529f6b120b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '82629327-08a9-482c-a538-23529f6b120b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '21936afd-9612-4c38-92ea-8ea50594a137');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '21936afd-9612-4c38-92ea-8ea50594a137');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '60d3e1a6-f0c9-4996-8638-b7406eb1336f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '60d3e1a6-f0c9-4996-8638-b7406eb1336f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'deb4e7c2-a016-4591-a72d-14665c84bcdc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'deb4e7c2-a016-4591-a72d-14665c84bcdc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '53b218c7-0561-4236-ade3-082cc2e6636d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '53b218c7-0561-4236-ade3-082cc2e6636d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b75e8f4e-edc8-4704-80af-75e5245f1b2b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'b75e8f4e-edc8-4704-80af-75e5245f1b2b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '00106349-5965-4e92-b779-339cf331170f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '00106349-5965-4e92-b779-339cf331170f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'f3751b18-c6f3-46a2-9e6e-682713e7280b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'f3751b18-c6f3-46a2-9e6e-682713e7280b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '1c966cad-91fd-44ed-b786-38a055567c7d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '1c966cad-91fd-44ed-b786-38a055567c7d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '1e1e1e6d-1548-4fd5-b465-69776b8f4b57');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '1e1e1e6d-1548-4fd5-b465-69776b8f4b57');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '5675a350-2814-4d5c-a352-d111617ca61c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '5675a350-2814-4d5c-a352-d111617ca61c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '69468fec-802a-44e9-b4f0-0f08865db7e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '69468fec-802a-44e9-b4f0-0f08865db7e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '97cf0986-2a23-41d8-b0e8-5090f22d11e1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '97cf0986-2a23-41d8-b0e8-5090f22d11e1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '88e4a27f-a0f1-49e9-900d-d35b1937f910');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '88e4a27f-a0f1-49e9-900d-d35b1937f910');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'bf2f05b4-da2d-4d3e-af6e-9e9f823b4a75');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'bf2f05b4-da2d-4d3e-af6e-9e9f823b4a75');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '57cda0d0-787e-4c9d-9a28-378f433dcad2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '57cda0d0-787e-4c9d-9a28-378f433dcad2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9fbc9505-7eaf-41b0-ad26-80bbef74c7b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '9fbc9505-7eaf-41b0-ad26-80bbef74c7b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'df8df3c4-2410-4d94-aac7-a84e0cfa92d1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'df8df3c4-2410-4d94-aac7-a84e0cfa92d1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'd73f0b3f-8bfe-4fe9-b945-4015f65cf65d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'd73f0b3f-8bfe-4fe9-b945-4015f65cf65d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'd13130ea-aba9-4d9d-a5d1-71cc275b2eb6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'd13130ea-aba9-4d9d-a5d1-71cc275b2eb6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'f624327e-98e8-4de2-866f-d64518174f19');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'f624327e-98e8-4de2-866f-d64518174f19');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '6bd0d09d-7de5-4082-b572-3158828a96ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '6bd0d09d-7de5-4082-b572-3158828a96ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9db72559-ac5a-485b-ae83-5863889c4d3b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9db72559-ac5a-485b-ae83-5863889c4d3b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '2ce11766-ef41-4eca-b5ae-e5bdc8ef605d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2ce11766-ef41-4eca-b5ae-e5bdc8ef605d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '53d9feb4-9c21-405c-b1b6-9dfec7640513');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '53d9feb4-9c21-405c-b1b6-9dfec7640513');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5bb2d24d-edc7-41be-9686-410d224dc244');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '5bb2d24d-edc7-41be-9686-410d224dc244');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5905252b-7f4d-44cb-affb-6cfaeba4b05f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '5905252b-7f4d-44cb-affb-6cfaeba4b05f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'd7650151-ba8c-4bbc-8805-7162e6e2d8db');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'd7650151-ba8c-4bbc-8805-7162e6e2d8db');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '19a1f906-0302-478a-a04c-e5d406819c29');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '19a1f906-0302-478a-a04c-e5d406819c29');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e388f58c-6019-4adf-9589-368ceaa27021');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e388f58c-6019-4adf-9589-368ceaa27021');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e66e61c9-074c-4d67-824c-f09d11f91869');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e66e61c9-074c-4d67-824c-f09d11f91869');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a9dd8ca7-5fa2-4d2a-a1df-5997a4dd5567');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'a9dd8ca7-5fa2-4d2a-a1df-5997a4dd5567');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'b48837d9-759e-4851-b711-1f7168ebea6d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b48837d9-759e-4851-b711-1f7168ebea6d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '993512ae-e19b-4c35-84b6-f6a77d0b73a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '993512ae-e19b-4c35-84b6-f6a77d0b73a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5102cbd8-4e49-472c-bf0a-5437acde2588');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '5102cbd8-4e49-472c-bf0a-5437acde2588');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e215b6cc-5aa9-4885-a301-8e67a51916df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e215b6cc-5aa9-4885-a301-8e67a51916df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '27e49116-7764-4939-853a-5b30642a03fc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '27e49116-7764-4939-853a-5b30642a03fc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'f2b1bfbc-45c0-4b59-8b61-c9c426cedf5c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f2b1bfbc-45c0-4b59-8b61-c9c426cedf5c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '1edaadd9-2048-4e0f-ac71-f454fb6d0c3b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '1edaadd9-2048-4e0f-ac71-f454fb6d0c3b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '523b0f4f-9d72-409e-a9b2-0781772ba951');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '523b0f4f-9d72-409e-a9b2-0781772ba951');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'f312e1af-8ef6-497e-9289-e613efe78ca7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f312e1af-8ef6-497e-9289-e613efe78ca7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '98af23ac-f524-491d-bc4e-1e6cf0400bcf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '98af23ac-f524-491d-bc4e-1e6cf0400bcf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e806fa4f-1048-4e0b-b715-6668c690644a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e806fa4f-1048-4e0b-b715-6668c690644a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '7364ca65-73bc-4003-9c96-38a357169b82');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '7364ca65-73bc-4003-9c96-38a357169b82');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '206828c3-a1fc-4d92-a9f2-af6ee0ad9ddf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '206828c3-a1fc-4d92-a9f2-af6ee0ad9ddf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9dacfb35-507a-45c5-b846-68c75527ca7e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9dacfb35-507a-45c5-b846-68c75527ca7e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'b7d96d2a-b453-4c58-a961-fd6f9e4ca7d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'b7d96d2a-b453-4c58-a961-fd6f9e4ca7d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '96935de0-fc81-4daa-ac94-cf7dcfae449c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '96935de0-fc81-4daa-ac94-cf7dcfae449c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9dcbc7f6-e325-447e-a252-ae2f37d477f1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9dcbc7f6-e325-447e-a252-ae2f37d477f1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9678a0c9-432c-4b97-ab71-4ae3b2277f2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9678a0c9-432c-4b97-ab71-4ae3b2277f2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'c19cbec2-ab70-4deb-a93a-61960a5df5a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'c19cbec2-ab70-4deb-a93a-61960a5df5a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'bc46a858-8e20-4a88-8b9e-0094f8c586c5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'bc46a858-8e20-4a88-8b9e-0094f8c586c5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '22587588-e4a0-4441-b541-451e2352eb7a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '22587588-e4a0-4441-b541-451e2352eb7a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '83984aa3-7e22-4a7a-b2a0-ed7fa6af6729');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '83984aa3-7e22-4a7a-b2a0-ed7fa6af6729');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'c34f2a6c-50f6-4b02-811d-1c89a2563a7b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'c34f2a6c-50f6-4b02-811d-1c89a2563a7b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '5d34000f-c784-4591-9a75-4a40a365b4a4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '5d34000f-c784-4591-9a75-4a40a365b4a4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '474f6c84-d25e-456e-88a1-f8dd4b738d37');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '474f6c84-d25e-456e-88a1-f8dd4b738d37');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '132386ca-3e20-48ca-8dde-4ac3f53b9a1a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '132386ca-3e20-48ca-8dde-4ac3f53b9a1a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '603085b6-4c32-4921-bfb9-1d297c8b3f0b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '603085b6-4c32-4921-bfb9-1d297c8b3f0b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6d2b4a06-6a88-4cf0-81fa-dcb0f5bacd7c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '6d2b4a06-6a88-4cf0-81fa-dcb0f5bacd7c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '338a2617-d82d-44de-97e4-5c693460028c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '338a2617-d82d-44de-97e4-5c693460028c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'dcdb5b87-a2f2-443d-a1f7-7199a05859e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'dcdb5b87-a2f2-443d-a1f7-7199a05859e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'dad7482e-362c-4785-b60b-5ef69e2009f1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'dad7482e-362c-4785-b60b-5ef69e2009f1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '82494f04-82bf-475c-84ee-cd8e91348d46');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '82494f04-82bf-475c-84ee-cd8e91348d46');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '596ea3fa-4d0e-4506-be44-d9eb83006f2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '596ea3fa-4d0e-4506-be44-d9eb83006f2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'bdc788d5-a550-4b1e-87e6-6dffae9dedcb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'bdc788d5-a550-4b1e-87e6-6dffae9dedcb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '8cf2a1cd-2951-4c45-a90a-7cb363f9d306');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8cf2a1cd-2951-4c45-a90a-7cb363f9d306');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4ff26c86-52ea-4f15-ab08-e9c83b0beac2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '4ff26c86-52ea-4f15-ab08-e9c83b0beac2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '3c65457c-6e80-47ba-85ad-af948bae9932');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '3c65457c-6e80-47ba-85ad-af948bae9932');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4b12bb63-5525-4e4b-86d3-320407dff38c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '4b12bb63-5525-4e4b-86d3-320407dff38c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'a7b26fa2-e584-4844-8062-e60ee73f5bc7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a7b26fa2-e584-4844-8062-e60ee73f5bc7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '9a0877c6-030d-4e59-a3aa-7834f7c3d53f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '9a0877c6-030d-4e59-a3aa-7834f7c3d53f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '1fe2c966-8bb3-48c0-bfda-fa8044ddcb2b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '1fe2c966-8bb3-48c0-bfda-fa8044ddcb2b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4ace4f32-6a08-471d-9c23-6e128a6248a2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '4ace4f32-6a08-471d-9c23-6e128a6248a2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'c19046ba-45a3-40e7-a2d3-77bec50615c6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c19046ba-45a3-40e7-a2d3-77bec50615c6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '2d663cbb-d69b-4f30-bb6b-a878e08afb97');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '2d663cbb-d69b-4f30-bb6b-a878e08afb97');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '0e6145e1-1b5a-4931-ab4b-7d9f7a65a5e6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '0e6145e1-1b5a-4931-ab4b-7d9f7a65a5e6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '6fb617fb-e7fa-4cff-963b-891e8a26ec2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '6fb617fb-e7fa-4cff-963b-891e8a26ec2c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '8ee7b992-db1f-4de9-bc9f-faa88021b478');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8ee7b992-db1f-4de9-bc9f-faa88021b478');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'e8f58726-4ca5-4a1d-9d05-64e6739c391d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'e8f58726-4ca5-4a1d-9d05-64e6739c391d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '57402191-893f-4610-8ea7-ff9b13d2e6eb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '57402191-893f-4610-8ea7-ff9b13d2e6eb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'b703c20f-fff7-4c93-8f41-79a2d4792ee0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b703c20f-fff7-4c93-8f41-79a2d4792ee0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '906980aa-7c59-4f7a-9dc3-27a0cfac0e2b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '906980aa-7c59-4f7a-9dc3-27a0cfac0e2b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '98201343-0a69-4b87-8c29-68b101391797');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '98201343-0a69-4b87-8c29-68b101391797');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '86e6471e-3a0d-44fb-abf9-fa358402b49a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '86e6471e-3a0d-44fb-abf9-fa358402b49a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '91a9956d-2897-4b4d-a9fe-20e51ff280b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '91a9956d-2897-4b4d-a9fe-20e51ff280b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '1fae440e-95be-4cdd-8502-3dd92855eda1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '1fae440e-95be-4cdd-8502-3dd92855eda1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'aed36cbf-e615-4b4b-88ea-615de490086e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'aed36cbf-e615-4b4b-88ea-615de490086e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '927cf61c-e17c-419c-8f6d-242b5f3ada7a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '927cf61c-e17c-419c-8f6d-242b5f3ada7a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '67726302-0c2a-4c39-a868-bf0fce303bd5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '67726302-0c2a-4c39-a868-bf0fce303bd5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '75c93da7-cd8a-4fdf-9164-38596ad875f8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '75c93da7-cd8a-4fdf-9164-38596ad875f8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'cf586a3f-bf4c-4eff-be2a-cfea34a9c736');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'cf586a3f-bf4c-4eff-be2a-cfea34a9c736');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '38f5f59f-a175-46b1-8541-285426cd6baa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '38f5f59f-a175-46b1-8541-285426cd6baa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '8d9d1cd9-08b1-4f49-b118-e8388b33caa1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '8d9d1cd9-08b1-4f49-b118-e8388b33caa1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'bd24c91c-3720-4997-9ef6-7a1f3a310ac8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'bd24c91c-3720-4997-9ef6-7a1f3a310ac8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '8d1b3d33-5f6b-4374-91fc-118b923a2178');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8d1b3d33-5f6b-4374-91fc-118b923a2178');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '4543a378-18b7-43fc-ae00-63a9b959c10c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '4543a378-18b7-43fc-ae00-63a9b959c10c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'f8f44099-38ba-45f3-91ba-f92fa724475b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'f8f44099-38ba-45f3-91ba-f92fa724475b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'a11ffad1-9a0a-4cd9-9a40-fbaafd4799d9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a11ffad1-9a0a-4cd9-9a40-fbaafd4799d9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '74bba712-7c39-4638-8dfc-cfaeaa2ec9df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '74bba712-7c39-4638-8dfc-cfaeaa2ec9df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'e81ad8d4-e7a3-437a-b72f-af0be7be6b80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'e81ad8d4-e7a3-437a-b72f-af0be7be6b80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '385da8f8-6a23-4344-a421-af3b7397e1da');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '385da8f8-6a23-4344-a421-af3b7397e1da');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '2e53ec98-810d-487d-bf2d-48ec2221093e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '2e53ec98-810d-487d-bf2d-48ec2221093e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'a49fb833-39cd-485d-a0bb-bb31c2eb6e20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a49fb833-39cd-485d-a0bb-bb31c2eb6e20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '2ce06fe0-5bde-49c5-abc8-15ef1c894563');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '2ce06fe0-5bde-49c5-abc8-15ef1c894563');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'a78fa79f-4aab-47cf-afeb-69bdcdfe21a1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a78fa79f-4aab-47cf-afeb-69bdcdfe21a1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'd74dce99-6465-429f-8671-1ebbe347a49d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'd74dce99-6465-429f-8671-1ebbe347a49d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '7a0c8e5b-da29-4c9b-86ee-484ae7e019e5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '7a0c8e5b-da29-4c9b-86ee-484ae7e019e5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '37bd3c42-f5cb-4686-b583-c509062ea91c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '37bd3c42-f5cb-4686-b583-c509062ea91c');


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

