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

INSERT INTO public."Event" (id, name, "isActive", "isFinished", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "isGroupMatchesFinished") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'Get Rio', false, false, '2024-06-20 03:00:00', '2024-06-23 03:00:00', 60, 7, 16, 'GROUPS', 'SUPERSET', true);


--
-- Data for Name: CategoryGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('9719159d-05d0-42b8-b642-32b9b10ac2c2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, false);
INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('f82f969c-01f8-4b92-b1b2-0a526a673ece', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', true);


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

INSERT INTO public."Double" (id, "categoryId") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: DoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('2403d4e0-31de-4ed2-b035-0b10022af50a', 'A', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL, false);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('82f6e522-58eb-49de-b14a-1fbf862a8d0b', 'B', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL, false);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('7de4f513-9a98-4df6-bfdf-644bcf1b9a5d', 'C', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL, false);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('52a604b7-7a4a-4511-bb16-cd7cfe6aeeed', 'A', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('5818450b-3193-4543-abd4-0a9d9f6700be', 'B', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '5d2f83ef-6305-49c6-a144-98f1a3afc853', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('b3307464-609b-406e-837c-838e863c9209', 'C', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', true);


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5e6085d3-763d-466f-9e07-72d98f88aecc', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('ff0b5606-f2ab-4873-8005-301352788a90', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('77b8fdaf-369f-452b-ab17-21385f81c6be', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'd795dfcc-e99e-48b4-81d8-a35036b91727', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('50f301c2-40c4-4a97-8316-e2f50faa4d20', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('1f0c5f8f-b316-4ccc-a886-f2863f29a140', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('55ac157e-dd2a-4e9e-88e4-86014ea1fbc7', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('63c06fa9-2094-4849-b27f-205435d55a71', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('9155af7c-e0fd-45ee-a8a2-48acb577aae2', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('f98b9fd0-34ba-4344-a6c6-8f3aa3aea907', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('34a97393-2cc1-4811-9aee-349938e479c1', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5b663550-a7be-427c-b9a4-8867600651c1', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('af899ace-28c6-4b89-9e20-52153bb7071c', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('d4c39175-e025-4f6e-aceb-d2471aedc2b6', false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '52a604b7-7a4a-4511-bb16-cd7cfe6aeeed');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '5818450b-3193-4543-abd4-0a9d9f6700be');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'b3307464-609b-406e-837c-838e863c9209');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '52a604b7-7a4a-4511-bb16-cd7cfe6aeeed');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e6261a9e-4d15-4995-a514-d8df757977f3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '5818450b-3193-4543-abd4-0a9d9f6700be');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'b3307464-609b-406e-837c-838e863c9209');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd795dfcc-e99e-48b4-81d8-a35036b91727', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '52a604b7-7a4a-4511-bb16-cd7cfe6aeeed');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '5818450b-3193-4543-abd4-0a9d9f6700be');


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (1, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5e6085d3-763d-466f-9e07-72d98f88aecc', NULL, '52a604b7-7a4a-4511-bb16-cd7cfe6aeeed');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (2, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ff0b5606-f2ab-4873-8005-301352788a90', NULL, '52a604b7-7a4a-4511-bb16-cd7cfe6aeeed');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (3, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '77b8fdaf-369f-452b-ab17-21385f81c6be', NULL, '52a604b7-7a4a-4511-bb16-cd7cfe6aeeed');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (4, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '50f301c2-40c4-4a97-8316-e2f50faa4d20', NULL, '5818450b-3193-4543-abd4-0a9d9f6700be');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (5, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1f0c5f8f-b316-4ccc-a886-f2863f29a140', NULL, '5818450b-3193-4543-abd4-0a9d9f6700be');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (6, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '55ac157e-dd2a-4e9e-88e4-86014ea1fbc7', NULL, '5818450b-3193-4543-abd4-0a9d9f6700be');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (7, 'GROUP', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '63c06fa9-2094-4849-b27f-205435d55a71', NULL, 'b3307464-609b-406e-837c-838e863c9209');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (8, 'ROUND_OF_8', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '9155af7c-e0fd-45ee-a8a2-48acb577aae2', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (9, 'ROUND_OF_8', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f98b9fd0-34ba-4344-a6c6-8f3aa3aea907', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (10, 'ROUND_OF_8', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '34a97393-2cc1-4811-9aee-349938e479c1', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (11, 'ROUND_OF_8', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5b663550-a7be-427c-b9a4-8867600651c1', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (12, 'ROUND_OF_4', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'af899ace-28c6-4b89-9e20-52153bb7071c', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (13, 'ROUND_OF_4', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (14, 'FINAL', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd4c39175-e025-4f6e-aceb-d2471aedc2b6', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', NULL);


--
-- Data for Name: EventRequest; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('d8d740cc-3613-48c5-82c7-018546f4a990', 'SUPER', 1, 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9x2', '5e6085d3-763d-466f-9e07-72d98f88aecc', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('327cd12b-d638-4812-8e5a-292648a4e391', 'SUPER', 1, '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9x2', 'ff0b5606-f2ab-4873-8005-301352788a90', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'SUPER', 1, 'd795dfcc-e99e-48b4-81d8-a35036b91727', '2x9', '77b8fdaf-369f-452b-ab17-21385f81c6be', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('6237522e-55ec-44e2-9897-5b182b5bcd22', 'SUPER', 1, '5d2f83ef-6305-49c6-a144-98f1a3afc853', '2x9', '50f301c2-40c4-4a97-8316-e2f50faa4d20', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('6a29ee38-5953-41c1-8df3-7ec2da67288d', 'SUPER', 1, 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '2x9', '1f0c5f8f-b316-4ccc-a886-f2863f29a140', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ef2081b0-4caf-4cc1-94a5-b886549350f8', 'SUPER', 1, 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '2x9', '55ac157e-dd2a-4e9e-88e4-86014ea1fbc7', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('7019a7d2-4803-4161-809c-61e27bf2f1ef', 'SUPER', 1, '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2x9', '63c06fa9-2094-4849-b27f-205435d55a71', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0793e12d-f5f3-463e-a49f-4e4e38a97cb6', 'SUPER', 1, NULL, NULL, '9155af7c-e0fd-45ee-a8a2-48acb577aae2', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('9e05398e-a300-4e80-ba34-db8dc8d4586f', 'SUPER', 1, NULL, NULL, 'f98b9fd0-34ba-4344-a6c6-8f3aa3aea907', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('fa73a839-6a83-4c11-b253-63118f2600d9', 'SUPER', 1, NULL, NULL, '34a97393-2cc1-4811-9aee-349938e479c1', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('f61df9c3-fd25-437d-990d-8533226b4791', 'SUPER', 1, NULL, NULL, '5b663550-a7be-427c-b9a4-8867600651c1', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'SUPER', 1, NULL, NULL, 'af899ace-28c6-4b89-9e20-52153bb7071c', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('7b0c8284-786d-4697-a30a-7c8b19747a83', 'SUPER', 1, NULL, NULL, 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'SUPER', 1, NULL, NULL, 'd4c39175-e025-4f6e-aceb-d2471aedc2b6', false);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('da695d7c-24f9-42c7-b6e1-6228a9470deb', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('711f5b12-e0bf-47b6-a8ee-706de9b800d8', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6ed6e131-ad37-48ee-84bd-2c314aee7b20', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5eef61d0-7b26-48cf-a538-18b77fc92b2d', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e999a319-daac-4e31-9e67-f76698e614fa', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1b464eb5-79d4-466c-8fc6-238fb085f208', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e1b2f68e-abee-4337-bbce-133af15bf9ca', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8c897911-6e32-42dd-aafb-03c311d2fd25', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('16725731-506d-45a6-ad01-ee6b13bc396d', 'd8d740cc-3613-48c5-82c7-018546f4a990', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4bd975d7-de18-42bd-b21f-8884b1b2df10', 'd8d740cc-3613-48c5-82c7-018546f4a990', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9a573703-3433-4b37-9288-ccbf786fd3f4', 'd8d740cc-3613-48c5-82c7-018546f4a990', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8592476b-4b4b-440e-95ec-466807bc1db0', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b8b0ae9a-4075-493e-80e2-ae428e6977c9', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('42382963-8f1f-4a62-89ef-0786d56957ed', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e010d26b-7752-4453-b076-eeb5ab742d80', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('37f40155-4889-431c-b162-a0b8d3f726d0', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d5c7baa0-a785-4d08-ab3d-71719ad9ad4d', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6adeeddf-8c20-483e-b6ca-d5c9b2655ada', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cdc08ebe-feac-4bc1-aba8-f5fc925bf55d', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('61d90a20-8519-4c7c-b049-853a7eec9934', '327cd12b-d638-4812-8e5a-292648a4e391', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('832214d8-a51b-4255-8e84-5f729918a5b0', '327cd12b-d638-4812-8e5a-292648a4e391', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4098a6e1-5c0a-42de-a0cf-b8ff5f11047d', '327cd12b-d638-4812-8e5a-292648a4e391', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c38511b5-318b-43c6-a869-e3d10e60c5cf', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('092048d7-199b-4971-a6a2-c6985df65388', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5acf3709-448e-4a37-954b-6558c4c11045', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c26873ed-323c-47af-9965-b9e18403fd76', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('93809071-4024-4921-93f7-52a3dc8adf0c', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2bd879de-ecf6-4253-b9e6-c855c303f587', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('601bb9f2-2cd0-4f5a-88c7-e88afe4e3a39', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('908f568b-7d91-427d-8881-56c3074b3029', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f27be900-418c-42b7-8e45-50fde489f83e', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('19d210f7-ff20-4d18-ac01-6b437bc1405a', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b39318d2-dffb-4610-841d-8a847024bd6e', '80bb5cdc-c0df-47b6-93dd-4e41034d286d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fe84ce56-aec4-44fe-abeb-bdc5b93701b5', '6237522e-55ec-44e2-9897-5b182b5bcd22', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f80476f7-e79e-4606-9d23-a761ea547a1f', '6237522e-55ec-44e2-9897-5b182b5bcd22', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('40bbe85c-0ffa-41d2-8743-e5ab8530950f', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2ca0e6d9-0695-46b8-8f70-b45ceda7f3e1', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('403d047f-e370-4cf6-b602-6aeea4c78da7', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8d2bd54c-8a4a-4246-8c0d-ec5de4da31b7', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('dc71795b-5957-4a10-9684-c397dae2309c', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('22006b0e-4db3-49c3-90d2-22220b03b617', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ff519bfd-5b1b-42cf-8f71-2aeda090a0e2', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('612aec4b-ed48-4523-8a24-7c95172b8297', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2a09d74a-844c-4829-ae2b-a1afbfc41d23', '6237522e-55ec-44e2-9897-5b182b5bcd22', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c100d960-24cc-4533-a8fa-4bc96c479d89', '6a29ee38-5953-41c1-8df3-7ec2da67288d', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f7504b9a-a02a-42c7-8d75-921baea98f6d', '6a29ee38-5953-41c1-8df3-7ec2da67288d', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9524ca2a-fd36-4a2a-be20-214251dab679', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('02e03cbf-ecad-421d-bb4c-d73d85fa1d12', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f20b8b54-e264-4366-b57b-086bd84cd485', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b22bdcd5-6931-4aa8-b0b0-76a028f89296', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a4dde6d4-4802-4636-aca2-45156f033854', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bacd6f00-b04a-4eaf-9c10-84090339e786', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a11b4ad1-0427-4a3a-952e-3b0703394817', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('68a2f37e-557c-4e2f-bc25-dac7eee1f776', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('73569795-5b5b-40cf-b7a2-33427a01f4c8', '6a29ee38-5953-41c1-8df3-7ec2da67288d', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e1c77aa5-afc5-49b4-a314-d9c98ef56358', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c989e390-db31-4f0a-804b-e2fd2a28d6b0', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fb0a9b1-8f49-4910-9cd9-c11eec4ef063', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8d56546b-fabe-46ec-8a8e-c49acb376764', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4a72a4f3-17ca-4dad-a46d-a3eaaa286970', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c377b2aa-7ff6-4c9e-ac7c-a3c9a4920868', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b7e5f194-c66c-44e3-bca3-431d5cfae8d5', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('85c88182-dd5e-468f-a026-d77f9f729795', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5c37c0cf-33b2-45d5-87eb-d4a49116a9f8', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('21feb8ae-474d-4812-bfff-2302be5c763d', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('38fd0b65-5ab6-4bd6-b670-36ac649f8db5', 'ef2081b0-4caf-4cc1-94a5-b886549350f8', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7a04c38e-efde-4147-a3b0-09a3109c4a0e', '7019a7d2-4803-4161-809c-61e27bf2f1ef', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('972aa78d-cb9a-4f8b-8d66-00e88b86e907', '7019a7d2-4803-4161-809c-61e27bf2f1ef', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('63a0e0eb-688e-41b4-8859-a94048f8c6f5', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8a36fd5f-ec6c-4142-b800-81a110bbd353', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('36fb569f-c28d-48ce-bbdf-885cbfb60c51', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ab9e2bad-9e01-41c5-ae8f-f3baf560401b', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('154960cd-913d-4d24-8fd0-aaa6c0220322', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a38ab7cd-c873-4d37-b07a-9c6bb72b180f', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3904245c-8a48-4e49-b5a4-7d6fda4eb905', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c66b8162-d355-4881-b2ab-3715a880e045', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('eedbcc37-8054-47dc-bc47-2a31cfaba573', '7019a7d2-4803-4161-809c-61e27bf2f1ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');


--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchesReferenced; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('9155af7c-e0fd-45ee-a8a2-48acb577aae2', '34a97393-2cc1-4811-9aee-349938e479c1', 'af899ace-28c6-4b89-9e20-52153bb7071c', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', false);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('f98b9fd0-34ba-4344-a6c6-8f3aa3aea907', '5b663550-a7be-427c-b9a4-8867600651c1', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', false);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('af899ace-28c6-4b89-9e20-52153bb7071c', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', 'd4c39175-e025-4f6e-aceb-d2471aedc2b6', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', false);


--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('febcf9e1-125e-45df-83ee-f4e931aba78a', 'Arthur', 'Peruzzo', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('71bcb34b-fc7a-41f0-9783-a1aa967731b9', 'Medusa', 'Pluma', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('9d921a56-897f-4612-99bc-48f92655d099', 'Mari', 'Querida', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('d3c84903-d511-43b8-87cb-ab116ca9ff57', 'Guel', 'de Dios', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('c556a078-8fd8-464c-bfe7-114dee52ba95', 'Joao', 'Plasticat', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('6964f99d-d894-471a-81ef-a833bb48afa9', 'Xu', 'Xu', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('dfeb396b-3c1c-4ec7-ba40-8628e041ef76', 'O', 'Artista', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('c3749c50-93b1-40f9-ae57-4261416c4805', 'Genesi', 'Hermaf', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('967f1ab1-057a-4837-baa8-a7f44efc1a94', 'P1', 'P2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('9fca2071-2b82-4a47-acdd-7aa734409634', 'P2', 'P2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('466f9402-5dec-428c-bf39-26be954b08a6', 'P', '3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('6020cb23-51f8-4b23-bef1-466ba5b2e4c5', 'P', '4', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('c1a6e1e3-c406-41a6-9925-08050e058e59', 'L', 'Timoto', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('ba6e6f34-85af-4659-a8f9-68ee0902a77d', 'J', 'DC', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('be763c15-14b2-407c-940c-6800d957cae2', 'Mercedita', 'Incansable', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('7d8be5c9-8564-4e37-8599-ea28174d88b7', 'Marley', 'Cevpranos', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('de74aac5-f63d-4692-9397-51d9ef929aaf', 'Joao', 'Plasticat', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$tjIW42DkC2AmWSUPoEyDNg$sV1vkoCJMyiYbzjH955YuJLf1TLpduGQp4prdRhv5tM', '2019-06-20 03:00:00', '2024-06-17 15:19:50.904', '2024-06-17 15:20:21.208', 'c556a078-8fd8-464c-bfe7-114dee52ba95', 'USER', NULL, NULL);
INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('cf63ccbe-87da-49f9-95e4-e10155d30b0e', 'Arthur', 'Peruzzo', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$m3I3JLNHFtEeN//0vmm/kw$W9I0JZIyhxhclKBnkRwuibuMY+d7ctDz5KXXiwiFaPU', '1991-12-21 02:00:00', '2024-06-17 15:17:00.599', '2024-06-17 15:20:23.24', 'febcf9e1-125e-45df-83ee-f4e931aba78a', 'ADMIN', '$argon2id$v=19$m=65536,t=3,p=4$kbTXga3cfoHjwv+XXOMONA$mu32Gq9hEp1pePNy80nvyW2FN26NWNhtqSsxcRjb9qo', NULL);


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '5e6085d3-763d-466f-9e07-72d98f88aecc');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '5e6085d3-763d-466f-9e07-72d98f88aecc');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'ff0b5606-f2ab-4873-8005-301352788a90');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'ff0b5606-f2ab-4873-8005-301352788a90');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '77b8fdaf-369f-452b-ab17-21385f81c6be');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '77b8fdaf-369f-452b-ab17-21385f81c6be');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '50f301c2-40c4-4a97-8316-e2f50faa4d20');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '50f301c2-40c4-4a97-8316-e2f50faa4d20');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '1f0c5f8f-b316-4ccc-a886-f2863f29a140');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1f0c5f8f-b316-4ccc-a886-f2863f29a140');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '55ac157e-dd2a-4e9e-88e4-86014ea1fbc7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '55ac157e-dd2a-4e9e-88e4-86014ea1fbc7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '63c06fa9-2094-4849-b27f-205435d55a71');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '63c06fa9-2094-4849-b27f-205435d55a71');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9155af7c-e0fd-45ee-a8a2-48acb577aae2');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'f98b9fd0-34ba-4344-a6c6-8f3aa3aea907');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '34a97393-2cc1-4811-9aee-349938e479c1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '34a97393-2cc1-4811-9aee-349938e479c1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '5b663550-a7be-427c-b9a4-8867600651c1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '5b663550-a7be-427c-b9a4-8867600651c1');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'febcf9e1-125e-45df-83ee-f4e931aba78a');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6964f99d-d894-471a-81ef-a833bb48afa9');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '71bcb34b-fc7a-41f0-9783-a1aa967731b9');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '9d921a56-897f-4612-99bc-48f92655d099');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'd3c84903-d511-43b8-87cb-ab116ca9ff57');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'c556a078-8fd8-464c-bfe7-114dee52ba95');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'dfeb396b-3c1c-4ec7-ba40-8628e041ef76');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'c3749c50-93b1-40f9-ae57-4261416c4805');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '967f1ab1-057a-4837-baa8-a7f44efc1a94');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9fca2071-2b82-4a47-acdd-7aa734409634');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '466f9402-5dec-428c-bf39-26be954b08a6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '6020cb23-51f8-4b23-bef1-466ba5b2e4c5');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c1a6e1e3-c406-41a6-9925-08050e058e59');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'ba6e6f34-85af-4659-a8f9-68ee0902a77d');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'be763c15-14b2-407c-940c-6800d957cae2');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '7d8be5c9-8564-4e37-8599-ea28174d88b7');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'd8d740cc-3613-48c5-82c7-018546f4a990');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'd8d740cc-3613-48c5-82c7-018546f4a990');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '327cd12b-d638-4812-8e5a-292648a4e391');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '327cd12b-d638-4812-8e5a-292648a4e391');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '80bb5cdc-c0df-47b6-93dd-4e41034d286d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '80bb5cdc-c0df-47b6-93dd-4e41034d286d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '6237522e-55ec-44e2-9897-5b182b5bcd22');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '6237522e-55ec-44e2-9897-5b182b5bcd22');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '6a29ee38-5953-41c1-8df3-7ec2da67288d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '6a29ee38-5953-41c1-8df3-7ec2da67288d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'ef2081b0-4caf-4cc1-94a5-b886549350f8');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'ef2081b0-4caf-4cc1-94a5-b886549350f8');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '7019a7d2-4803-4161-809c-61e27bf2f1ef');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '7019a7d2-4803-4161-809c-61e27bf2f1ef');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '0793e12d-f5f3-463e-a49f-4e4e38a97cb6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9e05398e-a300-4e80-ba34-db8dc8d4586f');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'fa73a839-6a83-4c11-b253-63118f2600d9');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'fa73a839-6a83-4c11-b253-63118f2600d9');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'f61df9c3-fd25-437d-990d-8533226b4791');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f61df9c3-fd25-437d-990d-8533226b4791');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'da695d7c-24f9-42c7-b6e1-6228a9470deb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '711f5b12-e0bf-47b6-a8ee-706de9b800d8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '6ed6e131-ad37-48ee-84bd-2c314aee7b20');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5eef61d0-7b26-48cf-a538-18b77fc92b2d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e999a319-daac-4e31-9e67-f76698e614fa');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1b464eb5-79d4-466c-8fc6-238fb085f208');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e1b2f68e-abee-4337-bbce-133af15bf9ca');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8c897911-6e32-42dd-aafb-03c311d2fd25');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '16725731-506d-45a6-ad01-ee6b13bc396d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '4bd975d7-de18-42bd-b21f-8884b1b2df10');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '9a573703-3433-4b37-9288-ccbf786fd3f4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8592476b-4b4b-440e-95ec-466807bc1db0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b8b0ae9a-4075-493e-80e2-ae428e6977c9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '42382963-8f1f-4a62-89ef-0786d56957ed');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e010d26b-7752-4453-b076-eeb5ab742d80');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '37f40155-4889-431c-b162-a0b8d3f726d0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd5c7baa0-a785-4d08-ab3d-71719ad9ad4d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '6adeeddf-8c20-483e-b6ca-d5c9b2655ada');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'cdc08ebe-feac-4bc1-aba8-f5fc925bf55d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '61d90a20-8519-4c7c-b049-853a7eec9934');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '832214d8-a51b-4255-8e84-5f729918a5b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '4098a6e1-5c0a-42de-a0cf-b8ff5f11047d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c38511b5-318b-43c6-a869-e3d10e60c5cf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '092048d7-199b-4971-a6a2-c6985df65388');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5acf3709-448e-4a37-954b-6558c4c11045');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c26873ed-323c-47af-9965-b9e18403fd76');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '93809071-4024-4921-93f7-52a3dc8adf0c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '2bd879de-ecf6-4253-b9e6-c855c303f587');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '601bb9f2-2cd0-4f5a-88c7-e88afe4e3a39');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '908f568b-7d91-427d-8881-56c3074b3029');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f27be900-418c-42b7-8e45-50fde489f83e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '19d210f7-ff20-4d18-ac01-6b437bc1405a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b39318d2-dffb-4610-841d-8a847024bd6e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'fe84ce56-aec4-44fe-abeb-bdc5b93701b5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f80476f7-e79e-4606-9d23-a761ea547a1f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '40bbe85c-0ffa-41d2-8743-e5ab8530950f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '2ca0e6d9-0695-46b8-8f70-b45ceda7f3e1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '403d047f-e370-4cf6-b602-6aeea4c78da7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8d2bd54c-8a4a-4246-8c0d-ec5de4da31b7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'dc71795b-5957-4a10-9684-c397dae2309c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '22006b0e-4db3-49c3-90d2-22220b03b617');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ff519bfd-5b1b-42cf-8f71-2aeda090a0e2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '612aec4b-ed48-4523-8a24-7c95172b8297');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '2a09d74a-844c-4829-ae2b-a1afbfc41d23');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c100d960-24cc-4533-a8fa-4bc96c479d89');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f7504b9a-a02a-42c7-8d75-921baea98f6d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '9524ca2a-fd36-4a2a-be20-214251dab679');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '02e03cbf-ecad-421d-bb4c-d73d85fa1d12');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f20b8b54-e264-4366-b57b-086bd84cd485');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b22bdcd5-6931-4aa8-b0b0-76a028f89296');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a4dde6d4-4802-4636-aca2-45156f033854');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'bacd6f00-b04a-4eaf-9c10-84090339e786');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a11b4ad1-0427-4a3a-952e-3b0703394817');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '68a2f37e-557c-4e2f-bc25-dac7eee1f776');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '73569795-5b5b-40cf-b7a2-33427a01f4c8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e1c77aa5-afc5-49b4-a314-d9c98ef56358');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c989e390-db31-4f0a-804b-e2fd2a28d6b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1fb0a9b1-8f49-4910-9cd9-c11eec4ef063');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8d56546b-fabe-46ec-8a8e-c49acb376764');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '4a72a4f3-17ca-4dad-a46d-a3eaaa286970');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c377b2aa-7ff6-4c9e-ac7c-a3c9a4920868');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b7e5f194-c66c-44e3-bca3-431d5cfae8d5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '85c88182-dd5e-468f-a026-d77f9f729795');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5c37c0cf-33b2-45d5-87eb-d4a49116a9f8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '21feb8ae-474d-4812-bfff-2302be5c763d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '38fd0b65-5ab6-4bd6-b670-36ac649f8db5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7a04c38e-efde-4147-a3b0-09a3109c4a0e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '972aa78d-cb9a-4f8b-8d66-00e88b86e907');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '63a0e0eb-688e-41b4-8859-a94048f8c6f5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8a36fd5f-ec6c-4142-b800-81a110bbd353');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '36fb569f-c28d-48ce-bbdf-885cbfb60c51');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ab9e2bad-9e01-41c5-ae8f-f3baf560401b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '154960cd-913d-4d24-8fd0-aaa6c0220322');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a38ab7cd-c873-4d37-b07a-9c6bb72b180f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '3904245c-8a48-4e49-b5a4-7d6fda4eb905');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c66b8162-d355-4881-b2ab-3715a880e045');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'eedbcc37-8054-47dc-bc47-2a31cfaba573');


--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8f00b871-8252-4d1f-86b8-419ebab66a0d');


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd8d740cc-3613-48c5-82c7-018546f4a990');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '327cd12b-d638-4812-8e5a-292648a4e391');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '80bb5cdc-c0df-47b6-93dd-4e41034d286d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '6237522e-55ec-44e2-9897-5b182b5bcd22');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '6a29ee38-5953-41c1-8df3-7ec2da67288d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ef2081b0-4caf-4cc1-94a5-b886549350f8');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7019a7d2-4803-4161-809c-61e27bf2f1ef');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '0793e12d-f5f3-463e-a49f-4e4e38a97cb6');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '9e05398e-a300-4e80-ba34-db8dc8d4586f');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'fa73a839-6a83-4c11-b253-63118f2600d9');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f61df9c3-fd25-437d-990d-8533226b4791');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7b0c8284-786d-4697-a30a-7c8b19747a83');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1c1c2762-4382-42f7-9d9c-e9aa1690d072');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'da695d7c-24f9-42c7-b6e1-6228a9470deb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'da695d7c-24f9-42c7-b6e1-6228a9470deb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '711f5b12-e0bf-47b6-a8ee-706de9b800d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '711f5b12-e0bf-47b6-a8ee-706de9b800d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6ed6e131-ad37-48ee-84bd-2c314aee7b20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '6ed6e131-ad37-48ee-84bd-2c314aee7b20');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '5eef61d0-7b26-48cf-a538-18b77fc92b2d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '5eef61d0-7b26-48cf-a538-18b77fc92b2d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'e999a319-daac-4e31-9e67-f76698e614fa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'e999a319-daac-4e31-9e67-f76698e614fa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '1b464eb5-79d4-466c-8fc6-238fb085f208');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '1b464eb5-79d4-466c-8fc6-238fb085f208');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'e1b2f68e-abee-4337-bbce-133af15bf9ca');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'e1b2f68e-abee-4337-bbce-133af15bf9ca');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '8c897911-6e32-42dd-aafb-03c311d2fd25');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '8c897911-6e32-42dd-aafb-03c311d2fd25');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '16725731-506d-45a6-ad01-ee6b13bc396d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '16725731-506d-45a6-ad01-ee6b13bc396d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '4bd975d7-de18-42bd-b21f-8884b1b2df10');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '4bd975d7-de18-42bd-b21f-8884b1b2df10');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9a573703-3433-4b37-9288-ccbf786fd3f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9a573703-3433-4b37-9288-ccbf786fd3f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '8592476b-4b4b-440e-95ec-466807bc1db0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '8592476b-4b4b-440e-95ec-466807bc1db0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'b8b0ae9a-4075-493e-80e2-ae428e6977c9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'b8b0ae9a-4075-493e-80e2-ae428e6977c9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '42382963-8f1f-4a62-89ef-0786d56957ed');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '42382963-8f1f-4a62-89ef-0786d56957ed');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'e010d26b-7752-4453-b076-eeb5ab742d80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'e010d26b-7752-4453-b076-eeb5ab742d80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '37f40155-4889-431c-b162-a0b8d3f726d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '37f40155-4889-431c-b162-a0b8d3f726d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'd5c7baa0-a785-4d08-ab3d-71719ad9ad4d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'd5c7baa0-a785-4d08-ab3d-71719ad9ad4d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '6adeeddf-8c20-483e-b6ca-d5c9b2655ada');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '6adeeddf-8c20-483e-b6ca-d5c9b2655ada');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'cdc08ebe-feac-4bc1-aba8-f5fc925bf55d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'cdc08ebe-feac-4bc1-aba8-f5fc925bf55d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '61d90a20-8519-4c7c-b049-853a7eec9934');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '61d90a20-8519-4c7c-b049-853a7eec9934');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '832214d8-a51b-4255-8e84-5f729918a5b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '832214d8-a51b-4255-8e84-5f729918a5b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '4098a6e1-5c0a-42de-a0cf-b8ff5f11047d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '4098a6e1-5c0a-42de-a0cf-b8ff5f11047d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'c38511b5-318b-43c6-a869-e3d10e60c5cf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'c38511b5-318b-43c6-a869-e3d10e60c5cf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '092048d7-199b-4971-a6a2-c6985df65388');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '092048d7-199b-4971-a6a2-c6985df65388');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '5acf3709-448e-4a37-954b-6558c4c11045');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '5acf3709-448e-4a37-954b-6558c4c11045');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'c26873ed-323c-47af-9965-b9e18403fd76');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'c26873ed-323c-47af-9965-b9e18403fd76');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '93809071-4024-4921-93f7-52a3dc8adf0c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '93809071-4024-4921-93f7-52a3dc8adf0c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2bd879de-ecf6-4253-b9e6-c855c303f587');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '2bd879de-ecf6-4253-b9e6-c855c303f587');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '601bb9f2-2cd0-4f5a-88c7-e88afe4e3a39');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '601bb9f2-2cd0-4f5a-88c7-e88afe4e3a39');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '908f568b-7d91-427d-8881-56c3074b3029');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '908f568b-7d91-427d-8881-56c3074b3029');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'f27be900-418c-42b7-8e45-50fde489f83e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'f27be900-418c-42b7-8e45-50fde489f83e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '19d210f7-ff20-4d18-ac01-6b437bc1405a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '19d210f7-ff20-4d18-ac01-6b437bc1405a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'b39318d2-dffb-4610-841d-8a847024bd6e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'b39318d2-dffb-4610-841d-8a847024bd6e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'fe84ce56-aec4-44fe-abeb-bdc5b93701b5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'fe84ce56-aec4-44fe-abeb-bdc5b93701b5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'f80476f7-e79e-4606-9d23-a761ea547a1f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f80476f7-e79e-4606-9d23-a761ea547a1f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '40bbe85c-0ffa-41d2-8743-e5ab8530950f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '40bbe85c-0ffa-41d2-8743-e5ab8530950f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '2ca0e6d9-0695-46b8-8f70-b45ceda7f3e1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '2ca0e6d9-0695-46b8-8f70-b45ceda7f3e1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '403d047f-e370-4cf6-b602-6aeea4c78da7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '403d047f-e370-4cf6-b602-6aeea4c78da7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '8d2bd54c-8a4a-4246-8c0d-ec5de4da31b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '8d2bd54c-8a4a-4246-8c0d-ec5de4da31b7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'dc71795b-5957-4a10-9684-c397dae2309c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'dc71795b-5957-4a10-9684-c397dae2309c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '22006b0e-4db3-49c3-90d2-22220b03b617');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '22006b0e-4db3-49c3-90d2-22220b03b617');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'ff519bfd-5b1b-42cf-8f71-2aeda090a0e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'ff519bfd-5b1b-42cf-8f71-2aeda090a0e2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '612aec4b-ed48-4523-8a24-7c95172b8297');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '612aec4b-ed48-4523-8a24-7c95172b8297');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '2a09d74a-844c-4829-ae2b-a1afbfc41d23');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '2a09d74a-844c-4829-ae2b-a1afbfc41d23');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'c100d960-24cc-4533-a8fa-4bc96c479d89');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c100d960-24cc-4533-a8fa-4bc96c479d89');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f7504b9a-a02a-42c7-8d75-921baea98f6d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'f7504b9a-a02a-42c7-8d75-921baea98f6d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '9524ca2a-fd36-4a2a-be20-214251dab679');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '9524ca2a-fd36-4a2a-be20-214251dab679');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '02e03cbf-ecad-421d-bb4c-d73d85fa1d12');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '02e03cbf-ecad-421d-bb4c-d73d85fa1d12');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f20b8b54-e264-4366-b57b-086bd84cd485');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'f20b8b54-e264-4366-b57b-086bd84cd485');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'b22bdcd5-6931-4aa8-b0b0-76a028f89296');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'b22bdcd5-6931-4aa8-b0b0-76a028f89296');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'a4dde6d4-4802-4636-aca2-45156f033854');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'a4dde6d4-4802-4636-aca2-45156f033854');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'bacd6f00-b04a-4eaf-9c10-84090339e786');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'bacd6f00-b04a-4eaf-9c10-84090339e786');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'a11b4ad1-0427-4a3a-952e-3b0703394817');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'a11b4ad1-0427-4a3a-952e-3b0703394817');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '68a2f37e-557c-4e2f-bc25-dac7eee1f776');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '68a2f37e-557c-4e2f-bc25-dac7eee1f776');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '73569795-5b5b-40cf-b7a2-33427a01f4c8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '73569795-5b5b-40cf-b7a2-33427a01f4c8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'e1c77aa5-afc5-49b4-a314-d9c98ef56358');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'e1c77aa5-afc5-49b4-a314-d9c98ef56358');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'c989e390-db31-4f0a-804b-e2fd2a28d6b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c989e390-db31-4f0a-804b-e2fd2a28d6b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '1fb0a9b1-8f49-4910-9cd9-c11eec4ef063');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1fb0a9b1-8f49-4910-9cd9-c11eec4ef063');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '8d56546b-fabe-46ec-8a8e-c49acb376764');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '8d56546b-fabe-46ec-8a8e-c49acb376764');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '4a72a4f3-17ca-4dad-a46d-a3eaaa286970');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '4a72a4f3-17ca-4dad-a46d-a3eaaa286970');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'c377b2aa-7ff6-4c9e-ac7c-a3c9a4920868');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c377b2aa-7ff6-4c9e-ac7c-a3c9a4920868');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'b7e5f194-c66c-44e3-bca3-431d5cfae8d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'b7e5f194-c66c-44e3-bca3-431d5cfae8d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '85c88182-dd5e-468f-a026-d77f9f729795');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '85c88182-dd5e-468f-a026-d77f9f729795');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '5c37c0cf-33b2-45d5-87eb-d4a49116a9f8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '5c37c0cf-33b2-45d5-87eb-d4a49116a9f8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '21feb8ae-474d-4812-bfff-2302be5c763d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '21feb8ae-474d-4812-bfff-2302be5c763d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '38fd0b65-5ab6-4bd6-b670-36ac649f8db5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '38fd0b65-5ab6-4bd6-b670-36ac649f8db5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '7a04c38e-efde-4147-a3b0-09a3109c4a0e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '7a04c38e-efde-4147-a3b0-09a3109c4a0e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '972aa78d-cb9a-4f8b-8d66-00e88b86e907');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '972aa78d-cb9a-4f8b-8d66-00e88b86e907');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '63a0e0eb-688e-41b4-8859-a94048f8c6f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '63a0e0eb-688e-41b4-8859-a94048f8c6f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '8a36fd5f-ec6c-4142-b800-81a110bbd353');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '8a36fd5f-ec6c-4142-b800-81a110bbd353');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '36fb569f-c28d-48ce-bbdf-885cbfb60c51');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '36fb569f-c28d-48ce-bbdf-885cbfb60c51');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ab9e2bad-9e01-41c5-ae8f-f3baf560401b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'ab9e2bad-9e01-41c5-ae8f-f3baf560401b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '154960cd-913d-4d24-8fd0-aaa6c0220322');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '154960cd-913d-4d24-8fd0-aaa6c0220322');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'a38ab7cd-c873-4d37-b07a-9c6bb72b180f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'a38ab7cd-c873-4d37-b07a-9c6bb72b180f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '3904245c-8a48-4e49-b5a4-7d6fda4eb905');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '3904245c-8a48-4e49-b5a4-7d6fda4eb905');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'c66b8162-d355-4881-b2ab-3715a880e045');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'c66b8162-d355-4881-b2ab-3715a880e045');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'eedbcc37-8054-47dc-bc47-2a31cfaba573');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'eedbcc37-8054-47dc-bc47-2a31cfaba573');


--
-- Data for Name: _InviteToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: EventMatch_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EventMatch_number_seq"', 14, true);


--
-- PostgreSQL database dump complete
--

