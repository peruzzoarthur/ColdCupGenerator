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
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, address, name) VALUES ('698d857c-175e-4357-a106-79941fd1311a', 'Rua General Gomes Portinho, 223', 'Complexo CK');


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

INSERT INTO public."Double" (id, "categoryId") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('85987c22-09a2-438e-ba34-3b42bfdb234a', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('adc546cb-1b88-43fa-8a22-6fb5583b1a1e', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ee758ccf-b83b-4f7e-aa03-64f36601678b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('94fbde99-0cd0-4ce7-9348-5aeab5962159', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('3726a13f-2672-4afd-a5d6-716eb79950e0', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "finishDate", "startDate", "eventType", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "doubleId") VALUES ('0820446f-6153-4bf2-99ac-db3168ec4213', 'Brand new event', false, '2024-06-14 03:00:00', '2024-06-12 03:00:00', 'ALLxALL', 60, 8, 12, NULL);


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('5b828fbe-579b-4c9e-b261-c95d25dcea71', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', NULL, 4, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('b40e37d7-b57f-49ed-9043-81afec7e761c', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', NULL, 5, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('f69fb718-ac84-491a-880e-bb11f98c75ad', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '83507e9b-f627-4ab1-9490-d60b02200be1', 3, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('242df1a0-6349-4f41-8b11-c8d05cfb10e9', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', NULL, 7, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('976f8223-72ed-4dd5-9e3d-f1856230fb75', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', NULL, 8, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('ed6d7894-27c5-4e7f-a54e-1a7eeb1b4039', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '83507e9b-f627-4ab1-9490-d60b02200be1', 6, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('60e627d6-ff21-4e6e-85c9-052019d6fcc5', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', NULL, 11, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('7e843cbe-a564-4849-9af0-fd5d23fbae6a', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '85987c22-09a2-438e-ba34-3b42bfdb234a', 9, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('8a6c8e17-4acf-4cea-b94b-754087a817dc', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 10, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('398b7900-2b1c-45b6-82a7-0de9d32f15cb', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '83507e9b-f627-4ab1-9490-d60b02200be1', 12, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('335c6615-033b-46ee-8f89-167c211b73ec', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '83507e9b-f627-4ab1-9490-d60b02200be1', 13, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('495e01b3-eb14-43f1-9258-64fc19f87c3e', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '85987c22-09a2-438e-ba34-3b42bfdb234a', 14, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('6b2f5dd6-7750-473f-ac59-63bd9f54c1da', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '83507e9b-f627-4ab1-9490-d60b02200be1', 1, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('f417a2dd-69eb-4bba-a09b-5ea4fa78b039', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'BO3', NULL, 1, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('101bd4b7-30ed-4327-b070-4b37dcc242e3', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'BO3', NULL, 2, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('40e932e0-bfb6-4dbd-bef8-49bd749c31f5', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'BO3', NULL, 1, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('f7847749-d1dc-4fbe-a376-76a4d83a676a', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'BO3', NULL, 1, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('1ecaaa98-18cf-46ff-90df-851383230c3d', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', NULL, 1, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('5725aa6f-14dd-4f37-8b14-ddcf29a85415', false, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'BO2_SUPERTIE', NULL, 1, NULL);
INSERT INTO public."Match" (id, "isFinished", "eventId", "categoryId", type, "winnerDoublesId", number, "courtId") VALUES ('752e405e-cd1b-4ce2-acdc-43e26619ec4b', true, NULL, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'SUPERSET', '8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 2, NULL);


--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventRequest; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('51763a9b-28d2-43cd-ad87-58d720a101c7', 'NORMAL', NULL, false, NULL, 1, 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('1883b04c-1ae0-4129-9d4d-0e21f26ebf5c', 'NORMAL', NULL, false, NULL, 2, 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('30610a93-387a-4e44-bf1b-54da1ab03786', 'NORMAL', NULL, false, NULL, 3, 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('f4fe9812-1b0e-4d3d-8663-dbf05de8c899', 'NORMAL', NULL, false, NULL, 1, '101bd4b7-30ed-4327-b070-4b37dcc242e3');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('0ed6f509-c5ad-4291-a61b-56d00ca7d483', 'NORMAL', NULL, false, NULL, 2, '101bd4b7-30ed-4327-b070-4b37dcc242e3');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('1284b390-a170-400e-88b9-88fe6f238231', 'NORMAL', NULL, false, NULL, 3, '101bd4b7-30ed-4327-b070-4b37dcc242e3');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('62bef014-3f9c-4eef-a6c2-c147caf534f0', 'NORMAL', NULL, false, NULL, 1, '40e932e0-bfb6-4dbd-bef8-49bd749c31f5');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('ef8c4fa6-9cec-421d-b185-00d7e086cc8b', 'NORMAL', NULL, false, NULL, 2, '40e932e0-bfb6-4dbd-bef8-49bd749c31f5');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('fd30403e-7272-4d3e-af8c-68ea76698f89', 'NORMAL', NULL, false, NULL, 3, '40e932e0-bfb6-4dbd-bef8-49bd749c31f5');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('2f2be740-f3c6-4d1f-bf96-e6c849de95ec', 'NORMAL', NULL, false, NULL, 1, 'f7847749-d1dc-4fbe-a376-76a4d83a676a');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('3cf9c127-60ca-472f-a6ea-e91aac47c88d', 'NORMAL', NULL, false, NULL, 2, 'f7847749-d1dc-4fbe-a376-76a4d83a676a');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('de43ca25-0e4c-4116-a4ca-cfc947154029', 'NORMAL', NULL, false, NULL, 3, 'f7847749-d1dc-4fbe-a376-76a4d83a676a');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('b8d75a4a-66e0-4de4-89b4-4edc9b29f580', 'SUPER', NULL, false, NULL, 1, '1ecaaa98-18cf-46ff-90df-851383230c3d');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('66628ed0-0461-44bd-9200-d90333749815', 'NORMAL', NULL, false, NULL, 0, '5725aa6f-14dd-4f37-8b14-ddcf29a85415');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('e120cdfd-ef5a-4d3e-a400-cf78bda98159', 'NORMAL', NULL, false, NULL, 1, '5725aa6f-14dd-4f37-8b14-ddcf29a85415');
INSERT INTO public."Set" (id, type, result, "isFinished", "setWinnerId", number, "matchId") VALUES ('364a9deb-e7a3-4e46-8f06-e6766ae56b68', 'SUPERTIEBREAK', NULL, false, NULL, 2, '5725aa6f-14dd-4f37-8b14-ddcf29a85415');


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('f1d37c14-4ff5-48e9-a6c3-135c91ea1708', 'Joao', 'Plasticat', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('4028ce0c-6f74-481a-b720-e0ade4d73f4b', 'Arthur', 'Peruzzo', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('541773e4-87fa-4341-8755-43e8fea6dfbb', 'Medusa', 'Malvada', 'REVES', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Player" (id, "firstName", "lastName", "position", "categoryId") VALUES ('ad9512fc-e56c-4622-95d1-da5a7a0a7e14', 'Mari', 'Queriida', 'DRIVE', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, email, password, "createdAt", "updatedAt", "playerId", role, dob, "firstName", "lastName", "hashedRt", "profileImage") VALUES ('42050781-eabf-43fe-81ae-f5288758d410', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$1QArTDCUanqCyyfaIlUwAA$fv1fp23f+U2h5uahL6kHP6KqLwcLdJYYLWscN5R/5qs', '2024-06-10 13:02:03.224', '2024-06-10 13:02:20.067', 'f1d37c14-4ff5-48e9-a6c3-135c91ea1708', 'USER', '2018-06-06 03:00:00', 'Joao', 'Plasticat', '$argon2id$v=19$m=65536,t=3,p=4$jSCz8aQpt22x3P4d1HYbVA$v5KRzkN8PfGXLN1GWK5rgg14BYYn+SAKTnyrRX0FhSo', NULL);
INSERT INTO public."User" (id, email, password, "createdAt", "updatedAt", "playerId", role, dob, "firstName", "lastName", "hashedRt", "profileImage") VALUES ('8d9b8e08-2f42-4f7c-93e3-94629611af8c', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$+DBaxblPISDCBk8KvOeocw$NNXVTjLNDk5IxH+UZYeruytdZ7DWrGij0DlkNWRchgk', '2024-06-10 12:50:00.195', '2024-06-10 13:02:25.821', '4028ce0c-6f74-481a-b720-e0ade4d73f4b', 'ADMIN', '1991-12-21 02:00:00', 'Arthur', 'Peruzzo', '$argon2id$v=19$m=65536,t=3,p=4$TX1Uet9F29SUj6BCpC7pKg$ysHWytFoeHPB3cQQDMzsgMHQiwOvWf3S7jUV+woj1Jc', NULL);


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '0820446f-6153-4bf2-99ac-db3168ec4213');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('e7e49d57-e204-457a-815d-6762179389dd', '0820446f-6153-4bf2-99ac-db3168ec4213');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('19da32e3-54cb-4c15-bd4b-d6dc422a36d7', '0820446f-6153-4bf2-99ac-db3168ec4213');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '101bd4b7-30ed-4327-b070-4b37dcc242e3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '101bd4b7-30ed-4327-b070-4b37dcc242e3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '40e932e0-bfb6-4dbd-bef8-49bd749c31f5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '40e932e0-bfb6-4dbd-bef8-49bd749c31f5');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'f7847749-d1dc-4fbe-a376-76a4d83a676a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'f7847749-d1dc-4fbe-a376-76a4d83a676a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '1ecaaa98-18cf-46ff-90df-851383230c3d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '1ecaaa98-18cf-46ff-90df-851383230c3d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '5725aa6f-14dd-4f37-8b14-ddcf29a85415');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '5725aa6f-14dd-4f37-8b14-ddcf29a85415');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('94fbde99-0cd0-4ce7-9348-5aeab5962159', 'f1d37c14-4ff5-48e9-a6c3-135c91ea1708');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('94fbde99-0cd0-4ce7-9348-5aeab5962159', '4028ce0c-6f74-481a-b720-e0ade4d73f4b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3726a13f-2672-4afd-a5d6-716eb79950e0', '541773e4-87fa-4341-8755-43e8fea6dfbb');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3726a13f-2672-4afd-a5d6-716eb79950e0', 'ad9512fc-e56c-4622-95d1-da5a7a0a7e14');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '51763a9b-28d2-43cd-ad87-58d720a101c7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '51763a9b-28d2-43cd-ad87-58d720a101c7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '1883b04c-1ae0-4129-9d4d-0e21f26ebf5c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '1883b04c-1ae0-4129-9d4d-0e21f26ebf5c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '30610a93-387a-4e44-bf1b-54da1ab03786');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '30610a93-387a-4e44-bf1b-54da1ab03786');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'f4fe9812-1b0e-4d3d-8663-dbf05de8c899');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'f4fe9812-1b0e-4d3d-8663-dbf05de8c899');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '0ed6f509-c5ad-4291-a61b-56d00ca7d483');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '0ed6f509-c5ad-4291-a61b-56d00ca7d483');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '1284b390-a170-400e-88b9-88fe6f238231');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '1284b390-a170-400e-88b9-88fe6f238231');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '62bef014-3f9c-4eef-a6c2-c147caf534f0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '62bef014-3f9c-4eef-a6c2-c147caf534f0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'ef8c4fa6-9cec-421d-b185-00d7e086cc8b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'ef8c4fa6-9cec-421d-b185-00d7e086cc8b');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'fd30403e-7272-4d3e-af8c-68ea76698f89');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'fd30403e-7272-4d3e-af8c-68ea76698f89');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '2f2be740-f3c6-4d1f-bf96-e6c849de95ec');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '2f2be740-f3c6-4d1f-bf96-e6c849de95ec');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '3cf9c127-60ca-472f-a6ea-e91aac47c88d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '3cf9c127-60ca-472f-a6ea-e91aac47c88d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'de43ca25-0e4c-4116-a4ca-cfc947154029');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'de43ca25-0e4c-4116-a4ca-cfc947154029');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'b8d75a4a-66e0-4de4-89b4-4edc9b29f580');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'b8d75a4a-66e0-4de4-89b4-4edc9b29f580');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '66628ed0-0461-44bd-9200-d90333749815');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '66628ed0-0461-44bd-9200-d90333749815');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', 'e120cdfd-ef5a-4d3e-a400-cf78bda98159');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', 'e120cdfd-ef5a-4d3e-a400-cf78bda98159');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('83507e9b-f627-4ab1-9490-d60b02200be1', '364a9deb-e7a3-4e46-8f06-e6766ae56b68');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8cf024e5-44b8-41b8-9ca4-bd6098f76e86', '364a9deb-e7a3-4e46-8f06-e6766ae56b68');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('0820446f-6153-4bf2-99ac-db3168ec4213', '698d857c-175e-4357-a106-79941fd1311a');


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

INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('71b0c195-5e71-4e65-ba11-f2405e9be9d6', '380eccf03c739afc134b6f80fbfe3c871408414d03265417c5b5cfa52c2e336d', '2024-06-10 12:49:11.733234+00', '20240317104629_event_double', NULL, NULL, '2024-06-10 12:49:11.724494+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e6349ebf-85a0-4968-aada-12945cdec110', '2ab5277b1c69da02c86b02f259424e5828df0ac16aebda988fd8c57feeb3bf19', '2024-06-10 12:49:11.306826+00', '20240315201631_new_migration', NULL, NULL, '2024-06-10 12:49:11.228219+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('3b9fee56-5c29-41e2-8ca6-adb458281c5d', '7fbaa71395434b1bef06a83bab3a5b0f7566f0df0e2e18b9e05fb11904866c54', '2024-06-10 12:49:11.477534+00', '20240315202204_uuids', NULL, NULL, '2024-06-10 12:49:11.308387+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('80b6d6e2-2ea7-48e2-99c7-ced9b8e85b3e', 'bc807d87001330a7a141f91c0379b48d15768dee29591f40d1aabcbc921f0394', '2024-06-10 12:49:11.847092+00', '20240415192431_match_id', NULL, NULL, '2024-06-10 12:49:11.843235+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('73dc7747-a282-4975-b606-a9b1fb9ee349', '0b9d5e62d94bb2c44793dbcd6512caad0229ae10d8d79a7cef2178a77bdf8994', '2024-06-10 12:49:11.498181+00', '20240315203139_cat_back_to_number', NULL, NULL, '2024-06-10 12:49:11.479456+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c00ada89-25fe-4721-a40c-94849c62e513', 'b2bdfcae756f89e693d15d5d56825eb1ce221b2efcce2880f71b27597dd98409', '2024-06-10 12:49:11.738135+00', '20240317111212_tadam', NULL, NULL, '2024-06-10 12:49:11.734378+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('aa9bd0f0-c718-4c72-b8ee-0633727ee5f9', 'fd321a60cd0e10f5ffed1865354b9160b42422d575adb9c498c96e3784c390dd', '2024-06-10 12:49:11.504808+00', '20240315203813_another', NULL, NULL, '2024-06-10 12:49:11.500018+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f9013185-51db-4af0-adba-5a17a7ab99da', '1cd3b79abe58f4dee6b4c75aec1f88c8eab53391c12da407594be6bf1fc6b074', '2024-06-10 12:49:11.65827+00', '20240316085000_newmig', NULL, NULL, '2024-06-10 12:49:11.506245+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('9d17c20f-cb6d-48e5-95d5-8be151fb9022', '0d9a197225e3f0637c66c2243c1883237494a3e18dd1929bde1bde1cd52f3087', '2024-06-10 12:49:11.802103+00', '20240405172037_testing_adding_all_games_to_doubles', NULL, NULL, '2024-06-10 12:49:11.792031+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('be49a0bf-2511-4ccf-9d70-64c1b4f645b1', '5a5a368e88514e514f74537f69098163a2504e1e1abe623439adad6460217c64', '2024-06-10 12:49:11.670905+00', '20240316094139_cat_m_n_events', NULL, NULL, '2024-06-10 12:49:11.659962+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0743fcad-2d5b-4e02-805b-3866936431ae', '9a5c31815b18f0c7887f47397c036ed02d8adb1d1774f674cab17702ee16f4ec', '2024-06-10 12:49:11.744525+00', '20240317122357_aaaaaa', NULL, NULL, '2024-06-10 12:49:11.739187+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('73de3772-8a92-40ed-9ce9-e49a94ae35be', '3d18ccd96c757bff3a790ba22c32ac8fefc15dcf1b27d5ed4349ba118f7adb8d', '2024-06-10 12:49:11.675657+00', '20240316094235_cats_m_n_events', NULL, NULL, '2024-06-10 12:49:11.67204+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0d01fc4b-10ce-4946-8e26-681f2312a2be', '803c6bec578ddb90f8a5576c50e4c2c06befcb23b02d6d9843432f4e030069ea', '2024-06-10 12:49:11.690521+00', '20240316202549_places_added', NULL, NULL, '2024-06-10 12:49:11.676729+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('bfe5d56c-8403-47b0-becb-f2443c733e3d', 'e3515dc6290e69e4198006977954e0264c2d7e7e35693d548b05b7e5bb729d19', '2024-06-10 12:49:11.695086+00', '20240316203234_upup', NULL, NULL, '2024-06-10 12:49:11.69167+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b30cf393-830e-434a-af0a-25696621acfa', 'b70b6381fb99f172b81a65a817ec1f2ac82f1ff1f218c598bf740631ff6549d0', '2024-06-10 12:49:11.751286+00', '20240317125808_newmigration', NULL, NULL, '2024-06-10 12:49:11.745597+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('2f06ea58-5a0b-4224-8454-3746fd369db3', '75ecf729f9e9bdc9f6dcfcd88595616bfbfe77250d0aa852019a1c353e1b283a', '2024-06-10 12:49:11.701194+00', '20240316203619_ups', NULL, NULL, '2024-06-10 12:49:11.696142+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e53c88a6-fc08-4278-9c58-eff5a2497cbb', 'f64cfdf23ae19f448ad6e308988f72d7e1f3883a7a49df55035e9ad8b328c3a3', '2024-06-10 12:49:11.7068+00', '20240316215738_mig', NULL, NULL, '2024-06-10 12:49:11.702266+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('303b6c97-be44-4929-96ce-065c14509ec5', 'f94700a7083b8ddc3e7aca5fb64233c54dc1c90755485c767377747d61c0f2f1', '2024-06-10 12:49:11.712193+00', '20240316224010_event_has_1_category_for_testing', NULL, NULL, '2024-06-10 12:49:11.707844+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('60bd2236-db43-411f-a367-8477e0339ce7', '1a62cbb82dc36dc061828aad9383b8e1b017507202f2358b13ddc5cceb7080fa', '2024-06-10 12:49:11.758232+00', '20240317130431_readded_category_to_relation', NULL, NULL, '2024-06-10 12:49:11.752403+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('938df405-967f-449a-8807-0fed4284055a', 'ef6a4032560c4242a0dc26eb272cc73833e9a85ce40714e9a3f7766bf283c218', '2024-06-10 12:49:11.723414+00', '20240316224442_', NULL, NULL, '2024-06-10 12:49:11.713374+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e71c8509-f413-43aa-991c-8a94a15061ea', '30ad8b67007eef72f93ac09c4bc94ac14842ba3de12faba0a6a54e905f9369c4', '2024-06-10 12:49:11.81326+00', '20240415153816_games_events', NULL, NULL, '2024-06-10 12:49:11.803244+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('15da1059-b6ca-46fc-b28c-32d2ad3a609a', 'f28e7b3bd96491bb685f95ed652f654832859e62bf6af527e585e7cce230ecc9', '2024-06-10 12:49:11.764499+00', '20240326141146_email_is_unique', NULL, NULL, '2024-06-10 12:49:11.759311+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('612db67f-365e-4f71-b224-f56ce17eadd1', 'c185b1c408959e0d04e02455e1ab61b9190bae7fa6692e8dca1dbc2619688187', '2024-06-10 12:49:11.77123+00', '20240401135704_', NULL, NULL, '2024-06-10 12:49:11.765619+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7ce0e861-824b-44ae-a774-b9c5bd16d59c', '596250df3fafedb1024607ad7b6d542bae7ee590c0ac3d0f1fa640a9e8df6027', '2024-06-10 12:49:11.824448+00', '20240415154422_sets_events', NULL, NULL, '2024-06-10 12:49:11.814426+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7d974436-03d4-42c3-8ea0-ee3922034bea', '55a3c2b83292350c29637fefb9239a0722df9423c08f70bfe27c3083200efa72', '2024-06-10 12:49:11.781916+00', '20240403150410_till_the_games', NULL, NULL, '2024-06-10 12:49:11.772368+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('607d925e-f59d-4313-b95a-e2571d6ec594', 'f99e50be1c7b22ab9903b81964f0a9c7f856faaef4d25f2c7de7583160e19239', '2024-06-10 12:49:11.79091+00', '20240404104019_added_number_to_track_matches', NULL, NULL, '2024-06-10 12:49:11.782981+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('2b8e4d48-63a6-49c7-9e35-955ea33ecda6', '718e7e6e2feb4ac05b9666a563675e26972ae8e79346cbf6b1326b2d942ef069', '2024-06-10 12:49:11.853783+00', '20240415193636_adjusting_unique_for_match_dates', NULL, NULL, '2024-06-10 12:49:11.848233+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8a40f097-e89a-48a0-a851-b54b134b4e3a', 'd72a6c1a48de1065262aae54b518c6345b9102a43122a47a388aa3f24d61d2a2', '2024-06-10 12:49:11.837491+00', '20240415183917_adding_match_dates', NULL, NULL, '2024-06-10 12:49:11.825552+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('552c4def-b10c-41f4-a341-8f2b88f79cc3', 'bcb3a4ee90a48cf73d64ecd27a1ebe3022e9286d7270603f64d1898dcc81fcf8', '2024-06-10 12:49:11.842167+00', '20240415184055_start_and_finish_to_dates', NULL, NULL, '2024-06-10 12:49:11.838638+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('42b0f4c1-a079-4dda-b22f-ef91b0da449e', '840bc207720360b06e592640961f001b2195aa44d8b3d0ef25cc724e1e5f4602', '2024-06-10 12:49:11.873932+00', '20240416192253_changed_unique_at_matchdate', NULL, NULL, '2024-06-10 12:49:11.868546+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f6078fc6-5978-49da-b50c-f0a3923b8c05', 'e327f94ce50a5a24fa486caf192efbb166a51e1ecb780c33c0802d4e4eada35b', '2024-06-10 12:49:11.86086+00', '20240415194003_adjusting_match_do_date_match_relation', NULL, NULL, '2024-06-10 12:49:11.854918+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('69d19b71-b097-4d66-9ee3-c8cfab2dcbbd', 'd9723937756012e5e0ad8f33851895103430f598ae7af62b3e04eb026f79ac90', '2024-06-10 12:49:11.884865+00', '20240417130129_', NULL, NULL, '2024-06-10 12:49:11.879468+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('2ddb3568-03d4-43da-840d-2cb489d503df', '04c7eb1e1d9340e75c0d79f180c927ae9e57b87d31b42e8b617e85ff30f31763', '2024-06-10 12:49:11.867409+00', '20240415194138_again', NULL, NULL, '2024-06-10 12:49:11.861957+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c318ffba-a8d0-4926-9872-5b697c6dcfda', 'c11d88c938e608bef3cdc95c0fef365723093a861ecf5458a8233e4ff5edb0e5', '2024-06-10 12:49:11.878349+00', '20240417130048_fixing_one_to_one_between_match_and_matchdates', NULL, NULL, '2024-06-10 12:49:11.875064+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('bbac1088-668d-46b3-a2d4-876afb9a1488', '43752ee94e75b773b76628e226d6c9fa2750c59354c34d8ee9d2d7fdd28a8b37', '2024-06-10 12:49:11.908318+00', '20240424130523_adding_courts_to_the_game', NULL, NULL, '2024-06-10 12:49:11.893378+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('aa89301a-8921-4097-bfc4-23b9a03ce31b', 'cfb1017ef109ae98fdebc132923e65538c88aabded50f16c4e78b20c01f938dc', '2024-06-10 12:49:11.892226+00', '20240423115628_added_event_type', NULL, NULL, '2024-06-10 12:49:11.886018+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('da9c6d62-fb2e-486d-afee-8a12d8b81172', '5f45ab03616388a70b4553aed17223114925bb0d43cf5dcac23a8d41d02e3230', '2024-06-10 12:49:11.915201+00', '20240424132259_court_unique_by_name_and_place_id', NULL, NULL, '2024-06-10 12:49:11.909608+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('a2fd89fc-4438-41e1-9e65-e1a4b0b97b28', 'dcc065f0ffe4430b2755a151992473c40702bafb3ffbe47256151e5a927e5127', '2024-06-10 12:49:11.920236+00', '20240426123754_added_courts_match_date_relation', NULL, NULL, '2024-06-10 12:49:11.916349+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('709ff553-7697-4779-a5af-eaaf7dec984a', '066fcfb87da943a7cab17fb4ad4aaa42b7ca49c70a9c54e49adb9b8f4939bd88', '2024-06-10 12:49:11.926975+00', '20240426172043_event_doubles_now_have_at_rest_property', NULL, NULL, '2024-06-10 12:49:11.921358+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('5d8a6060-886a-4cc2-b8dc-b8863562a17b', '7eef77d672f26babe4f5e8e1c0f3640fa482f812268cb2b954fde32e6b8c388f', '2024-06-10 12:49:11.932015+00', '20240502174830_took_unused_match_date_id_variable_from_matches_the_relation_is_only_accessed_via_match_date_side_of_relation_now', NULL, NULL, '2024-06-10 12:49:11.928079+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('97967bee-4803-45fa-8b35-b385a4d5d06a', 'c0bc98912a258d1fb518d853c39da6ebf9d3ef0c6327c8675ddf31c0343600e5', '2024-06-10 12:49:11.943694+00', '20240510170142_added_many_to_many_relation_for_managing_at_rest_state_doubles_match_date', NULL, NULL, '2024-06-10 12:49:11.933147+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0f44abe5-a839-430d-89e5-3c3ec59ceed2', '56b17b910e70a7379d4ad286b34e2134a99940812fa67b1f839f116df0c5f9cf', '2024-06-10 12:49:12.034382+00', '20240601022740_added_invites_to_the_game_added_inviter_id_and_invited_id', NULL, NULL, '2024-06-10 12:49:12.028484+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('4f110daa-a1f6-4e3d-9939-8e1430cd1ed9', '663f65879cecf21c5c002ea76802344e44ff1249c61a729428d1243ae7aab330', '2024-06-10 12:49:11.949944+00', '20240510171026_created_many_to_many_relation_between_doubles_and_matchdate_in_order_to_manage_at_rest_states_of_doubles', NULL, NULL, '2024-06-10 12:49:11.944808+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f294e3ce-df82-48cc-a160-e28f18f4c7ba', '244b51d257cc69aafb5dd249f70de02821d2a5b333f8c5aeaa09064574dabee2', '2024-06-10 12:49:11.954918+00', '20240510172117_fixing', NULL, NULL, '2024-06-10 12:49:11.951053+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('891d71c0-15bd-4e41-898f-e2290b20f1a8', '77902c5a83d4d5f31f12547fd1800e11dd3994832c3682fc58a385a98dbc2195', '2024-06-10 12:49:12.083556+00', '20240608140735_added_doubles_invites_relation_to_facilitate_event_invites', NULL, NULL, '2024-06-10 12:49:12.079227+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('a194b2c8-8d63-4340-ad07-3188d2feda90', 'aa35bdb1ff3c796e18d67ba9fefdd8710363863f59cb130d3337e7561534fce4', '2024-06-10 12:49:11.968695+00', '20240517160713_add_user_model', NULL, NULL, '2024-06-10 12:49:11.956035+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cd7482d5-3a89-43a8-9134-08d715e78a16', '0961a7ad3a93b981f18f79e982a632f59f112f957fbaba3bc2ab021e9164338e', '2024-06-10 12:49:12.039179+00', '20240602131935_added_created_at_to_invite_at_schema', NULL, NULL, '2024-06-10 12:49:12.035585+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f1b64afa-d496-48c6-9be5-6393128a2ea0', 'f6f776a95289654f4a72060facc676c02c90bf084d0a38252b35a3ec11373221', '2024-06-10 12:49:11.973868+00', '20240517161336_add_user_model2', NULL, NULL, '2024-06-10 12:49:11.969917+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e9fe9193-c526-43d0-aacb-2247e847f67c', 'c14435a96bd236b91cce12cf45216e4693e47ef3bb95d120bb5b033f4c2b394c', '2024-06-10 12:49:11.97845+00', '20240520120618_add_user_model3', NULL, NULL, '2024-06-10 12:49:11.974968+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('6e8ef45c-11d0-41fa-b192-85df199bc920', '9a66bb1fe58646ac67bf64cc0968e79db90c3fd03fce18187a9c30f0c616dc0b', '2024-06-10 12:49:11.983101+00', '20240523141446_added_hashed_rt_to_user', NULL, NULL, '2024-06-10 12:49:11.979586+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b9bbd276-53c3-4a69-a885-9f8c5813ec5b', 'f150045cdcb1d367d184b071c105e68e7e3eb1c1ef38edda633c4c8a3d74ade8', '2024-06-10 12:49:12.044959+00', '20240603105847_players_are_linked_now_to_only_one_category', NULL, NULL, '2024-06-10 12:49:12.040339+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('1eb42724-83c2-400b-9385-20425d6e6aee', '5b447e6e35dd7be9473688b327aaff5942417e30192374d7ac28d2e65e5f9e7a', '2024-06-10 12:49:11.987699+00', '20240527201932_added_profile_image_to_user', NULL, NULL, '2024-06-10 12:49:11.984225+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('1e67a734-5c25-47d7-a680-13e7490b6789', '6505cbcce7d21e1c036d6491245f9ef2dad8c282b83a1348ea2232e217f69852', '2024-06-10 12:49:12.001249+00', '20240527215903_added_profile_image_to_user_as_string_now', NULL, NULL, '2024-06-10 12:49:11.988812+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('01b4d943-720a-40a3-9640-d2450418eba6', '9948fac0f1bb7d8387fffb3f7adf96a665ce1a27eae80d0593b45c686408ba33', '2024-06-10 12:49:12.022115+00', '20240601000640_added_invites_to_the_game', NULL, NULL, '2024-06-10 12:49:12.002391+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('47822396-e5d5-492c-a173-79f76e5d7084', '1ecef5df5a6cee59f2293d9203d11299fa0d303c997003ec66da1875dbef97a4', '2024-06-10 12:49:12.056827+00', '20240607161202_added_requests_as_a_many_to_many_relation_between_events_and_doubles', NULL, NULL, '2024-06-10 12:49:12.046185+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('372528b1-ee20-40c6-b98f-a05c34d3cbe8', '6c5212e396225b9587229a1616f6a6461aab2b4a10970c91cbe8a39f46051e30', '2024-06-10 12:49:12.027217+00', '20240601001701_added_invites_to_the_game_fixed_typo', NULL, NULL, '2024-06-10 12:49:12.023259+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('4c6a6a42-ffdb-4cf5-9ac2-40cbaa1e31a6', 'b651d0ce1f204b947d33b681f9ff8db168c82c77480c298578ee1393e522cdf8', '2024-06-10 12:49:12.095283+00', '20240610122039_took_off_default_set_type', NULL, NULL, '2024-06-10 12:49:12.084723+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('d330815e-f317-4d45-89eb-4bcf05d0a95d', '97b11d5dba87c01bcec2c24a914fd1fe6954268ff086ebee395a8175e6ab3740', '2024-06-10 12:49:12.067353+00', '20240607171645_changed_to_event_request_to_handle_relations', NULL, NULL, '2024-06-10 12:49:12.058196+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c33f599e-269b-4dc6-ad49-0ae294cd2e58', 'e59eb5e243aaeb801473393c2cc58b4518f2a6be0490e23e4874f3aaa4b9a8df', '2024-06-10 12:49:12.073254+00', '20240607171721_changed_to_event_request_to_handle_relations', NULL, NULL, '2024-06-10 12:49:12.068559+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8ca16698-53ab-457a-bb8f-7ae1c615a50d', '77922bce72691b0175e99415a1c7af2c1887ff9b5dc10788841ec76c63449d48', '2024-06-10 12:49:12.078042+00', '20240608130047_added_request_status_enum_to_schema', NULL, NULL, '2024-06-10 12:49:12.074399+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e071845d-31f7-42c9-bf2b-57f7a173ef93', 'd391891c3c6cd6a8725ba6d43c172c780006f5dd9d0da65eff465f187eb23ad8', '2024-06-10 12:49:12.100423+00', '20240610122810_added_default_back_to_superset_and_add_number_to_set_model', NULL, NULL, '2024-06-10 12:49:12.096532+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('327778e8-4b4f-4610-8d1e-61e854c6ed8f', '572da907d871fcf38292d97f7de742d4c2b618240f040eb07678649cd645fd36', '2024-06-10 12:49:14.013612+00', '20240610124914_fixing_match_sets_relation', NULL, NULL, '2024-06-10 12:49:14.00868+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cb486fc5-98b2-45c5-995f-5fd1be0b5034', 'ad5449b99d871eb26fa7812d11d6875b668c1209e8a70b589cf0f6bc8b212b99', '2024-06-10 12:57:13.533068+00', '20240610125713_removed_autoincrement_to_matches_number', NULL, NULL, '2024-06-10 12:57:13.528608+00', 1);


--
-- PostgreSQL database dump complete
--

