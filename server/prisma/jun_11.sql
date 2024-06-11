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

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType", "matchType") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', 'New Brave Event', false, '2024-06-11 03:00:00', '2024-06-13 03:00:00', 60, 7, 17, 'GROUPS', 'SUPERSET');


--
-- Data for Name: CategoryGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId") VALUES ('c7c26458-8915-4a23-bacb-218053194d1e', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', '23491aae-8077-421d-b2e2-fd835af7df9e');
INSERT INTO public."CategoryGroup" (id, "categoryId", "eventId") VALUES ('01078673-40f5-4b98-86aa-5c1243034ed3', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', '23491aae-8077-421d-b2e2-fd835af7df9e');


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
INSERT INTO public."Double" (id, "categoryId") VALUES ('a280ae4f-2c2e-4baf-9643-6900bf77b3a4', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('4f881379-dc36-424e-9c44-088676182361', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('24b17a0e-1cf2-4c5b-9155-e4e550537337', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('2c8f84b0-e2a4-4ea9-8218-564532aaa74b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('b518d484-fbc5-4f84-ad26-819fd82b32cd', '894dd64e-64b3-40bf-a186-5f917f5a2d7a');
INSERT INTO public."Double" (id, "categoryId") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');
INSERT INTO public."Double" (id, "categoryId") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e');


--
-- Data for Name: DoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId") VALUES ('08ea6b6e-add5-43fe-96ac-88d6fb628503', 'A', 'c7c26458-8915-4a23-bacb-218053194d1e');
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId") VALUES ('c3db31a6-547d-4cc4-8763-60b189a1a07c', 'B', 'c7c26458-8915-4a23-bacb-218053194d1e');
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId") VALUES ('0fbcedfd-fb19-481e-9f2b-5e9d52622991', 'C', 'c7c26458-8915-4a23-bacb-218053194d1e');
INSERT INTO public."DoublesGroup" (id, key, "categoryGroupId") VALUES ('33361595-c7d8-4d53-aa6c-451c10277c93', 'A', '01078673-40f5-4b98-86aa-5c1243034ed3');


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', 'b724d501-828a-4278-814c-fccc3d30a23b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', 'c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', 'a280ae4f-2c2e-4baf-9643-6900bf77b3a4', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '4f881379-dc36-424e-9c44-088676182361', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '3a3a87e3-7c06-4e06-9876-cad502e69281', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', 'ae68ba9b-e838-4f81-a139-56b46c5fa240', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '24b17a0e-1cf2-4c5b-9155-e4e550537337', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '2c8f84b0-e2a4-4ea9-8218-564532aaa74b', '894dd64e-64b3-40bf-a186-5f917f5a2d7a', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '577a86b0-3c5c-449c-b6d0-345151f4f0f5', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', 'ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRestId") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '8331e172-4459-49ef-95ab-33b5ebcb24b3', 'c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', NULL);


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


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('5d8293f4-712d-4576-8378-dc7423e73090', 'Arthur', 'Peruzzo', 'ozzu@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$gOoNnJ0OZ61zU7xl6ks7Yw$e0j04eZ1dxTO8F9OWff07RkBYtbGQXxNiWAxSRlYq4g', '1991-12-21 02:00:00', '2024-06-10 19:02:36.334', '2024-06-10 19:03:04.756', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28', 'ADMIN', '$argon2id$v=19$m=65536,t=3,p=4$OaQTN0q9iKHrrSAdf6AFZA$re987NdAh5jwKpF2rtbz0br8T+asfx0oRcp06JBbYu0', NULL);
INSERT INTO public."User" (id, "firstName", "lastName", email, password, dob, "createdAt", "updatedAt", "playerId", role, "hashedRt", "profileImage") VALUES ('e1ae99b9-62bd-462e-8172-902ea4c6aac6', 'Joao', 'Plasticat', 'im_plastic@proton.me', '$argon2id$v=19$m=65536,t=3,p=4$wiOw+76p5LGQXB8dBkVf1g$Ho1rANjZDZhoL4xaE4aBUipTpMKGV49d/ZsaHuYxKhU', '2018-06-14 03:00:00', '2024-06-10 19:02:51.689', '2024-06-10 19:06:56.323', 'dc5fbf30-5efe-4769-94fe-75f454e27832', 'USER', '$argon2id$v=19$m=65536,t=3,p=4$57mfDTfLHRslAy13KGCE+A$NwJ3CMhQuTMg5rQsgCuwGqc+ZS4nEQeFDa/6DtHaWD8', NULL);


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('894dd64e-64b3-40bf-a186-5f917f5a2d7a', '23491aae-8077-421d-b2e2-fd835af7df9e');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('c0b1eeb9-a43d-4f64-a87f-05fd7aaa809e', '23491aae-8077-421d-b2e2-fd835af7df9e');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('e7e49d57-e204-457a-815d-6762179389dd', '23491aae-8077-421d-b2e2-fd835af7df9e');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('19da32e3-54cb-4c15-bd4b-d6dc422a36d7', '23491aae-8077-421d-b2e2-fd835af7df9e');


--
-- Data for Name: _DoubleToDoublesGroup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '08ea6b6e-add5-43fe-96ac-88d6fb628503');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', 'c3db31a6-547d-4cc4-8763-60b189a1a07c');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', '0fbcedfd-fb19-481e-9f2b-5e9d52622991');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '08ea6b6e-add5-43fe-96ac-88d6fb628503');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('24b17a0e-1cf2-4c5b-9155-e4e550537337', 'c3db31a6-547d-4cc4-8763-60b189a1a07c');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('2c8f84b0-e2a4-4ea9-8218-564532aaa74b', '0fbcedfd-fb19-481e-9f2b-5e9d52622991');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '08ea6b6e-add5-43fe-96ac-88d6fb628503');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', 'c3db31a6-547d-4cc4-8763-60b189a1a07c');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('a280ae4f-2c2e-4baf-9643-6900bf77b3a4', '0fbcedfd-fb19-481e-9f2b-5e9d52622991');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', '33361595-c7d8-4d53-aa6c-451c10277c93');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', '33361595-c7d8-4d53-aa6c-451c10277c93');
INSERT INTO public."_DoubleToDoublesGroup" ("A", "B") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', '33361595-c7d8-4d53-aa6c-451c10277c93');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b724d501-828a-4278-814c-fccc3d30a23b', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '4c910cdd-0834-4bab-92c3-e89c32a195b6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('c21bea67-de1c-4ddf-ae05-cf49d6d10e2b', '7549834c-0c13-40bc-b288-3b864138df90');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('a280ae4f-2c2e-4baf-9643-6900bf77b3a4', '4c910cdd-0834-4bab-92c3-e89c32a195b6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('a280ae4f-2c2e-4baf-9643-6900bf77b3a4', 'eccfe1cb-82e2-4c2b-9b67-e0218f8fb4c3');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'eccfe1cb-82e2-4c2b-9b67-e0218f8fb4c3');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('4f881379-dc36-424e-9c44-088676182361', 'fbb0307a-5990-42cf-8c1d-10e81d552e63');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', 'c19497cf-aff6-498c-b3ab-23397a3244d1');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('9c23e30b-d4b2-4ba6-ac64-fc851a69703b', '248ad487-c6bd-4efb-b9e9-464065837a9f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', '797fc8a4-90e7-4206-aa86-1a6b00ba2806');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3a3a87e3-7c06-4e06-9876-cad502e69281', 'dc5fbf30-5efe-4769-94fe-75f454e27832');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ae68ba9b-e838-4f81-a139-56b46c5fa240', 'dc5fbf30-5efe-4769-94fe-75f454e27832');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('24b17a0e-1cf2-4c5b-9155-e4e550537337', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('24b17a0e-1cf2-4c5b-9155-e4e550537337', '4c910cdd-0834-4bab-92c3-e89c32a195b6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('2c8f84b0-e2a4-4ea9-8218-564532aaa74b', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('2c8f84b0-e2a4-4ea9-8218-564532aaa74b', '7549834c-0c13-40bc-b288-3b864138df90');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b518d484-fbc5-4f84-ad26-819fd82b32cd', '8135a69f-21ba-42ed-b0dd-3d7ae1162c28');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b518d484-fbc5-4f84-ad26-819fd82b32cd', '797fc8a4-90e7-4206-aa86-1a6b00ba2806');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('577a86b0-3c5c-449c-b6d0-345151f4f0f5', '7549834c-0c13-40bc-b288-3b864138df90');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ba5c2362-5da5-4c32-bb93-dbb0c5cca6f5', '797fc8a4-90e7-4206-aa86-1a6b00ba2806');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', '6c7b3d70-c9ea-4817-9034-9f5feb725b2b');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8331e172-4459-49ef-95ab-33b5ebcb24b3', 'fbb0307a-5990-42cf-8c1d-10e81d552e63');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('23491aae-8077-421d-b2e2-fd835af7df9e', '698d857c-175e-4357-a106-79941fd1311a');


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

