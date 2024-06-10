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

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType", "doubleId") VALUES ('0820446f-6153-4bf2-99ac-db3168ec4213', 'Brand new event', false, '2024-06-12 03:00:00', '2024-06-14 03:00:00', 60, 8, 12, 'GROUPS', 'SUPERSET', NULL);


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5b828fbe-579b-4c9e-b261-c95d25dcea71', 4, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('b40e37d7-b57f-49ed-9043-81afec7e761c', 5, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('f69fb718-ac84-491a-880e-bb11f98c75ad', 3, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '83507e9b-f627-4ab1-9490-d60b02200be1', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('242df1a0-6349-4f41-8b11-c8d05cfb10e9', 7, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('976f8223-72ed-4dd5-9e3d-f1856230fb75', 8, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('ed6d7894-27c5-4e7f-a54e-1a7eeb1b4039', 6, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '83507e9b-f627-4ab1-9490-d60b02200be1', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('60e627d6-ff21-4e6e-85c9-052019d6fcc5', 11, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('7e843cbe-a564-4849-9af0-fd5d23fbae6a', 9, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '85987c22-09a2-438e-ba34-3b42bfdb234a', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('8a6c8e17-4acf-4cea-b94b-754087a817dc', 10, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '8cf024e5-44b8-41b8-9ca4-bd6098f76e86', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('398b7900-2b1c-45b6-82a7-0de9d32f15cb', 12, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '83507e9b-f627-4ab1-9490-d60b02200be1', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('335c6615-033b-46ee-8f89-167c211b73ec', 13, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '83507e9b-f627-4ab1-9490-d60b02200be1', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('495e01b3-eb14-43f1-9258-64fc19f87c3e', 14, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '85987c22-09a2-438e-ba34-3b42bfdb234a', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('6b2f5dd6-7750-473f-ac59-63bd9f54c1da', 1, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '83507e9b-f627-4ab1-9490-d60b02200be1', NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('f417a2dd-69eb-4bba-a09b-5ea4fa78b039', 1, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'BO3', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('101bd4b7-30ed-4327-b070-4b37dcc242e3', 2, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'BO3', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('40e932e0-bfb6-4dbd-bef8-49bd749c31f5', 1, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'BO3', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('f7847749-d1dc-4fbe-a376-76a4d83a676a', 1, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'BO3', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('1ecaaa98-18cf-46ff-90df-851383230c3d', 1, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'SUPERSET', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('5725aa6f-14dd-4f37-8b14-ddcf29a85415', 1, false, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL, NULL, 'BO2_SUPERTIE', NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "courtId") VALUES ('752e405e-cd1b-4ce2-acdc-43e26619ec4b', 2, true, '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '8cf024e5-44b8-41b8-9ca4-bd6098f76e86', NULL, 'SUPERSET', NULL);


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

INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('51763a9b-28d2-43cd-ad87-58d720a101c7', 'NORMAL', 1, NULL, NULL, 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('1883b04c-1ae0-4129-9d4d-0e21f26ebf5c', 'NORMAL', 2, NULL, NULL, 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('30610a93-387a-4e44-bf1b-54da1ab03786', 'NORMAL', 3, NULL, NULL, 'f417a2dd-69eb-4bba-a09b-5ea4fa78b039', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('f4fe9812-1b0e-4d3d-8663-dbf05de8c899', 'NORMAL', 1, NULL, NULL, '101bd4b7-30ed-4327-b070-4b37dcc242e3', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('0ed6f509-c5ad-4291-a61b-56d00ca7d483', 'NORMAL', 2, NULL, NULL, '101bd4b7-30ed-4327-b070-4b37dcc242e3', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('1284b390-a170-400e-88b9-88fe6f238231', 'NORMAL', 3, NULL, NULL, '101bd4b7-30ed-4327-b070-4b37dcc242e3', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('62bef014-3f9c-4eef-a6c2-c147caf534f0', 'NORMAL', 1, NULL, NULL, '40e932e0-bfb6-4dbd-bef8-49bd749c31f5', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('ef8c4fa6-9cec-421d-b185-00d7e086cc8b', 'NORMAL', 2, NULL, NULL, '40e932e0-bfb6-4dbd-bef8-49bd749c31f5', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('fd30403e-7272-4d3e-af8c-68ea76698f89', 'NORMAL', 3, NULL, NULL, '40e932e0-bfb6-4dbd-bef8-49bd749c31f5', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('2f2be740-f3c6-4d1f-bf96-e6c849de95ec', 'NORMAL', 1, NULL, NULL, 'f7847749-d1dc-4fbe-a376-76a4d83a676a', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('3cf9c127-60ca-472f-a6ea-e91aac47c88d', 'NORMAL', 2, NULL, NULL, 'f7847749-d1dc-4fbe-a376-76a4d83a676a', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('de43ca25-0e4c-4116-a4ca-cfc947154029', 'NORMAL', 3, NULL, NULL, 'f7847749-d1dc-4fbe-a376-76a4d83a676a', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('b8d75a4a-66e0-4de4-89b4-4edc9b29f580', 'SUPER', 1, NULL, NULL, '1ecaaa98-18cf-46ff-90df-851383230c3d', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('66628ed0-0461-44bd-9200-d90333749815', 'NORMAL', 0, NULL, NULL, '5725aa6f-14dd-4f37-8b14-ddcf29a85415', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('e120cdfd-ef5a-4d3e-a400-cf78bda98159', 'NORMAL', 1, NULL, NULL, '5725aa6f-14dd-4f37-8b14-ddcf29a85415', false);
INSERT INTO public."Set" (id, type, number, "setWinnerId", result, "matchId", "isFinished") VALUES ('364a9deb-e7a3-4e46-8f06-e6766ae56b68', 'SUPERTIEBREAK', 2, NULL, NULL, '5725aa6f-14dd-4f37-8b14-ddcf29a85415', false);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Invite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('f1d37c14-4ff5-48e9-a6c3-135c91ea1708', 'Joao', 'Plasticat', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('4028ce0c-6f74-481a-b720-e0ade4d73f4b', 'Arthur', 'Peruzzo', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('541773e4-87fa-4341-8755-43e8fea6dfbb', 'Medusa', 'Malvada', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'REVES');
INSERT INTO public."Player" (id, "firstName", "lastName", "categoryId", "position") VALUES ('ad9512fc-e56c-4622-95d1-da5a7a0a7e14', 'Mari', 'Queriida', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', 'DRIVE');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('42050781-eabf-43fe-81ae-f5288758d410', 'Joao', 'Plasticat', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$1QArTDCUanqCyyfaIlUwAA$fv1fp23f+U2h5uahL6kHP6KqLwcLdJYYLWscN5R/5qs', '2018-06-06 03:00:00', '2024-06-10 13:02:03.224', '2024-06-10 13:02:20.067', 'f1d37c14-4ff5-48e9-a6c3-135c91ea1708', 'USER', '$argon2id$v=19$m=65536,t=3,p=4$jSCz8aQpt22x3P4d1HYbVA$v5KRzkN8PfGXLN1GWK5rgg14BYYn+SAKTnyrRX0FhSo', NULL);
INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('8d9b8e08-2f42-4f7c-93e3-94629611af8c', 'Arthur', 'Peruzzo', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$+DBaxblPISDCBk8KvOeocw$NNXVTjLNDk5IxH+UZYeruytdZ7DWrGij0DlkNWRchgk', '1991-12-21 02:00:00', '2024-06-10 12:50:00.195', '2024-06-10 13:02:25.821', '4028ce0c-6f74-481a-b720-e0ade4d73f4b', 'ADMIN', '$argon2id$v=19$m=65536,t=3,p=4$TX1Uet9F29SUj6BCpC7pKg$ysHWytFoeHPB3cQQDMzsgMHQiwOvWf3S7jUV+woj1Jc', NULL);


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
-- PostgreSQL database dump complete
--

