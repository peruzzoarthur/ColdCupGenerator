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

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('9e9a50af-91b6-4cdd-8b4c-9471b46e2091', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', false);


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

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('f5480d1d-b6ee-43b0-9d79-40675c930e72', 'A', '9e9a50af-91b6-4cdd-8b4c-9471b46e2091', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('d51d7330-b5aa-4601-af1b-372723fa1602', 'B', '9e9a50af-91b6-4cdd-8b4c-9471b46e2091', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('a174089b-5a7b-43d5-89ba-0005bc3059fd', 'C', '9e9a50af-91b6-4cdd-8b4c-9471b46e2091', NULL, NULL);


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (1, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '4c61be82-49a4-4e50-b57c-e0331d976ad6', NULL, 'f5480d1d-b6ee-43b0-9d79-40675c930e72');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (2, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '51decc89-d5e6-47d3-b583-77b573ecf449', NULL, 'f5480d1d-b6ee-43b0-9d79-40675c930e72');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (3, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '2344111e-0df6-4e87-8ae3-c7e4abf77f7e', NULL, 'f5480d1d-b6ee-43b0-9d79-40675c930e72');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (4, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b0619835-7462-49a6-aa78-c0ee75ab87f9', NULL, 'd51d7330-b5aa-4601-af1b-372723fa1602');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (5, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '5e4239ac-5bfa-427f-a720-d39658803780', NULL, 'd51d7330-b5aa-4601-af1b-372723fa1602');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (6, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b7adb0ac-b1d4-48ed-b6d3-af8287d11ced', NULL, 'd51d7330-b5aa-4601-af1b-372723fa1602');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (7, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'da5f593c-81c7-460f-891a-becc447a52c1', NULL, 'a174089b-5a7b-43d5-89ba-0005bc3059fd');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (8, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'feda6768-efb9-4f0f-9100-6648ed922e9d', NULL, 'a174089b-5a7b-43d5-89ba-0005bc3059fd');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (9, 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '96b33c86-f863-45a2-af96-297885a0732a', NULL, 'a174089b-5a7b-43d5-89ba-0005bc3059fd');


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
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('4c61be82-49a4-4e50-b57c-e0331d976ad6', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('51decc89-d5e6-47d3-b583-77b573ecf449', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '36a05385-cf0d-4482-9183-88ba7bef8654', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('2344111e-0df6-4e87-8ae3-c7e4abf77f7e', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b0619835-7462-49a6-aa78-c0ee75ab87f9', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('5e4239ac-5bfa-427f-a720-d39658803780', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b7adb0ac-b1d4-48ed-b6d3-af8287d11ced', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'db06f767-e9fd-4dad-96ed-bc3554e82693', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('da5f593c-81c7-460f-891a-becc447a52c1', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('feda6768-efb9-4f0f-9100-6648ed922e9d', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('96b33c86-f863-45a2-af96-297885a0732a', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'f5480d1d-b6ee-43b0-9d79-40675c930e72');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'd51d7330-b5aa-4601-af1b-372723fa1602');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a174089b-5a7b-43d5-89ba-0005bc3059fd');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'f5480d1d-b6ee-43b0-9d79-40675c930e72');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'd51d7330-b5aa-4601-af1b-372723fa1602');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a174089b-5a7b-43d5-89ba-0005bc3059fd');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'f5480d1d-b6ee-43b0-9d79-40675c930e72');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'd51d7330-b5aa-4601-af1b-372723fa1602');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'a174089b-5a7b-43d5-89ba-0005bc3059fd');


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
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('49ecd1a8-029c-46e7-89ea-cf7890001d21', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9x4', '4c61be82-49a4-4e50-b57c-e0331d976ad6', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('06d229de-6349-480c-a6d3-e33de396e89c', 'SUPER', 1, '36a05385-cf0d-4482-9183-88ba7bef8654', '2x9', '51decc89-d5e6-47d3-b583-77b573ecf449', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('aac64b92-7ef1-4093-9984-0e2b296840c4', 'SUPER', 1, 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '9x4', '2344111e-0df6-4e87-8ae3-c7e4abf77f7e', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('9052272f-3990-404b-ba99-94733fc99b98', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9x4', 'b0619835-7462-49a6-aa78-c0ee75ab87f9', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9x4', '5e4239ac-5bfa-427f-a720-d39658803780', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('2d20e987-d845-427d-be42-2cea4eebf8dd', 'SUPER', 1, 'db06f767-e9fd-4dad-96ed-bc3554e82693', '9x4', 'b7adb0ac-b1d4-48ed-b6d3-af8287d11ced', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('08c3eb3c-f309-4717-acb9-e2ba73c42de4', 'SUPER', 1, '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9x4', 'da5f593c-81c7-460f-891a-becc447a52c1', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('608702a3-5794-419b-976e-5a85be054c18', 'SUPER', 1, '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9x4', 'feda6768-efb9-4f0f-9100-6648ed922e9d', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('116fdf39-1b70-4411-9c25-c94143c01c0b', 'SUPER', 1, 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '9x4', '96b33c86-f863-45a2-af96-297885a0732a', true);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('28d7c62d-34d7-4298-95d9-d65ef63cb9b5', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0fa27d7f-3e1f-40c1-9d89-01dbebad91b0', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7c9cec97-4650-46ba-b977-b8ab34afc54b', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c8789bd3-596a-4229-a5d2-5eda000e50a8', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4d685491-b494-45e1-9b70-b1fa7039c293', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3bbb8cf5-b769-4246-8c54-e1ec2b9c14f4', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e232463d-92e7-40c9-98f8-1d20f679b9dd', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1ad10f7e-0090-47ec-8b9d-b7e7e965affb', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6bbd51ea-9d16-4a7f-a735-07c38f387f93', '49ecd1a8-029c-46e7-89ea-cf7890001d21', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('692802b1-af52-44dc-92bf-14ab9d62f297', '49ecd1a8-029c-46e7-89ea-cf7890001d21', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('646ebb50-cc8c-4335-96fa-298e378f4d64', '49ecd1a8-029c-46e7-89ea-cf7890001d21', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('044079e5-d8d3-47d4-8e1a-ac6ec74d4a85', '49ecd1a8-029c-46e7-89ea-cf7890001d21', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cb6002d0-75da-4223-8bae-643855f0258f', '49ecd1a8-029c-46e7-89ea-cf7890001d21', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('131c32db-14de-494c-854c-4fa61f610cee', '06d229de-6349-480c-a6d3-e33de396e89c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0801ab00-4101-458c-ac50-d2ab6a6272b9', '06d229de-6349-480c-a6d3-e33de396e89c', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7c322e88-99dc-4cda-86be-bcd3710c3898', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1810fdbd-9b99-4c94-bdbc-9906503ae69e', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('088966ef-08c5-4833-aeaa-507387061830', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fdc0e2d-e444-4b13-bcb0-491471da27ce', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c05b61ee-92b3-42e6-914b-85dbbdd1fdf1', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4752b54e-54d3-4b74-91e9-4a98138ca892', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('eaaf5535-fc70-416f-8d69-5438ce519c0b', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('21776ab6-f947-4ea2-a6f3-01960a0c0602', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cfeef7b2-a550-4d20-bac8-485e793f8732', '06d229de-6349-480c-a6d3-e33de396e89c', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('94be01e5-773f-48b2-bfa2-98e75c2f9d5f', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cbc9cb40-5a9b-46ce-82d3-6e120fd0f065', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f5659e1f-1a79-45d5-9902-f3fb6d42897f', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e25a5ece-2136-4e55-99f7-e679796800dc', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f8709052-2a8f-423d-be54-d2414012bdc4', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('eaeace9d-eb54-4547-965f-e904648afa0a', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('44ee1d73-f3e5-4355-aa35-ab9b2ced45a8', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('023d7df1-5b39-46a2-9b74-5678c3231452', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('967d50d8-fa6a-4b14-bb4b-254f2498a4dc', 'aac64b92-7ef1-4093-9984-0e2b296840c4', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('54c90de4-4de6-407c-b6d2-670fdd4376c5', 'aac64b92-7ef1-4093-9984-0e2b296840c4', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c4ba9678-1417-495b-a0d3-13760ab1aab9', 'aac64b92-7ef1-4093-9984-0e2b296840c4', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f7f72b7f-2af4-4cea-b924-29bbfb821757', 'aac64b92-7ef1-4093-9984-0e2b296840c4', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0e0a9cb3-5b6b-4771-8a87-09b98ec2e5df', 'aac64b92-7ef1-4093-9984-0e2b296840c4', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('300348b2-3f53-48f3-b719-31ff09bfa89a', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e9f8aea7-d466-45bf-a4ae-a871a36d2ebc', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9e3a3454-8812-4ef7-8cc7-6297fc291598', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('72afeb1e-b0ad-4891-98ad-6c2f47292bfe', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('efa8bbfd-8233-4270-9dc2-c7f2a219785a', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c6499f6b-dacc-4e57-bcd6-ba0063c0d72b', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e440e264-c6ab-4f40-93e6-abe0f3f3741a', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2c34f80e-a021-44ca-a723-061d5f7fedd2', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('483b8b1d-a6e6-452d-b0fc-10f358bdc743', '9052272f-3990-404b-ba99-94733fc99b98', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fbed924c-4cc5-4d9e-9e8f-d72603c37afa', '9052272f-3990-404b-ba99-94733fc99b98', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('819bf1c1-81bd-4873-bcdb-010a6a6990fa', '9052272f-3990-404b-ba99-94733fc99b98', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('12456ab1-583b-4624-b9c6-c384ac6c9afe', '9052272f-3990-404b-ba99-94733fc99b98', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('35f97427-d9c2-464d-9d94-3006ab43eccf', '9052272f-3990-404b-ba99-94733fc99b98', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9456512c-c1be-4b77-85a0-220c02a35e85', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('472f7ac3-44c9-466c-bc26-2bcb2cb87d04', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b4c6c577-0043-4986-a5ba-5c9977e2388c', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('183adcea-2c58-41e0-a49d-b6a7bd970442', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ca1a964f-06ef-4dd5-90aa-ce8ca9735f04', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5ab9cab1-90bc-4633-9e57-bd768f880ce4', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5ccaa428-6a1f-4bcb-b3f4-9620a6267486', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a5c94ff5-d462-4bdb-9712-884120511714', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f51d92f8-a961-43d0-b594-530292719e9c', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('869c4e0c-98f4-419f-8d75-d762fca537e2', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d383bd24-7004-4179-b537-a5625a66df4b', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3ad13b0c-d2f8-42ec-afab-57e5b8eecf49', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b9e63190-eea4-4856-8880-87ecf138bf88', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('36153964-e0b0-4f40-b475-f54b9cd16c26', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('423f5ef5-32e4-408d-afcd-b1e402969b57', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('02fa2e7b-9dd6-4c99-a4ef-87fe0e6d0bb8', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0c419574-5ed6-4ff5-967c-1b0ae16676d6', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('35a9fecd-6406-4002-9a38-2d91c3658c73', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('af0d8702-870b-452a-8c3b-177372ecd2dd', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('46e526a7-1234-47e9-a008-e54dc4f38689', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('60152244-4ba6-4bd7-b992-f49bcfa3cc9a', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('00c0447b-13e5-471d-9653-58da670e493a', '608702a3-5794-419b-976e-5a85be054c18', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7578743f-c64a-454e-9098-3c9305e5e759', '608702a3-5794-419b-976e-5a85be054c18', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('17993498-829b-4cd4-a6de-a45a4f420827', '608702a3-5794-419b-976e-5a85be054c18', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('42bd0f17-b73a-4c32-95f8-66dba9277752', '608702a3-5794-419b-976e-5a85be054c18', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('713b4155-6acf-4bc0-9151-155339fbf5f1', '608702a3-5794-419b-976e-5a85be054c18', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('788b22c8-ea62-4807-992d-6f3b1319d7d8', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e422e18c-3fc5-4c7d-a77c-9687f9c507f5', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0caf07f7-ffec-46ac-a03a-ac8bdb0b0998', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ac375d2d-d6e7-47c1-ad89-3fd8531bfda6', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fdb05b67-4453-4a05-94fd-7eeff9197a17', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2c87337a-68c6-42a1-800f-c547480e52e3', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('79922450-a0ec-4e9c-a3f5-1aafa2686f20', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('696af600-65c6-4ea7-88df-8340b5d86b33', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9ca52928-d0e6-407a-b1c3-67af9b6ed16d', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5ac2fd07-8a5a-4e81-873d-0c043ee3b97b', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('88f075f2-6ed0-42ba-a9a9-7c6e41ef61d6', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d53a6510-a18d-44b0-9e72-2833bc0e9adf', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ff03069c-c19c-4d55-8a28-a076a7137549', '2d20e987-d845-427d-be42-2cea4eebf8dd', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('161a5d94-e67a-4348-b1c1-bc3119e841db', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('47f81d92-22f8-43c1-8624-d0b5a0068738', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fb6415b8-7ff8-427e-b06f-70d72ce4632c', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('776bfd33-920f-47cf-a71f-94f242577354', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('16a25e10-65a4-4dad-93e8-600f061fa74e', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e26f37a9-aba7-4a8e-8ded-cc53903e47bc', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e65dac12-f68c-48e2-9e22-f11978d4f422', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d4b6dbb8-7e70-4b63-b516-0ad806118dc5', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2b0fda29-e1a1-4922-a3b5-4ccd7ce11065', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('57f0519d-4617-479c-a1bf-eb576bf691dc', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fe102585-b66e-497f-9cd4-181de4ac62af', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('027a0498-6436-42a7-adf1-73057073f82b', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('22d3cdc5-6381-41d4-beff-a36b742c5e42', '08c3eb3c-f309-4717-acb9-e2ba73c42de4', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d5b539e9-0b85-4ac0-9b4a-90546ed939de', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('68db17a3-c94e-441a-a4ed-fe6f53f6921e', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d570ba61-c157-43af-b1e4-eb97f65d56f0', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c53b7bab-701e-42e3-b9c9-8d3d9f5712f5', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('379d4920-be19-4582-a0dd-9296e02723ec', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5d786b52-7b51-448a-9ef1-546c625e0b5a', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('13350d6d-a1ad-4486-a223-b7f2a90a859b', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6850653f-54ce-41ed-9b0a-35b75ccf51d5', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('37b2d817-92b4-4043-a425-247cf0719231', '116fdf39-1b70-4411-9c25-c94143c01c0b', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4947e172-eb1c-45f4-b41f-91a4b8ea79bb', '116fdf39-1b70-4411-9c25-c94143c01c0b', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('50eab132-4df9-423b-9d67-d79db2de75f2', '116fdf39-1b70-4411-9c25-c94143c01c0b', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('774c12da-ed49-4b21-b8fd-e94e27353f81', '116fdf39-1b70-4411-9c25-c94143c01c0b', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b2a255d3-27dc-4d66-91dd-bb3c3f367bd7', '116fdf39-1b70-4411-9c25-c94143c01c0b', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');


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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4c61be82-49a4-4e50-b57c-e0331d976ad6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '4c61be82-49a4-4e50-b57c-e0331d976ad6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '51decc89-d5e6-47d3-b583-77b573ecf449');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '51decc89-d5e6-47d3-b583-77b573ecf449');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '2344111e-0df6-4e87-8ae3-c7e4abf77f7e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '2344111e-0df6-4e87-8ae3-c7e4abf77f7e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b0619835-7462-49a6-aa78-c0ee75ab87f9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b0619835-7462-49a6-aa78-c0ee75ab87f9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '5e4239ac-5bfa-427f-a720-d39658803780');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5e4239ac-5bfa-427f-a720-d39658803780');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'b7adb0ac-b1d4-48ed-b6d3-af8287d11ced');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b7adb0ac-b1d4-48ed-b6d3-af8287d11ced');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'da5f593c-81c7-460f-891a-becc447a52c1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'da5f593c-81c7-460f-891a-becc447a52c1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'feda6768-efb9-4f0f-9100-6648ed922e9d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'feda6768-efb9-4f0f-9100-6648ed922e9d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '96b33c86-f863-45a2-af96-297885a0732a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '96b33c86-f863-45a2-af96-297885a0732a');


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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '49ecd1a8-029c-46e7-89ea-cf7890001d21');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '49ecd1a8-029c-46e7-89ea-cf7890001d21');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '06d229de-6349-480c-a6d3-e33de396e89c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '06d229de-6349-480c-a6d3-e33de396e89c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'aac64b92-7ef1-4093-9984-0e2b296840c4');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'aac64b92-7ef1-4093-9984-0e2b296840c4');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9052272f-3990-404b-ba99-94733fc99b98');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9052272f-3990-404b-ba99-94733fc99b98');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '2d20e987-d845-427d-be42-2cea4eebf8dd');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2d20e987-d845-427d-be42-2cea4eebf8dd');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '08c3eb3c-f309-4717-acb9-e2ba73c42de4');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '08c3eb3c-f309-4717-acb9-e2ba73c42de4');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '608702a3-5794-419b-976e-5a85be054c18');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '608702a3-5794-419b-976e-5a85be054c18');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '116fdf39-1b70-4411-9c25-c94143c01c0b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '116fdf39-1b70-4411-9c25-c94143c01c0b');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '28d7c62d-34d7-4298-95d9-d65ef63cb9b5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0fa27d7f-3e1f-40c1-9d89-01dbebad91b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7c9cec97-4650-46ba-b977-b8ab34afc54b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c8789bd3-596a-4229-a5d2-5eda000e50a8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4d685491-b494-45e1-9b70-b1fa7039c293');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '3bbb8cf5-b769-4246-8c54-e1ec2b9c14f4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e232463d-92e7-40c9-98f8-1d20f679b9dd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1ad10f7e-0090-47ec-8b9d-b7e7e965affb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6bbd51ea-9d16-4a7f-a735-07c38f387f93');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '692802b1-af52-44dc-92bf-14ab9d62f297');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '646ebb50-cc8c-4335-96fa-298e378f4d64');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '044079e5-d8d3-47d4-8e1a-ac6ec74d4a85');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cb6002d0-75da-4223-8bae-643855f0258f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '131c32db-14de-494c-854c-4fa61f610cee');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0801ab00-4101-458c-ac50-d2ab6a6272b9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7c322e88-99dc-4cda-86be-bcd3710c3898');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1810fdbd-9b99-4c94-bdbc-9906503ae69e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '088966ef-08c5-4833-aeaa-507387061830');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1fdc0e2d-e444-4b13-bcb0-491471da27ce');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c05b61ee-92b3-42e6-914b-85dbbdd1fdf1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4752b54e-54d3-4b74-91e9-4a98138ca892');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'eaaf5535-fc70-416f-8d69-5438ce519c0b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '21776ab6-f947-4ea2-a6f3-01960a0c0602');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cfeef7b2-a550-4d20-bac8-485e793f8732');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '94be01e5-773f-48b2-bfa2-98e75c2f9d5f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cbc9cb40-5a9b-46ce-82d3-6e120fd0f065');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f5659e1f-1a79-45d5-9902-f3fb6d42897f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e25a5ece-2136-4e55-99f7-e679796800dc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f8709052-2a8f-423d-be54-d2414012bdc4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'eaeace9d-eb54-4547-965f-e904648afa0a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '44ee1d73-f3e5-4355-aa35-ab9b2ced45a8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '023d7df1-5b39-46a2-9b74-5678c3231452');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '967d50d8-fa6a-4b14-bb4b-254f2498a4dc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '54c90de4-4de6-407c-b6d2-670fdd4376c5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c4ba9678-1417-495b-a0d3-13760ab1aab9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f7f72b7f-2af4-4cea-b924-29bbfb821757');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0e0a9cb3-5b6b-4771-8a87-09b98ec2e5df');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '300348b2-3f53-48f3-b719-31ff09bfa89a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e9f8aea7-d466-45bf-a4ae-a871a36d2ebc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9e3a3454-8812-4ef7-8cc7-6297fc291598');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '72afeb1e-b0ad-4891-98ad-6c2f47292bfe');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'efa8bbfd-8233-4270-9dc2-c7f2a219785a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c6499f6b-dacc-4e57-bcd6-ba0063c0d72b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e440e264-c6ab-4f40-93e6-abe0f3f3741a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2c34f80e-a021-44ca-a723-061d5f7fedd2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '483b8b1d-a6e6-452d-b0fc-10f358bdc743');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fbed924c-4cc5-4d9e-9e8f-d72603c37afa');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '819bf1c1-81bd-4873-bcdb-010a6a6990fa');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '12456ab1-583b-4624-b9c6-c384ac6c9afe');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '35f97427-d9c2-464d-9d94-3006ab43eccf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9456512c-c1be-4b77-85a0-220c02a35e85');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '472f7ac3-44c9-466c-bc26-2bcb2cb87d04');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b4c6c577-0043-4986-a5ba-5c9977e2388c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '183adcea-2c58-41e0-a49d-b6a7bd970442');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ca1a964f-06ef-4dd5-90aa-ce8ca9735f04');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5ab9cab1-90bc-4633-9e57-bd768f880ce4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5ccaa428-6a1f-4bcb-b3f4-9620a6267486');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a5c94ff5-d462-4bdb-9712-884120511714');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f51d92f8-a961-43d0-b594-530292719e9c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '869c4e0c-98f4-419f-8d75-d762fca537e2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd383bd24-7004-4179-b537-a5625a66df4b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '3ad13b0c-d2f8-42ec-afab-57e5b8eecf49');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b9e63190-eea4-4856-8880-87ecf138bf88');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '788b22c8-ea62-4807-992d-6f3b1319d7d8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e422e18c-3fc5-4c7d-a77c-9687f9c507f5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0caf07f7-ffec-46ac-a03a-ac8bdb0b0998');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ac375d2d-d6e7-47c1-ad89-3fd8531bfda6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fdb05b67-4453-4a05-94fd-7eeff9197a17');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2c87337a-68c6-42a1-800f-c547480e52e3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '79922450-a0ec-4e9c-a3f5-1aafa2686f20');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '696af600-65c6-4ea7-88df-8340b5d86b33');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9ca52928-d0e6-407a-b1c3-67af9b6ed16d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5ac2fd07-8a5a-4e81-873d-0c043ee3b97b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '88f075f2-6ed0-42ba-a9a9-7c6e41ef61d6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd53a6510-a18d-44b0-9e72-2833bc0e9adf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ff03069c-c19c-4d55-8a28-a076a7137549');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '161a5d94-e67a-4348-b1c1-bc3119e841db');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '47f81d92-22f8-43c1-8624-d0b5a0068738');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fb6415b8-7ff8-427e-b06f-70d72ce4632c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '776bfd33-920f-47cf-a71f-94f242577354');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '16a25e10-65a4-4dad-93e8-600f061fa74e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e26f37a9-aba7-4a8e-8ded-cc53903e47bc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e65dac12-f68c-48e2-9e22-f11978d4f422');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd4b6dbb8-7e70-4b63-b516-0ad806118dc5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2b0fda29-e1a1-4922-a3b5-4ccd7ce11065');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '57f0519d-4617-479c-a1bf-eb576bf691dc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'fe102585-b66e-497f-9cd4-181de4ac62af');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '027a0498-6436-42a7-adf1-73057073f82b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '22d3cdc5-6381-41d4-beff-a36b742c5e42');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd5b539e9-0b85-4ac0-9b4a-90546ed939de');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '68db17a3-c94e-441a-a4ed-fe6f53f6921e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'd570ba61-c157-43af-b1e4-eb97f65d56f0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c53b7bab-701e-42e3-b9c9-8d3d9f5712f5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '379d4920-be19-4582-a0dd-9296e02723ec');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5d786b52-7b51-448a-9ef1-546c625e0b5a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '13350d6d-a1ad-4486-a223-b7f2a90a859b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6850653f-54ce-41ed-9b0a-35b75ccf51d5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '37b2d817-92b4-4043-a425-247cf0719231');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4947e172-eb1c-45f4-b41f-91a4b8ea79bb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '50eab132-4df9-423b-9d67-d79db2de75f2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '774c12da-ed49-4b21-b8fd-e94e27353f81');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b2a255d3-27dc-4d66-91dd-bb3c3f367bd7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36153964-e0b0-4f40-b475-f54b9cd16c26');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '423f5ef5-32e4-408d-afcd-b1e402969b57');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '02fa2e7b-9dd6-4c99-a4ef-87fe0e6d0bb8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0c419574-5ed6-4ff5-967c-1b0ae16676d6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '35a9fecd-6406-4002-9a38-2d91c3658c73');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'af0d8702-870b-452a-8c3b-177372ecd2dd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '46e526a7-1234-47e9-a008-e54dc4f38689');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '60152244-4ba6-4bd7-b992-f49bcfa3cc9a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00c0447b-13e5-471d-9653-58da670e493a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7578743f-c64a-454e-9098-3c9305e5e759');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '17993498-829b-4cd4-a6de-a45a4f420827');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '42bd0f17-b73a-4c32-95f8-66dba9277752');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '713b4155-6acf-4bc0-9151-155339fbf5f1');


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
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '49ecd1a8-029c-46e7-89ea-cf7890001d21');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '06d229de-6349-480c-a6d3-e33de396e89c');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'aac64b92-7ef1-4093-9984-0e2b296840c4');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9052272f-3990-404b-ba99-94733fc99b98');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '91c2f074-1df2-4b40-b3ed-904ce5abf2d2');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2d20e987-d845-427d-be42-2cea4eebf8dd');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '08c3eb3c-f309-4717-acb9-e2ba73c42de4');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '608702a3-5794-419b-976e-5a85be054c18');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '116fdf39-1b70-4411-9c25-c94143c01c0b');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '28d7c62d-34d7-4298-95d9-d65ef63cb9b5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '28d7c62d-34d7-4298-95d9-d65ef63cb9b5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '0fa27d7f-3e1f-40c1-9d89-01dbebad91b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '0fa27d7f-3e1f-40c1-9d89-01dbebad91b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '7c9cec97-4650-46ba-b977-b8ab34afc54b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '7c9cec97-4650-46ba-b977-b8ab34afc54b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'c8789bd3-596a-4229-a5d2-5eda000e50a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'c8789bd3-596a-4229-a5d2-5eda000e50a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4d685491-b494-45e1-9b70-b1fa7039c293');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '4d685491-b494-45e1-9b70-b1fa7039c293');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '3bbb8cf5-b769-4246-8c54-e1ec2b9c14f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '3bbb8cf5-b769-4246-8c54-e1ec2b9c14f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e232463d-92e7-40c9-98f8-1d20f679b9dd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'e232463d-92e7-40c9-98f8-1d20f679b9dd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '1ad10f7e-0090-47ec-8b9d-b7e7e965affb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '1ad10f7e-0090-47ec-8b9d-b7e7e965affb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6bbd51ea-9d16-4a7f-a735-07c38f387f93');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '6bbd51ea-9d16-4a7f-a735-07c38f387f93');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '692802b1-af52-44dc-92bf-14ab9d62f297');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '692802b1-af52-44dc-92bf-14ab9d62f297');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '646ebb50-cc8c-4335-96fa-298e378f4d64');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '646ebb50-cc8c-4335-96fa-298e378f4d64');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '044079e5-d8d3-47d4-8e1a-ac6ec74d4a85');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '044079e5-d8d3-47d4-8e1a-ac6ec74d4a85');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'cb6002d0-75da-4223-8bae-643855f0258f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'cb6002d0-75da-4223-8bae-643855f0258f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '131c32db-14de-494c-854c-4fa61f610cee');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '131c32db-14de-494c-854c-4fa61f610cee');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '0801ab00-4101-458c-ac50-d2ab6a6272b9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '0801ab00-4101-458c-ac50-d2ab6a6272b9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '7c322e88-99dc-4cda-86be-bcd3710c3898');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '7c322e88-99dc-4cda-86be-bcd3710c3898');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '1810fdbd-9b99-4c94-bdbc-9906503ae69e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '1810fdbd-9b99-4c94-bdbc-9906503ae69e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '088966ef-08c5-4833-aeaa-507387061830');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '088966ef-08c5-4833-aeaa-507387061830');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '1fdc0e2d-e444-4b13-bcb0-491471da27ce');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '1fdc0e2d-e444-4b13-bcb0-491471da27ce');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'c05b61ee-92b3-42e6-914b-85dbbdd1fdf1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'c05b61ee-92b3-42e6-914b-85dbbdd1fdf1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4752b54e-54d3-4b74-91e9-4a98138ca892');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4752b54e-54d3-4b74-91e9-4a98138ca892');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'eaaf5535-fc70-416f-8d69-5438ce519c0b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'eaaf5535-fc70-416f-8d69-5438ce519c0b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '21776ab6-f947-4ea2-a6f3-01960a0c0602');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '21776ab6-f947-4ea2-a6f3-01960a0c0602');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'cfeef7b2-a550-4d20-bac8-485e793f8732');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'cfeef7b2-a550-4d20-bac8-485e793f8732');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '94be01e5-773f-48b2-bfa2-98e75c2f9d5f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '94be01e5-773f-48b2-bfa2-98e75c2f9d5f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'cbc9cb40-5a9b-46ce-82d3-6e120fd0f065');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'cbc9cb40-5a9b-46ce-82d3-6e120fd0f065');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f5659e1f-1a79-45d5-9902-f3fb6d42897f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'f5659e1f-1a79-45d5-9902-f3fb6d42897f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'e25a5ece-2136-4e55-99f7-e679796800dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'e25a5ece-2136-4e55-99f7-e679796800dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f8709052-2a8f-423d-be54-d2414012bdc4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'f8709052-2a8f-423d-be54-d2414012bdc4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'eaeace9d-eb54-4547-965f-e904648afa0a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'eaeace9d-eb54-4547-965f-e904648afa0a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '44ee1d73-f3e5-4355-aa35-ab9b2ced45a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '44ee1d73-f3e5-4355-aa35-ab9b2ced45a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '023d7df1-5b39-46a2-9b74-5678c3231452');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '023d7df1-5b39-46a2-9b74-5678c3231452');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '967d50d8-fa6a-4b14-bb4b-254f2498a4dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '967d50d8-fa6a-4b14-bb4b-254f2498a4dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '54c90de4-4de6-407c-b6d2-670fdd4376c5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '54c90de4-4de6-407c-b6d2-670fdd4376c5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'c4ba9678-1417-495b-a0d3-13760ab1aab9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'c4ba9678-1417-495b-a0d3-13760ab1aab9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f7f72b7f-2af4-4cea-b924-29bbfb821757');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', 'f7f72b7f-2af4-4cea-b924-29bbfb821757');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '0e0a9cb3-5b6b-4771-8a87-09b98ec2e5df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '0e0a9cb3-5b6b-4771-8a87-09b98ec2e5df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '300348b2-3f53-48f3-b719-31ff09bfa89a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '300348b2-3f53-48f3-b719-31ff09bfa89a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'e9f8aea7-d466-45bf-a4ae-a871a36d2ebc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e9f8aea7-d466-45bf-a4ae-a871a36d2ebc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9e3a3454-8812-4ef7-8cc7-6297fc291598');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9e3a3454-8812-4ef7-8cc7-6297fc291598');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '72afeb1e-b0ad-4891-98ad-6c2f47292bfe');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '72afeb1e-b0ad-4891-98ad-6c2f47292bfe');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'efa8bbfd-8233-4270-9dc2-c7f2a219785a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'efa8bbfd-8233-4270-9dc2-c7f2a219785a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c6499f6b-dacc-4e57-bcd6-ba0063c0d72b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'c6499f6b-dacc-4e57-bcd6-ba0063c0d72b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'e440e264-c6ab-4f40-93e6-abe0f3f3741a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e440e264-c6ab-4f40-93e6-abe0f3f3741a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '2c34f80e-a021-44ca-a723-061d5f7fedd2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2c34f80e-a021-44ca-a723-061d5f7fedd2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '483b8b1d-a6e6-452d-b0fc-10f358bdc743');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '483b8b1d-a6e6-452d-b0fc-10f358bdc743');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'fbed924c-4cc5-4d9e-9e8f-d72603c37afa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'fbed924c-4cc5-4d9e-9e8f-d72603c37afa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '819bf1c1-81bd-4873-bcdb-010a6a6990fa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '819bf1c1-81bd-4873-bcdb-010a6a6990fa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '12456ab1-583b-4624-b9c6-c384ac6c9afe');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '12456ab1-583b-4624-b9c6-c384ac6c9afe');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '35f97427-d9c2-464d-9d94-3006ab43eccf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '35f97427-d9c2-464d-9d94-3006ab43eccf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9456512c-c1be-4b77-85a0-220c02a35e85');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '9456512c-c1be-4b77-85a0-220c02a35e85');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '472f7ac3-44c9-466c-bc26-2bcb2cb87d04');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '472f7ac3-44c9-466c-bc26-2bcb2cb87d04');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b4c6c577-0043-4986-a5ba-5c9977e2388c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'b4c6c577-0043-4986-a5ba-5c9977e2388c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '183adcea-2c58-41e0-a49d-b6a7bd970442');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '183adcea-2c58-41e0-a49d-b6a7bd970442');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'ca1a964f-06ef-4dd5-90aa-ce8ca9735f04');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'ca1a964f-06ef-4dd5-90aa-ce8ca9735f04');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '5ab9cab1-90bc-4633-9e57-bd768f880ce4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5ab9cab1-90bc-4633-9e57-bd768f880ce4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '5ccaa428-6a1f-4bcb-b3f4-9620a6267486');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5ccaa428-6a1f-4bcb-b3f4-9620a6267486');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a5c94ff5-d462-4bdb-9712-884120511714');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'a5c94ff5-d462-4bdb-9712-884120511714');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'f51d92f8-a961-43d0-b594-530292719e9c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'f51d92f8-a961-43d0-b594-530292719e9c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '869c4e0c-98f4-419f-8d75-d762fca537e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '869c4e0c-98f4-419f-8d75-d762fca537e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'd383bd24-7004-4179-b537-a5625a66df4b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'd383bd24-7004-4179-b537-a5625a66df4b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '3ad13b0c-d2f8-42ec-afab-57e5b8eecf49');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '3ad13b0c-d2f8-42ec-afab-57e5b8eecf49');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b9e63190-eea4-4856-8880-87ecf138bf88');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'b9e63190-eea4-4856-8880-87ecf138bf88');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '36153964-e0b0-4f40-b475-f54b9cd16c26');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '36153964-e0b0-4f40-b475-f54b9cd16c26');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '423f5ef5-32e4-408d-afcd-b1e402969b57');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '423f5ef5-32e4-408d-afcd-b1e402969b57');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '02fa2e7b-9dd6-4c99-a4ef-87fe0e6d0bb8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '02fa2e7b-9dd6-4c99-a4ef-87fe0e6d0bb8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '0c419574-5ed6-4ff5-967c-1b0ae16676d6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '0c419574-5ed6-4ff5-967c-1b0ae16676d6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '35a9fecd-6406-4002-9a38-2d91c3658c73');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '35a9fecd-6406-4002-9a38-2d91c3658c73');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'af0d8702-870b-452a-8c3b-177372ecd2dd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'af0d8702-870b-452a-8c3b-177372ecd2dd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '46e526a7-1234-47e9-a008-e54dc4f38689');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '46e526a7-1234-47e9-a008-e54dc4f38689');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '60152244-4ba6-4bd7-b992-f49bcfa3cc9a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '60152244-4ba6-4bd7-b992-f49bcfa3cc9a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '00c0447b-13e5-471d-9653-58da670e493a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '00c0447b-13e5-471d-9653-58da670e493a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '7578743f-c64a-454e-9098-3c9305e5e759');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '7578743f-c64a-454e-9098-3c9305e5e759');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '17993498-829b-4cd4-a6de-a45a4f420827');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '17993498-829b-4cd4-a6de-a45a4f420827');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '42bd0f17-b73a-4c32-95f8-66dba9277752');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '42bd0f17-b73a-4c32-95f8-66dba9277752');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '788b22c8-ea62-4807-992d-6f3b1319d7d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '788b22c8-ea62-4807-992d-6f3b1319d7d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'e422e18c-3fc5-4c7d-a77c-9687f9c507f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e422e18c-3fc5-4c7d-a77c-9687f9c507f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '0caf07f7-ffec-46ac-a03a-ac8bdb0b0998');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '0caf07f7-ffec-46ac-a03a-ac8bdb0b0998');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'ac375d2d-d6e7-47c1-ad89-3fd8531bfda6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'ac375d2d-d6e7-47c1-ad89-3fd8531bfda6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'fdb05b67-4453-4a05-94fd-7eeff9197a17');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'fdb05b67-4453-4a05-94fd-7eeff9197a17');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '2c87337a-68c6-42a1-800f-c547480e52e3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2c87337a-68c6-42a1-800f-c547480e52e3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '79922450-a0ec-4e9c-a3f5-1aafa2686f20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '79922450-a0ec-4e9c-a3f5-1aafa2686f20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '696af600-65c6-4ea7-88df-8340b5d86b33');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '696af600-65c6-4ea7-88df-8340b5d86b33');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '9ca52928-d0e6-407a-b1c3-67af9b6ed16d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9ca52928-d0e6-407a-b1c3-67af9b6ed16d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5ac2fd07-8a5a-4e81-873d-0c043ee3b97b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '5ac2fd07-8a5a-4e81-873d-0c043ee3b97b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '88f075f2-6ed0-42ba-a9a9-7c6e41ef61d6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '88f075f2-6ed0-42ba-a9a9-7c6e41ef61d6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'd53a6510-a18d-44b0-9e72-2833bc0e9adf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'd53a6510-a18d-44b0-9e72-2833bc0e9adf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'ff03069c-c19c-4d55-8a28-a076a7137549');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'ff03069c-c19c-4d55-8a28-a076a7137549');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '161a5d94-e67a-4348-b1c1-bc3119e841db');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '161a5d94-e67a-4348-b1c1-bc3119e841db');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '47f81d92-22f8-43c1-8624-d0b5a0068738');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '47f81d92-22f8-43c1-8624-d0b5a0068738');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'fb6415b8-7ff8-427e-b06f-70d72ce4632c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'fb6415b8-7ff8-427e-b06f-70d72ce4632c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '776bfd33-920f-47cf-a71f-94f242577354');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '776bfd33-920f-47cf-a71f-94f242577354');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '16a25e10-65a4-4dad-93e8-600f061fa74e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '16a25e10-65a4-4dad-93e8-600f061fa74e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e26f37a9-aba7-4a8e-8ded-cc53903e47bc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'e26f37a9-aba7-4a8e-8ded-cc53903e47bc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'e65dac12-f68c-48e2-9e22-f11978d4f422');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'e65dac12-f68c-48e2-9e22-f11978d4f422');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'd4b6dbb8-7e70-4b63-b516-0ad806118dc5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'd4b6dbb8-7e70-4b63-b516-0ad806118dc5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '2b0fda29-e1a1-4922-a3b5-4ccd7ce11065');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '2b0fda29-e1a1-4922-a3b5-4ccd7ce11065');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '57f0519d-4617-479c-a1bf-eb576bf691dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '57f0519d-4617-479c-a1bf-eb576bf691dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'fe102585-b66e-497f-9cd4-181de4ac62af');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'fe102585-b66e-497f-9cd4-181de4ac62af');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '027a0498-6436-42a7-adf1-73057073f82b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '027a0498-6436-42a7-adf1-73057073f82b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '22d3cdc5-6381-41d4-beff-a36b742c5e42');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '22d3cdc5-6381-41d4-beff-a36b742c5e42');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'd5b539e9-0b85-4ac0-9b4a-90546ed939de');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'd5b539e9-0b85-4ac0-9b4a-90546ed939de');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '68db17a3-c94e-441a-a4ed-fe6f53f6921e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '68db17a3-c94e-441a-a4ed-fe6f53f6921e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'd570ba61-c157-43af-b1e4-eb97f65d56f0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'd570ba61-c157-43af-b1e4-eb97f65d56f0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c53b7bab-701e-42e3-b9c9-8d3d9f5712f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'c53b7bab-701e-42e3-b9c9-8d3d9f5712f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '379d4920-be19-4582-a0dd-9296e02723ec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '379d4920-be19-4582-a0dd-9296e02723ec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '5d786b52-7b51-448a-9ef1-546c625e0b5a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '5d786b52-7b51-448a-9ef1-546c625e0b5a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '13350d6d-a1ad-4486-a223-b7f2a90a859b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '13350d6d-a1ad-4486-a223-b7f2a90a859b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '6850653f-54ce-41ed-9b0a-35b75ccf51d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '6850653f-54ce-41ed-9b0a-35b75ccf51d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '37b2d817-92b4-4043-a425-247cf0719231');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '37b2d817-92b4-4043-a425-247cf0719231');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '4947e172-eb1c-45f4-b41f-91a4b8ea79bb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4947e172-eb1c-45f4-b41f-91a4b8ea79bb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '50eab132-4df9-423b-9d67-d79db2de75f2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '50eab132-4df9-423b-9d67-d79db2de75f2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '774c12da-ed49-4b21-b8fd-e94e27353f81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '713b4155-6acf-4bc0-9151-155339fbf5f1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '713b4155-6acf-4bc0-9151-155339fbf5f1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '774c12da-ed49-4b21-b8fd-e94e27353f81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'b2a255d3-27dc-4d66-91dd-bb3c3f367bd7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'b2a255d3-27dc-4d66-91dd-bb3c3f367bd7');


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

