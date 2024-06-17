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

INSERT INTO public."Category" (type, id, level) VALUES ('ALL', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 1);
INSERT INTO public."Category" (type, id, level) VALUES ('ALL', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', 2);
INSERT INTO public."Category" (type, id, level) VALUES ('ALL', '77551761-7c4a-49ba-94ac-2e2906f75320', 3);
INSERT INTO public."Category" (type, id, level) VALUES ('ALL', '7444c087-c10a-49b5-a76c-4c4cb12b1d02', 4);


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "finishDate", "startDate", "eventType", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "matchType", "isFinished", "isGroupMatchesFinished") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'Get Rio', false, '2024-06-23 03:00:00', '2024-06-20 03:00:00', 'GROUPS', 60, 7, 16, 'SUPERSET', false, false);


--
-- Data for Name: CategoryGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId", "groupsStageFinished") VALUES ('9719159d-05d0-42b8-b642-32b9b10ac2c2', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, false);


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, address, name) VALUES ('8f00b871-8252-4d1f-86b8-419ebab66a0d', 'Rua Gomes Tortinho, 266', 'Complex CK');


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

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('2403d4e0-31de-4ed2-b035-0b10022af50a', 'A', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('82f6e522-58eb-49de-b14a-1fbf862a8d0b', 'B', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL);
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId", "firstPlaceDoublesId", "secondPlaceDoublesId") VALUES ('7de4f513-9a98-4df6-bfdf-644bcf1b9a5d', 'C', '9719159d-05d0-42b8-b642-32b9b10ac2c2', NULL, NULL);


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'c2f46306-a808-4c78-a8a4-cbf6a637ea2d', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e6261a9e-4d15-4995-a514-d8df757977f3', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'ef12b65b-e0da-44d8-bad6-a587a8561b71', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '0fba26e7-d3a2-4d1d-b99f-a941f8b6404b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '7b9ffe76-925e-47dd-b6b9-95f15be9a3de', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', '5d2f83ef-6305-49c6-a144-98f1a3afc853', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'e0236b01-6d3d-4914-96e6-0e05e46c986c', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId", "doublesGroupId") VALUES ('6fb4f8b8-b828-4bbf-9110-9f0719ee8354', 'd795dfcc-e99e-48b4-81d8-a35036b91727', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL);


--
-- Data for Name: EventMatch; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventRequest; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchesReference; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('febcf9e1-125e-45df-83ee-f4e931aba78a', 'Arthur', 'Peruzzo', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('71bcb34b-fc7a-41f0-9783-a1aa967731b9', 'Medusa', 'Pluma', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('9d921a56-897f-4612-99bc-48f92655d099', 'Mari', 'Querida', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('d3c84903-d511-43b8-87cb-ab116ca9ff57', 'Guel', 'de Dios', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('c556a078-8fd8-464c-bfe7-114dee52ba95', 'Joao', 'Plasticat', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('6964f99d-d894-471a-81ef-a833bb48afa9', 'Xu', 'Xu', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('dfeb396b-3c1c-4ec7-ba40-8628e041ef76', 'O', 'Artista', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('c3749c50-93b1-40f9-ae57-4261416c4805', 'Genesi', 'Hermaf', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('967f1ab1-057a-4837-baa8-a7f44efc1a94', 'P1', 'P2', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('9fca2071-2b82-4a47-acdd-7aa734409634', 'P2', 'P2', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('466f9402-5dec-428c-bf39-26be954b08a6', 'P', '3', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('6020cb23-51f8-4b23-bef1-466ba5b2e4c5', 'P', '4', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('c1a6e1e3-c406-41a6-9925-08050e058e59', 'L', 'Timoto', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('ba6e6f34-85af-4659-a8f9-68ee0902a77d', 'J', 'DC', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('be763c15-14b2-407c-940c-6800d957cae2', 'Mercedita', 'Incansable', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('7d8be5c9-8564-4e37-8599-ea28174d88b7', 'Marley', 'Cevpranos', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, email, password, "createdAt", "updatedAt", "playerId", role, dob, "firstName", "lastName", "hashedRt", "profileImage") VALUES ('de74aac5-f63d-4692-9397-51d9ef929aaf', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$tjIW42DkC2AmWSUPoEyDNg$sV1vkoCJMyiYbzjH955YuJLf1TLpduGQp4prdRhv5tM', '2024-06-17 15:19:50.904', '2024-06-17 15:20:21.208', 'c556a078-8fd8-464c-bfe7-114dee52ba95', 'USER', '2019-06-20 03:00:00', 'Joao', 'Plasticat', NULL, NULL);
INSERT INTO public."User" (id, email, password, "createdAt", "updatedAt", "playerId", role, dob, "firstName", "lastName", "hashedRt", "profileImage") VALUES ('cf63ccbe-87da-49f9-95e4-e10155d30b0e', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$m3I3JLNHFtEeN//0vmm/kw$W9I0JZIyhxhclKBnkRwuibuMY+d7ctDz5KXXiwiFaPU', '2024-06-17 15:17:00.599', '2024-06-17 15:20:23.24', 'febcf9e1-125e-45df-83ee-f4e931aba78a', 'ADMIN', '1991-12-21 02:00:00', 'Arthur', 'Peruzzo', '$argon2id$v=19$m=65536,t=3,p=4$kbTXga3cfoHjwv+XXOMONA$mu32Gq9hEp1pePNy80nvyW2FN26NWNhtqSsxcRjb9qo', NULL);


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



--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



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
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c59a90be-7ddc-488a-8f1b-8b20fb310831', '380eccf03c739afc134b6f80fbfe3c871408414d03265417c5b5cfa52c2e336d', '2024-06-17 15:16:10.735891+00', '20240317104629_event_double', NULL, NULL, '2024-06-17 15:16:10.726545+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7d7b5723-2655-4752-894b-3efe189af499', '2ab5277b1c69da02c86b02f259424e5828df0ac16aebda988fd8c57feeb3bf19', '2024-06-17 15:16:10.379315+00', '20240315201631_new_migration', NULL, NULL, '2024-06-17 15:16:10.309902+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('df908b3b-44ad-4aa2-bafe-1d6760de3583', '7fbaa71395434b1bef06a83bab3a5b0f7566f0df0e2e18b9e05fb11904866c54', '2024-06-17 15:16:10.522538+00', '20240315202204_uuids', NULL, NULL, '2024-06-17 15:16:10.380671+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('fc4c05bc-0dd4-4d1a-8b46-9dde84d6aefd', 'bc807d87001330a7a141f91c0379b48d15768dee29591f40d1aabcbc921f0394', '2024-06-17 15:16:10.864827+00', '20240415192431_match_id', NULL, NULL, '2024-06-17 15:16:10.860535+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7af3cfbb-a7cd-49f2-a1b2-a9775436a93e', '0b9d5e62d94bb2c44793dbcd6512caad0229ae10d8d79a7cef2178a77bdf8994', '2024-06-17 15:16:10.538867+00', '20240315203139_cat_back_to_number', NULL, NULL, '2024-06-17 15:16:10.52444+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('a952e07f-50aa-44a1-adca-5250492afd91', 'b2bdfcae756f89e693d15d5d56825eb1ce221b2efcce2880f71b27597dd98409', '2024-06-17 15:16:10.741208+00', '20240317111212_tadam', NULL, NULL, '2024-06-17 15:16:10.737081+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('76753330-3a34-4045-b7ac-50ece3f1db8a', 'fd321a60cd0e10f5ffed1865354b9160b42422d575adb9c498c96e3784c390dd', '2024-06-17 15:16:10.544223+00', '20240315203813_another', NULL, NULL, '2024-06-17 15:16:10.540185+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c4a6159f-a603-4791-bcfe-4854d6252799', '1cd3b79abe58f4dee6b4c75aec1f88c8eab53391c12da407594be6bf1fc6b074', '2024-06-17 15:16:10.655542+00', '20240316085000_newmig', NULL, NULL, '2024-06-17 15:16:10.545604+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('a1a2ab97-29d3-4234-83db-040f6c1e9ae5', '0d9a197225e3f0637c66c2243c1883237494a3e18dd1929bde1bde1cd52f3087', '2024-06-17 15:16:10.812786+00', '20240405172037_testing_adding_all_games_to_doubles', NULL, NULL, '2024-06-17 15:16:10.802221+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c16a3b29-53cc-4c98-bb71-90a26cdd6d59', '5a5a368e88514e514f74537f69098163a2504e1e1abe623439adad6460217c64', '2024-06-17 15:16:10.66859+00', '20240316094139_cat_m_n_events', NULL, NULL, '2024-06-17 15:16:10.656774+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cbd1a3e7-897b-4265-858c-4958d3e9bb1b', '9a5c31815b18f0c7887f47397c036ed02d8adb1d1774f674cab17702ee16f4ec', '2024-06-17 15:16:10.748456+00', '20240317122357_aaaaaa', NULL, NULL, '2024-06-17 15:16:10.742412+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('70af5e36-933d-4fbe-b373-8e08c8b6b8ef', '3d18ccd96c757bff3a790ba22c32ac8fefc15dcf1b27d5ed4349ba118f7adb8d', '2024-06-17 15:16:10.673422+00', '20240316094235_cats_m_n_events', NULL, NULL, '2024-06-17 15:16:10.669845+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('282249a8-acc8-4192-aaa2-cedb5c7554c4', '803c6bec578ddb90f8a5576c50e4c2c06befcb23b02d6d9843432f4e030069ea', '2024-06-17 15:16:10.689194+00', '20240316202549_places_added', NULL, NULL, '2024-06-17 15:16:10.674562+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c87acd2a-ec5f-49c3-b052-cc4edfca5416', 'e3515dc6290e69e4198006977954e0264c2d7e7e35693d548b05b7e5bb729d19', '2024-06-17 15:16:10.693949+00', '20240316203234_upup', NULL, NULL, '2024-06-17 15:16:10.690399+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cbba7c8d-c708-406b-bcde-7c023e77d138', 'b70b6381fb99f172b81a65a817ec1f2ac82f1ff1f218c598bf740631ff6549d0', '2024-06-17 15:16:10.756225+00', '20240317125808_newmigration', NULL, NULL, '2024-06-17 15:16:10.749932+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ef505f35-6496-4ad8-8bae-a51f46d32e44', '75ecf729f9e9bdc9f6dcfcd88595616bfbfe77250d0aa852019a1c353e1b283a', '2024-06-17 15:16:10.700826+00', '20240316203619_ups', NULL, NULL, '2024-06-17 15:16:10.695097+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f7418af0-d2fd-4ab5-8d3a-4098fc9d03bb', 'f64cfdf23ae19f448ad6e308988f72d7e1f3883a7a49df55035e9ad8b328c3a3', '2024-06-17 15:16:10.706818+00', '20240316215738_mig', NULL, NULL, '2024-06-17 15:16:10.701982+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('544b5b8d-5209-4dfb-bb5b-79e6105a187e', 'f94700a7083b8ddc3e7aca5fb64233c54dc1c90755485c767377747d61c0f2f1', '2024-06-17 15:16:10.712843+00', '20240316224010_event_has_1_category_for_testing', NULL, NULL, '2024-06-17 15:16:10.708142+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f1797313-0aa2-49ad-93c4-390b7d58193e', '1a62cbb82dc36dc061828aad9383b8e1b017507202f2358b13ddc5cceb7080fa', '2024-06-17 15:16:10.763821+00', '20240317130431_readded_category_to_relation', NULL, NULL, '2024-06-17 15:16:10.757553+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('2bf77ab9-6dcb-4a3f-b819-d69c36f95e97', 'ef6a4032560c4242a0dc26eb272cc73833e9a85ce40714e9a3f7766bf283c218', '2024-06-17 15:16:10.725316+00', '20240316224442_', NULL, NULL, '2024-06-17 15:16:10.713995+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('84bb418f-d2eb-4d1c-b31c-58aab73fda05', '30ad8b67007eef72f93ac09c4bc94ac14842ba3de12faba0a6a54e905f9369c4', '2024-06-17 15:16:10.825724+00', '20240415153816_games_events', NULL, NULL, '2024-06-17 15:16:10.814191+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('78bfc218-4e94-4ae0-84a1-8aa085b78a38', 'f28e7b3bd96491bb685f95ed652f654832859e62bf6af527e585e7cce230ecc9', '2024-06-17 15:16:10.771104+00', '20240326141146_email_is_unique', NULL, NULL, '2024-06-17 15:16:10.765024+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cba62e4e-f857-4743-9ae6-d69eca9b419c', 'c185b1c408959e0d04e02455e1ab61b9190bae7fa6692e8dca1dbc2619688187', '2024-06-17 15:16:10.778081+00', '20240401135704_', NULL, NULL, '2024-06-17 15:16:10.772295+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('a9c96074-9822-4fd3-b451-65522f3ee42f', '596250df3fafedb1024607ad7b6d542bae7ee590c0ac3d0f1fa640a9e8df6027', '2024-06-17 15:16:10.838526+00', '20240415154422_sets_events', NULL, NULL, '2024-06-17 15:16:10.827092+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('d2881531-d74e-4ddc-9318-9a06e5f3042c', '55a3c2b83292350c29637fefb9239a0722df9423c08f70bfe27c3083200efa72', '2024-06-17 15:16:10.790233+00', '20240403150410_till_the_games', NULL, NULL, '2024-06-17 15:16:10.779265+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('54fb0d4b-4f3c-4b17-a5cb-5bdad4590daf', 'f99e50be1c7b22ab9903b81964f0a9c7f856faaef4d25f2c7de7583160e19239', '2024-06-17 15:16:10.800965+00', '20240404104019_added_number_to_track_matches', NULL, NULL, '2024-06-17 15:16:10.791412+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('17004adf-d43f-4150-abd4-d541215f4056', '718e7e6e2feb4ac05b9666a563675e26972ae8e79346cbf6b1326b2d942ef069', '2024-06-17 15:16:10.872253+00', '20240415193636_adjusting_unique_for_match_dates', NULL, NULL, '2024-06-17 15:16:10.866066+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f921c786-e396-4e8a-8723-c630471d4e0f', 'd72a6c1a48de1065262aae54b518c6345b9102a43122a47a388aa3f24d61d2a2', '2024-06-17 15:16:10.854031+00', '20240415183917_adding_match_dates', NULL, NULL, '2024-06-17 15:16:10.83991+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f1cee212-274b-4de6-a83d-4ebb3e6d8e2a', 'bcb3a4ee90a48cf73d64ecd27a1ebe3022e9286d7270603f64d1898dcc81fcf8', '2024-06-17 15:16:10.859317+00', '20240415184055_start_and_finish_to_dates', NULL, NULL, '2024-06-17 15:16:10.855369+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('85226949-5658-4ce8-88a3-3e20c1389db6', '840bc207720360b06e592640961f001b2195aa44d8b3d0ef25cc724e1e5f4602', '2024-06-17 15:16:10.8913+00', '20240416192253_changed_unique_at_matchdate', NULL, NULL, '2024-06-17 15:16:10.886312+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('89456c88-d5b3-4501-a034-4267e7d5b210', 'e327f94ce50a5a24fa486caf192efbb166a51e1ecb780c33c0802d4e4eada35b', '2024-06-17 15:16:10.8792+00', '20240415194003_adjusting_match_do_date_match_relation', NULL, NULL, '2024-06-17 15:16:10.87347+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ff1d3e7a-de7d-4e17-9ecb-64223b486b5c', 'd9723937756012e5e0ad8f33851895103430f598ae7af62b3e04eb026f79ac90', '2024-06-17 15:16:10.901165+00', '20240417130129_', NULL, NULL, '2024-06-17 15:16:10.896274+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('238c7aa6-771b-41ab-8dbd-b6ef019457d2', '04c7eb1e1d9340e75c0d79f180c927ae9e57b87d31b42e8b617e85ff30f31763', '2024-06-17 15:16:10.885309+00', '20240415194138_again', NULL, NULL, '2024-06-17 15:16:10.880194+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('02fc7944-25a2-4f18-a839-35345b1809eb', 'c11d88c938e608bef3cdc95c0fef365723093a861ecf5458a8233e4ff5edb0e5', '2024-06-17 15:16:10.895294+00', '20240417130048_fixing_one_to_one_between_match_and_matchdates', NULL, NULL, '2024-06-17 15:16:10.892303+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('52910a2c-2551-4bd1-90eb-6da247b17951', '43752ee94e75b773b76628e226d6c9fa2750c59354c34d8ee9d2d7fdd28a8b37', '2024-06-17 15:16:10.923119+00', '20240424130523_adding_courts_to_the_game', NULL, NULL, '2024-06-17 15:16:10.908893+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8fbfdf2b-be50-4e36-b921-f371efea5ea9', 'cfb1017ef109ae98fdebc132923e65538c88aabded50f16c4e78b20c01f938dc', '2024-06-17 15:16:10.907863+00', '20240423115628_added_event_type', NULL, NULL, '2024-06-17 15:16:10.902179+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('d98756d4-a987-4b1e-8b4f-07cae88e1e73', '5f45ab03616388a70b4553aed17223114925bb0d43cf5dcac23a8d41d02e3230', '2024-06-17 15:16:10.929201+00', '20240424132259_court_unique_by_name_and_place_id', NULL, NULL, '2024-06-17 15:16:10.924148+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('70306856-fc2a-4a0a-8139-2a5f8dd05867', 'dcc065f0ffe4430b2755a151992473c40702bafb3ffbe47256151e5a927e5127', '2024-06-17 15:16:10.933898+00', '20240426123754_added_courts_match_date_relation', NULL, NULL, '2024-06-17 15:16:10.930196+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cd6bc44a-a894-4925-be62-0f146f0cf9dd', '066fcfb87da943a7cab17fb4ad4aaa42b7ca49c70a9c54e49adb9b8f4939bd88', '2024-06-17 15:16:10.940448+00', '20240426172043_event_doubles_now_have_at_rest_property', NULL, NULL, '2024-06-17 15:16:10.934994+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('6290c521-904b-4c6c-8bba-e42f2062cd3b', '606fb6a4e511c3de03b738eee6e4f8e2e40e434b06cc15ae17cd4da5ca08ff09', '2024-06-17 15:16:11.196703+00', '20240613150503_added_it_back_since_it_didnt_solve', NULL, NULL, '2024-06-17 15:16:11.191503+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('20a81274-c796-4f36-952a-bcdd5d0c9665', '7eef77d672f26babe4f5e8e1c0f3640fa482f812268cb2b954fde32e6b8c388f', '2024-06-17 15:16:10.944921+00', '20240502174830_took_unused_match_date_id_variable_from_matches_the_relation_is_only_accessed_via_match_date_side_of_relation_now', NULL, NULL, '2024-06-17 15:16:10.941559+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ac8cdd94-777c-442c-b778-b4083fe8ea58', '5983e7c8440b79b45b32e6afe20bf6e49520128eb71bce2f9a0d37fffcdaa83f', '2024-06-17 15:16:11.160461+00', '20240611183154_created_event_match_type_and_changed_unique_for_id_at_event_match_model', NULL, NULL, '2024-06-17 15:16:11.154627+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('9ef66688-4f30-4878-b58a-dbad613b040c', 'c0bc98912a258d1fb518d853c39da6ebf9d3ef0c6327c8675ddf31c0343600e5', '2024-06-17 15:16:10.955407+00', '20240510170142_added_many_to_many_relation_for_managing_at_rest_state_doubles_match_date', NULL, NULL, '2024-06-17 15:16:10.945936+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('2cf3cf65-1529-4075-b321-a2a93a547763', '56b17b910e70a7379d4ad286b34e2134a99940812fa67b1f839f116df0c5f9cf', '2024-06-17 15:16:11.03913+00', '20240601022740_added_invites_to_the_game_added_inviter_id_and_invited_id', NULL, NULL, '2024-06-17 15:16:11.033685+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0a61a007-d93c-41cd-811b-f63a593b0004', '663f65879cecf21c5c002ea76802344e44ff1249c61a729428d1243ae7aab330', '2024-06-17 15:16:10.960565+00', '20240510171026_created_many_to_many_relation_between_doubles_and_matchdate_in_order_to_manage_at_rest_states_of_doubles', NULL, NULL, '2024-06-17 15:16:10.956432+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8cd389ce-c297-421f-89f8-a119cf12f348', '244b51d257cc69aafb5dd249f70de02821d2a5b333f8c5aeaa09064574dabee2', '2024-06-17 15:16:10.965061+00', '20240510172117_fixing', NULL, NULL, '2024-06-17 15:16:10.961585+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('82bc49d5-c2f7-4dff-bf4b-aa9991b8eedd', '77902c5a83d4d5f31f12547fd1800e11dd3994832c3682fc58a385a98dbc2195', '2024-06-17 15:16:11.08546+00', '20240608140735_added_doubles_invites_relation_to_facilitate_event_invites', NULL, NULL, '2024-06-17 15:16:11.081548+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7ca014f2-36ea-44bf-ab05-c322fdbfe699', 'aa35bdb1ff3c796e18d67ba9fefdd8710363863f59cb130d3337e7561534fce4', '2024-06-17 15:16:10.97772+00', '20240517160713_add_user_model', NULL, NULL, '2024-06-17 15:16:10.966122+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e172e368-7722-415b-91b9-1277eae47a0a', '0961a7ad3a93b981f18f79e982a632f59f112f957fbaba3bc2ab021e9164338e', '2024-06-17 15:16:11.043583+00', '20240602131935_added_created_at_to_invite_at_schema', NULL, NULL, '2024-06-17 15:16:11.040236+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e8c832d7-7c83-4be5-ab55-09fa0efc4199', 'f6f776a95289654f4a72060facc676c02c90bf084d0a38252b35a3ec11373221', '2024-06-17 15:16:10.982306+00', '20240517161336_add_user_model2', NULL, NULL, '2024-06-17 15:16:10.978748+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c8395a91-4d41-4f65-a942-d291c40f86b2', 'c14435a96bd236b91cce12cf45216e4693e47ef3bb95d120bb5b033f4c2b394c', '2024-06-17 15:16:10.986736+00', '20240520120618_add_user_model3', NULL, NULL, '2024-06-17 15:16:10.983396+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('1572f78b-7eec-4027-8266-ff201a15d0cf', '9a66bb1fe58646ac67bf64cc0968e79db90c3fd03fce18187a9c30f0c616dc0b', '2024-06-17 15:16:10.990897+00', '20240523141446_added_hashed_rt_to_user', NULL, NULL, '2024-06-17 15:16:10.987762+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('45c9a8ef-2808-46bf-82fd-9d7aa2e90d86', 'f150045cdcb1d367d184b071c105e68e7e3eb1c1ef38edda633c4c8a3d74ade8', '2024-06-17 15:16:11.049235+00', '20240603105847_players_are_linked_now_to_only_one_category', NULL, NULL, '2024-06-17 15:16:11.044673+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8fcbcc4a-bb31-471b-bed0-0e76cd82f23d', '5b447e6e35dd7be9473688b327aaff5942417e30192374d7ac28d2e65e5f9e7a', '2024-06-17 15:16:10.995028+00', '20240527201932_added_profile_image_to_user', NULL, NULL, '2024-06-17 15:16:10.991918+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('9dd1931b-9952-4ef3-b3e4-1888c7991e9d', '6505cbcce7d21e1c036d6491245f9ef2dad8c282b83a1348ea2232e217f69852', '2024-06-17 15:16:11.007694+00', '20240527215903_added_profile_image_to_user_as_string_now', NULL, NULL, '2024-06-17 15:16:10.996064+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0a0594c4-ca89-4866-baaf-0d6ba485071c', 'de6ea6035c0e7888bdcfb6acbf53c62655261339fc6c813974c45ec3670ccdc8', '2024-06-17 15:16:11.114377+00', '20240610132745_added_match_type_to_event_model_at_schema', NULL, NULL, '2024-06-17 15:16:11.110951+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c3d07d27-f48c-4af8-9d0c-6bba7e608b5d', '9948fac0f1bb7d8387fffb3f7adf96a665ce1a27eae80d0593b45c686408ba33', '2024-06-17 15:16:11.027285+00', '20240601000640_added_invites_to_the_game', NULL, NULL, '2024-06-17 15:16:11.008768+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('52f2c4ab-d5a9-4a2b-94a0-8c90c8d5fbb6', '1ecef5df5a6cee59f2293d9203d11299fa0d303c997003ec66da1875dbef97a4', '2024-06-17 15:16:11.060294+00', '20240607161202_added_requests_as_a_many_to_many_relation_between_events_and_doubles', NULL, NULL, '2024-06-17 15:16:11.050411+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7f9d7f8a-0d84-44cf-bc1c-961d2c1f2b4d', '6c5212e396225b9587229a1616f6a6461aab2b4a10970c91cbe8a39f46051e30', '2024-06-17 15:16:11.032462+00', '20240601001701_added_invites_to_the_game_fixed_typo', NULL, NULL, '2024-06-17 15:16:11.028444+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b13df7c7-f178-48c6-8984-05a7c132b6d3', 'b651d0ce1f204b947d33b681f9ff8db168c82c77480c298578ee1393e522cdf8', '2024-06-17 15:16:11.095702+00', '20240610122039_took_off_default_set_type', NULL, NULL, '2024-06-17 15:16:11.086541+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('fcc3d84e-7990-477f-b66e-1e6f7993de3b', '97b11d5dba87c01bcec2c24a914fd1fe6954268ff086ebee395a8175e6ab3740', '2024-06-17 15:16:11.070337+00', '20240607171645_changed_to_event_request_to_handle_relations', NULL, NULL, '2024-06-17 15:16:11.061429+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('4f638351-7f67-4b86-996b-d548eb8b1da9', 'e59eb5e243aaeb801473393c2cc58b4518f2a6be0490e23e4874f3aaa4b9a8df', '2024-06-17 15:16:11.075925+00', '20240607171721_changed_to_event_request_to_handle_relations', NULL, NULL, '2024-06-17 15:16:11.071469+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('88c58576-b773-4ec7-8534-183b9aa8477d', '77922bce72691b0175e99415a1c7af2c1887ff9b5dc10788841ec76c63449d48', '2024-06-17 15:16:11.080452+00', '20240608130047_added_request_status_enum_to_schema', NULL, NULL, '2024-06-17 15:16:11.076992+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b6868783-cd99-4b5f-9d3c-981aaa41cbea', 'd391891c3c6cd6a8725ba6d43c172c780006f5dd9d0da65eff465f187eb23ad8', '2024-06-17 15:16:11.100299+00', '20240610122810_added_default_back_to_superset_and_add_number_to_set_model', NULL, NULL, '2024-06-17 15:16:11.096779+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('543d80ed-8b3c-4613-a7bb-4620fd4e6c36', 'd1f0ab77f3abcb43374740276b73fbd39aff3bb94f731d0e5eb9455e87cf0c44', '2024-06-17 15:16:11.153476+00', '20240611181901_created_event_match_in_order_to_keep_track_of_a_number_for_matches_that_is_isolated_at_event_level_removed_number_from_match_was_keeping_track_of_all_matches_at_db', NULL, NULL, '2024-06-17 15:16:11.143026+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0a79d8dc-ae97-4fd8-a3e9-4a39d5dae7fa', '572da907d871fcf38292d97f7de742d4c2b618240f040eb07678649cd645fd36', '2024-06-17 15:16:11.105328+00', '20240610124914_fixing_match_sets_relation', NULL, NULL, '2024-06-17 15:16:11.101388+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('9dedce4b-6fce-4ad3-baf2-5f5009b4860d', 'aa2e3319ccc06cbff4bd03ff533faeb5b98a048355509caaeac331f244627101', '2024-06-17 15:16:11.135238+00', '20240610190130_added_groups_to_prisma_schema', NULL, NULL, '2024-06-17 15:16:11.115516+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c424d09b-e012-4fdc-bbb0-eb7582552608', 'ad5449b99d871eb26fa7812d11d6875b668c1209e8a70b589cf0f6bc8b212b99', '2024-06-17 15:16:11.109884+00', '20240610125713_removed_autoincrement_to_matches_number', NULL, NULL, '2024-06-17 15:16:11.1064+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('baf08daa-4a19-4bbf-97eb-ae24852f8046', 'c8432a598c7183b4b26ac9c0364cc6aa30ee4bd011a85cd80ed9182d47d7687d', '2024-06-17 15:16:11.141854+00', '20240611161458_category_group_unique', NULL, NULL, '2024-06-17 15:16:11.136421+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('57f1b714-0fd9-44ca-b9c4-12af23359aaa', '620159ac4b1acf42a628fcc07f20743d6043b2b4572eca21e405a779784ff195', '2024-06-17 15:16:11.175668+00', '20240613124009_adding_relation_betwenn_category_groups_and_event_matches', NULL, NULL, '2024-06-17 15:16:11.171855+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b4e429e0-c99c-465d-9862-e5d480c5db3b', '44863f50c0f07ed33d4d58d4d30506452bd2b3bb92792371c67bf7859a28e417', '2024-06-17 15:16:11.170726+00', '20240612011843_adding_matches_winner_references_for_creating_finals_properly', NULL, NULL, '2024-06-17 15:16:11.161635+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('6760461a-74ca-428f-a9bf-2c38a9a89051', '620328c0b991d96fa7ef2b61fd7e35bdd9c580831f22e891b86460107cc4eb6b', '2024-06-17 15:16:11.180546+00', '20240613125016_adding_relation_between_event_matches_and_categories_groups_and_doubles_group', NULL, NULL, '2024-06-17 15:16:11.176828+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('86a684c5-0029-4ecf-9976-05bf02329304', '01b98127b08a83f611870e612a4fa4937599369c2bb94233dc8e7922ec4248c4', '2024-06-17 15:16:11.185816+00', '20240613134328_fixed_typo_at_eventmatch', NULL, NULL, '2024-06-17 15:16:11.181722+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('052fe79d-4c94-4704-ba8c-544e7c7c75f9', '7a34983718041684be3874d0362f5f6c7aeffd264cc94c3592087cb01167d1ed', '2024-06-17 15:16:11.190408+00', '20240613145657_removed_unique_relation_at_eventmatch_in_order_to_try_to_fix_circular_relations', NULL, NULL, '2024-06-17 15:16:11.186941+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cde99fc5-466f-477d-84e3-88b1b6411310', '51af2688dc477254c2eb8aa49be4591bed0562e6518dc712da35d25b936c04bc', '2024-06-17 15:16:11.201561+00', '20240613223356_added_is_finished_to_category_group_added_group_matches_finished_to_event', NULL, NULL, '2024-06-17 15:16:11.197805+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0e310141-814b-476f-9f07-6f98e44bf635', '3b00e68886c774d8645281ddfe128a909ea3903e8f097634c350ec1f736dfbd2', '2024-06-17 15:16:11.206537+00', '20240614005031_rework_with_groups_stage_is_finished', NULL, NULL, '2024-06-17 15:16:11.202726+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c0b6244c-2eba-4fd0-9886-f6068010b54a', 'a3098a12d2cc116913b12ae86c9d629e4ee6e2c06c22581d9e95c24951f3c363', '2024-06-17 15:16:11.213977+00', '20240614132208_back_to_id_event_id_match_id_at_event_match', NULL, NULL, '2024-06-17 15:16:11.207651+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e880df7f-fb87-445a-9b41-1c36a37c15f8', '1b927324c65e2df74140ba7b9dffedd009bdce4b4592005a83088be7204b5fe9', '2024-06-17 15:16:11.220075+00', '20240614143056_changed_doubles_for_eventdoubles_at_doubles_groups_schema', NULL, NULL, '2024-06-17 15:16:11.215121+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('5e8997fb-f527-4120-b797-47f79527e5e8', 'e5462b4d8117ec56741f066c13607539832a8eac46d4308300826773fa721dc0', '2024-06-17 15:16:11.224761+00', '20240614171555_took_off_relation_between_doubles_and_doubles_group_this_is_handled_now_using_event_double', NULL, NULL, '2024-06-17 15:16:11.221204+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ab949fc6-a1bb-4939-a161-98e1b7cd3ff4', '03bad0ca44100d819f880715b4c342f68b5cb69fd596b09100273ad864ee341a', '2024-06-17 15:16:13.086176+00', '20240617151613_adjusting_one_to_one_relation_between_event_match_and_match', NULL, NULL, '2024-06-17 15:16:13.079309+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('d81539e2-65b8-44c9-b225-3c9de8fd7a58', '119525c243e047ce87d67360a8afd9737158cae17d5cc535832513c7f0c5d18a', '2024-06-17 15:42:14.370089+00', '20240617154214_adjusting_circular_dependency_between_event_matches_and_matches', NULL, NULL, '2024-06-17 15:42:14.351936+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ae7a82c5-a9d0-4515-a136-42f34c96ee3a', '78eb971dc1dc88fde553d43bb7bf690ec59097d5871c0c05845083e607571e22', '2024-06-17 16:36:47.940234+00', '20240617163647_adjusting_circular_dependency_between_event_matches_and_matches', NULL, NULL, '2024-06-17 16:36:47.933356+00', 1);


--
-- Name: EventMatch_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EventMatch_number_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

