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
INSERT INTO public."Double" (id, "categoryId") VALUES ('de68ce9a-9c6c-417c-8d11-621cdfff0dc9', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('8571a826-3eda-4d33-9677-de1ecc3ea733', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('23f076d0-a172-40d5-a715-8770bfc1a143', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('16a42778-6dc6-4765-b500-8fbf057a689b', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('705dd120-83f0-48db-b5eb-e8d20a27deb2', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('bd1e0283-1c2b-48b5-8ba1-76569ddab11e', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "isFinished", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "isGroupMatchesFinished") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'Get Rio', false, true, '2024-06-20 03:00:00', '2024-06-23 03:00:00', 60, 7, 16, 'GROUPS', 'SUPERSET', true);
INSERT INTO public."Event" (id, name, "isActive", "isFinished", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "isGroupMatchesFinished") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', 'New Event III', false, false, '2024-06-22 03:00:00', '2024-06-24 03:00:00', 60, 9, 18, 'GROUPS', 'SUPERSET', false);
INSERT INTO public."Event" (id, name, "isActive", "isFinished", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "isGroupMatchesFinished") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'Copa Rio', false, true, '2024-06-22 03:00:00', '2024-06-25 03:00:00', 60, 8, 17, 'GROUPS', 'SUPERSET', true);
INSERT INTO public."Event" (id, name, "isActive", "isFinished", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "isGroupMatchesFinished") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'Another Event In The Wall', false, false, '2024-06-22 03:00:00', '2024-06-24 03:00:00', 60, 7, 20, 'GROUPS', 'SUPERSET', false);


--
-- Data for Name: CategoryGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "firstPlaceId", "secondPlaceId", "groupsStageFinished", "categoryFinished") VALUES ('9719159d-05d0-42b8-b642-32b9b10ac2c2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, NULL, false, false);
INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "firstPlaceId", "secondPlaceId", "groupsStageFinished", "categoryFinished") VALUES ('f82f969c-01f8-4b92-b1b2-0a526a673ece', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', true, true);
INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "firstPlaceId", "secondPlaceId", "groupsStageFinished", "categoryFinished") VALUES ('d783f4c4-b202-47fc-97d2-1e5599eac7f5', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', true, true);


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
-- Data for Name: DoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('2403d4e0-31de-4ed2-b035-0b10022af50a', 'A', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL, false);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('82f6e522-58eb-49de-b14a-1fbf862a8d0b', 'B', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL, false);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('7de4f513-9a98-4df6-bfdf-644bcf1b9a5d', 'C', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL, false);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('52a604b7-7a4a-4511-bb16-cd7cfe6aeeed', 'A', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('5818450b-3193-4543-abd4-0a9d9f6700be', 'B', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '5d2f83ef-6305-49c6-a144-98f1a3afc853', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('b3307464-609b-406e-837c-838e863c9209', 'C', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('f69a282f-2de7-44f5-96f9-8251cbbe3e26', 'A', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', 'e6261a9e-4d15-4995-a514-d8df757977f3', '5d2f83ef-6305-49c6-a144-98f1a3afc853', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('d62e9da8-7ff5-4699-abb9-117faa092de6', 'B', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', true);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId", "groupFinished") VALUES ('2e36b1fa-3020-41c9-b20a-26933caecdd0', 'C', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', true);


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
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('34a97393-2cc1-4811-9aee-349938e479c1', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5b663550-a7be-427c-b9a4-8867600651c1', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('af899ace-28c6-4b89-9e20-52153bb7071c', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('d4c39175-e025-4f6e-aceb-d2471aedc2b6', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('e7461081-9248-412f-93d2-942a9d63848d', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e6261a9e-4d15-4995-a514-d8df757977f3', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5bdbcfe8-f379-478d-ad02-948ec11b86ab', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('1dce0628-5575-4a8a-a5cd-e14856cfc220', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e6261a9e-4d15-4995-a514-d8df757977f3', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('1c62019e-3025-4b24-bf80-f0a4b3c47616', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('b92a0c7a-cc0b-4e7f-bb82-c1f4b716a17d', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('2e0c8b31-f062-44e9-b1f3-1d2866ad68c8', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('295cfc71-508b-42df-b715-d11e32535f3b', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('4a9b2622-eb5b-44a2-b6c8-62b3f9b095e9', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'e6261a9e-4d15-4995-a514-d8df757977f3', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('6675b472-27d4-44b0-90de-e074257b6ec8', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('ec3b1bf4-71de-4ce3-87ed-4906721509be', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('530c0132-b459-471d-b412-266559a923f6', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5208b374-4a9d-47c4-8251-8435b5596b35', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);
INSERT INTO public."Match" (id, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('fa0152ce-d592-46c4-94a0-997ffd11b0ee', true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'SUPERSET', NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('2805813b-764a-46de-9f3c-ad4e0eea71c9', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 11:00:00', '2024-06-22 12:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('1d1e49c8-7269-4522-afff-0853eb53bb38', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 12:00:00', '2024-06-22 13:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('96c6248f-5c3b-4e65-939d-90f79fa388cb', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 13:00:00', '2024-06-22 14:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ca45a1a0-999e-4f65-82ca-e60123cbd0a3', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 14:00:00', '2024-06-22 15:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('6285eece-a1d2-44bd-a82f-7d94ad906387', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 15:00:00', '2024-06-22 16:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ebb9aad9-88f4-42cf-98d3-54f884ba3648', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 16:00:00', '2024-06-22 17:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('2a56ec71-4f0c-4382-9b84-5f47e1559522', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 17:00:00', '2024-06-22 18:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('6b5f0118-2209-4df0-852b-44fa9bea2379', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 18:00:00', '2024-06-22 19:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('1a63122b-119b-473c-b488-8a6f1d7dbdb9', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 19:00:00', '2024-06-22 20:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('4fdb0487-fbef-44ea-8b0d-b13b8635e41f', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 20:00:00', '2024-06-22 21:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('50b386ab-b58c-4dcc-a99f-7beeb5966fad', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 11:00:00', '2024-06-23 12:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('1f64c2ed-27bb-487c-8fb4-294fa1d761b5', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 12:00:00', '2024-06-23 13:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('13b077a7-30a8-491f-b6c5-5d52b8cba620', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 13:00:00', '2024-06-23 14:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('58d0fc31-b6d0-4b73-8593-eb904b271726', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 14:00:00', '2024-06-23 15:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('b085430f-454a-4bbe-b177-bfb9cd8a72b6', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 15:00:00', '2024-06-23 16:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a60da6b1-ba96-4718-98e8-4c77ba08375c', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 16:00:00', '2024-06-23 17:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('c270eaa0-49f0-433c-8265-58989ac9760d', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 17:00:00', '2024-06-23 18:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('401fb3b2-7759-4f03-8dee-0f522d645edb', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 18:00:00', '2024-06-23 19:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('af67179e-866b-4c4e-a3ba-1b9edc987151', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 19:00:00', '2024-06-23 20:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('eb814148-fc16-4e55-8851-3c8bd7a2d35b', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 20:00:00', '2024-06-23 21:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('4c828d28-3324-4653-b590-da23a0732cd4', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 11:00:00', '2024-06-24 12:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ef41c32e-0bf6-4c7b-96cc-189e7deb6b30', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 12:00:00', '2024-06-24 13:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('6d07314d-68fb-454c-94bd-ab751b839f33', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 13:00:00', '2024-06-24 14:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('dd6dabd3-17ed-431a-acbd-956860a6c1fc', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 14:00:00', '2024-06-24 15:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('86681529-7802-44e2-a9ae-5410c880b23a', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 15:00:00', '2024-06-24 16:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('3ba803d8-67f0-4296-87e9-6ae5af613c5f', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 16:00:00', '2024-06-24 17:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('98c8f08e-7e60-4077-be64-89f058415884', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 17:00:00', '2024-06-24 18:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('f7b0b958-d2a5-4816-a3f8-290a6b24abad', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 18:00:00', '2024-06-24 19:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('65cbdb9d-abb0-4d39-bd91-15803ab7f17f', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 19:00:00', '2024-06-24 20:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ca71a8db-a312-4756-a9ca-47e5b152eda8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 20:00:00', '2024-06-24 21:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('e4e5cadc-80a1-4ff1-be10-6fc6515d4f7a', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 11:00:00', '2024-06-25 12:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('5916eb94-6c13-41e6-83b7-f65b9d3f53cb', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 12:00:00', '2024-06-25 13:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ed0070a3-ff74-4273-9d56-cc62b3d9fad8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 13:00:00', '2024-06-25 14:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ff72af68-fb1e-47b5-b5a7-3ec0362dac50', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 14:00:00', '2024-06-25 15:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('0e3b97e1-2f1f-4c9c-aff9-137e0fbb34af', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 15:00:00', '2024-06-25 16:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('66c5d738-20a9-4948-9ee5-2d0ee3a374ac', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 16:00:00', '2024-06-25 17:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('5438c8ed-0ec7-4c6f-a2bb-f2db9680406b', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 17:00:00', '2024-06-25 18:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('0049ba00-132e-4a47-916b-b6cc0522419e', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 18:00:00', '2024-06-25 19:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ab734a33-c495-49e1-beeb-a18f20fc588c', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 19:00:00', '2024-06-25 20:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('7c178424-6703-45fa-b633-af43548e5445', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 20:00:00', '2024-06-25 21:00:00', 'a9d62ab1-373f-491b-8825-4f99ed52df0c');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('93115828-6850-4522-9780-550b18236425', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 11:00:00', '2024-06-22 12:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('33a65383-671d-4891-8c56-05d99bff6cb6', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 12:00:00', '2024-06-22 13:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('46cefc84-57b6-4c7e-8b69-9992a67b88a5', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 13:00:00', '2024-06-22 14:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('72493736-f5d6-4133-9258-4d99811cb147', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 14:00:00', '2024-06-22 15:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('96dbad15-f0b0-4e83-bd36-14008d5d9b20', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 15:00:00', '2024-06-22 16:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('d0e87023-8dc2-4124-aa43-0da6ee7272d9', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 16:00:00', '2024-06-22 17:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('430a1009-22d2-4094-ab53-6d125491b814', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 17:00:00', '2024-06-22 18:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('7e404e9a-ade6-48a5-b0f9-2bf435086113', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 18:00:00', '2024-06-22 19:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('568057b2-c9ec-4fe7-b51a-1893192d60e4', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 19:00:00', '2024-06-22 20:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('bedffa6d-38ff-4544-8fec-351ae92e1e68', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-22 20:00:00', '2024-06-22 21:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('d267c6d4-b19c-4550-af3a-0da197de4a02', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 11:00:00', '2024-06-23 12:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('8a44d627-44bb-436c-a854-429176dc30d4', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 12:00:00', '2024-06-23 13:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('d6e9473a-6259-4b3a-b6ae-e41704f525a8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 13:00:00', '2024-06-23 14:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('734825c3-1275-4850-9acb-eac5e80760c0', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 14:00:00', '2024-06-23 15:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('7df38861-0477-4761-b6b7-b05408c2b871', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 15:00:00', '2024-06-23 16:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('14777021-bfc7-4c2e-baf7-7de61648395b', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 16:00:00', '2024-06-23 17:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('51313949-3de7-4286-a9e6-779b00906389', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 17:00:00', '2024-06-23 18:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('402d27a6-6201-4e7c-9e22-51821b904018', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 18:00:00', '2024-06-23 19:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('387aef36-57d6-4c2f-83fb-5456be4f1925', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 19:00:00', '2024-06-23 20:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('d952f8e9-696b-4aa2-a63b-b105463b14c0', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-23 20:00:00', '2024-06-23 21:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a660d348-f338-482d-a463-eba2869af327', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 11:00:00', '2024-06-24 12:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('68ace6c1-bd48-43c0-a8ab-5865fef4b5ea', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 12:00:00', '2024-06-24 13:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('4aabd181-0baa-482f-ad67-595c2373f8df', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 13:00:00', '2024-06-24 14:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('23427ea2-6c54-4cbb-a9af-ef60d752b001', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 14:00:00', '2024-06-24 15:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('33ed398d-ab91-4826-b8b2-29728603bd34', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 15:00:00', '2024-06-24 16:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('46ec80e3-6711-45ce-a3da-cff62996dc54', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 16:00:00', '2024-06-24 17:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('74e51e83-1ded-4575-9673-9a418e21419d', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 17:00:00', '2024-06-24 18:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('8b3a8145-0d57-4c6a-986b-398b7ca61dbb', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 18:00:00', '2024-06-24 19:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('426d5236-e1a3-4e1c-8995-9de6363f9200', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 19:00:00', '2024-06-24 20:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('b737dcae-2d39-43f2-a0ba-896825e17c43', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-24 20:00:00', '2024-06-24 21:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('1a254ec7-d350-46be-a07c-30c419275c59', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 11:00:00', '2024-06-25 12:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('b854bd32-2f55-4625-aa42-acc7f12ad501', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 12:00:00', '2024-06-25 13:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('00929315-d439-4106-99c1-27075c231359', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 13:00:00', '2024-06-25 14:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('f8e1bf02-9020-4e62-9cc8-f7b2b1445d0a', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 14:00:00', '2024-06-25 15:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('f456f19d-7e8c-4608-b695-f41447c5805f', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 15:00:00', '2024-06-25 16:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('7c9270d8-2396-4869-a3f2-6d4d0af3eb49', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 16:00:00', '2024-06-25 17:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('8a497503-68b0-42b5-91a7-a3c91eee0eeb', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 17:00:00', '2024-06-25 18:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a096b3cd-1b54-40f3-9655-e13a9550bdda', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 18:00:00', '2024-06-25 19:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('82514da0-8102-40cc-a9ce-af245018200f', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 19:00:00', '2024-06-25 20:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('9af5e4d6-fdf0-4c5b-a32e-8ed68f1ccf39', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', NULL, '2024-06-25 20:00:00', '2024-06-25 21:00:00', '65e186e5-3134-4966-8b49-e1346d007ba8');


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
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', 'e6261a9e-4d15-4995-a514-d8df757977f3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', 'd795dfcc-e99e-48b4-81d8-a35036b91727', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'f69a282f-2de7-44f5-96f9-8251cbbe3e26');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'd62e9da8-7ff5-4699-abb9-117faa092de6');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2e36b1fa-3020-41c9-b20a-26933caecdd0');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e6261a9e-4d15-4995-a514-d8df757977f3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'f69a282f-2de7-44f5-96f9-8251cbbe3e26');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'd62e9da8-7ff5-4699-abb9-117faa092de6');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, '2e36b1fa-3020-41c9-b20a-26933caecdd0');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'd795dfcc-e99e-48b4-81d8-a35036b91727', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'f69a282f-2de7-44f5-96f9-8251cbbe3e26');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, 'd62e9da8-7ff5-4699-abb9-117faa092de6');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'e6261a9e-4d15-4995-a514-d8df757977f3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'd795dfcc-e99e-48b4-81d8-a35036b91727', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '8571a826-3eda-4d33-9677-de1ecc3ea733', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '23f076d0-a172-40d5-a715-8770bfc1a143', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '16a42778-6dc6-4765-b500-8fbf057a689b', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '705dd120-83f0-48db-b5eb-e8d20a27deb2', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', 'bd1e0283-1c2b-48b5-8ba1-76569ddab11e', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL, NULL);


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
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (15, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e7461081-9248-412f-93d2-942a9d63848d', NULL, 'f69a282f-2de7-44f5-96f9-8251cbbe3e26');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (16, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5bdbcfe8-f379-478d-ad02-948ec11b86ab', NULL, 'f69a282f-2de7-44f5-96f9-8251cbbe3e26');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (17, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1dce0628-5575-4a8a-a5cd-e14856cfc220', NULL, 'f69a282f-2de7-44f5-96f9-8251cbbe3e26');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (18, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1c62019e-3025-4b24-bf80-f0a4b3c47616', NULL, 'd62e9da8-7ff5-4699-abb9-117faa092de6');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (19, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b92a0c7a-cc0b-4e7f-bb82-c1f4b716a17d', NULL, 'd62e9da8-7ff5-4699-abb9-117faa092de6');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (20, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2e0c8b31-f062-44e9-b1f3-1d2866ad68c8', NULL, 'd62e9da8-7ff5-4699-abb9-117faa092de6');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (21, 'GROUP', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '295cfc71-508b-42df-b715-d11e32535f3b', NULL, '2e36b1fa-3020-41c9-b20a-26933caecdd0');
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (22, 'ROUND_OF_8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '4a9b2622-eb5b-44a2-b6c8-62b3f9b095e9', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (23, 'ROUND_OF_8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '6675b472-27d4-44b0-90de-e074257b6ec8', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (24, 'ROUND_OF_8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ec3b1bf4-71de-4ce3-87ed-4906721509be', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (25, 'ROUND_OF_8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '530c0132-b459-471d-b412-266559a923f6', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (26, 'ROUND_OF_4', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5208b374-4a9d-47c4-8251-8435b5596b35', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (27, 'ROUND_OF_4', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);
INSERT INTO public."EventMatch" (number, type, "eventId", "matchId", "categoryGroupId", "doublesGroupId") VALUES (28, 'FINAL', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'fa0152ce-d592-46c4-94a0-997ffd11b0ee', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', NULL);


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
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('fa73a839-6a83-4c11-b253-63118f2600d9', 'SUPER', 1, 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '4x9', '34a97393-2cc1-4811-9aee-349938e479c1', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('f61df9c3-fd25-437d-990d-8533226b4791', 'SUPER', 1, '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '5x9', '5b663550-a7be-427c-b9a4-8867600651c1', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'SUPER', 1, 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9x6', 'af899ace-28c6-4b89-9e20-52153bb7071c', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('7b0c8284-786d-4697-a30a-7c8b19747a83', 'SUPER', 1, '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '5x9', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'SUPER', 1, 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9x2', 'd4c39175-e025-4f6e-aceb-d2471aedc2b6', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('40246276-5619-42f3-b4b9-9a7188bfbec6', 'SUPER', 1, 'e6261a9e-4d15-4995-a514-d8df757977f3', '9x5', 'e7461081-9248-412f-93d2-942a9d63848d', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e1c568b6-35fe-4c9e-8bff-2ab15a981b80', 'SUPER', 1, '5d2f83ef-6305-49c6-a144-98f1a3afc853', '9x5', '5bdbcfe8-f379-478d-ad02-948ec11b86ab', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'SUPER', 1, 'e6261a9e-4d15-4995-a514-d8df757977f3', '9x5', '1dce0628-5575-4a8a-a5cd-e14856cfc220', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'SUPER', 1, 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9x5', '1c62019e-3025-4b24-bf80-f0a4b3c47616', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0041a61d-2628-4f3b-a48f-cca5980f5e44', 'SUPER', 1, 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9x5', 'b92a0c7a-cc0b-4e7f-bb82-c1f4b716a17d', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('c30f68a8-2ff8-4677-babe-9e13da8e143e', 'SUPER', 1, 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '9x5', '2e0c8b31-f062-44e9-b1f3-1d2866ad68c8', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('958faffb-edac-4042-b100-85ee089f1510', 'SUPER', 1, 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9x5', '295cfc71-508b-42df-b715-d11e32535f3b', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('5c39c692-a51f-4d0d-9504-30ebb41216df', 'SUPER', 1, NULL, NULL, '4a9b2622-eb5b-44a2-b6c8-62b3f9b095e9', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('f0115104-7741-4fa0-b477-24be0e8763bd', 'SUPER', 1, NULL, NULL, '6675b472-27d4-44b0-90de-e074257b6ec8', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'SUPER', 1, 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9x1', 'ec3b1bf4-71de-4ce3-87ed-4906721509be', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'SUPER', 1, 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2x9', '530c0132-b459-471d-b412-266559a923f6', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'SUPER', 1, 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '2x9', '5208b374-4a9d-47c4-8251-8435b5596b35', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('40484afa-6a1e-4a45-8fba-90bca6f5db88', 'SUPER', 1, 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2x9', 'fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1', true);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ae54b748-5f44-492c-adbc-9a3d06b77821', 'SUPER', 1, 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '9x2', 'fa0152ce-d592-46c4-94a0-997ffd11b0ee', true);


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
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cecf466f-6b83-48ac-b3b2-081e6a4c864a', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a8d09935-d41b-4f56-93fb-fd60b7cf2e4c', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f12942ea-cdd5-4fa6-8570-9990aacb7941', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c6d28574-a24b-4dfe-9543-7019117f95bf', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('94dbae39-47e1-4648-af53-caabdeedb480', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8be38028-4b67-48f3-83ff-edf5721f9a08', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('84b6c0e7-a21d-47f3-930f-32b7a63802b0', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('01272a7b-6438-44fd-bf82-08edfec1ff14', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('dd9195c8-ac25-40e1-9214-38bb11b4b637', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('741d4b41-3e3d-45e9-b81b-e08f35fc106f', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b909e139-16fd-406f-9517-19ea38ff1a84', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0484f944-1305-488e-8d4e-47f768ce3233', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c2e212d2-b488-4ccc-8a74-9677c7c8706d', 'fa73a839-6a83-4c11-b253-63118f2600d9', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1080bfdb-92f6-4978-9423-0265d6df10d4', 'f61df9c3-fd25-437d-990d-8533226b4791', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1cb05db5-8af5-4569-80d3-ce95450a6c7f', 'f61df9c3-fd25-437d-990d-8533226b4791', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('61715e71-cfcc-4c68-b509-2267776476f0', 'f61df9c3-fd25-437d-990d-8533226b4791', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5c69806b-62a3-4c8c-bf3d-9e6eeef8544f', 'f61df9c3-fd25-437d-990d-8533226b4791', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d8ff8763-10e0-46a3-b9fd-f48cfe857db9', 'f61df9c3-fd25-437d-990d-8533226b4791', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('02cc71c2-4fce-42e6-ba9c-10bea24eafcd', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('00a0cb42-8c9f-4303-8693-480c3d85136a', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2b1d2906-37a2-4c44-ac36-c61ac37973f7', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e4bce7f8-21df-4ee4-b8fe-c5d496af6d80', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('55841d57-7991-4526-be7c-b70b0ed468a5', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d855bf40-fe8d-4e1a-903a-a9a1638b072f', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('852d224d-c531-48ee-8290-3679a5dd4f75', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9bba9c1e-f84a-4b0d-ac77-ec1f809ca305', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('26fa18d0-37b4-4013-ba7b-575c636c2265', 'f61df9c3-fd25-437d-990d-8533226b4791', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3925f227-c47d-45fd-a547-256dc45b90cb', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ce878545-8a97-45a8-aaf3-916f1b4817f5', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('33d0113c-018c-4431-a6cf-ec11d69d67ea', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1c332923-e8d4-4d19-9645-3ecf06d589a8', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4fb3fec4-b948-43ea-b92c-c750f5b73654', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('21ef8360-a796-4633-94de-5a7fbe095c97', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bbeca6f1-40df-4649-b59b-03164430e613', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('922a8372-4dc1-4dc4-8ce9-1967ecfd008f', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5ffa4e17-7992-44ee-b5bc-544ea5282dbf', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('503a9613-0704-4bd0-a1aa-bdd398e3e0ca', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('63bb51c6-c527-4913-a4cf-490b1f4e11d2', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('50bf3d86-8935-47b1-992a-73aa9acea9e7', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b21345dc-0cfe-444f-ba4f-79e7fa8c1979', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ae7186de-e14b-46e2-8246-1a121edcb61d', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7a4afde8-dd1d-46a4-ae45-e712d929271d', 'ec882bd8-bef7-4da5-bb6d-2e1e06460f1d', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a832c89d-8eb3-4ba8-ab0a-4030fe6ef86e', '7b0c8284-786d-4697-a30a-7c8b19747a83', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('de30b64e-4039-44db-b496-3128b3c2f6ea', '7b0c8284-786d-4697-a30a-7c8b19747a83', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7a296ec0-8d92-449b-8c7d-dbe5c671dae2', '7b0c8284-786d-4697-a30a-7c8b19747a83', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ff393a84-cfcc-4f2e-951c-52c1804c1e68', '7b0c8284-786d-4697-a30a-7c8b19747a83', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0531cbb5-9518-46fd-bf8b-bb45eb781aac', '7b0c8284-786d-4697-a30a-7c8b19747a83', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fed009ba-fa77-4692-b8a2-f295d0bd5437', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d40dfcc1-cabe-4e9e-b59f-9161b279ac33', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7719af4f-d150-4307-9f5b-05fdbb49d1c3', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4a50e301-f665-40db-a6ee-554f4f6e37e8', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('19a8022d-8c97-487b-b5ee-eaee487afb33', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('759d8dff-212b-4c17-85c5-283b3e022151', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6b1c4533-7c78-40b3-b2b0-15b3a52a99eb', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1be4feec-161d-4133-8c42-e18b513a3c9c', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('208c6e6a-64eb-4a16-b9ad-dcd94c29d438', '7b0c8284-786d-4697-a30a-7c8b19747a83', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('068f8476-adec-4c55-93ad-71a335cb2833', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b08f0eca-0d07-4547-91cf-a88e4f0615c8', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('84b298b2-7fec-464a-a18e-c355fb972134', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b6cd1a26-9b00-4e8f-bab6-062901b4c00e', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8aff3fb1-7cf4-4596-8d65-199d887c10e4', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a1a8a028-ec8c-4ab4-84af-88157542ef34', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6251a82a-d386-4cf8-a8cc-758f4a09913d', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2f5d028f-c61c-489a-b043-8b20bf65f41d', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5a31c15c-21ab-49c8-ab5a-4d540805a366', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e3410bb6-6939-4be0-afea-5b251a4db415', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2a44b462-c906-4e63-8e95-743531317358', '1c1c2762-4382-42f7-9d9c-e9aa1690d072', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('56ef9114-3935-450d-ab64-d5bf1e2a4578', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('29a8884e-6472-4274-9449-0d58b4c9a201', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('59d6602e-ff2d-40dc-aa7d-f3907c1c3149', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8e122cd8-e2c0-40f9-b28c-635886910e6a', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fa10c6f-1270-411a-be22-54c897cd700d', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4e0d3253-2e70-40e5-a6f5-4144a0f45e3a', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3704be36-19d6-411f-8184-84c7ae5bbb3c', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('156d0edc-1ac9-4c3e-a7e5-bb21a1382f4b', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3f2092e9-ae47-4710-9341-62017953e9a5', '40246276-5619-42f3-b4b9-9a7188bfbec6', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('634ec954-e71c-48be-8cbd-c7ca238a1e47', '40246276-5619-42f3-b4b9-9a7188bfbec6', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2bb43c81-8459-44c8-9c72-d48dc8dfb7fe', '40246276-5619-42f3-b4b9-9a7188bfbec6', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e8736ef0-4766-4abc-b15d-9659bafb036e', '40246276-5619-42f3-b4b9-9a7188bfbec6', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('56ab5ccd-14f1-441e-ac79-140644a892c8', '40246276-5619-42f3-b4b9-9a7188bfbec6', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f087cb92-21bc-4bf5-80fa-23a8985d5f79', '40246276-5619-42f3-b4b9-9a7188bfbec6', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ca90e8ab-e8d9-4501-9bb7-6dccb96c5882', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('73903789-17df-4168-a699-c928bb5d83b3', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('eab6ff63-6c84-4281-ae7f-26f3e0acdae5', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f6b91cdc-6c1f-4c66-a95c-1709da8c815b', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('996e4dee-92a6-4dde-b89b-54493c92bd83', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bb3deb56-26fb-418e-9dcd-3c2cfa26b394', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('22a10c3d-6cb3-4ff8-b33e-48321d7b17e6', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('84fecae7-2607-4201-ac35-9898e7850afa', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('691ff401-4c12-4e4c-9b0e-9ac324c05088', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bcb1443c-d622-42a7-bf2b-c3c6f0fd1dd2', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('96128eea-157f-45b6-b27b-52dae0962dc9', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bab7b52f-20df-431d-b846-0a8810eb143d', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a48471e9-c0ca-4847-8eca-5b815de870b6', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b2c7b1b3-6050-41dc-8acb-d40d95e705ba', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('56e36839-144f-4e5a-94f8-9977fa38c707', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e17b89c1-f0ff-4e27-a5fd-17beaa371dec', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5c75fa3e-6455-4478-91ea-f9fee5056f77', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('334a5c97-ac71-4811-a65b-9e058d7bc5a5', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ffd87e16-9524-4d92-99a8-fc4c35166776', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('73ce0ec6-a52a-40b6-92a9-06b30999e162', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ce0700c3-2945-488c-a074-14e864a2a6fd', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3da52e49-1661-4582-994d-007b232bf642', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('89673fa7-d7bc-4a8f-aa96-4f39e06167d8', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6e452bd9-e469-4dd3-8b6a-2d21f62b38b0', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('133ff5ed-3c34-44e0-bdd4-b14c768e8a10', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e7e1b3b6-d775-4337-ad8e-2fe708de37c9', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f1376776-2f38-4ead-919c-69b3e386e1f3', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1cafaa97-e3f4-4fb1-9c21-04a34996362a', '63872b12-86bc-4292-9d9f-7d8d8dcff72d', 'd795dfcc-e99e-48b4-81d8-a35036b91727');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bbe72b71-639b-4def-9416-05562c4dc7f9', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6df4386c-46a5-41de-abaa-099a3d120b7c', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1caf7a40-0e7c-4ea5-9b51-dcae265ff222', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ca44968e-5126-4e3b-95d5-ca7fc4ef8fb6', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d3892377-d9f8-421d-8d6f-7d1507111a22', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4e2f91fd-1bfb-471b-9638-5812388823fc', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8365b7a6-a80d-4cdf-a669-53d0477640b2', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1fe747dd-81b9-4c17-b5f7-80b244929b38', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('33e5bd43-9f85-44c3-92c0-919a7676045a', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e73d38c4-7937-47f8-aa85-f0c9c7691946', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0d23ab5d-cacd-468b-9ba2-c0a4647f907c', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1de7bc7f-5edd-4b38-9a5b-67fa05c1e932', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7e722f9e-5913-4eef-a31c-f0ed4376e4f4', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('a4855fe8-11e2-47e9-94dd-2915cb9cbc3a', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7015fd66-783b-44b1-ad44-e8e90e57761d', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b8c0bde1-5be6-4a6c-b0c7-75b3db1fa74e', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('56dec131-cd2f-4fe4-92b2-d362832e2fe7', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6f38a88c-8559-45e9-a279-af7072922430', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('13e66eff-f8ec-4b88-8880-38b6b109268d', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('66200921-f68f-4c9c-adea-bb07a718c919', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d6b50839-9328-4af5-a7b3-b9914a51aa0b', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2c7b509c-3dc8-41b3-9f19-580a12a5fca1', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9cbac117-f274-46c8-9072-a76b0f0e88f6', '0041a61d-2628-4f3b-a48f-cca5980f5e44', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e2fff93d-b84e-44d4-bb19-baefbe68db4a', '0041a61d-2628-4f3b-a48f-cca5980f5e44', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ee3c9294-cebb-48c5-b12e-ce401a6b80df', '0041a61d-2628-4f3b-a48f-cca5980f5e44', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('805b3559-d4a7-4255-a6ca-03419886a529', '0041a61d-2628-4f3b-a48f-cca5980f5e44', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('abdffdd5-db42-42d9-8c02-542914d9657a', '0041a61d-2628-4f3b-a48f-cca5980f5e44', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('19e524a5-6f4f-4096-a2a1-465e336bc6a7', '0041a61d-2628-4f3b-a48f-cca5980f5e44', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1a965955-1fc7-4a9a-927f-4692472db823', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bc0a25b9-d788-4f88-a9b2-9017051baab5', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ec9ee8ce-6c74-49ff-a81e-3b96bab2e875', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('95eee668-090a-4379-9fbb-fcf7587cdd28', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2b4297ff-7ac0-4f4a-858e-94d632045896', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5ecea1e0-0c9b-4a32-904b-877b6d688a9f', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1893a679-394b-4b5e-b229-e0e3116b17de', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('48ee42b7-c34e-48d3-9951-2b33cbdad796', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2cffcf11-09fd-46d5-ab30-9f9520c3d962', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('74c1d004-a171-4e78-9a70-a94fe369ea46', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('dff438b7-8cf5-4008-b507-cca8644bc04a', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('af47e0be-bd2d-493f-bd6a-6bfd23da87bb', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b7d8fb51-2774-4ea8-bc6a-62d910566f44', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('593ade66-d30c-4768-a056-1ebb245bb5c3', 'c30f68a8-2ff8-4677-babe-9e13da8e143e', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2388caca-9852-4a64-a4b2-b9d1376d6648', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('008820ce-b656-42ea-96ed-ed91312d8ab1', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e243f2e8-dce3-449a-98a7-67b80d55cc07', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0a642cb2-0569-41cc-970d-35d9da2132ec', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('4e7cdc65-970b-497f-8c82-b01e5c3b905e', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9876e974-a418-4ad1-9fcd-4a30ae7b2f68', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('af4103a6-5044-437c-919c-ae7edbaaae3a', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('80216cbd-d2a5-47f6-ad5b-f4916ec229b0', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ca115db7-ed59-4804-9c7f-85b09dcad30a', '958faffb-edac-4042-b100-85ee089f1510', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9332c583-9972-464c-9431-4997809cf411', '958faffb-edac-4042-b100-85ee089f1510', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fe54a307-712a-4f0f-945e-01108cc17dcb', '958faffb-edac-4042-b100-85ee089f1510', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('52914782-0531-4d15-9cdf-67f1084d4439', '958faffb-edac-4042-b100-85ee089f1510', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('71eea468-b658-4386-a62d-df46b72d7c74', '958faffb-edac-4042-b100-85ee089f1510', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('284869fd-e647-4e6b-a30a-9d391493848b', '958faffb-edac-4042-b100-85ee089f1510', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('287ff941-1473-44e3-b920-35b98b66190c', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0e94b5aa-03eb-452c-8cf2-f01ed47c04b8', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('0aa29794-823f-4335-bda0-89120315794f', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2fe24e9f-2608-4337-94d0-a12b9d6fdb36', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('72508032-dc6c-41b3-9c91-b23dcbb8ca06', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('af15d5fe-a9ef-444e-81f0-95217b1b4830', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bceaf8b5-b42b-4e1a-979b-fab669aa2bc9', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('5a465429-d1dc-4062-99ee-d187d451deb8', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9b301056-a176-4cad-8ce7-e68c27eac7e0', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3973f7be-3db4-4590-a149-a8bf8bce4ba4', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ea7a03af-971a-4f21-be7a-21b1c31583d6', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d163e0f7-28a2-46da-92db-6d29772c7807', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'e0236b01-6d3d-4914-96e6-0e05e46c986c');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3ea5d0bb-33db-4c94-9fb9-92477357f798', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('46feeaa5-9cc1-4fec-b887-fcde8ba55ce1', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9f158e8b-7221-477e-ade3-82273d85977a', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('2ca9db31-b7a8-4035-ae13-f46b33e6d929', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('758ede4d-d8a6-4042-bf7d-1d491bd566d5', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d741c970-a9ba-496a-9bf2-2ee9e3e17b89', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8549ee10-f63a-4eba-88e0-3084c6581224', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('28efb5e4-4252-4957-98cd-51b43e96289f', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c64dd043-5d8a-4cc6-b165-e95cf7f1a7f9', '34f9fe92-2a6c-425f-abad-e82c0d7545bd', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8081b492-201c-40a3-abfe-723d47bb6fe0', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b54251c8-0fa2-4de4-b088-a53abc7f19d0', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'e6261a9e-4d15-4995-a514-d8df757977f3');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ca4bbca5-79db-46b9-aff8-dec15f873c24', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f099fddb-5a83-459d-ae6e-1a8538948366', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('439646b7-1e1c-4de2-aa17-56a55578f07c', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ce957b5f-e071-438c-be55-d73d020526ea', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('252120b6-5025-4d13-87af-6b8627b36a96', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('6196d2d8-ba64-4466-9697-64b83dffe503', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('3f9b7637-2ab7-49d1-b39d-02b8695f31f3', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('c9b8dfe6-5e3c-4bf4-a50a-cc8c859c7edf', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('f36a5f62-e9db-43e0-a152-2c909035f505', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('7d8f1dfe-0ee9-45e0-8024-69e7b255d943', '40484afa-6a1e-4a45-8fba-90bca6f5db88', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('58fb04a6-5048-424f-a813-566fe5123991', '40484afa-6a1e-4a45-8fba-90bca6f5db88', '5d2f83ef-6305-49c6-a144-98f1a3afc853');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('e1b25054-aa7e-474b-bb3e-2cd56bfb9993', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('cfecc1f1-093f-4078-8920-8ad5a59d7502', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('28576377-5dcb-4931-a842-95857f2f1f52', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('32374146-f758-40be-ab8d-15d2f87a0ab6', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8e34abc7-6e5b-470b-b48b-76efbdb8efda', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1e9efe49-8e33-4e27-9604-192324359c2d', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('ef3e72fe-2070-48de-bf67-615acb779f5e', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('18fe9c21-fad8-4403-8632-1b39abe02832', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b9212642-130d-4408-9050-49522b7f048a', '40484afa-6a1e-4a45-8fba-90bca6f5db88', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('08247b6a-b7d3-4c39-9dd9-f4b8c1cf4c15', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('b2d1fba8-e4e0-424e-b866-1bccd0ac77c2', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('202c2396-bac0-4d3e-a473-9b24e6f9d288', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('1844fadf-a031-4387-8de5-ae8186bdf980', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9c1d79a1-fcd4-45e1-b180-4e9b12b3710a', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('bd2e049e-5969-43df-984e-b8d7daed3012', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('aae094f8-87d4-4578-b54c-9164895d3f35', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('fbe204fc-dc9b-4b61-8379-a48b9f23b56f', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('8e1461ec-84b3-4d40-b830-ce42a93a7fc7', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'ef12b65b-e0da-44d8-bad6-a587a8561b71');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('d6aab2eb-5bb0-4f20-a463-ccc1f67ce5ad', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');
INSERT INTO public."Game" (id, "setId", "winnerId") VALUES ('9692f96d-c215-432b-82e8-19aafdab9644', 'ae54b748-5f44-492c-adbc-9a3d06b77821', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d');


--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchesReferenced; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('9155af7c-e0fd-45ee-a8a2-48acb577aae2', '34a97393-2cc1-4811-9aee-349938e479c1', 'af899ace-28c6-4b89-9e20-52153bb7071c', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', true);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('f98b9fd0-34ba-4344-a6c6-8f3aa3aea907', '5b663550-a7be-427c-b9a4-8867600651c1', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', true);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('af899ace-28c6-4b89-9e20-52153bb7071c', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb', 'd4c39175-e025-4f6e-aceb-d2471aedc2b6', 'f82f969c-01f8-4b92-b1b2-0a526a673ece', true);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('4a9b2622-eb5b-44a2-b6c8-62b3f9b095e9', 'ec3b1bf4-71de-4ce3-87ed-4906721509be', '5208b374-4a9d-47c4-8251-8435b5596b35', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', true);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('6675b472-27d4-44b0-90de-e074257b6ec8', '530c0132-b459-471d-b412-266559a923f6', 'fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', true);
INSERT INTO public."MatchesReferenced" ("matchAId", "matchBId", "refMatchId", "categoryGroupId", "isUpdated") VALUES ('5208b374-4a9d-47c4-8251-8435b5596b35', 'fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1', 'fa0152ce-d592-46c4-94a0-997ffd11b0ee', 'd783f4c4-b202-47fc-97d2-1e5599eac7f5', true);


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
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('08820324-5070-494f-bff2-9cdc8d5ae146', 'Rato', 'Feliz', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('3964eb8d-43b2-4ea1-8380-131bf59f20db', 'Zebra', 'Alegre', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('176d720d-5897-4c13-94d4-713ef563b2a4', 'Raposa', 'de Fuego', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('272dd087-c420-410c-a530-b7fe4d60ac78', 'Java', 'Lee', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('82940c24-946b-4538-a6f0-16c092313fcf', 'The', 'Tomato', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('6c648929-402a-4c7c-8f82-7a0e1f835d15', 'A de Melancia', 'Pega', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('270c4fe1-1096-45b2-b215-05b7c92ba9a4', 'Cobra', 'Nautica', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('dc86d544-5b85-4f1b-8260-691c9a6732b4', 'Ce', 'Lebre', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('33add349-9d4c-4d23-9dd9-7cf4a116b48e', 'Tatu', 'do Bem', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('d21f7f1d-1b8c-4978-bd11-c5aad6459088', 'Judas', 'de Deus', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('892dc2da-0a1b-4708-8c21-1328f5705ec2', 'Phantom', 'Lancer', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 'REVES');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('de74aac5-f63d-4692-9397-51d9ef929aaf', 'Joao', 'Plasticat', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$tjIW42DkC2AmWSUPoEyDNg$sV1vkoCJMyiYbzjH955YuJLf1TLpduGQp4prdRhv5tM', '2019-06-20 03:00:00', '2024-06-17 15:19:50.904', '2024-06-20 16:33:05.37', 'c556a078-8fd8-464c-bfe7-114dee52ba95', 'USER', '$argon2id$v=19$m=65536,t=3,p=4$2ipDLbz4KEC90VaX48LQKA$VKq4rtFbzTVapWy2eG9fJI/024vTV+5njaMlzz6F32I', NULL);
INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('cf63ccbe-87da-49f9-95e4-e10155d30b0e', 'Arthur', 'Peruzzo', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$m3I3JLNHFtEeN//0vmm/kw$W9I0JZIyhxhclKBnkRwuibuMY+d7ctDz5KXXiwiFaPU', '1991-12-21 02:00:00', '2024-06-17 15:17:00.599', '2024-06-21 23:07:47.25', 'febcf9e1-125e-45df-83ee-f4e931aba78a', 'ADMIN', '$argon2id$v=19$m=65536,t=3,p=4$nZYKi8gBjHBJSDM1mJaL/Q$WTZz4eTKlbGvnBlLldPqKh6fX/+4luUy2IznC9pbY1w', NULL);


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '2be1dbbe-17ca-41c3-bbb9-9e5539269b27');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', '2be1dbbe-17ca-41c3-bbb9-9e5539269b27');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '340825b2-4107-4dfc-9480-b6d1bc6ead44');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', '340825b2-4107-4dfc-9480-b6d1bc6ead44');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', '6fb4f8b8-b828-4bbf-9110-9f0719ee8354');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', '2be1dbbe-17ca-41c3-bbb9-9e5539269b27');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', '2be1dbbe-17ca-41c3-bbb9-9e5539269b27');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', '9fb55771-61e1-4e52-a6fd-c27c1b1727ef');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('a9d62ab1-373f-491b-8825-4f99ed52df0c', '340825b2-4107-4dfc-9480-b6d1bc6ead44');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('65e186e5-3134-4966-8b49-e1346d007ba8', '340825b2-4107-4dfc-9480-b6d1bc6ead44');


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
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'af899ace-28c6-4b89-9e20-52153bb7071c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'af899ace-28c6-4b89-9e20-52153bb7071c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'a52a6e9a-aaa1-4da2-a7a4-897c9b3f67fb');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'd4c39175-e025-4f6e-aceb-d2471aedc2b6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'd4c39175-e025-4f6e-aceb-d2471aedc2b6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'e7461081-9248-412f-93d2-942a9d63848d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'e7461081-9248-412f-93d2-942a9d63848d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '5bdbcfe8-f379-478d-ad02-948ec11b86ab');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '5bdbcfe8-f379-478d-ad02-948ec11b86ab');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '1dce0628-5575-4a8a-a5cd-e14856cfc220');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '1dce0628-5575-4a8a-a5cd-e14856cfc220');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '1c62019e-3025-4b24-bf80-f0a4b3c47616');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1c62019e-3025-4b24-bf80-f0a4b3c47616');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'b92a0c7a-cc0b-4e7f-bb82-c1f4b716a17d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'b92a0c7a-cc0b-4e7f-bb82-c1f4b716a17d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2e0c8b31-f062-44e9-b1f3-1d2866ad68c8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '2e0c8b31-f062-44e9-b1f3-1d2866ad68c8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '295cfc71-508b-42df-b715-d11e32535f3b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '295cfc71-508b-42df-b715-d11e32535f3b');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '4a9b2622-eb5b-44a2-b6c8-62b3f9b095e9');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '6675b472-27d4-44b0-90de-e074257b6ec8');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ec3b1bf4-71de-4ce3-87ed-4906721509be');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'ec3b1bf4-71de-4ce3-87ed-4906721509be');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '530c0132-b459-471d-b412-266559a923f6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '530c0132-b459-471d-b412-266559a923f6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '5208b374-4a9d-47c4-8251-8435b5596b35');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '5208b374-4a9d-47c4-8251-8435b5596b35');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'fc10e0f4-e5f4-419a-b76c-bde12f8bbcf1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'fa0152ce-d592-46c4-94a0-997ffd11b0ee');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'fa0152ce-d592-46c4-94a0-997ffd11b0ee');


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
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('de68ce9a-9c6c-417c-8d11-621cdfff0dc9', 'febcf9e1-125e-45df-83ee-f4e931aba78a');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('de68ce9a-9c6c-417c-8d11-621cdfff0dc9', 'c556a078-8fd8-464c-bfe7-114dee52ba95');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8571a826-3eda-4d33-9677-de1ecc3ea733', '08820324-5070-494f-bff2-9cdc8d5ae146');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8571a826-3eda-4d33-9677-de1ecc3ea733', '3964eb8d-43b2-4ea1-8380-131bf59f20db');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('23f076d0-a172-40d5-a715-8770bfc1a143', '176d720d-5897-4c13-94d4-713ef563b2a4');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('23f076d0-a172-40d5-a715-8770bfc1a143', '272dd087-c420-410c-a530-b7fe4d60ac78');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('16a42778-6dc6-4765-b500-8fbf057a689b', '82940c24-946b-4538-a6f0-16c092313fcf');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('16a42778-6dc6-4765-b500-8fbf057a689b', '6c648929-402a-4c7c-8f82-7a0e1f835d15');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('705dd120-83f0-48db-b5eb-e8d20a27deb2', '270c4fe1-1096-45b2-b215-05b7c92ba9a4');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('705dd120-83f0-48db-b5eb-e8d20a27deb2', '33add349-9d4c-4d23-9dd9-7cf4a116b48e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('bd1e0283-1c2b-48b5-8ba1-76569ddab11e', 'd21f7f1d-1b8c-4978-bd11-c5aad6459088');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('bd1e0283-1c2b-48b5-8ba1-76569ddab11e', '892dc2da-0a1b-4708-8c21-1328f5705ec2');


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
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '40246276-5619-42f3-b4b9-9a7188bfbec6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '40246276-5619-42f3-b4b9-9a7188bfbec6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '63872b12-86bc-4292-9d9f-7d8d8dcff72d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '63872b12-86bc-4292-9d9f-7d8d8dcff72d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '0041a61d-2628-4f3b-a48f-cca5980f5e44');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '0041a61d-2628-4f3b-a48f-cca5980f5e44');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'c30f68a8-2ff8-4677-babe-9e13da8e143e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c30f68a8-2ff8-4677-babe-9e13da8e143e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '958faffb-edac-4042-b100-85ee089f1510');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '958faffb-edac-4042-b100-85ee089f1510');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '5c39c692-a51f-4d0d-9504-30ebb41216df');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f0115104-7741-4fa0-b477-24be0e8763bd');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '34f9fe92-2a6c-425f-abad-e82c0d7545bd');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '34f9fe92-2a6c-425f-abad-e82c0d7545bd');


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
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'cecf466f-6b83-48ac-b3b2-081e6a4c864a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a8d09935-d41b-4f56-93fb-fd60b7cf2e4c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'f12942ea-cdd5-4fa6-8570-9990aacb7941');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c6d28574-a24b-4dfe-9543-7019117f95bf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '94dbae39-47e1-4648-af53-caabdeedb480');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8be38028-4b67-48f3-83ff-edf5721f9a08');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '84b6c0e7-a21d-47f3-930f-32b7a63802b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '01272a7b-6438-44fd-bf82-08edfec1ff14');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'dd9195c8-ac25-40e1-9214-38bb11b4b637');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '741d4b41-3e3d-45e9-b81b-e08f35fc106f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b909e139-16fd-406f-9517-19ea38ff1a84');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '0484f944-1305-488e-8d4e-47f768ce3233');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c2e212d2-b488-4ccc-8a74-9677c7c8706d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1080bfdb-92f6-4978-9423-0265d6df10d4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1cb05db5-8af5-4569-80d3-ce95450a6c7f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '61715e71-cfcc-4c68-b509-2267776476f0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5c69806b-62a3-4c8c-bf3d-9e6eeef8544f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd8ff8763-10e0-46a3-b9fd-f48cfe857db9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '02cc71c2-4fce-42e6-ba9c-10bea24eafcd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '00a0cb42-8c9f-4303-8693-480c3d85136a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '2b1d2906-37a2-4c44-ac36-c61ac37973f7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e4bce7f8-21df-4ee4-b8fe-c5d496af6d80');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '55841d57-7991-4526-be7c-b70b0ed468a5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd855bf40-fe8d-4e1a-903a-a9a1638b072f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '852d224d-c531-48ee-8290-3679a5dd4f75');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '9bba9c1e-f84a-4b0d-ac77-ec1f809ca305');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '26fa18d0-37b4-4013-ba7b-575c636c2265');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '3925f227-c47d-45fd-a547-256dc45b90cb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ce878545-8a97-45a8-aaf3-916f1b4817f5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '33d0113c-018c-4431-a6cf-ec11d69d67ea');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1c332923-e8d4-4d19-9645-3ecf06d589a8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '4fb3fec4-b948-43ea-b92c-c750f5b73654');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '21ef8360-a796-4633-94de-5a7fbe095c97');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'bbeca6f1-40df-4649-b59b-03164430e613');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '922a8372-4dc1-4dc4-8ce9-1967ecfd008f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5ffa4e17-7992-44ee-b5bc-544ea5282dbf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '503a9613-0704-4bd0-a1aa-bdd398e3e0ca');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '63bb51c6-c527-4913-a4cf-490b1f4e11d2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '50bf3d86-8935-47b1-992a-73aa9acea9e7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b21345dc-0cfe-444f-ba4f-79e7fa8c1979');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ae7186de-e14b-46e2-8246-1a121edcb61d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7a4afde8-dd1d-46a4-ae45-e712d929271d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a832c89d-8eb3-4ba8-ab0a-4030fe6ef86e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'de30b64e-4039-44db-b496-3128b3c2f6ea');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7a296ec0-8d92-449b-8c7d-dbe5c671dae2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ff393a84-cfcc-4f2e-951c-52c1804c1e68');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '0531cbb5-9518-46fd-bf8b-bb45eb781aac');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'fed009ba-fa77-4692-b8a2-f295d0bd5437');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd40dfcc1-cabe-4e9e-b59f-9161b279ac33');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7719af4f-d150-4307-9f5b-05fdbb49d1c3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '4a50e301-f665-40db-a6ee-554f4f6e37e8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '19a8022d-8c97-487b-b5ee-eaee487afb33');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '759d8dff-212b-4c17-85c5-283b3e022151');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '6b1c4533-7c78-40b3-b2b0-15b3a52a99eb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '1be4feec-161d-4133-8c42-e18b513a3c9c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '208c6e6a-64eb-4a16-b9ad-dcd94c29d438');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '068f8476-adec-4c55-93ad-71a335cb2833');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b08f0eca-0d07-4547-91cf-a88e4f0615c8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '84b298b2-7fec-464a-a18e-c355fb972134');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'b6cd1a26-9b00-4e8f-bab6-062901b4c00e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8aff3fb1-7cf4-4596-8d65-199d887c10e4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'a1a8a028-ec8c-4ab4-84af-88157542ef34');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '6251a82a-d386-4cf8-a8cc-758f4a09913d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '2f5d028f-c61c-489a-b043-8b20bf65f41d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5a31c15c-21ab-49c8-ab5a-4d540805a366');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e3410bb6-6939-4be0-afea-5b251a4db415');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '2a44b462-c906-4e63-8e95-743531317358');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '56ef9114-3935-450d-ab64-d5bf1e2a4578');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '29a8884e-6472-4274-9449-0d58b4c9a201');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '59d6602e-ff2d-40dc-aa7d-f3907c1c3149');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8e122cd8-e2c0-40f9-b28c-635886910e6a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1fa10c6f-1270-411a-be22-54c897cd700d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '4e0d3253-2e70-40e5-a6f5-4144a0f45e3a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '3704be36-19d6-411f-8184-84c7ae5bbb3c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '156d0edc-1ac9-4c3e-a7e5-bb21a1382f4b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '3f2092e9-ae47-4710-9341-62017953e9a5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '634ec954-e71c-48be-8cbd-c7ca238a1e47');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2bb43c81-8459-44c8-9c72-d48dc8dfb7fe');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e8736ef0-4766-4abc-b15d-9659bafb036e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '56ab5ccd-14f1-441e-ac79-140644a892c8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'f087cb92-21bc-4bf5-80fa-23a8985d5f79');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ca90e8ab-e8d9-4501-9bb7-6dccb96c5882');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '73903789-17df-4168-a699-c928bb5d83b3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'eab6ff63-6c84-4281-ae7f-26f3e0acdae5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'f6b91cdc-6c1f-4c66-a95c-1709da8c815b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '996e4dee-92a6-4dde-b89b-54493c92bd83');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bb3deb56-26fb-418e-9dcd-3c2cfa26b394');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '22a10c3d-6cb3-4ff8-b33e-48321d7b17e6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '84fecae7-2607-4201-ac35-9898e7850afa');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '691ff401-4c12-4e4c-9b0e-9ac324c05088');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bcb1443c-d622-42a7-bf2b-c3c6f0fd1dd2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '96128eea-157f-45b6-b27b-52dae0962dc9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bab7b52f-20df-431d-b846-0a8810eb143d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'a48471e9-c0ca-4847-8eca-5b815de870b6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b2c7b1b3-6050-41dc-8acb-d40d95e705ba');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '56e36839-144f-4e5a-94f8-9977fa38c707');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e17b89c1-f0ff-4e27-a5fd-17beaa371dec');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5c75fa3e-6455-4478-91ea-f9fee5056f77');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '334a5c97-ac71-4811-a65b-9e058d7bc5a5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ffd87e16-9524-4d92-99a8-fc4c35166776');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '73ce0ec6-a52a-40b6-92a9-06b30999e162');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ce0700c3-2945-488c-a074-14e864a2a6fd');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '3da52e49-1661-4582-994d-007b232bf642');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '89673fa7-d7bc-4a8f-aa96-4f39e06167d8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '6e452bd9-e469-4dd3-8b6a-2d21f62b38b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '133ff5ed-3c34-44e0-bdd4-b14c768e8a10');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e7e1b3b6-d775-4337-ad8e-2fe708de37c9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'f1376776-2f38-4ead-919c-69b3e386e1f3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1cafaa97-e3f4-4fb1-9c21-04a34996362a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bbe72b71-639b-4def-9416-05562c4dc7f9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '6df4386c-46a5-41de-abaa-099a3d120b7c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1caf7a40-0e7c-4ea5-9b51-dcae265ff222');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ca44968e-5126-4e3b-95d5-ca7fc4ef8fb6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'd3892377-d9f8-421d-8d6f-7d1507111a22');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '4e2f91fd-1bfb-471b-9638-5812388823fc');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8365b7a6-a80d-4cdf-a669-53d0477640b2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1fe747dd-81b9-4c17-b5f7-80b244929b38');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '33e5bd43-9f85-44c3-92c0-919a7676045a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e73d38c4-7937-47f8-aa85-f0c9c7691946');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '0d23ab5d-cacd-468b-9ba2-c0a4647f907c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1de7bc7f-5edd-4b38-9a5b-67fa05c1e932');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '7e722f9e-5913-4eef-a31c-f0ed4376e4f4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'a4855fe8-11e2-47e9-94dd-2915cb9cbc3a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '7015fd66-783b-44b1-ad44-e8e90e57761d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b8c0bde1-5be6-4a6c-b0c7-75b3db1fa74e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '56dec131-cd2f-4fe4-92b2-d362832e2fe7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '6f38a88c-8559-45e9-a279-af7072922430');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '13e66eff-f8ec-4b88-8880-38b6b109268d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '66200921-f68f-4c9c-adea-bb07a718c919');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'd6b50839-9328-4af5-a7b3-b9914a51aa0b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2c7b509c-3dc8-41b3-9f19-580a12a5fca1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9cbac117-f274-46c8-9072-a76b0f0e88f6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e2fff93d-b84e-44d4-bb19-baefbe68db4a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ee3c9294-cebb-48c5-b12e-ce401a6b80df');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '805b3559-d4a7-4255-a6ca-03419886a529');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'abdffdd5-db42-42d9-8c02-542914d9657a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '19e524a5-6f4f-4096-a2a1-465e336bc6a7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1a965955-1fc7-4a9a-927f-4692472db823');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bc0a25b9-d788-4f88-a9b2-9017051baab5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ec9ee8ce-6c74-49ff-a81e-3b96bab2e875');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '95eee668-090a-4379-9fbb-fcf7587cdd28');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2b4297ff-7ac0-4f4a-858e-94d632045896');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5ecea1e0-0c9b-4a32-904b-877b6d688a9f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1893a679-394b-4b5e-b229-e0e3116b17de');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '48ee42b7-c34e-48d3-9951-2b33cbdad796');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2cffcf11-09fd-46d5-ab30-9f9520c3d962');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '74c1d004-a171-4e78-9a70-a94fe369ea46');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'dff438b7-8cf5-4008-b507-cca8644bc04a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'af47e0be-bd2d-493f-bd6a-6bfd23da87bb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b7d8fb51-2774-4ea8-bc6a-62d910566f44');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '593ade66-d30c-4768-a056-1ebb245bb5c3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2388caca-9852-4a64-a4b2-b9d1376d6648');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '008820ce-b656-42ea-96ed-ed91312d8ab1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e243f2e8-dce3-449a-98a7-67b80d55cc07');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '0a642cb2-0569-41cc-970d-35d9da2132ec');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '4e7cdc65-970b-497f-8c82-b01e5c3b905e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9876e974-a418-4ad1-9fcd-4a30ae7b2f68');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'af4103a6-5044-437c-919c-ae7edbaaae3a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '80216cbd-d2a5-47f6-ad5b-f4916ec229b0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ca115db7-ed59-4804-9c7f-85b09dcad30a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9332c583-9972-464c-9431-4997809cf411');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'fe54a307-712a-4f0f-945e-01108cc17dcb');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '52914782-0531-4d15-9cdf-67f1084d4439');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '71eea468-b658-4386-a62d-df46b72d7c74');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '284869fd-e647-4e6b-a30a-9d391493848b');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '287ff941-1473-44e3-b920-35b98b66190c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '0e94b5aa-03eb-452c-8cf2-f01ed47c04b8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '0aa29794-823f-4335-bda0-89120315794f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2fe24e9f-2608-4337-94d0-a12b9d6fdb36');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '72508032-dc6c-41b3-9c91-b23dcbb8ca06');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'af15d5fe-a9ef-444e-81f0-95217b1b4830');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bceaf8b5-b42b-4e1a-979b-fab669aa2bc9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5a465429-d1dc-4062-99ee-d187d451deb8');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9b301056-a176-4cad-8ce7-e68c27eac7e0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '3973f7be-3db4-4590-a149-a8bf8bce4ba4');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ea7a03af-971a-4f21-be7a-21b1c31583d6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'd163e0f7-28a2-46da-92db-6d29772c7807');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '3ea5d0bb-33db-4c94-9fb9-92477357f798');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '46feeaa5-9cc1-4fec-b887-fcde8ba55ce1');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9f158e8b-7221-477e-ade3-82273d85977a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '2ca9db31-b7a8-4035-ae13-f46b33e6d929');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '758ede4d-d8a6-4042-bf7d-1d491bd566d5');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'd741c970-a9ba-496a-9bf2-2ee9e3e17b89');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8549ee10-f63a-4eba-88e0-3084c6581224');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '28efb5e4-4252-4957-98cd-51b43e96289f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'c64dd043-5d8a-4cc6-b165-e95cf7f1a7f9');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8081b492-201c-40a3-abfe-723d47bb6fe0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b54251c8-0fa2-4de4-b088-a53abc7f19d0');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ca4bbca5-79db-46b9-aff8-dec15f873c24');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'f099fddb-5a83-459d-ae6e-1a8538948366');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '439646b7-1e1c-4de2-aa17-56a55578f07c');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ce957b5f-e071-438c-be55-d73d020526ea');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '252120b6-5025-4d13-87af-6b8627b36a96');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '6196d2d8-ba64-4466-9697-64b83dffe503');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '3f9b7637-2ab7-49d1-b39d-02b8695f31f3');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'c9b8dfe6-5e3c-4bf4-a50a-cc8c859c7edf');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'f36a5f62-e9db-43e0-a152-2c909035f505');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '7d8f1dfe-0ee9-45e0-8024-69e7b255d943');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '58fb04a6-5048-424f-a813-566fe5123991');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e1b25054-aa7e-474b-bb3e-2cd56bfb9993');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'cfecc1f1-093f-4078-8920-8ad5a59d7502');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '28576377-5dcb-4931-a842-95857f2f1f52');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '32374146-f758-40be-ab8d-15d2f87a0ab6');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8e34abc7-6e5b-470b-b48b-76efbdb8efda');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1e9efe49-8e33-4e27-9604-192324359c2d');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ef3e72fe-2070-48de-bf67-615acb779f5e');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '18fe9c21-fad8-4403-8632-1b39abe02832');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b9212642-130d-4408-9050-49522b7f048a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '08247b6a-b7d3-4c39-9dd9-f4b8c1cf4c15');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'b2d1fba8-e4e0-424e-b866-1bccd0ac77c2');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '202c2396-bac0-4d3e-a473-9b24e6f9d288');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '1844fadf-a031-4387-8de5-ae8186bdf980');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9c1d79a1-fcd4-45e1-b180-4e9b12b3710a');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'bd2e049e-5969-43df-984e-b8d7daed3012');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'aae094f8-87d4-4578-b54c-9164895d3f35');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'fbe204fc-dc9b-4b61-8379-a48b9f23b56f');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8e1461ec-84b3-4d40-b830-ce42a93a7fc7');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'd6aab2eb-5bb0-4f20-a463-ccc1f67ce5ad');
INSERT INTO public."_EventToGame" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '9692f96d-c215-432b-82e8-19aafdab9644');


--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '8f00b871-8252-4d1f-86b8-419ebab66a0d');
INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('2be1dbbe-17ca-41c3-bbb9-9e5539269b27', '8f00b871-8252-4d1f-86b8-419ebab66a0d');
INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '8f00b871-8252-4d1f-86b8-419ebab66a0d');
INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('340825b2-4107-4dfc-9480-b6d1bc6ead44', '8f00b871-8252-4d1f-86b8-419ebab66a0d');


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
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '40246276-5619-42f3-b4b9-9a7188bfbec6');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'e1c568b6-35fe-4c9e-8bff-2ab15a981b80');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '63872b12-86bc-4292-9d9f-7d8d8dcff72d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '7cd6774e-71ea-4394-bcac-3cc1cbcf8b01');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '0041a61d-2628-4f3b-a48f-cca5980f5e44');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'c30f68a8-2ff8-4677-babe-9e13da8e143e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '958faffb-edac-4042-b100-85ee089f1510');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5c39c692-a51f-4d0d-9504-30ebb41216df');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'f0115104-7741-4fa0-b477-24be0e8763bd');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5dfb80a4-e989-4758-9ff4-7e17eda7bbc7');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '34f9fe92-2a6c-425f-abad-e82c0d7545bd');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '5d3c7ff3-6279-4b79-8700-295c15ec5f0a');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', '40484afa-6a1e-4a45-8fba-90bca6f5db88');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('9fb55771-61e1-4e52-a6fd-c27c1b1727ef', 'ae54b748-5f44-492c-adbc-9a3d06b77821');


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
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'cecf466f-6b83-48ac-b3b2-081e6a4c864a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'cecf466f-6b83-48ac-b3b2-081e6a4c864a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'a8d09935-d41b-4f56-93fb-fd60b7cf2e4c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'a8d09935-d41b-4f56-93fb-fd60b7cf2e4c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'f12942ea-cdd5-4fa6-8570-9990aacb7941');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'f12942ea-cdd5-4fa6-8570-9990aacb7941');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'c6d28574-a24b-4dfe-9543-7019117f95bf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c6d28574-a24b-4dfe-9543-7019117f95bf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '94dbae39-47e1-4648-af53-caabdeedb480');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '94dbae39-47e1-4648-af53-caabdeedb480');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '8be38028-4b67-48f3-83ff-edf5721f9a08');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '8be38028-4b67-48f3-83ff-edf5721f9a08');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '84b6c0e7-a21d-47f3-930f-32b7a63802b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '84b6c0e7-a21d-47f3-930f-32b7a63802b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '01272a7b-6438-44fd-bf82-08edfec1ff14');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '01272a7b-6438-44fd-bf82-08edfec1ff14');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'dd9195c8-ac25-40e1-9214-38bb11b4b637');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'dd9195c8-ac25-40e1-9214-38bb11b4b637');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '741d4b41-3e3d-45e9-b81b-e08f35fc106f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '741d4b41-3e3d-45e9-b81b-e08f35fc106f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'b909e139-16fd-406f-9517-19ea38ff1a84');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'b909e139-16fd-406f-9517-19ea38ff1a84');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '0484f944-1305-488e-8d4e-47f768ce3233');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '0484f944-1305-488e-8d4e-47f768ce3233');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'c2e212d2-b488-4ccc-8a74-9677c7c8706d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c2e212d2-b488-4ccc-8a74-9677c7c8706d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '1080bfdb-92f6-4978-9423-0265d6df10d4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '1080bfdb-92f6-4978-9423-0265d6df10d4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '1cb05db5-8af5-4569-80d3-ce95450a6c7f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '1cb05db5-8af5-4569-80d3-ce95450a6c7f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '61715e71-cfcc-4c68-b509-2267776476f0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '61715e71-cfcc-4c68-b509-2267776476f0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '5c69806b-62a3-4c8c-bf3d-9e6eeef8544f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '5c69806b-62a3-4c8c-bf3d-9e6eeef8544f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'd8ff8763-10e0-46a3-b9fd-f48cfe857db9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'd8ff8763-10e0-46a3-b9fd-f48cfe857db9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '02cc71c2-4fce-42e6-ba9c-10bea24eafcd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '02cc71c2-4fce-42e6-ba9c-10bea24eafcd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '00a0cb42-8c9f-4303-8693-480c3d85136a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '00a0cb42-8c9f-4303-8693-480c3d85136a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2b1d2906-37a2-4c44-ac36-c61ac37973f7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '2b1d2906-37a2-4c44-ac36-c61ac37973f7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'e4bce7f8-21df-4ee4-b8fe-c5d496af6d80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'e4bce7f8-21df-4ee4-b8fe-c5d496af6d80');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '55841d57-7991-4526-be7c-b70b0ed468a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '55841d57-7991-4526-be7c-b70b0ed468a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'd855bf40-fe8d-4e1a-903a-a9a1638b072f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'd855bf40-fe8d-4e1a-903a-a9a1638b072f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '852d224d-c531-48ee-8290-3679a5dd4f75');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '852d224d-c531-48ee-8290-3679a5dd4f75');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '9bba9c1e-f84a-4b0d-ac77-ec1f809ca305');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '9bba9c1e-f84a-4b0d-ac77-ec1f809ca305');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '26fa18d0-37b4-4013-ba7b-575c636c2265');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '26fa18d0-37b4-4013-ba7b-575c636c2265');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '3925f227-c47d-45fd-a547-256dc45b90cb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '3925f227-c47d-45fd-a547-256dc45b90cb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'ce878545-8a97-45a8-aaf3-916f1b4817f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ce878545-8a97-45a8-aaf3-916f1b4817f5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '33d0113c-018c-4431-a6cf-ec11d69d67ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '33d0113c-018c-4431-a6cf-ec11d69d67ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '1c332923-e8d4-4d19-9645-3ecf06d589a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '1c332923-e8d4-4d19-9645-3ecf06d589a8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '4fb3fec4-b948-43ea-b92c-c750f5b73654');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '4fb3fec4-b948-43ea-b92c-c750f5b73654');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '21ef8360-a796-4633-94de-5a7fbe095c97');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '21ef8360-a796-4633-94de-5a7fbe095c97');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'bbeca6f1-40df-4649-b59b-03164430e613');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'bbeca6f1-40df-4649-b59b-03164430e613');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '922a8372-4dc1-4dc4-8ce9-1967ecfd008f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '922a8372-4dc1-4dc4-8ce9-1967ecfd008f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '5ffa4e17-7992-44ee-b5bc-544ea5282dbf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '5ffa4e17-7992-44ee-b5bc-544ea5282dbf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '503a9613-0704-4bd0-a1aa-bdd398e3e0ca');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '503a9613-0704-4bd0-a1aa-bdd398e3e0ca');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '63bb51c6-c527-4913-a4cf-490b1f4e11d2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '63bb51c6-c527-4913-a4cf-490b1f4e11d2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '50bf3d86-8935-47b1-992a-73aa9acea9e7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '50bf3d86-8935-47b1-992a-73aa9acea9e7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'b21345dc-0cfe-444f-ba4f-79e7fa8c1979');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'b21345dc-0cfe-444f-ba4f-79e7fa8c1979');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'ae7186de-e14b-46e2-8246-1a121edcb61d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ae7186de-e14b-46e2-8246-1a121edcb61d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '7a4afde8-dd1d-46a4-ae45-e712d929271d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '7a4afde8-dd1d-46a4-ae45-e712d929271d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'a832c89d-8eb3-4ba8-ab0a-4030fe6ef86e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'a832c89d-8eb3-4ba8-ab0a-4030fe6ef86e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'de30b64e-4039-44db-b496-3128b3c2f6ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'de30b64e-4039-44db-b496-3128b3c2f6ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '7a296ec0-8d92-449b-8c7d-dbe5c671dae2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '7a296ec0-8d92-449b-8c7d-dbe5c671dae2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'ff393a84-cfcc-4f2e-951c-52c1804c1e68');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'ff393a84-cfcc-4f2e-951c-52c1804c1e68');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '0531cbb5-9518-46fd-bf8b-bb45eb781aac');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '0531cbb5-9518-46fd-bf8b-bb45eb781aac');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'fed009ba-fa77-4692-b8a2-f295d0bd5437');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'fed009ba-fa77-4692-b8a2-f295d0bd5437');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'd40dfcc1-cabe-4e9e-b59f-9161b279ac33');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'd40dfcc1-cabe-4e9e-b59f-9161b279ac33');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '7719af4f-d150-4307-9f5b-05fdbb49d1c3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '7719af4f-d150-4307-9f5b-05fdbb49d1c3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '4a50e301-f665-40db-a6ee-554f4f6e37e8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '4a50e301-f665-40db-a6ee-554f4f6e37e8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '19a8022d-8c97-487b-b5ee-eaee487afb33');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '19a8022d-8c97-487b-b5ee-eaee487afb33');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '759d8dff-212b-4c17-85c5-283b3e022151');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '759d8dff-212b-4c17-85c5-283b3e022151');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '6b1c4533-7c78-40b3-b2b0-15b3a52a99eb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '6b1c4533-7c78-40b3-b2b0-15b3a52a99eb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '1be4feec-161d-4133-8c42-e18b513a3c9c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '1be4feec-161d-4133-8c42-e18b513a3c9c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '208c6e6a-64eb-4a16-b9ad-dcd94c29d438');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '208c6e6a-64eb-4a16-b9ad-dcd94c29d438');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '068f8476-adec-4c55-93ad-71a335cb2833');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '068f8476-adec-4c55-93ad-71a335cb2833');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'b08f0eca-0d07-4547-91cf-a88e4f0615c8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'b08f0eca-0d07-4547-91cf-a88e4f0615c8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '84b298b2-7fec-464a-a18e-c355fb972134');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '84b298b2-7fec-464a-a18e-c355fb972134');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'b6cd1a26-9b00-4e8f-bab6-062901b4c00e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'b6cd1a26-9b00-4e8f-bab6-062901b4c00e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '8aff3fb1-7cf4-4596-8d65-199d887c10e4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '8aff3fb1-7cf4-4596-8d65-199d887c10e4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'a1a8a028-ec8c-4ab4-84af-88157542ef34');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'a1a8a028-ec8c-4ab4-84af-88157542ef34');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '6251a82a-d386-4cf8-a8cc-758f4a09913d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '6251a82a-d386-4cf8-a8cc-758f4a09913d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2f5d028f-c61c-489a-b043-8b20bf65f41d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2f5d028f-c61c-489a-b043-8b20bf65f41d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '5a31c15c-21ab-49c8-ab5a-4d540805a366');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '5a31c15c-21ab-49c8-ab5a-4d540805a366');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'e3410bb6-6939-4be0-afea-5b251a4db415');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'e3410bb6-6939-4be0-afea-5b251a4db415');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2a44b462-c906-4e63-8e95-743531317358');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2a44b462-c906-4e63-8e95-743531317358');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '56ef9114-3935-450d-ab64-d5bf1e2a4578');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '56ef9114-3935-450d-ab64-d5bf1e2a4578');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '29a8884e-6472-4274-9449-0d58b4c9a201');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '29a8884e-6472-4274-9449-0d58b4c9a201');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '59d6602e-ff2d-40dc-aa7d-f3907c1c3149');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '59d6602e-ff2d-40dc-aa7d-f3907c1c3149');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '8e122cd8-e2c0-40f9-b28c-635886910e6a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '8e122cd8-e2c0-40f9-b28c-635886910e6a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '1fa10c6f-1270-411a-be22-54c897cd700d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '1fa10c6f-1270-411a-be22-54c897cd700d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '4e0d3253-2e70-40e5-a6f5-4144a0f45e3a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '4e0d3253-2e70-40e5-a6f5-4144a0f45e3a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '3704be36-19d6-411f-8184-84c7ae5bbb3c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '3704be36-19d6-411f-8184-84c7ae5bbb3c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '156d0edc-1ac9-4c3e-a7e5-bb21a1382f4b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '156d0edc-1ac9-4c3e-a7e5-bb21a1382f4b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '3f2092e9-ae47-4710-9341-62017953e9a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '3f2092e9-ae47-4710-9341-62017953e9a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '634ec954-e71c-48be-8cbd-c7ca238a1e47');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '634ec954-e71c-48be-8cbd-c7ca238a1e47');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '2bb43c81-8459-44c8-9c72-d48dc8dfb7fe');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '2bb43c81-8459-44c8-9c72-d48dc8dfb7fe');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'e8736ef0-4766-4abc-b15d-9659bafb036e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'e8736ef0-4766-4abc-b15d-9659bafb036e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '56ab5ccd-14f1-441e-ac79-140644a892c8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '56ab5ccd-14f1-441e-ac79-140644a892c8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'f087cb92-21bc-4bf5-80fa-23a8985d5f79');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f087cb92-21bc-4bf5-80fa-23a8985d5f79');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'ca90e8ab-e8d9-4501-9bb7-6dccb96c5882');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'ca90e8ab-e8d9-4501-9bb7-6dccb96c5882');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '73903789-17df-4168-a699-c928bb5d83b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '73903789-17df-4168-a699-c928bb5d83b3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'eab6ff63-6c84-4281-ae7f-26f3e0acdae5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'eab6ff63-6c84-4281-ae7f-26f3e0acdae5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'f6b91cdc-6c1f-4c66-a95c-1709da8c815b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'f6b91cdc-6c1f-4c66-a95c-1709da8c815b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '996e4dee-92a6-4dde-b89b-54493c92bd83');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '996e4dee-92a6-4dde-b89b-54493c92bd83');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'bb3deb56-26fb-418e-9dcd-3c2cfa26b394');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'bb3deb56-26fb-418e-9dcd-3c2cfa26b394');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '22a10c3d-6cb3-4ff8-b33e-48321d7b17e6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '22a10c3d-6cb3-4ff8-b33e-48321d7b17e6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '84fecae7-2607-4201-ac35-9898e7850afa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '84fecae7-2607-4201-ac35-9898e7850afa');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '691ff401-4c12-4e4c-9b0e-9ac324c05088');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '691ff401-4c12-4e4c-9b0e-9ac324c05088');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'bcb1443c-d622-42a7-bf2b-c3c6f0fd1dd2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'bcb1443c-d622-42a7-bf2b-c3c6f0fd1dd2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '96128eea-157f-45b6-b27b-52dae0962dc9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '96128eea-157f-45b6-b27b-52dae0962dc9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'bab7b52f-20df-431d-b846-0a8810eb143d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'bab7b52f-20df-431d-b846-0a8810eb143d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'a48471e9-c0ca-4847-8eca-5b815de870b6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'a48471e9-c0ca-4847-8eca-5b815de870b6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'b2c7b1b3-6050-41dc-8acb-d40d95e705ba');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'b2c7b1b3-6050-41dc-8acb-d40d95e705ba');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '56e36839-144f-4e5a-94f8-9977fa38c707');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '56e36839-144f-4e5a-94f8-9977fa38c707');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'e17b89c1-f0ff-4e27-a5fd-17beaa371dec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'e17b89c1-f0ff-4e27-a5fd-17beaa371dec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '5c75fa3e-6455-4478-91ea-f9fee5056f77');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '5c75fa3e-6455-4478-91ea-f9fee5056f77');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '334a5c97-ac71-4811-a65b-9e058d7bc5a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '334a5c97-ac71-4811-a65b-9e058d7bc5a5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'ffd87e16-9524-4d92-99a8-fc4c35166776');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'ffd87e16-9524-4d92-99a8-fc4c35166776');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '73ce0ec6-a52a-40b6-92a9-06b30999e162');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '73ce0ec6-a52a-40b6-92a9-06b30999e162');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'ce0700c3-2945-488c-a074-14e864a2a6fd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'ce0700c3-2945-488c-a074-14e864a2a6fd');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '3da52e49-1661-4582-994d-007b232bf642');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '3da52e49-1661-4582-994d-007b232bf642');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '89673fa7-d7bc-4a8f-aa96-4f39e06167d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '89673fa7-d7bc-4a8f-aa96-4f39e06167d8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '6e452bd9-e469-4dd3-8b6a-2d21f62b38b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '6e452bd9-e469-4dd3-8b6a-2d21f62b38b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '133ff5ed-3c34-44e0-bdd4-b14c768e8a10');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '133ff5ed-3c34-44e0-bdd4-b14c768e8a10');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'e7e1b3b6-d775-4337-ad8e-2fe708de37c9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'e7e1b3b6-d775-4337-ad8e-2fe708de37c9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'f1376776-2f38-4ead-919c-69b3e386e1f3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', 'f1376776-2f38-4ead-919c-69b3e386e1f3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '1cafaa97-e3f4-4fb1-9c21-04a34996362a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('d795dfcc-e99e-48b4-81d8-a35036b91727', '1cafaa97-e3f4-4fb1-9c21-04a34996362a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'bbe72b71-639b-4def-9416-05562c4dc7f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'bbe72b71-639b-4def-9416-05562c4dc7f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '6df4386c-46a5-41de-abaa-099a3d120b7c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '6df4386c-46a5-41de-abaa-099a3d120b7c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '1caf7a40-0e7c-4ea5-9b51-dcae265ff222');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1caf7a40-0e7c-4ea5-9b51-dcae265ff222');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ca44968e-5126-4e3b-95d5-ca7fc4ef8fb6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'ca44968e-5126-4e3b-95d5-ca7fc4ef8fb6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'd3892377-d9f8-421d-8d6f-7d1507111a22');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'd3892377-d9f8-421d-8d6f-7d1507111a22');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '4e2f91fd-1bfb-471b-9638-5812388823fc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '4e2f91fd-1bfb-471b-9638-5812388823fc');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '8365b7a6-a80d-4cdf-a669-53d0477640b2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '8365b7a6-a80d-4cdf-a669-53d0477640b2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '1fe747dd-81b9-4c17-b5f7-80b244929b38');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1fe747dd-81b9-4c17-b5f7-80b244929b38');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '33e5bd43-9f85-44c3-92c0-919a7676045a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '33e5bd43-9f85-44c3-92c0-919a7676045a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'e73d38c4-7937-47f8-aa85-f0c9c7691946');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'e73d38c4-7937-47f8-aa85-f0c9c7691946');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '0d23ab5d-cacd-468b-9ba2-c0a4647f907c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '0d23ab5d-cacd-468b-9ba2-c0a4647f907c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '1de7bc7f-5edd-4b38-9a5b-67fa05c1e932');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1de7bc7f-5edd-4b38-9a5b-67fa05c1e932');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '7e722f9e-5913-4eef-a31c-f0ed4376e4f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '7e722f9e-5913-4eef-a31c-f0ed4376e4f4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'a4855fe8-11e2-47e9-94dd-2915cb9cbc3a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'a4855fe8-11e2-47e9-94dd-2915cb9cbc3a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '7015fd66-783b-44b1-ad44-e8e90e57761d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '7015fd66-783b-44b1-ad44-e8e90e57761d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'b8c0bde1-5be6-4a6c-b0c7-75b3db1fa74e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'b8c0bde1-5be6-4a6c-b0c7-75b3db1fa74e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '56dec131-cd2f-4fe4-92b2-d362832e2fe7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '56dec131-cd2f-4fe4-92b2-d362832e2fe7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '6f38a88c-8559-45e9-a279-af7072922430');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '6f38a88c-8559-45e9-a279-af7072922430');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '13e66eff-f8ec-4b88-8880-38b6b109268d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '13e66eff-f8ec-4b88-8880-38b6b109268d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '66200921-f68f-4c9c-adea-bb07a718c919');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '66200921-f68f-4c9c-adea-bb07a718c919');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'd6b50839-9328-4af5-a7b3-b9914a51aa0b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'd6b50839-9328-4af5-a7b3-b9914a51aa0b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '2c7b509c-3dc8-41b3-9f19-580a12a5fca1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2c7b509c-3dc8-41b3-9f19-580a12a5fca1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '9cbac117-f274-46c8-9072-a76b0f0e88f6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '9cbac117-f274-46c8-9072-a76b0f0e88f6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'e2fff93d-b84e-44d4-bb19-baefbe68db4a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'e2fff93d-b84e-44d4-bb19-baefbe68db4a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ee3c9294-cebb-48c5-b12e-ce401a6b80df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'ee3c9294-cebb-48c5-b12e-ce401a6b80df');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '805b3559-d4a7-4255-a6ca-03419886a529');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '805b3559-d4a7-4255-a6ca-03419886a529');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'abdffdd5-db42-42d9-8c02-542914d9657a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'abdffdd5-db42-42d9-8c02-542914d9657a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '19e524a5-6f4f-4096-a2a1-465e336bc6a7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '19e524a5-6f4f-4096-a2a1-465e336bc6a7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '1a965955-1fc7-4a9a-927f-4692472db823');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1a965955-1fc7-4a9a-927f-4692472db823');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'bc0a25b9-d788-4f88-a9b2-9017051baab5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'bc0a25b9-d788-4f88-a9b2-9017051baab5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'ec9ee8ce-6c74-49ff-a81e-3b96bab2e875');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'ec9ee8ce-6c74-49ff-a81e-3b96bab2e875');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '95eee668-090a-4379-9fbb-fcf7587cdd28');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '95eee668-090a-4379-9fbb-fcf7587cdd28');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2b4297ff-7ac0-4f4a-858e-94d632045896');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '2b4297ff-7ac0-4f4a-858e-94d632045896');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '5ecea1e0-0c9b-4a32-904b-877b6d688a9f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '5ecea1e0-0c9b-4a32-904b-877b6d688a9f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '1893a679-394b-4b5e-b229-e0e3116b17de');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '1893a679-394b-4b5e-b229-e0e3116b17de');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '48ee42b7-c34e-48d3-9951-2b33cbdad796');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '48ee42b7-c34e-48d3-9951-2b33cbdad796');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '2cffcf11-09fd-46d5-ab30-9f9520c3d962');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '2cffcf11-09fd-46d5-ab30-9f9520c3d962');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '74c1d004-a171-4e78-9a70-a94fe369ea46');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '74c1d004-a171-4e78-9a70-a94fe369ea46');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'dff438b7-8cf5-4008-b507-cca8644bc04a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'dff438b7-8cf5-4008-b507-cca8644bc04a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'af47e0be-bd2d-493f-bd6a-6bfd23da87bb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'af47e0be-bd2d-493f-bd6a-6bfd23da87bb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', 'b7d8fb51-2774-4ea8-bc6a-62d910566f44');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'b7d8fb51-2774-4ea8-bc6a-62d910566f44');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '593ade66-d30c-4768-a056-1ebb245bb5c3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '593ade66-d30c-4768-a056-1ebb245bb5c3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2388caca-9852-4a64-a4b2-b9d1376d6648');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '2388caca-9852-4a64-a4b2-b9d1376d6648');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '008820ce-b656-42ea-96ed-ed91312d8ab1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '008820ce-b656-42ea-96ed-ed91312d8ab1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'e243f2e8-dce3-449a-98a7-67b80d55cc07');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'e243f2e8-dce3-449a-98a7-67b80d55cc07');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '0a642cb2-0569-41cc-970d-35d9da2132ec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '0a642cb2-0569-41cc-970d-35d9da2132ec');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '4e7cdc65-970b-497f-8c82-b01e5c3b905e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '4e7cdc65-970b-497f-8c82-b01e5c3b905e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9876e974-a418-4ad1-9fcd-4a30ae7b2f68');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9876e974-a418-4ad1-9fcd-4a30ae7b2f68');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'af4103a6-5044-437c-919c-ae7edbaaae3a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'af4103a6-5044-437c-919c-ae7edbaaae3a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '80216cbd-d2a5-47f6-ad5b-f4916ec229b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '80216cbd-d2a5-47f6-ad5b-f4916ec229b0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'ca115db7-ed59-4804-9c7f-85b09dcad30a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'ca115db7-ed59-4804-9c7f-85b09dcad30a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9332c583-9972-464c-9431-4997809cf411');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9332c583-9972-464c-9431-4997809cf411');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'fe54a307-712a-4f0f-945e-01108cc17dcb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'fe54a307-712a-4f0f-945e-01108cc17dcb');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '52914782-0531-4d15-9cdf-67f1084d4439');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '52914782-0531-4d15-9cdf-67f1084d4439');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '71eea468-b658-4386-a62d-df46b72d7c74');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '71eea468-b658-4386-a62d-df46b72d7c74');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '284869fd-e647-4e6b-a30a-9d391493848b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '284869fd-e647-4e6b-a30a-9d391493848b');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '287ff941-1473-44e3-b920-35b98b66190c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '287ff941-1473-44e3-b920-35b98b66190c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '0e94b5aa-03eb-452c-8cf2-f01ed47c04b8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '0e94b5aa-03eb-452c-8cf2-f01ed47c04b8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '0aa29794-823f-4335-bda0-89120315794f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '0aa29794-823f-4335-bda0-89120315794f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '2fe24e9f-2608-4337-94d0-a12b9d6fdb36');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '2fe24e9f-2608-4337-94d0-a12b9d6fdb36');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '72508032-dc6c-41b3-9c91-b23dcbb8ca06');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '72508032-dc6c-41b3-9c91-b23dcbb8ca06');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'af15d5fe-a9ef-444e-81f0-95217b1b4830');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'af15d5fe-a9ef-444e-81f0-95217b1b4830');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'bceaf8b5-b42b-4e1a-979b-fab669aa2bc9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', 'bceaf8b5-b42b-4e1a-979b-fab669aa2bc9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '5a465429-d1dc-4062-99ee-d187d451deb8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '5a465429-d1dc-4062-99ee-d187d451deb8');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '9b301056-a176-4cad-8ce7-e68c27eac7e0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '9b301056-a176-4cad-8ce7-e68c27eac7e0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '3973f7be-3db4-4590-a149-a8bf8bce4ba4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '3973f7be-3db4-4590-a149-a8bf8bce4ba4');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'ea7a03af-971a-4f21-be7a-21b1c31583d6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'ea7a03af-971a-4f21-be7a-21b1c31583d6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'd163e0f7-28a2-46da-92db-6d29772c7807');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'd163e0f7-28a2-46da-92db-6d29772c7807');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '3ea5d0bb-33db-4c94-9fb9-92477357f798');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '3ea5d0bb-33db-4c94-9fb9-92477357f798');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '46feeaa5-9cc1-4fec-b887-fcde8ba55ce1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '46feeaa5-9cc1-4fec-b887-fcde8ba55ce1');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9f158e8b-7221-477e-ade3-82273d85977a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '9f158e8b-7221-477e-ade3-82273d85977a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '2ca9db31-b7a8-4035-ae13-f46b33e6d929');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '2ca9db31-b7a8-4035-ae13-f46b33e6d929');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '758ede4d-d8a6-4042-bf7d-1d491bd566d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '758ede4d-d8a6-4042-bf7d-1d491bd566d5');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'd741c970-a9ba-496a-9bf2-2ee9e3e17b89');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'd741c970-a9ba-496a-9bf2-2ee9e3e17b89');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '8549ee10-f63a-4eba-88e0-3084c6581224');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '8549ee10-f63a-4eba-88e0-3084c6581224');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '28efb5e4-4252-4957-98cd-51b43e96289f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', '28efb5e4-4252-4957-98cd-51b43e96289f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'c64dd043-5d8a-4cc6-b165-e95cf7f1a7f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e0236b01-6d3d-4914-96e6-0e05e46c986c', 'c64dd043-5d8a-4cc6-b165-e95cf7f1a7f9');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '8081b492-201c-40a3-abfe-723d47bb6fe0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '8081b492-201c-40a3-abfe-723d47bb6fe0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'b54251c8-0fa2-4de4-b088-a53abc7f19d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'b54251c8-0fa2-4de4-b088-a53abc7f19d0');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'ca4bbca5-79db-46b9-aff8-dec15f873c24');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ca4bbca5-79db-46b9-aff8-dec15f873c24');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'f099fddb-5a83-459d-ae6e-1a8538948366');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'f099fddb-5a83-459d-ae6e-1a8538948366');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '439646b7-1e1c-4de2-aa17-56a55578f07c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '439646b7-1e1c-4de2-aa17-56a55578f07c');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'ce957b5f-e071-438c-be55-d73d020526ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'ce957b5f-e071-438c-be55-d73d020526ea');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '252120b6-5025-4d13-87af-6b8627b36a96');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '252120b6-5025-4d13-87af-6b8627b36a96');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '6196d2d8-ba64-4466-9697-64b83dffe503');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '6196d2d8-ba64-4466-9697-64b83dffe503');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', '3f9b7637-2ab7-49d1-b39d-02b8695f31f3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '3f9b7637-2ab7-49d1-b39d-02b8695f31f3');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'c9b8dfe6-5e3c-4bf4-a50a-cc8c859c7edf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'c9b8dfe6-5e3c-4bf4-a50a-cc8c859c7edf');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('e6261a9e-4d15-4995-a514-d8df757977f3', 'f36a5f62-e9db-43e0-a152-2c909035f505');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'f36a5f62-e9db-43e0-a152-2c909035f505');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '7d8f1dfe-0ee9-45e0-8024-69e7b255d943');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '7d8f1dfe-0ee9-45e0-8024-69e7b255d943');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '58fb04a6-5048-424f-a813-566fe5123991');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '58fb04a6-5048-424f-a813-566fe5123991');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'e1b25054-aa7e-474b-bb3e-2cd56bfb9993');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'e1b25054-aa7e-474b-bb3e-2cd56bfb9993');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'cfecc1f1-093f-4078-8920-8ad5a59d7502');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'cfecc1f1-093f-4078-8920-8ad5a59d7502');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '28576377-5dcb-4931-a842-95857f2f1f52');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '28576377-5dcb-4931-a842-95857f2f1f52');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '32374146-f758-40be-ab8d-15d2f87a0ab6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '32374146-f758-40be-ab8d-15d2f87a0ab6');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '8e34abc7-6e5b-470b-b48b-76efbdb8efda');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '8e34abc7-6e5b-470b-b48b-76efbdb8efda');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '1e9efe49-8e33-4e27-9604-192324359c2d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '1e9efe49-8e33-4e27-9604-192324359c2d');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'ef3e72fe-2070-48de-bf67-615acb779f5e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'ef3e72fe-2070-48de-bf67-615acb779f5e');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '18fe9c21-fad8-4403-8632-1b39abe02832');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', '18fe9c21-fad8-4403-8632-1b39abe02832');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'b9212642-130d-4408-9050-49522b7f048a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('5d2f83ef-6305-49c6-a144-98f1a3afc853', 'b9212642-130d-4408-9050-49522b7f048a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '08247b6a-b7d3-4c39-9dd9-f4b8c1cf4c15');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '08247b6a-b7d3-4c39-9dd9-f4b8c1cf4c15');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'b2d1fba8-e4e0-424e-b866-1bccd0ac77c2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'b2d1fba8-e4e0-424e-b866-1bccd0ac77c2');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '202c2396-bac0-4d3e-a473-9b24e6f9d288');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '202c2396-bac0-4d3e-a473-9b24e6f9d288');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '1844fadf-a031-4387-8de5-ae8186bdf980');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '1844fadf-a031-4387-8de5-ae8186bdf980');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9c1d79a1-fcd4-45e1-b180-4e9b12b3710a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '9c1d79a1-fcd4-45e1-b180-4e9b12b3710a');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'bd2e049e-5969-43df-984e-b8d7daed3012');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'bd2e049e-5969-43df-984e-b8d7daed3012');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'aae094f8-87d4-4578-b54c-9164895d3f35');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'aae094f8-87d4-4578-b54c-9164895d3f35');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'fbe204fc-dc9b-4b61-8379-a48b9f23b56f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'fbe204fc-dc9b-4b61-8379-a48b9f23b56f');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '8e1461ec-84b3-4d40-b830-ce42a93a7fc7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '8e1461ec-84b3-4d40-b830-ce42a93a7fc7');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', 'd6aab2eb-5bb0-4f20-a463-ccc1f67ce5ad');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', 'd6aab2eb-5bb0-4f20-a463-ccc1f67ce5ad');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '9692f96d-c215-432b-82e8-19aafdab9644');
INSERT INTO public."_GamesPlayed" ("A", "B") VALUES ('ef12b65b-e0da-44d8-bad6-a587a8561b71', '9692f96d-c215-432b-82e8-19aafdab9644');


--
-- Data for Name: _InviteToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: EventMatch_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EventMatch_number_seq"', 28, true);


--
-- PostgreSQL database dump complete
--

