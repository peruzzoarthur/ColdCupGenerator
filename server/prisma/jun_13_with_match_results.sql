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

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('98fd008b-7926-41a5-a1b1-ea609b33c058', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', false);


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

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('9e890f30-e6ef-4a06-a6ce-4d12750936e4', 'A', '98fd008b-7926-41a5-a1b1-ea609b33c058', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('c68f293e-98f2-487e-8fa2-9b1626b88da6', 'B', '98fd008b-7926-41a5-a1b1-ea609b33c058', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('62b20145-87ae-4001-a0d9-4226185ae888', 'C', '98fd008b-7926-41a5-a1b1-ea609b33c058', NULL, NULL);


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (1, 'f9182225-2dd4-4741-8c38-efebc09a4f95', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b3a05249-9170-4565-9b28-7d6bdd69711d', NULL, '9e890f30-e6ef-4a06-a6ce-4d12750936e4');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (2, '1aa28660-bb55-4597-81e1-9dd729de9aa3', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '8702bf66-bfe2-4980-adc6-64d162a90c96', NULL, '9e890f30-e6ef-4a06-a6ce-4d12750936e4');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (3, '75a0825b-27f3-4a75-abd6-bcdee9386631', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bcd95c1f-c74a-4064-adb7-1fe200977269', NULL, '9e890f30-e6ef-4a06-a6ce-4d12750936e4');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (4, '9b9f2c35-7d76-412c-9bdc-3fdfa10db78d', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'dea85bad-a641-4c03-857b-59d593d4d55b', NULL, 'c68f293e-98f2-487e-8fa2-9b1626b88da6');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (5, '656e0556-ecc0-42be-81ba-00599d158607', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '39db6658-8e56-4fc8-ab4b-50b44f174f65', NULL, 'c68f293e-98f2-487e-8fa2-9b1626b88da6');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (6, 'a1198bee-e721-4fec-baeb-c892d9d8c21b', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '8c4d4a40-b1d9-4dd2-9e6b-ec9b359ad5f9', NULL, 'c68f293e-98f2-487e-8fa2-9b1626b88da6');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (7, '79f8700a-d2be-4f61-938f-448a561756ca', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '637e0f6a-0b29-4338-ac32-a8b5b0a17954', NULL, '62b20145-87ae-4001-a0d9-4226185ae888');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (8, '4830bcc9-e955-4b35-8124-7f6f18d8c3bd', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '078a1ba5-93f1-4a76-ad99-29e0acd5bec5', NULL, '62b20145-87ae-4001-a0d9-4226185ae888');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (9, '8085e04d-9575-4b1e-b34e-5b87afee9eb0', 'GROUP', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', '5cc73498-8054-4749-8a4b-55d4ca5c0dba', NULL, '62b20145-87ae-4001-a0d9-4226185ae888');


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
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b3a05249-9170-4565-9b28-7d6bdd69711d', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '8044c7f9-b8d3-40f6-a295-29207cde163c', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('8702bf66-bfe2-4980-adc6-64d162a90c96', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '8044c7f9-b8d3-40f6-a295-29207cde163c', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('bcd95c1f-c74a-4064-adb7-1fe200977269', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '36a05385-cf0d-4482-9183-88ba7bef8654', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('dea85bad-a641-4c03-857b-59d593d4d55b', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('39db6658-8e56-4fc8-ab4b-50b44f174f65', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('8c4d4a40-b1d9-4dd2-9e6b-ec9b359ad5f9', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('637e0f6a-0b29-4338-ac32-a8b5b0a17954', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('078a1ba5-93f1-4a76-ad99-29e0acd5bec5', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('5cc73498-8054-4749-8a4b-55d4ca5c0dba', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c89c7115-7648-4761-9623-f83da6325389', 'a0efa764-cb6c-472e-80da-16c076fdaeb8', 'SUPERSET', NULL, NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8044c7f9-b8d3-40f6-a295-29207cde163c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);


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
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('7d9e339a-4edb-4997-b9a2-fd3ea6384f90', 'SUPER', 1, '8044c7f9-b8d3-40f6-a295-29207cde163c', '9x2', 'b3a05249-9170-4565-9b28-7d6bdd69711d', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('569f56d4-8723-48e5-bf6d-6891b77a5569', 'SUPER', 1, '8044c7f9-b8d3-40f6-a295-29207cde163c', '9x2', '8702bf66-bfe2-4980-adc6-64d162a90c96', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ce4ab276-a657-4dbf-9e78-2e064924639e', 'SUPER', 1, '36a05385-cf0d-4482-9183-88ba7bef8654', '9x2', 'bcd95c1f-c74a-4064-adb7-1fe200977269', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('526527e8-5a4d-4557-8f2e-75dcd1edf076', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9x2', 'dea85bad-a641-4c03-857b-59d593d4d55b', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', 'SUPER', 1, '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9x2', '39db6658-8e56-4fc8-ab4b-50b44f174f65', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'SUPER', 1, 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '9x2', '8c4d4a40-b1d9-4dd2-9e6b-ec9b359ad5f9', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('477a2d2c-521c-4a6c-9535-0c2df8a08402', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9x2', '637e0f6a-0b29-4338-ac32-a8b5b0a17954', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0778a43e-e32e-47c9-8451-1233c5be6988', 'SUPER', 1, 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9x2', '078a1ba5-93f1-4a76-ad99-29e0acd5bec5', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0ba17189-68d0-492d-a234-ca83c8e92b30', 'SUPER', 1, 'c89c7115-7648-4761-9623-f83da6325389', '9x2', '5cc73498-8054-4749-8a4b-55d4ca5c0dba', true);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('12935ccd-d693-498b-a190-92622d5838e4', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0ab09359-b571-488a-8677-1ba58a752e27', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f7aa33e6-75bf-4927-965b-7ff67145e77a', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('33e801a9-8d6e-4f9b-b02f-d6a227bb03d2', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('38b3268f-0c7d-4aec-8ea0-a67236222752', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b407c9c7-1eb6-4e58-949c-3b073d1c3490', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f91e0d1c-d565-4a8b-bd62-314c1295cba6', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ff726343-5da4-4336-bbf3-6b8ab9732981', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('01c181de-384e-43e2-86e9-2e240ab62b61', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('481206a8-0b10-416f-9f15-5fb6832677e2', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a46b27ff-7afa-46f8-aaf4-d3a2198b126e', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('11dbadd9-f933-4e85-8eec-2268937230ab', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7d7287ca-e6b5-4e6d-bcb3-031836f84da4', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a5fe95a0-0fd4-4adf-ace4-e0a915f729b7', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('52b81013-09b2-4741-9cd6-bf20cd777866', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ec44e7ca-3521-43de-a8aa-f73c41e1dfd6', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('35bfae44-47cc-4157-8efc-9ef651579f0c', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8b03728f-f6a7-4d7a-a736-fac345c52d60', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1736eaf4-dc4d-42d6-8b54-7a4e825d2963', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0e69b279-4c63-4009-999f-e9e0ff7eb4b3', '569f56d4-8723-48e5-bf6d-6891b77a5569', '8044c7f9-b8d3-40f6-a295-29207cde163c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cfeb3f92-cdf5-47b1-b5d0-41a0406a140d', '569f56d4-8723-48e5-bf6d-6891b77a5569', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('78597634-8ff3-46f9-87e8-ad70a9350224', '569f56d4-8723-48e5-bf6d-6891b77a5569', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7cef385e-fe27-4cac-9608-04ea16198d26', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4c905b9a-7c31-4407-9b41-53cff50ba696', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('564d9a18-b4de-41e8-8fd8-5d5264c0c184', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5bc62bc1-2b36-4b1c-864f-7c3709284500', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c2491b11-67ac-46f7-b1f1-103148e57b62', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b087078b-be7a-4636-89c8-b71b0a3caaed', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('91dbb994-6249-4a97-8068-152d2ced578e', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a8baa67a-4fce-4976-9322-41a2746beb71', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2b3d6ab5-28d1-4d43-9299-411ebbd9c053', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '36a05385-cf0d-4482-9183-88ba7bef8654');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('440793bd-b8e6-4c6c-9e86-7acbee946139', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5c1001ef-13d6-4299-82aa-2a70737fb161', 'ce4ab276-a657-4dbf-9e78-2e064924639e', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0b777dd7-2ac9-4a12-ade2-94b4fd6e9efb', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('49ee4587-e736-430a-b778-e3e4abedbea1', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('97e7a3db-6a10-4293-9db3-4e09b4fbb592', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4baa0393-2640-4444-aeae-fd8ce41f00fa', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('64690444-b50c-40ca-a6a3-107e43e81f80', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('168865ac-00ab-4935-8193-cd983658ef44', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4f14e352-2257-432c-9321-ef363b425916', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6d0e6df1-21bf-4d64-872b-c8cd8ff9264b', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a201d279-102c-49e2-a286-060c6d447e20', '526527e8-5a4d-4557-8f2e-75dcd1edf076', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('35dd30db-08b1-4bc8-8e68-bb61e8ee962d', '526527e8-5a4d-4557-8f2e-75dcd1edf076', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f457ae6e-6667-45a9-a1cf-1e47255b0efb', '526527e8-5a4d-4557-8f2e-75dcd1edf076', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('65e5e750-f6fb-47c7-9b1f-086ff9d7c724', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3a028e1c-6fe1-4ffb-8a32-dd355272a5c3', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e385e976-c59f-4643-85cf-56c63b9000e5', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ec8c75e7-b78d-4af6-b86e-c782ed6658eb', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a00457d4-5165-4a18-b5fc-ce0881cf4b87', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8a3a76f9-61cf-47cf-9526-72dbdee4cdd6', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e9e2836c-0843-4ad9-9d87-8ecf9da9be36', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('13b052bc-cb06-4fda-bc4f-7614682628f8', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('46d7c9cb-0ed4-43a7-ba23-dcb65e92db49', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9eac5719-8fb0-4c52-bb61-98972148151f', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('355b418f-846f-4a72-b90b-734988d49849', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('862b53ae-50d8-47d4-ae53-1288c7b9355a', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cb319fe6-f814-48b4-a622-f15662cda196', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f9c94c39-1064-4550-91dd-c2d9c5951d93', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3c6df2f6-0fe0-4212-86fe-a59d94a76c06', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('91ee16c2-d2a5-41ae-8a4a-ea8f68011bba', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('14bff7a0-83bb-4cb9-93be-067a4bdeb367', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4e92db76-ea15-4e50-b15e-4f7a398cde6d', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2691d571-deb9-4d9e-9bdf-976ca031231a', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('beb9f9b3-8a2d-4f6c-9243-ca926e859699', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4ff98774-8ae3-4bdd-8d1f-7c17e8b9f230', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b7b44ba0-8913-4470-8ffe-c0c23c342544', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84', 'db06f767-e9fd-4dad-96ed-bc3554e82693');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5b580cfe-355f-4aac-929e-bbf9e7cec6f0', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('811ec050-850c-4b20-aa79-d88bd2e5114a', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4c3e9229-c3dd-4a56-9aa0-51824e31d286', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c01e15b1-16cb-412c-9fb8-7fcbde09662f', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7a460d4f-c497-4e28-9a74-f0cefc73bad2', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8fadaec2-ea56-4ff0-a244-acb80cc3f818', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('018a0559-d0c2-46c6-a8a3-9cf4fe0f2243', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ca5bfca2-1391-4d3b-aa7a-e648d34bd6fd', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('58adcdbb-4ddf-40d8-a01f-8b8b4ac916c2', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('083e0701-84ae-469e-85ea-e06b761741b8', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('da621af7-e458-48e6-afef-75800c88d125', '477a2d2c-521c-4a6c-9535-0c2df8a08402', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bdcb3749-4a64-4c13-99df-f930cd28e3ce', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b180e322-647e-41c4-9756-bc23c3e73d51', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a139f412-6a3a-4c1b-90b5-77ce6fe5120f', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c293062b-bb6b-4361-b3d9-e39fee9883bd', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('405dff39-30e1-41fc-bbe8-4d828e2be339', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('513baf79-8870-43b5-82a5-a02aa714ce1e', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c1b1a8d4-0925-4720-8217-e5cd984d358d', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('441136d8-0ba8-49f2-abdb-57f9b7cd556b', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9e984101-1d20-445c-8ea0-d78d667a19ab', '0778a43e-e32e-47c9-8451-1233c5be6988', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('867fd6ab-14dc-4efd-839c-42ace0de51dc', '0778a43e-e32e-47c9-8451-1233c5be6988', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a37b762e-a942-4918-8162-6bce0f3ab57a', '0778a43e-e32e-47c9-8451-1233c5be6988', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ef32ad6a-6a54-4ad0-a0e7-7f45f4bb338d', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('17b7514a-f29e-4766-a703-555d7d38855d', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8822915a-1916-45cf-b660-76ab42f13a39', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('20ddb3e6-3e5f-4bdb-9f66-545d7e175f47', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b3caf984-b946-49f1-81a3-25c3e585304f', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c658adf0-8b87-4463-951b-84037aa2564b', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9ac7a8f7-39bc-454f-ae65-fca0f0e0d17f', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('44a51f8c-6077-4750-a7ad-665aac4f4018', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('268b90e8-7899-491a-aff2-1c97481e9413', '0ba17189-68d0-492d-a234-ca83c8e92b30', 'c89c7115-7648-4761-9623-f83da6325389');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('06de6f29-f855-4feb-9d2e-8523a83f8895', '0ba17189-68d0-492d-a234-ca83c8e92b30', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a54034d7-d6db-448f-b202-4b6952f9b5ef', '0ba17189-68d0-492d-a234-ca83c8e92b30', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24');


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
-- Data for Name: _DoubleToDoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '9e890f30-e6ef-4a06-a6ce-4d12750936e4');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'c68f293e-98f2-487e-8fa2-9b1626b88da6');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '62b20145-87ae-4001-a0d9-4226185ae888');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '9e890f30-e6ef-4a06-a6ce-4d12750936e4');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'c68f293e-98f2-487e-8fa2-9b1626b88da6');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '62b20145-87ae-4001-a0d9-4226185ae888');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '9e890f30-e6ef-4a06-a6ce-4d12750936e4');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'c68f293e-98f2-487e-8fa2-9b1626b88da6');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '62b20145-87ae-4001-a0d9-4226185ae888');


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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'b3a05249-9170-4565-9b28-7d6bdd69711d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b3a05249-9170-4565-9b28-7d6bdd69711d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '8702bf66-bfe2-4980-adc6-64d162a90c96');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '8702bf66-bfe2-4980-adc6-64d162a90c96');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'bcd95c1f-c74a-4064-adb7-1fe200977269');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'bcd95c1f-c74a-4064-adb7-1fe200977269');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'dea85bad-a641-4c03-857b-59d593d4d55b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'dea85bad-a641-4c03-857b-59d593d4d55b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '39db6658-8e56-4fc8-ab4b-50b44f174f65');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '39db6658-8e56-4fc8-ab4b-50b44f174f65');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '8c4d4a40-b1d9-4dd2-9e6b-ec9b359ad5f9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '8c4d4a40-b1d9-4dd2-9e6b-ec9b359ad5f9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '637e0f6a-0b29-4338-ac32-a8b5b0a17954');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '637e0f6a-0b29-4338-ac32-a8b5b0a17954');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '078a1ba5-93f1-4a76-ad99-29e0acd5bec5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '078a1ba5-93f1-4a76-ad99-29e0acd5bec5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5cc73498-8054-4749-8a4b-55d4ca5c0dba');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '5cc73498-8054-4749-8a4b-55d4ca5c0dba');


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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '569f56d4-8723-48e5-bf6d-6891b77a5569');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '569f56d4-8723-48e5-bf6d-6891b77a5569');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'ce4ab276-a657-4dbf-9e78-2e064924639e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'ce4ab276-a657-4dbf-9e78-2e064924639e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '526527e8-5a4d-4557-8f2e-75dcd1edf076');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '526527e8-5a4d-4557-8f2e-75dcd1edf076');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '477a2d2c-521c-4a6c-9535-0c2df8a08402');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '477a2d2c-521c-4a6c-9535-0c2df8a08402');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '0778a43e-e32e-47c9-8451-1233c5be6988');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '0778a43e-e32e-47c9-8451-1233c5be6988');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '0ba17189-68d0-492d-a234-ca83c8e92b30');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '0ba17189-68d0-492d-a234-ca83c8e92b30');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '12935ccd-d693-498b-a190-92622d5838e4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0ab09359-b571-488a-8677-1ba58a752e27');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f7aa33e6-75bf-4927-965b-7ff67145e77a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '33e801a9-8d6e-4f9b-b02f-d6a227bb03d2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '38b3268f-0c7d-4aec-8ea0-a67236222752');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b407c9c7-1eb6-4e58-949c-3b073d1c3490');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f91e0d1c-d565-4a8b-bd62-314c1295cba6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ff726343-5da4-4336-bbf3-6b8ab9732981');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '01c181de-384e-43e2-86e9-2e240ab62b61');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '481206a8-0b10-416f-9f15-5fb6832677e2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a46b27ff-7afa-46f8-aaf4-d3a2198b126e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '11dbadd9-f933-4e85-8eec-2268937230ab');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7d7287ca-e6b5-4e6d-bcb3-031836f84da4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a5fe95a0-0fd4-4adf-ace4-e0a915f729b7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '52b81013-09b2-4741-9cd6-bf20cd777866');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ec44e7ca-3521-43de-a8aa-f73c41e1dfd6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '35bfae44-47cc-4157-8efc-9ef651579f0c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8b03728f-f6a7-4d7a-a736-fac345c52d60');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1736eaf4-dc4d-42d6-8b54-7a4e825d2963');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0e69b279-4c63-4009-999f-e9e0ff7eb4b3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cfeb3f92-cdf5-47b1-b5d0-41a0406a140d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '78597634-8ff3-46f9-87e8-ad70a9350224');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7cef385e-fe27-4cac-9608-04ea16198d26');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4c905b9a-7c31-4407-9b41-53cff50ba696');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '564d9a18-b4de-41e8-8fd8-5d5264c0c184');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5bc62bc1-2b36-4b1c-864f-7c3709284500');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c2491b11-67ac-46f7-b1f1-103148e57b62');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b087078b-be7a-4636-89c8-b71b0a3caaed');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '91dbb994-6249-4a97-8068-152d2ced578e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a8baa67a-4fce-4976-9322-41a2746beb71');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2b3d6ab5-28d1-4d43-9299-411ebbd9c053');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '440793bd-b8e6-4c6c-9e86-7acbee946139');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5c1001ef-13d6-4299-82aa-2a70737fb161');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0b777dd7-2ac9-4a12-ade2-94b4fd6e9efb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '49ee4587-e736-430a-b778-e3e4abedbea1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '97e7a3db-6a10-4293-9db3-4e09b4fbb592');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4baa0393-2640-4444-aeae-fd8ce41f00fa');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '64690444-b50c-40ca-a6a3-107e43e81f80');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '168865ac-00ab-4935-8193-cd983658ef44');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4f14e352-2257-432c-9321-ef363b425916');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '6d0e6df1-21bf-4d64-872b-c8cd8ff9264b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a201d279-102c-49e2-a286-060c6d447e20');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '35dd30db-08b1-4bc8-8e68-bb61e8ee962d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f457ae6e-6667-45a9-a1cf-1e47255b0efb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '65e5e750-f6fb-47c7-9b1f-086ff9d7c724');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '3a028e1c-6fe1-4ffb-8a32-dd355272a5c3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e385e976-c59f-4643-85cf-56c63b9000e5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ec8c75e7-b78d-4af6-b86e-c782ed6658eb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a00457d4-5165-4a18-b5fc-ce0881cf4b87');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8a3a76f9-61cf-47cf-9526-72dbdee4cdd6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e9e2836c-0843-4ad9-9d87-8ecf9da9be36');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '13b052bc-cb06-4fda-bc4f-7614682628f8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '46d7c9cb-0ed4-43a7-ba23-dcb65e92db49');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9eac5719-8fb0-4c52-bb61-98972148151f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '355b418f-846f-4a72-b90b-734988d49849');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '862b53ae-50d8-47d4-ae53-1288c7b9355a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'cb319fe6-f814-48b4-a622-f15662cda196');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f9c94c39-1064-4550-91dd-c2d9c5951d93');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '3c6df2f6-0fe0-4212-86fe-a59d94a76c06');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '91ee16c2-d2a5-41ae-8a4a-ea8f68011bba');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '14bff7a0-83bb-4cb9-93be-067a4bdeb367');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4e92db76-ea15-4e50-b15e-4f7a398cde6d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '2691d571-deb9-4d9e-9bdf-976ca031231a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'beb9f9b3-8a2d-4f6c-9243-ca926e859699');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4ff98774-8ae3-4bdd-8d1f-7c17e8b9f230');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b7b44ba0-8913-4470-8ffe-c0c23c342544');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '5b580cfe-355f-4aac-929e-bbf9e7cec6f0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '811ec050-850c-4b20-aa79-d88bd2e5114a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '4c3e9229-c3dd-4a56-9aa0-51824e31d286');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c01e15b1-16cb-412c-9fb8-7fcbde09662f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7a460d4f-c497-4e28-9a74-f0cefc73bad2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8fadaec2-ea56-4ff0-a244-acb80cc3f818');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '018a0559-d0c2-46c6-a8a3-9cf4fe0f2243');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ca5bfca2-1391-4d3b-aa7a-e648d34bd6fd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '58adcdbb-4ddf-40d8-a01f-8b8b4ac916c2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '083e0701-84ae-469e-85ea-e06b761741b8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'da621af7-e458-48e6-afef-75800c88d125');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bdcb3749-4a64-4c13-99df-f930cd28e3ce');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b180e322-647e-41c4-9756-bc23c3e73d51');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a139f412-6a3a-4c1b-90b5-77ce6fe5120f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c293062b-bb6b-4361-b3d9-e39fee9883bd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '405dff39-30e1-41fc-bbe8-4d828e2be339');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '513baf79-8870-43b5-82a5-a02aa714ce1e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c1b1a8d4-0925-4720-8217-e5cd984d358d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '441136d8-0ba8-49f2-abdb-57f9b7cd556b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9e984101-1d20-445c-8ea0-d78d667a19ab');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '867fd6ab-14dc-4efd-839c-42ace0de51dc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a37b762e-a942-4918-8162-6bce0f3ab57a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ef32ad6a-6a54-4ad0-a0e7-7f45f4bb338d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '17b7514a-f29e-4766-a703-555d7d38855d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '8822915a-1916-45cf-b660-76ab42f13a39');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '20ddb3e6-3e5f-4bdb-9f66-545d7e175f47');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'b3caf984-b946-49f1-81a3-25c3e585304f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c658adf0-8b87-4463-951b-84037aa2564b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '9ac7a8f7-39bc-454f-ae65-fca0f0e0d17f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '44a51f8c-6077-4750-a7ad-665aac4f4018');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '268b90e8-7899-491a-aff2-1c97481e9413');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '06de6f29-f855-4feb-9d2e-8523a83f8895');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'a54034d7-d6db-448f-b202-4b6952f9b5ef');


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
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '7d9e339a-4edb-4997-b9a2-fd3ea6384f90');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '569f56d4-8723-48e5-bf6d-6891b77a5569');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ce4ab276-a657-4dbf-9e78-2e064924639e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '526527e8-5a4d-4557-8f2e-75dcd1edf076');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'bb7d7260-0de7-4913-9b2a-60cbaa1e4ae0');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'dc99840f-af97-4b7d-8c4d-8baecc39ba84');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '477a2d2c-521c-4a6c-9535-0c2df8a08402');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0778a43e-e32e-47c9-8451-1233c5be6988');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '0ba17189-68d0-492d-a234-ca83c8e92b30');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '12935ccd-d693-498b-a190-92622d5838e4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '12935ccd-d693-498b-a190-92622d5838e4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '0ab09359-b571-488a-8677-1ba58a752e27');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '0ab09359-b571-488a-8677-1ba58a752e27');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'f7aa33e6-75bf-4927-965b-7ff67145e77a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f7aa33e6-75bf-4927-965b-7ff67145e77a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '33e801a9-8d6e-4f9b-b02f-d6a227bb03d2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '33e801a9-8d6e-4f9b-b02f-d6a227bb03d2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '38b3268f-0c7d-4aec-8ea0-a67236222752');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '38b3268f-0c7d-4aec-8ea0-a67236222752');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'b407c9c7-1eb6-4e58-949c-3b073d1c3490');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b407c9c7-1eb6-4e58-949c-3b073d1c3490');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'f91e0d1c-d565-4a8b-bd62-314c1295cba6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'f91e0d1c-d565-4a8b-bd62-314c1295cba6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'ff726343-5da4-4336-bbf3-6b8ab9732981');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'ff726343-5da4-4336-bbf3-6b8ab9732981');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '01c181de-384e-43e2-86e9-2e240ab62b61');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '01c181de-384e-43e2-86e9-2e240ab62b61');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '481206a8-0b10-416f-9f15-5fb6832677e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '481206a8-0b10-416f-9f15-5fb6832677e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'a46b27ff-7afa-46f8-aaf4-d3a2198b126e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'a46b27ff-7afa-46f8-aaf4-d3a2198b126e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '11dbadd9-f933-4e85-8eec-2268937230ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '11dbadd9-f933-4e85-8eec-2268937230ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '7d7287ca-e6b5-4e6d-bcb3-031836f84da4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '7d7287ca-e6b5-4e6d-bcb3-031836f84da4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'a5fe95a0-0fd4-4adf-ace4-e0a915f729b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a5fe95a0-0fd4-4adf-ace4-e0a915f729b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '52b81013-09b2-4741-9cd6-bf20cd777866');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '52b81013-09b2-4741-9cd6-bf20cd777866');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'ec44e7ca-3521-43de-a8aa-f73c41e1dfd6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'ec44e7ca-3521-43de-a8aa-f73c41e1dfd6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '35bfae44-47cc-4157-8efc-9ef651579f0c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '35bfae44-47cc-4157-8efc-9ef651579f0c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '8b03728f-f6a7-4d7a-a736-fac345c52d60');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '8b03728f-f6a7-4d7a-a736-fac345c52d60');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '1736eaf4-dc4d-42d6-8b54-7a4e825d2963');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '1736eaf4-dc4d-42d6-8b54-7a4e825d2963');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '0e69b279-4c63-4009-999f-e9e0ff7eb4b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '0e69b279-4c63-4009-999f-e9e0ff7eb4b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', 'cfeb3f92-cdf5-47b1-b5d0-41a0406a140d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'cfeb3f92-cdf5-47b1-b5d0-41a0406a140d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('8044c7f9-b8d3-40f6-a295-29207cde163c', '78597634-8ff3-46f9-87e8-ad70a9350224');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '78597634-8ff3-46f9-87e8-ad70a9350224');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '7cef385e-fe27-4cac-9608-04ea16198d26');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '7cef385e-fe27-4cac-9608-04ea16198d26');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '4c905b9a-7c31-4407-9b41-53cff50ba696');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '4c905b9a-7c31-4407-9b41-53cff50ba696');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '564d9a18-b4de-41e8-8fd8-5d5264c0c184');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '564d9a18-b4de-41e8-8fd8-5d5264c0c184');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '5bc62bc1-2b36-4b1c-864f-7c3709284500');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5bc62bc1-2b36-4b1c-864f-7c3709284500');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'c2491b11-67ac-46f7-b1f1-103148e57b62');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'c2491b11-67ac-46f7-b1f1-103148e57b62');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'b087078b-be7a-4636-89c8-b71b0a3caaed');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'b087078b-be7a-4636-89c8-b71b0a3caaed');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '91dbb994-6249-4a97-8068-152d2ced578e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '91dbb994-6249-4a97-8068-152d2ced578e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', 'a8baa67a-4fce-4976-9322-41a2746beb71');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', 'a8baa67a-4fce-4976-9322-41a2746beb71');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '2b3d6ab5-28d1-4d43-9299-411ebbd9c053');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '2b3d6ab5-28d1-4d43-9299-411ebbd9c053');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '440793bd-b8e6-4c6c-9e86-7acbee946139');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '440793bd-b8e6-4c6c-9e86-7acbee946139');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('36a05385-cf0d-4482-9183-88ba7bef8654', '5c1001ef-13d6-4299-82aa-2a70737fb161');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '5c1001ef-13d6-4299-82aa-2a70737fb161');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '0b777dd7-2ac9-4a12-ade2-94b4fd6e9efb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '0b777dd7-2ac9-4a12-ade2-94b4fd6e9efb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '49ee4587-e736-430a-b778-e3e4abedbea1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '49ee4587-e736-430a-b778-e3e4abedbea1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '97e7a3db-6a10-4293-9db3-4e09b4fbb592');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '97e7a3db-6a10-4293-9db3-4e09b4fbb592');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4baa0393-2640-4444-aeae-fd8ce41f00fa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4baa0393-2640-4444-aeae-fd8ce41f00fa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '64690444-b50c-40ca-a6a3-107e43e81f80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '64690444-b50c-40ca-a6a3-107e43e81f80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '168865ac-00ab-4935-8193-cd983658ef44');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '168865ac-00ab-4935-8193-cd983658ef44');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '4f14e352-2257-432c-9321-ef363b425916');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4f14e352-2257-432c-9321-ef363b425916');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '6d0e6df1-21bf-4d64-872b-c8cd8ff9264b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '6d0e6df1-21bf-4d64-872b-c8cd8ff9264b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a201d279-102c-49e2-a286-060c6d447e20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'a201d279-102c-49e2-a286-060c6d447e20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '35dd30db-08b1-4bc8-8e68-bb61e8ee962d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '35dd30db-08b1-4bc8-8e68-bb61e8ee962d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'f457ae6e-6667-45a9-a1cf-1e47255b0efb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'f457ae6e-6667-45a9-a1cf-1e47255b0efb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '65e5e750-f6fb-47c7-9b1f-086ff9d7c724');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '65e5e750-f6fb-47c7-9b1f-086ff9d7c724');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '3a028e1c-6fe1-4ffb-8a32-dd355272a5c3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '3a028e1c-6fe1-4ffb-8a32-dd355272a5c3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e385e976-c59f-4643-85cf-56c63b9000e5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e385e976-c59f-4643-85cf-56c63b9000e5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'ec8c75e7-b78d-4af6-b86e-c782ed6658eb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'ec8c75e7-b78d-4af6-b86e-c782ed6658eb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'a00457d4-5165-4a18-b5fc-ce0881cf4b87');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'a00457d4-5165-4a18-b5fc-ce0881cf4b87');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '8a3a76f9-61cf-47cf-9526-72dbdee4cdd6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '8a3a76f9-61cf-47cf-9526-72dbdee4cdd6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', 'e9e2836c-0843-4ad9-9d87-8ecf9da9be36');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'e9e2836c-0843-4ad9-9d87-8ecf9da9be36');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '13b052bc-cb06-4fda-bc4f-7614682628f8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '13b052bc-cb06-4fda-bc4f-7614682628f8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '46d7c9cb-0ed4-43a7-ba23-dcb65e92db49');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '46d7c9cb-0ed4-43a7-ba23-dcb65e92db49');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '9eac5719-8fb0-4c52-bb61-98972148151f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '9eac5719-8fb0-4c52-bb61-98972148151f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '355b418f-846f-4a72-b90b-734988d49849');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '355b418f-846f-4a72-b90b-734988d49849');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '862b53ae-50d8-47d4-ae53-1288c7b9355a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '862b53ae-50d8-47d4-ae53-1288c7b9355a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'cb319fe6-f814-48b4-a622-f15662cda196');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'cb319fe6-f814-48b4-a622-f15662cda196');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'f9c94c39-1064-4550-91dd-c2d9c5951d93');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'f9c94c39-1064-4550-91dd-c2d9c5951d93');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '3c6df2f6-0fe0-4212-86fe-a59d94a76c06');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '3c6df2f6-0fe0-4212-86fe-a59d94a76c06');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '91ee16c2-d2a5-41ae-8a4a-ea8f68011bba');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '91ee16c2-d2a5-41ae-8a4a-ea8f68011bba');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '14bff7a0-83bb-4cb9-93be-067a4bdeb367');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '14bff7a0-83bb-4cb9-93be-067a4bdeb367');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4e92db76-ea15-4e50-b15e-4f7a398cde6d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '4e92db76-ea15-4e50-b15e-4f7a398cde6d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '2691d571-deb9-4d9e-9bdf-976ca031231a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '2691d571-deb9-4d9e-9bdf-976ca031231a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'beb9f9b3-8a2d-4f6c-9243-ca926e859699');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'beb9f9b3-8a2d-4f6c-9243-ca926e859699');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '4ff98774-8ae3-4bdd-8d1f-7c17e8b9f230');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', '4ff98774-8ae3-4bdd-8d1f-7c17e8b9f230');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', 'b7b44ba0-8913-4470-8ffe-c0c23c342544');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('db06f767-e9fd-4dad-96ed-bc3554e82693', 'b7b44ba0-8913-4470-8ffe-c0c23c342544');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '5b580cfe-355f-4aac-929e-bbf9e7cec6f0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '5b580cfe-355f-4aac-929e-bbf9e7cec6f0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '811ec050-850c-4b20-aa79-d88bd2e5114a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '811ec050-850c-4b20-aa79-d88bd2e5114a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '4c3e9229-c3dd-4a56-9aa0-51824e31d286');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '4c3e9229-c3dd-4a56-9aa0-51824e31d286');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c01e15b1-16cb-412c-9fb8-7fcbde09662f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'c01e15b1-16cb-412c-9fb8-7fcbde09662f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '7a460d4f-c497-4e28-9a74-f0cefc73bad2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '7a460d4f-c497-4e28-9a74-f0cefc73bad2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '8fadaec2-ea56-4ff0-a244-acb80cc3f818');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '8fadaec2-ea56-4ff0-a244-acb80cc3f818');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '018a0559-d0c2-46c6-a8a3-9cf4fe0f2243');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '018a0559-d0c2-46c6-a8a3-9cf4fe0f2243');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'ca5bfca2-1391-4d3b-aa7a-e648d34bd6fd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'ca5bfca2-1391-4d3b-aa7a-e648d34bd6fd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '58adcdbb-4ddf-40d8-a01f-8b8b4ac916c2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '58adcdbb-4ddf-40d8-a01f-8b8b4ac916c2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '083e0701-84ae-469e-85ea-e06b761741b8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '083e0701-84ae-469e-85ea-e06b761741b8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'da621af7-e458-48e6-afef-75800c88d125');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'da621af7-e458-48e6-afef-75800c88d125');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'bdcb3749-4a64-4c13-99df-f930cd28e3ce');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'bdcb3749-4a64-4c13-99df-f930cd28e3ce');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'b180e322-647e-41c4-9756-bc23c3e73d51');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'b180e322-647e-41c4-9756-bc23c3e73d51');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a139f412-6a3a-4c1b-90b5-77ce6fe5120f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a139f412-6a3a-4c1b-90b5-77ce6fe5120f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c293062b-bb6b-4361-b3d9-e39fee9883bd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c293062b-bb6b-4361-b3d9-e39fee9883bd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '405dff39-30e1-41fc-bbe8-4d828e2be339');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '405dff39-30e1-41fc-bbe8-4d828e2be339');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '513baf79-8870-43b5-82a5-a02aa714ce1e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '513baf79-8870-43b5-82a5-a02aa714ce1e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'c1b1a8d4-0925-4720-8217-e5cd984d358d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c1b1a8d4-0925-4720-8217-e5cd984d358d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '441136d8-0ba8-49f2-abdb-57f9b7cd556b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '441136d8-0ba8-49f2-abdb-57f9b7cd556b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '9e984101-1d20-445c-8ea0-d78d667a19ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '9e984101-1d20-445c-8ea0-d78d667a19ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '867fd6ab-14dc-4efd-839c-42ace0de51dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '867fd6ab-14dc-4efd-839c-42ace0de51dc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', 'a37b762e-a942-4918-8162-6bce0f3ab57a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a37b762e-a942-4918-8162-6bce0f3ab57a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'ef32ad6a-6a54-4ad0-a0e7-7f45f4bb338d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'ef32ad6a-6a54-4ad0-a0e7-7f45f4bb338d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '17b7514a-f29e-4766-a703-555d7d38855d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '17b7514a-f29e-4766-a703-555d7d38855d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '8822915a-1916-45cf-b660-76ab42f13a39');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '8822915a-1916-45cf-b660-76ab42f13a39');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '20ddb3e6-3e5f-4bdb-9f66-545d7e175f47');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '20ddb3e6-3e5f-4bdb-9f66-545d7e175f47');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'b3caf984-b946-49f1-81a3-25c3e585304f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'b3caf984-b946-49f1-81a3-25c3e585304f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'c658adf0-8b87-4463-951b-84037aa2564b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'c658adf0-8b87-4463-951b-84037aa2564b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '9ac7a8f7-39bc-454f-ae65-fca0f0e0d17f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '9ac7a8f7-39bc-454f-ae65-fca0f0e0d17f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '44a51f8c-6077-4750-a7ad-665aac4f4018');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '44a51f8c-6077-4750-a7ad-665aac4f4018');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '268b90e8-7899-491a-aff2-1c97481e9413');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '268b90e8-7899-491a-aff2-1c97481e9413');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', '06de6f29-f855-4feb-9d2e-8523a83f8895');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '06de6f29-f855-4feb-9d2e-8523a83f8895');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c89c7115-7648-4761-9623-f83da6325389', 'a54034d7-d6db-448f-b202-4b6952f9b5ef');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('00c4c276-64b4-4fd4-a912-65dfb4aa8d24', 'a54034d7-d6db-448f-b202-4b6952f9b5ef');


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

