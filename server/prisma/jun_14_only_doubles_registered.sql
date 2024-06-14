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



--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--



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


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'ae6a02b6-1ca4-4d11-9a7b-9f0ad63324f8', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '36a05385-cf0d-4482-9183-88ba7bef8654', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '859236ce-9d24-418e-bd19-5f4ef6f1d4b5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'c89c7115-7648-4761-9623-f83da6325389', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '00c4c276-64b4-4fd4-a912-65dfb4aa8d24', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', '1d11835e-f08b-4e5a-a4eb-df3ada6f1d20', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'e0a5d5b3-efe4-4c57-a136-d31b1f1e8afb', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'db06f767-e9fd-4dad-96ed-bc3554e82693', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('a0efa764-cb6c-472e-80da-16c076fdaeb8', 'f763d8ce-5f29-480e-a16b-2e9f7b012a9a', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);


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


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



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


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



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


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _InviteToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: EventMatch_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EventMatch_number_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

