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

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "groupMatchesFinish") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'Copa Test', false, '2024-06-14 03:00:00', '2024-06-15 03:00:00', 60, 7, 14, 'ALLxALL', 'SUPERSET', false);


--
-- Data for Name: CategoryGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "isFinished") VALUES ('e6f227d4-a2c7-4504-8596-83e28296a0a9', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', false);


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('698d857c-175e-4357-a106-79941fd1311a', 'Complexo CK', 'Rua General Gomes Portinho, 223');


--
-- Data for Name: Court; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('e7e49d57-e204-457a-815d-6762179389dd', 'V1', true, '698d857c-175e-4357-a106-79941fd1311a');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('19da32e3-54cb-4c15-bd4b-d6dc422a36d7', 'V2', true, '698d857c-175e-4357-a106-79941fd1311a');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('def4d85c-ee39-40e8-a436-259bda6cb686', 'V3', true, '698d857c-175e-4357-a106-79941fd1311a');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('86acdc47-4022-45b3-9d57-c1f4f5ffc792', 'V4', true, '698d857c-175e-4357-a106-79941fd1311a');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('4f881379-dc36-424e-9c44-088676182361', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: DoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('08ea6b6e-add5-43fe-96ac-88d6fb628503', 'A', NULL, NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('c3db31a6-547d-4cc4-8763-60b189a1a07c', 'B', NULL, NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('0fbcedfd-fb19-481e-9f2b-5e9d52622991', 'C', NULL, NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('33361595-c7d8-4d53-aa6c-451c10277c93', 'A', NULL, NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('009779f1-9bfa-4209-8138-0e121c7c8ba2', 'A', 'e6f227d4-a2c7-4504-8596-83e28296a0a9', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('066d9ca1-4332-4f45-89ec-f47385111990', 'B', 'e6f227d4-a2c7-4504-8596-83e28296a0a9', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('e262b053-ea4f-47d5-abf3-2daab86712d7', 'C', 'e6f227d4-a2c7-4504-8596-83e28296a0a9', NULL, NULL);


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (1, '51c42cde-2440-40a7-b0d4-3d3c32b09146', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '7dc0d11c-a259-43c8-8cce-9bc5666a73de', NULL, '009779f1-9bfa-4209-8138-0e121c7c8ba2');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (2, '928775ab-d419-48d1-88ca-b45b78b6c6ce', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e97c5cce-155d-4bda-8379-61521463346d', NULL, '009779f1-9bfa-4209-8138-0e121c7c8ba2');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (3, 'a1d41e3c-b268-46c1-8755-b240c180d1d9', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '70db5e83-68ae-409a-90b4-af374945e4aa', NULL, '009779f1-9bfa-4209-8138-0e121c7c8ba2');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (4, '7376589b-3185-4679-89c9-cb82bcd094f9', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '0a7cdc10-b0d8-4f68-883e-69e47866ba91', NULL, '066d9ca1-4332-4f45-89ec-f47385111990');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (5, 'd08b6252-2f75-493e-b7b8-5963aedeef20', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'b94b3d83-fa2a-4dbe-875d-dc4e56b0704a', NULL, '066d9ca1-4332-4f45-89ec-f47385111990');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (6, '6c70719b-29a0-40d4-a60a-fb833dad1866', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'b25cf07a-21f5-4213-9bad-ab6191938d95', NULL, '066d9ca1-4332-4f45-89ec-f47385111990');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (7, '98af458f-4d7c-4ea9-beff-dc4460e8ea53', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd7edc4c4-6928-4240-9c12-8ed21a56cd6e', NULL, 'e262b053-ea4f-47d5-abf3-2daab86712d7');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (8, '9d215949-a2c3-448c-b550-c9e8ce3d039b', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd61fbccd-7adc-49a1-b257-bc85a0ac4558', NULL, 'e262b053-ea4f-47d5-abf3-2daab86712d7');
INSERT INTO public."EventMatch" (number, id, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (9, 'af50a216-7b57-47a3-afa9-28e75d2b95d0', 'GROUP', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'f1df4e29-0597-4cf6-9f93-d664daf19488', NULL, 'e262b053-ea4f-47d5-abf3-2daab86712d7');


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('7dc0d11c-a259-43c8-8cce-9bc5666a73de', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('e97c5cce-155d-4bda-8379-61521463346d', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('70db5e83-68ae-409a-90b4-af374945e4aa', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '4f881379-dc36-424e-9c44-088676182361', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('0a7cdc10-b0d8-4f68-883e-69e47866ba91', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b94b3d83-fa2a-4dbe-875d-dc4e56b0704a', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('b25cf07a-21f5-4213-9bad-ab6191938d95', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '6ee56c89-1608-4c52-aa2b-1b4a72b34392', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('d7edc4c4-6928-4240-9c12-8ed21a56cd6e', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'b724d501-828a-4278-814c-fccc3d30a23b', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('d61fbccd-7adc-49a1-b257-bc85a0ac4558', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'b724d501-828a-4278-814c-fccc3d30a23b', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId", "winnerRefId") VALUES ('f1df4e29-0597-4cf6-9f93-d664daf19488', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'SUPERSET', NULL, NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'b724d501-828a-4278-814c-fccc3d30a23b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '4f881379-dc36-424e-9c44-088676182361', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '3a3a87e3-7c06-4e06-9876-cad502e69281', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'b37a1086-0e67-47cf-8bb4-ec3929d66d81', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '6ee56c89-1608-4c52-aa2b-1b4a72b34392', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e9863384-39cb-4c97-9e58-66348cf29025', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);


--
-- Data for Name: EventRequest; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'SUPER', 1, 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '9x4', '7dc0d11c-a259-43c8-8cce-9bc5666a73de', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'SUPER', 1, 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '9x2', 'e97c5cce-155d-4bda-8379-61521463346d', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('3186172e-41e3-4172-b2ac-529a66ad760b', 'SUPER', 1, '4f881379-dc36-424e-9c44-088676182361', '9x2', '70db5e83-68ae-409a-90b4-af374945e4aa', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('79a17159-6e30-4b98-85e3-a3df65fe932a', 'SUPER', 1, 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '9x2', '0a7cdc10-b0d8-4f68-883e-69e47866ba91', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('8e7ec0db-8136-4efa-a503-36cc200d90d2', 'SUPER', 1, 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '9x2', 'b94b3d83-fa2a-4dbe-875d-dc4e56b0704a', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('11c0f459-6cf1-4fb5-ac7a-50f5e250232f', 'SUPER', 1, '6ee56c89-1608-4c52-aa2b-1b4a72b34392', '9x2', 'b25cf07a-21f5-4213-9bad-ab6191938d95', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'SUPER', 1, 'b724d501-828a-4278-814c-fccc3d30a23b', '9x2', 'd7edc4c4-6928-4240-9c12-8ed21a56cd6e', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('81f16b84-19f3-4e94-814f-7816856a409b', 'SUPER', 1, 'b724d501-828a-4278-814c-fccc3d30a23b', '9x2', 'd61fbccd-7adc-49a1-b257-bc85a0ac4558', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('4770fb4e-d669-44fb-b1e0-542f8c732ad3', 'SUPER', 1, '9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '9x2', 'f1df4e29-0597-4cf6-9f93-d664daf19488', true);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('63c672d8-d145-4abc-9e27-2cc90ecd5ad3', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e44126ca-5cab-4ab8-a5af-d94015cb4574', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('34720296-89d5-4b14-a260-d6938e200b75', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1752adea-c476-421d-bc79-37c2757573f7', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('882c9059-a1a8-4ef8-a094-e43c916159e0', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('78703dfc-7071-45ce-b81a-5ca4b9d838d7', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7e8f0cc6-6211-4426-b3ba-7b7d2847824e', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d5dc2de8-4e37-479b-a6ce-e4d02ee090ac', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a914ffbe-6a08-45dc-90b4-f85652b2ea37', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('173291ee-c979-4e3e-865c-e3dd8fb43841', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('97e55d4d-a64f-4456-84b9-e5bf26a78fc6', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('441e5385-b24d-44c6-9960-537733c47ec5', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9a71da86-de88-4d71-a865-7094af8140af', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9be6775c-b2d1-402b-ab26-0bb3f13f25c0', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d2c135d4-da39-4024-a20d-0f02997e4eae', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('eae8cec4-219f-4207-a610-da8eab16d3a5', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('24c83ef5-ddec-47dc-a271-1a4a5291528f', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f638df9e-8987-4094-bac3-b3d1263c21b6', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8969aed7-d29d-4dc6-afdb-b1ae3c71f059', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9dceca32-07f1-4e13-87e7-7f87827f2829', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1c73122e-de0a-4194-af45-16bc9571a370', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9b7f6140-b62a-4a7c-8bb0-4024d76a596c', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a7aa6fb0-9617-4652-b61d-7b962719633c', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', '3a3a87e3-7c06-4e06-9876-cad502e69281');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fd013e36-a58a-4dba-bf2d-80c5644d7793', '2a0df78d-3beb-4df5-aba5-4dca80204e7e', '3a3a87e3-7c06-4e06-9876-cad502e69281');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bbbbbf2b-7e6b-48eb-951c-cbe2f08285f4', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('347dc0e9-baab-449c-af82-8708e893d355', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('51d52295-1211-4489-9af0-e4ac8ae71e4c', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9f48c329-a7bf-4899-ab2d-efcc7e0a90bf', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('93085582-7cf7-45ec-8cb3-5db31a343bd4', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4cb2e341-cb70-4ac9-a516-ee4e9cb8def8', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a7a47190-ec3e-4e28-bdcc-94e179ac182a', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('da1f29ec-07cc-4e1c-87c7-ba2d1be95861', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f6ffc404-c067-4cf6-9265-23eebc4660d7', '3186172e-41e3-4172-b2ac-529a66ad760b', '4f881379-dc36-424e-9c44-088676182361');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e5129a9a-cad0-4223-8892-3fe2a130a938', '3186172e-41e3-4172-b2ac-529a66ad760b', '3a3a87e3-7c06-4e06-9876-cad502e69281');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2c1903da-fbaf-4f7a-92ea-1524b0557004', '3186172e-41e3-4172-b2ac-529a66ad760b', '3a3a87e3-7c06-4e06-9876-cad502e69281');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('02c5af7e-47f8-4a55-bed3-95592bf3ff35', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3ed9fc1b-b3b0-4625-b529-d034f4c63100', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('78f850df-7cf1-4ca0-93ab-0f5fe21f0a81', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3d658dfc-ef7e-464a-81b7-01bdb32a75e8', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fb98dd23-69e8-4c46-bbb4-bd6c4e9dd207', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9276f5e8-e324-44b0-b4d0-181d4808e10d', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4ef79156-1f1a-41ec-9663-82a805ed18b3', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('15287e1a-d651-4e8f-a0e8-58b0d9e35ab1', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('387a0531-836a-4c8d-b08c-fb8852fbc703', '79a17159-6e30-4b98-85e3-a3df65fe932a', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e1636599-b1a8-40bb-9240-484ab24d868e', '79a17159-6e30-4b98-85e3-a3df65fe932a', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1f4e9606-e847-4282-ab56-cad092d40691', '79a17159-6e30-4b98-85e3-a3df65fe932a', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e73f8f85-32d5-43de-b0cb-bed0a8d924ab', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('52c2626c-5a52-4291-a596-76aee928c296', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('15abac65-9015-432e-9e8c-31bb2358c5b7', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c79fa381-394f-4e04-821f-ef18c2a7a0bb', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e18c7126-d728-4630-b9e7-0667129211ec', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('daf77245-add8-4175-92b6-e5122e8d10da', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c7b69c04-455c-4798-b7a3-2f0cebbcb626', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('40f2b4d9-1e6e-48f4-bf76-a49a8d774fcd', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7334a4b9-1735-48c9-9224-04d8acf1034b', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'f9a57abb-c12f-446f-9919-f1b4ab72b7a7');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ea5e2158-1bd4-48b5-81b7-442fb0c67dd9', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'e9863384-39cb-4c97-9e58-66348cf29025');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a5bbdde1-b24d-4ee1-a941-f42fdb149180', '8e7ec0db-8136-4efa-a503-36cc200d90d2', 'e9863384-39cb-4c97-9e58-66348cf29025');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7bef8cf1-e6ea-4053-a35a-cb498ed37e45', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d917bce5-e037-40ca-acd5-d06875ac1e56', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d0cd6269-276e-451a-a01c-960d8936d938', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8c8e47f0-a93a-4bab-b461-cdf2aae97c1b', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0c320bc7-1f7a-4a3e-bc31-3448750ca777', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e0e98584-e324-43e7-9663-ffd423343722', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('043d7f3b-d1c7-4ca9-8a96-123499229f6b', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9c12d15c-baa3-49c7-8260-1d63eeae4c81', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8f78b6cf-6825-41c5-8d58-197f6e156d1c', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', '6ee56c89-1608-4c52-aa2b-1b4a72b34392');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c49be00a-40c8-49bc-b888-64f8206d4ee9', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', 'e9863384-39cb-4c97-9e58-66348cf29025');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bf673d34-9790-49be-85db-3ccb2f0bd2d0', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f', 'e9863384-39cb-4c97-9e58-66348cf29025');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('17d867fa-6278-40e1-b12d-2887c4ba7817', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('33b279e8-a69a-4798-bb17-f0739f556347', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8c11c8d9-40aa-484b-9349-ac5a5df26007', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ed633d48-1c2f-4f88-adc3-8ae93dcb31d3', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('56c623c0-a5a9-4f7f-9b65-80175d0b48d5', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d30ee894-7ab6-4266-9f07-bf36d31175bd', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6794f7cc-6e3d-4334-aa63-95c124c74937', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e7063598-4614-4b86-94a4-dd07b85c4140', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('97f56478-9db7-4818-8a89-55201baf5220', '81f16b84-19f3-4e94-814f-7816856a409b', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ec7f6a38-d67c-4409-9e33-a0b2c1fe4980', '81f16b84-19f3-4e94-814f-7816856a409b', 'b37a1086-0e67-47cf-8bb4-ec3929d66d81');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('31d12551-bd12-4e0d-8be4-fddf4800347a', '81f16b84-19f3-4e94-814f-7816856a409b', 'b37a1086-0e67-47cf-8bb4-ec3929d66d81');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0f838ee3-4be6-469c-ac63-7b1fedf49ddc', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c8c0783c-20e0-41af-bf48-6e957d5bdc60', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ce0f311c-c490-4f86-ba6b-acf277a6fe6b', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('138837bc-3e49-4225-b2ff-47e8a0bf41c1', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b2647f20-eb4c-4bf8-9060-fbe02ad37041', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('99d493f3-6a4f-42e6-b06e-3ee6decd2461', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e25f1b41-0bb4-421e-9213-9174070073d8', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('439addcc-eff3-4213-af05-30d4e9c9b050', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('72966380-43bd-49d5-8569-123ba36acbab', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', 'b724d501-828a-4278-814c-fccc3d30a23b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e206b680-d076-413b-be57-026b50f48989', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('85f5c213-753a-4771-8c25-c9e49e08c9d1', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1348db68-7733-4411-87b6-fe3cc51fead5', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('81ae77f8-1ed2-4a81-8f2d-194232ff5671', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('97e7324f-0d09-4731-8fc1-d928452eb152', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3041683d-7eed-4f27-b92a-44c1dda8362c', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('82ccb696-c786-41d6-bf8b-0f153dcecad7', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('16a7246f-968a-47b2-9880-53058857321a', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f4121b66-2b4d-40da-bc86-a2671d8bcff7', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8ccdea8d-d558-43e5-813e-2e260f33c453', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e93bd823-7f5e-4d62-9a87-00649d64b989', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('66eb7494-1c10-4769-b454-c0d38f43a7fd', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', 'b37a1086-0e67-47cf-8bb4-ec3929d66d81');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('eeb20c86-98fe-4e9d-b7f0-22add005daa5', '4770fb4e-d669-44fb-b1e0-542f8c732ad3', 'b37a1086-0e67-47cf-8bb4-ec3929d66d81');


--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('8135a69f-21ba-42ed-b0dd-3d7ae1162c28', 'Arthur', 'Peruzzo', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('6c7b3d70-c9ea-4817-9034-9f5feb725b2b', 'Xu', 'Xu', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('4c910cdd-0834-4bab-92c3-e89c32a195b6', 'Mari', 'Querida', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('7549834c-0c13-40bc-b288-3b864138df90', 'Medusa', 'Ma', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('eccfe1cb-82e2-4c2b-9b67-e0218f8fb4c3', 'Marley', 'Cevapranos', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('fbb0307a-5990-42cf-8c1d-10e81d552e63', 'Mercedita', 'Incansable', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('797fc8a4-90e7-4206-aa86-1a6b00ba2806', 'Guel', 'deDios', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('c19497cf-aff6-498c-b3ab-23397a3244d1', 'L', 'Timoto', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('248ad487-c6bd-4efb-b9e9-464065837a9f', 'J', 'DC', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('dc5fbf30-5efe-4769-94fe-75f454e27832', 'Joao', 'Plasticat', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('f13ec4a7-665b-4fdc-8db8-26fc40edbd13', 'Juma', 'A Sobrinha', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('d16827a0-9cc3-48e7-a119-d125d5787f40', 'Medusinha', 'Levada', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('6c94eace-1079-4dae-b8e0-a08007ac29c0', 'Genesio', 'Hermafro', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('b0952d1a-df47-4b3e-af09-5627cecca430', 'O', 'Artista', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('4f9bbcf9-5c2d-4bb4-b62f-fc0934ce82a6', 'Maestro', 'Sem Sal', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('caaa7d74-47df-46b8-8f96-69fdb57def52', 'Carambolas', 'Agressive', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('ce91caf4-96dd-4857-80ef-c4fbd29e72d6', 'Haxi', 'Xe', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('a7a13ae7-51d6-4551-8cbc-9985e97f4648', 'Ze', 'Fuminho', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('5d8293f4-712d-4576-8378-dc7423e73090', 'Arthur', 'Peruzzo', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$gOoNnJ0OZ61zU7xl6ks7Yw$e0j04eZ1dxTO8F9OWff07RkBYtbGQXxNiWAxSRlYq4g', '1991-12-21 02:00:00', '2024-06-10 19:02:36.334', '2024-06-10 19:03:04.756', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28', 'ADMIN', '$argon2id$v=19$m=65536,t=3,p=4$OaQTN0q9iKHrrSAdf6AFZA$re987NdAh5jwKpF2rtbz0br8T+asfx0oRcp06JBbYu0', NULL);
INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('e1ae99b9-62bd-462e-8172-902ea4c6aac6', 'Joao', 'Plasticat', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$wiOw+76p5LGQXB8dBkVf1g$Ho1rANjZDZhoL4xaE4aBUipTpMKGV49d/ZsaHuYxKhU', '2018-06-14 03:00:00', '2024-06-10 19:02:51.689', '2024-06-10 19:06:56.323', 'dc5fbf30-5efe-4769-94fe-75f454e27832', 'USER', '$argon2id$v=19$m=65536,t=3,p=4$57mfDTfLHRslAy13KGCE+A$NwJ3CMhQuTMg5rQsgCuwGqc+ZS4nEQeFDa/6DtHaWD8', NULL);


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('e7e49d57-e204-457a-815d-6762179389dd', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('19da32e3-54cb-4c15-bd4b-d6dc422a36d7', '23b2ae54-1bca-48bb-bcb8-2a78a6be2521');


--
-- Data for Name: _DoubleToDoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '08ea6b6e-add5-43fe-96ac-88d6fb628503');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'c3db31a6-547d-4cc4-8763-60b189a1a07c');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '0fbcedfd-fb19-481e-9f2b-5e9d52622991');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '08ea6b6e-add5-43fe-96ac-88d6fb628503');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '08ea6b6e-add5-43fe-96ac-88d6fb628503');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', 'c3db31a6-547d-4cc4-8763-60b189a1a07c');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', '33361595-c7d8-4d53-aa6c-451c10277c93');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', '33361595-c7d8-4d53-aa6c-451c10277c93');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', '33361595-c7d8-4d53-aa6c-451c10277c93');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '009779f1-9bfa-4209-8138-0e121c7c8ba2');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '066d9ca1-4332-4f45-89ec-f47385111990');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'e262b053-ea4f-47d5-abf3-2daab86712d7');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '009779f1-9bfa-4209-8138-0e121c7c8ba2');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '066d9ca1-4332-4f45-89ec-f47385111990');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'e262b053-ea4f-47d5-abf3-2daab86712d7');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '009779f1-9bfa-4209-8138-0e121c7c8ba2');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '066d9ca1-4332-4f45-89ec-f47385111990');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'e262b053-ea4f-47d5-abf3-2daab86712d7');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '7dc0d11c-a259-43c8-8cce-9bc5666a73de');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '7dc0d11c-a259-43c8-8cce-9bc5666a73de');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'e97c5cce-155d-4bda-8379-61521463346d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'e97c5cce-155d-4bda-8379-61521463346d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '70db5e83-68ae-409a-90b4-af374945e4aa');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '70db5e83-68ae-409a-90b4-af374945e4aa');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '0a7cdc10-b0d8-4f68-883e-69e47866ba91');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '0a7cdc10-b0d8-4f68-883e-69e47866ba91');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'b94b3d83-fa2a-4dbe-875d-dc4e56b0704a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'b94b3d83-fa2a-4dbe-875d-dc4e56b0704a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'b25cf07a-21f5-4213-9bad-ab6191938d95');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'b25cf07a-21f5-4213-9bad-ab6191938d95');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'd7edc4c4-6928-4240-9c12-8ed21a56cd6e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'd7edc4c4-6928-4240-9c12-8ed21a56cd6e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'd61fbccd-7adc-49a1-b257-bc85a0ac4558');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'd61fbccd-7adc-49a1-b257-bc85a0ac4558');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'f1df4e29-0597-4cf6-9f93-d664daf19488');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'f1df4e29-0597-4cf6-9f93-d664daf19488');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '4c910cdd-0834-4bab-92c3-e89c32a195b6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '7549834c-0c13-40bc-b288-3b864138df90');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'eccfe1cb-82e2-4c2b-9b67-e0218f8fb4c3');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'fbb0307a-5990-42cf-8c1d-10e81d552e63');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'c19497cf-aff6-498c-b3ab-23397a3244d1');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '248ad487-c6bd-4efb-b9e9-464065837a9f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '797fc8a4-90e7-4206-aa86-1a6b00ba2806');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'dc5fbf30-5efe-4769-94fe-75f454e27832');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', 'dc5fbf30-5efe-4769-94fe-75f454e27832');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', '7549834c-0c13-40bc-b288-3b864138df90');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', '797fc8a4-90e7-4206-aa86-1a6b00ba2806');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', 'fbb0307a-5990-42cf-8c1d-10e81d552e63');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'f13ec4a7-665b-4fdc-8db8-26fc40edbd13');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'd16827a0-9cc3-48e7-a119-d125d5787f40');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '6c94eace-1079-4dae-b8e0-a08007ac29c0');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'b0952d1a-df47-4b3e-af09-5627cecca430');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '4f9bbcf9-5c2d-4bb4-b62f-fc0934ce82a6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'caaa7d74-47df-46b8-8f96-69fdb57def52');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'ce91caf4-96dd-4857-80ef-c4fbd29e72d6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'a7a13ae7-51d6-4551-8cbc-9985e97f4648');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '2a0df78d-3beb-4df5-aba5-4dca80204e7e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '2a0df78d-3beb-4df5-aba5-4dca80204e7e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '3186172e-41e3-4172-b2ac-529a66ad760b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '3186172e-41e3-4172-b2ac-529a66ad760b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '79a17159-6e30-4b98-85e3-a3df65fe932a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '79a17159-6e30-4b98-85e3-a3df65fe932a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '8e7ec0db-8136-4efa-a503-36cc200d90d2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '8e7ec0db-8136-4efa-a503-36cc200d90d2');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '81f16b84-19f3-4e94-814f-7816856a409b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '81f16b84-19f3-4e94-814f-7816856a409b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '4770fb4e-d669-44fb-b1e0-542f8c732ad3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '4770fb4e-d669-44fb-b1e0-542f8c732ad3');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '63c672d8-d145-4abc-9e27-2cc90ecd5ad3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e44126ca-5cab-4ab8-a5af-d94015cb4574');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '34720296-89d5-4b14-a260-d6938e200b75');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '1752adea-c476-421d-bc79-37c2757573f7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '882c9059-a1a8-4ef8-a094-e43c916159e0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '78703dfc-7071-45ce-b81a-5ca4b9d838d7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '7e8f0cc6-6211-4426-b3ba-7b7d2847824e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd5dc2de8-4e37-479b-a6ce-e4d02ee090ac');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'a914ffbe-6a08-45dc-90b4-f85652b2ea37');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '173291ee-c979-4e3e-865c-e3dd8fb43841');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '97e55d4d-a64f-4456-84b9-e5bf26a78fc6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '441e5385-b24d-44c6-9960-537733c47ec5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9a71da86-de88-4d71-a865-7094af8140af');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9be6775c-b2d1-402b-ab26-0bb3f13f25c0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd2c135d4-da39-4024-a20d-0f02997e4eae');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'eae8cec4-219f-4207-a610-da8eab16d3a5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '24c83ef5-ddec-47dc-a271-1a4a5291528f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'f638df9e-8987-4094-bac3-b3d1263c21b6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '8969aed7-d29d-4dc6-afdb-b1ae3c71f059');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9dceca32-07f1-4e13-87e7-7f87827f2829');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '1c73122e-de0a-4194-af45-16bc9571a370');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9b7f6140-b62a-4a7c-8bb0-4024d76a596c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'a7aa6fb0-9617-4652-b61d-7b962719633c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'fd013e36-a58a-4dba-bf2d-80c5644d7793');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'bbbbbf2b-7e6b-48eb-951c-cbe2f08285f4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '347dc0e9-baab-449c-af82-8708e893d355');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '51d52295-1211-4489-9af0-e4ac8ae71e4c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9f48c329-a7bf-4899-ab2d-efcc7e0a90bf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '93085582-7cf7-45ec-8cb3-5db31a343bd4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '4cb2e341-cb70-4ac9-a516-ee4e9cb8def8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'a7a47190-ec3e-4e28-bdcc-94e179ac182a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'da1f29ec-07cc-4e1c-87c7-ba2d1be95861');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'f6ffc404-c067-4cf6-9265-23eebc4660d7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e5129a9a-cad0-4223-8892-3fe2a130a938');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '2c1903da-fbaf-4f7a-92ea-1524b0557004');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '02c5af7e-47f8-4a55-bed3-95592bf3ff35');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '3ed9fc1b-b3b0-4625-b529-d034f4c63100');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '78f850df-7cf1-4ca0-93ab-0f5fe21f0a81');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '3d658dfc-ef7e-464a-81b7-01bdb32a75e8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'fb98dd23-69e8-4c46-bbb4-bd6c4e9dd207');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9276f5e8-e324-44b0-b4d0-181d4808e10d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '4ef79156-1f1a-41ec-9663-82a805ed18b3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '15287e1a-d651-4e8f-a0e8-58b0d9e35ab1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '387a0531-836a-4c8d-b08c-fb8852fbc703');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e1636599-b1a8-40bb-9240-484ab24d868e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '1f4e9606-e847-4282-ab56-cad092d40691');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e73f8f85-32d5-43de-b0cb-bed0a8d924ab');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '52c2626c-5a52-4291-a596-76aee928c296');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '15abac65-9015-432e-9e8c-31bb2358c5b7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'c79fa381-394f-4e04-821f-ef18c2a7a0bb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e18c7126-d728-4630-b9e7-0667129211ec');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'daf77245-add8-4175-92b6-e5122e8d10da');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'c7b69c04-455c-4798-b7a3-2f0cebbcb626');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '40f2b4d9-1e6e-48f4-bf76-a49a8d774fcd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '7334a4b9-1735-48c9-9224-04d8acf1034b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'ea5e2158-1bd4-48b5-81b7-442fb0c67dd9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'a5bbdde1-b24d-4ee1-a941-f42fdb149180');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '7bef8cf1-e6ea-4053-a35a-cb498ed37e45');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd917bce5-e037-40ca-acd5-d06875ac1e56');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd0cd6269-276e-451a-a01c-960d8936d938');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '8c8e47f0-a93a-4bab-b461-cdf2aae97c1b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '0c320bc7-1f7a-4a3e-bc31-3448750ca777');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e0e98584-e324-43e7-9663-ffd423343722');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '043d7f3b-d1c7-4ca9-8a96-123499229f6b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '9c12d15c-baa3-49c7-8260-1d63eeae4c81');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '8f78b6cf-6825-41c5-8d58-197f6e156d1c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'c49be00a-40c8-49bc-b888-64f8206d4ee9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'bf673d34-9790-49be-85db-3ccb2f0bd2d0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '0f838ee3-4be6-469c-ac63-7b1fedf49ddc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'c8c0783c-20e0-41af-bf48-6e957d5bdc60');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'ce0f311c-c490-4f86-ba6b-acf277a6fe6b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '138837bc-3e49-4225-b2ff-47e8a0bf41c1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'b2647f20-eb4c-4bf8-9060-fbe02ad37041');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '99d493f3-6a4f-42e6-b06e-3ee6decd2461');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e25f1b41-0bb4-421e-9213-9174070073d8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '439addcc-eff3-4213-af05-30d4e9c9b050');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '72966380-43bd-49d5-8569-123ba36acbab');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e206b680-d076-413b-be57-026b50f48989');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '85f5c213-753a-4771-8c25-c9e49e08c9d1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '1348db68-7733-4411-87b6-fe3cc51fead5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '81ae77f8-1ed2-4a81-8f2d-194232ff5671');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '97e7324f-0d09-4731-8fc1-d928452eb152');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '3041683d-7eed-4f27-b92a-44c1dda8362c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '82ccb696-c786-41d6-bf8b-0f153dcecad7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '16a7246f-968a-47b2-9880-53058857321a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'f4121b66-2b4d-40da-bc86-a2671d8bcff7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '8ccdea8d-d558-43e5-813e-2e260f33c453');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e93bd823-7f5e-4d62-9a87-00649d64b989');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '66eb7494-1c10-4769-b454-c0d38f43a7fd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'eeb20c86-98fe-4e9d-b7f0-22add005daa5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '17d867fa-6278-40e1-b12d-2887c4ba7817');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '33b279e8-a69a-4798-bb17-f0739f556347');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '8c11c8d9-40aa-484b-9349-ac5a5df26007');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'ed633d48-1c2f-4f88-adc3-8ae93dcb31d3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '56c623c0-a5a9-4f7f-9b65-80175d0b48d5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'd30ee894-7ab6-4266-9f07-bf36d31175bd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '6794f7cc-6e3d-4334-aa63-95c124c74937');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'e7063598-4614-4b86-94a4-dd07b85c4140');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '97f56478-9db7-4818-8a89-55201baf5220');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'ec7f6a38-d67c-4409-9e33-a0b2c1fe4980');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '31d12551-bd12-4e0d-8be4-fddf4800347a');


--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '698d857c-175e-4357-a106-79941fd1311a');


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'a4afbe80-eb02-42e3-b5b5-bfca96e7adf3');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '2a0df78d-3beb-4df5-aba5-4dca80204e7e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '3186172e-41e3-4172-b2ac-529a66ad760b');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '79a17159-6e30-4b98-85e3-a3df65fe932a');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '8e7ec0db-8136-4efa-a503-36cc200d90d2');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '11c0f459-6cf1-4fb5-ac7a-50f5e250232f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', 'b4a16b3b-f129-457f-b979-4cee3cf8f0da');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '81f16b84-19f3-4e94-814f-7816856a409b');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('23b2ae54-1bca-48bb-bcb8-2a78a6be2521', '4770fb4e-d669-44fb-b1e0-542f8c732ad3');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '63c672d8-d145-4abc-9e27-2cc90ecd5ad3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '63c672d8-d145-4abc-9e27-2cc90ecd5ad3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'e44126ca-5cab-4ab8-a5af-d94015cb4574');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'e44126ca-5cab-4ab8-a5af-d94015cb4574');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '34720296-89d5-4b14-a260-d6938e200b75');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '34720296-89d5-4b14-a260-d6938e200b75');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '1752adea-c476-421d-bc79-37c2757573f7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '1752adea-c476-421d-bc79-37c2757573f7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '882c9059-a1a8-4ef8-a094-e43c916159e0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '882c9059-a1a8-4ef8-a094-e43c916159e0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '78703dfc-7071-45ce-b81a-5ca4b9d838d7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '78703dfc-7071-45ce-b81a-5ca4b9d838d7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '7e8f0cc6-6211-4426-b3ba-7b7d2847824e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '7e8f0cc6-6211-4426-b3ba-7b7d2847824e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'd5dc2de8-4e37-479b-a6ce-e4d02ee090ac');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'd5dc2de8-4e37-479b-a6ce-e4d02ee090ac');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'a914ffbe-6a08-45dc-90b4-f85652b2ea37');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'a914ffbe-6a08-45dc-90b4-f85652b2ea37');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '173291ee-c979-4e3e-865c-e3dd8fb43841');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '173291ee-c979-4e3e-865c-e3dd8fb43841');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '97e55d4d-a64f-4456-84b9-e5bf26a78fc6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '97e55d4d-a64f-4456-84b9-e5bf26a78fc6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '441e5385-b24d-44c6-9960-537733c47ec5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '441e5385-b24d-44c6-9960-537733c47ec5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '9a71da86-de88-4d71-a865-7094af8140af');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '9a71da86-de88-4d71-a865-7094af8140af');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '9be6775c-b2d1-402b-ab26-0bb3f13f25c0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '9be6775c-b2d1-402b-ab26-0bb3f13f25c0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'd2c135d4-da39-4024-a20d-0f02997e4eae');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'd2c135d4-da39-4024-a20d-0f02997e4eae');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'eae8cec4-219f-4207-a610-da8eab16d3a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'eae8cec4-219f-4207-a610-da8eab16d3a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '24c83ef5-ddec-47dc-a271-1a4a5291528f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '24c83ef5-ddec-47dc-a271-1a4a5291528f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'f638df9e-8987-4094-bac3-b3d1263c21b6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'f638df9e-8987-4094-bac3-b3d1263c21b6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '8969aed7-d29d-4dc6-afdb-b1ae3c71f059');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '8969aed7-d29d-4dc6-afdb-b1ae3c71f059');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '9dceca32-07f1-4e13-87e7-7f87827f2829');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '9dceca32-07f1-4e13-87e7-7f87827f2829');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '1c73122e-de0a-4194-af45-16bc9571a370');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '1c73122e-de0a-4194-af45-16bc9571a370');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '9b7f6140-b62a-4a7c-8bb0-4024d76a596c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '9b7f6140-b62a-4a7c-8bb0-4024d76a596c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'a7aa6fb0-9617-4652-b61d-7b962719633c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'a7aa6fb0-9617-4652-b61d-7b962719633c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', 'fd013e36-a58a-4dba-bf2d-80c5644d7793');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'fd013e36-a58a-4dba-bf2d-80c5644d7793');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'bbbbbf2b-7e6b-48eb-951c-cbe2f08285f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'bbbbbf2b-7e6b-48eb-951c-cbe2f08285f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '347dc0e9-baab-449c-af82-8708e893d355');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '347dc0e9-baab-449c-af82-8708e893d355');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '51d52295-1211-4489-9af0-e4ac8ae71e4c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '51d52295-1211-4489-9af0-e4ac8ae71e4c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '9f48c329-a7bf-4899-ab2d-efcc7e0a90bf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '9f48c329-a7bf-4899-ab2d-efcc7e0a90bf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '93085582-7cf7-45ec-8cb3-5db31a343bd4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '93085582-7cf7-45ec-8cb3-5db31a343bd4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '4cb2e341-cb70-4ac9-a516-ee4e9cb8def8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '4cb2e341-cb70-4ac9-a516-ee4e9cb8def8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'a7a47190-ec3e-4e28-bdcc-94e179ac182a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'a7a47190-ec3e-4e28-bdcc-94e179ac182a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'da1f29ec-07cc-4e1c-87c7-ba2d1be95861');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'da1f29ec-07cc-4e1c-87c7-ba2d1be95861');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'f6ffc404-c067-4cf6-9265-23eebc4660d7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'f6ffc404-c067-4cf6-9265-23eebc4660d7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'e5129a9a-cad0-4223-8892-3fe2a130a938');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'e5129a9a-cad0-4223-8892-3fe2a130a938');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '2c1903da-fbaf-4f7a-92ea-1524b0557004');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '2c1903da-fbaf-4f7a-92ea-1524b0557004');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '02c5af7e-47f8-4a55-bed3-95592bf3ff35');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '02c5af7e-47f8-4a55-bed3-95592bf3ff35');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '3ed9fc1b-b3b0-4625-b529-d034f4c63100');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '3ed9fc1b-b3b0-4625-b529-d034f4c63100');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '78f850df-7cf1-4ca0-93ab-0f5fe21f0a81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '78f850df-7cf1-4ca0-93ab-0f5fe21f0a81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '3d658dfc-ef7e-464a-81b7-01bdb32a75e8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '3d658dfc-ef7e-464a-81b7-01bdb32a75e8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'fb98dd23-69e8-4c46-bbb4-bd6c4e9dd207');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'fb98dd23-69e8-4c46-bbb4-bd6c4e9dd207');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '9276f5e8-e324-44b0-b4d0-181d4808e10d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '9276f5e8-e324-44b0-b4d0-181d4808e10d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '4ef79156-1f1a-41ec-9663-82a805ed18b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '4ef79156-1f1a-41ec-9663-82a805ed18b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '15287e1a-d651-4e8f-a0e8-58b0d9e35ab1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '15287e1a-d651-4e8f-a0e8-58b0d9e35ab1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '387a0531-836a-4c8d-b08c-fb8852fbc703');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '387a0531-836a-4c8d-b08c-fb8852fbc703');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'e1636599-b1a8-40bb-9240-484ab24d868e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'e1636599-b1a8-40bb-9240-484ab24d868e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '1f4e9606-e847-4282-ab56-cad092d40691');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '1f4e9606-e847-4282-ab56-cad092d40691');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'e73f8f85-32d5-43de-b0cb-bed0a8d924ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'e73f8f85-32d5-43de-b0cb-bed0a8d924ab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '52c2626c-5a52-4291-a596-76aee928c296');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '52c2626c-5a52-4291-a596-76aee928c296');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '15abac65-9015-432e-9e8c-31bb2358c5b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '15abac65-9015-432e-9e8c-31bb2358c5b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'c79fa381-394f-4e04-821f-ef18c2a7a0bb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'c79fa381-394f-4e04-821f-ef18c2a7a0bb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'e18c7126-d728-4630-b9e7-0667129211ec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'e18c7126-d728-4630-b9e7-0667129211ec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'daf77245-add8-4175-92b6-e5122e8d10da');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'daf77245-add8-4175-92b6-e5122e8d10da');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'c7b69c04-455c-4798-b7a3-2f0cebbcb626');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'c7b69c04-455c-4798-b7a3-2f0cebbcb626');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '40f2b4d9-1e6e-48f4-bf76-a49a8d774fcd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '40f2b4d9-1e6e-48f4-bf76-a49a8d774fcd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', '7334a4b9-1735-48c9-9224-04d8acf1034b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '7334a4b9-1735-48c9-9224-04d8acf1034b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'ea5e2158-1bd4-48b5-81b7-442fb0c67dd9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'ea5e2158-1bd4-48b5-81b7-442fb0c67dd9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('f9a57abb-c12f-446f-9919-f1b4ab72b7a7', 'a5bbdde1-b24d-4ee1-a941-f42fdb149180');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'a5bbdde1-b24d-4ee1-a941-f42fdb149180');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '7bef8cf1-e6ea-4053-a35a-cb498ed37e45');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '7bef8cf1-e6ea-4053-a35a-cb498ed37e45');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'd917bce5-e037-40ca-acd5-d06875ac1e56');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'd917bce5-e037-40ca-acd5-d06875ac1e56');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'd0cd6269-276e-451a-a01c-960d8936d938');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'd0cd6269-276e-451a-a01c-960d8936d938');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '8c8e47f0-a93a-4bab-b461-cdf2aae97c1b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '8c8e47f0-a93a-4bab-b461-cdf2aae97c1b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '0c320bc7-1f7a-4a3e-bc31-3448750ca777');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '0c320bc7-1f7a-4a3e-bc31-3448750ca777');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'e0e98584-e324-43e7-9663-ffd423343722');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'e0e98584-e324-43e7-9663-ffd423343722');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '043d7f3b-d1c7-4ca9-8a96-123499229f6b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '043d7f3b-d1c7-4ca9-8a96-123499229f6b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '9c12d15c-baa3-49c7-8260-1d63eeae4c81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '9c12d15c-baa3-49c7-8260-1d63eeae4c81');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', '8f78b6cf-6825-41c5-8d58-197f6e156d1c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', '8f78b6cf-6825-41c5-8d58-197f6e156d1c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'c49be00a-40c8-49bc-b888-64f8206d4ee9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'c49be00a-40c8-49bc-b888-64f8206d4ee9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('6ee56c89-1608-4c52-aa2b-1b4a72b34392', 'bf673d34-9790-49be-85db-3ccb2f0bd2d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e9863384-39cb-4c97-9e58-66348cf29025', 'bf673d34-9790-49be-85db-3ccb2f0bd2d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '17d867fa-6278-40e1-b12d-2887c4ba7817');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '17d867fa-6278-40e1-b12d-2887c4ba7817');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '33b279e8-a69a-4798-bb17-f0739f556347');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '33b279e8-a69a-4798-bb17-f0739f556347');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '8c11c8d9-40aa-484b-9349-ac5a5df26007');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '8c11c8d9-40aa-484b-9349-ac5a5df26007');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'ed633d48-1c2f-4f88-adc3-8ae93dcb31d3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'ed633d48-1c2f-4f88-adc3-8ae93dcb31d3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '56c623c0-a5a9-4f7f-9b65-80175d0b48d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '56c623c0-a5a9-4f7f-9b65-80175d0b48d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'd30ee894-7ab6-4266-9f07-bf36d31175bd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'd30ee894-7ab6-4266-9f07-bf36d31175bd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '6794f7cc-6e3d-4334-aa63-95c124c74937');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '6794f7cc-6e3d-4334-aa63-95c124c74937');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '0f838ee3-4be6-469c-ac63-7b1fedf49ddc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '0f838ee3-4be6-469c-ac63-7b1fedf49ddc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'c8c0783c-20e0-41af-bf48-6e957d5bdc60');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'c8c0783c-20e0-41af-bf48-6e957d5bdc60');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'ce0f311c-c490-4f86-ba6b-acf277a6fe6b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'ce0f311c-c490-4f86-ba6b-acf277a6fe6b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '138837bc-3e49-4225-b2ff-47e8a0bf41c1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '138837bc-3e49-4225-b2ff-47e8a0bf41c1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'b2647f20-eb4c-4bf8-9060-fbe02ad37041');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'b2647f20-eb4c-4bf8-9060-fbe02ad37041');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '99d493f3-6a4f-42e6-b06e-3ee6decd2461');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '99d493f3-6a4f-42e6-b06e-3ee6decd2461');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'e25f1b41-0bb4-421e-9213-9174070073d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'e25f1b41-0bb4-421e-9213-9174070073d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '439addcc-eff3-4213-af05-30d4e9c9b050');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '439addcc-eff3-4213-af05-30d4e9c9b050');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '72966380-43bd-49d5-8569-123ba36acbab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '72966380-43bd-49d5-8569-123ba36acbab');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'e206b680-d076-413b-be57-026b50f48989');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'e206b680-d076-413b-be57-026b50f48989');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '85f5c213-753a-4771-8c25-c9e49e08c9d1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '85f5c213-753a-4771-8c25-c9e49e08c9d1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '1348db68-7733-4411-87b6-fe3cc51fead5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '1348db68-7733-4411-87b6-fe3cc51fead5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '81ae77f8-1ed2-4a81-8f2d-194232ff5671');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '81ae77f8-1ed2-4a81-8f2d-194232ff5671');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '97e7324f-0d09-4731-8fc1-d928452eb152');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '97e7324f-0d09-4731-8fc1-d928452eb152');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '3041683d-7eed-4f27-b92a-44c1dda8362c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '3041683d-7eed-4f27-b92a-44c1dda8362c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '82ccb696-c786-41d6-bf8b-0f153dcecad7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '82ccb696-c786-41d6-bf8b-0f153dcecad7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '16a7246f-968a-47b2-9880-53058857321a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '16a7246f-968a-47b2-9880-53058857321a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'f4121b66-2b4d-40da-bc86-a2671d8bcff7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'f4121b66-2b4d-40da-bc86-a2671d8bcff7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '8ccdea8d-d558-43e5-813e-2e260f33c453');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '8ccdea8d-d558-43e5-813e-2e260f33c453');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'e93bd823-7f5e-4d62-9a87-00649d64b989');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'e93bd823-7f5e-4d62-9a87-00649d64b989');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '66eb7494-1c10-4769-b454-c0d38f43a7fd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '66eb7494-1c10-4769-b454-c0d38f43a7fd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'eeb20c86-98fe-4e9d-b7f0-22add005daa5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'eeb20c86-98fe-4e9d-b7f0-22add005daa5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'e7063598-4614-4b86-94a4-dd07b85c4140');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'e7063598-4614-4b86-94a4-dd07b85c4140');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '97f56478-9db7-4818-8a89-55201baf5220');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '97f56478-9db7-4818-8a89-55201baf5220');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'ec7f6a38-d67c-4409-9e33-a0b2c1fe4980');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', 'ec7f6a38-d67c-4409-9e33-a0b2c1fe4980');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '31d12551-bd12-4e0d-8be4-fddf4800347a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('b37a1086-0e67-47cf-8bb4-ec3929d66d81', '31d12551-bd12-4e0d-8be4-fddf4800347a');


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

