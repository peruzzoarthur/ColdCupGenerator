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

INSERT INTO public."Category" (id, level, type) VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 1, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', 2, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('da2460a8-6adc-4454-acb0-425a0ebd0d40', 3, 'ALL');
INSERT INTO public."Category" (id, level, type) VALUES ('ae99a935-84d8-43a8-a631-6c106f13bb1f', 4, 'ALL');


--
-- Data for Name: Place; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Place" (id, name, address) VALUES ('3ee61dc5-5f35-4717-a2dd-1d6b48a21afd', 'Complexo CK', 'Rua General Gome Tortinho, 235');


--
-- Data for Name: Court; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('1e9c4214-b05e-453f-88c8-e6e7a75af89e', 'V1', true, '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('b730cfeb-c0c2-46eb-ba24-a992fbde8c36', 'V2', true, '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');
INSERT INTO public."Court" (id, name, "isAvailable", "placeId") VALUES ('cba3b179-8a75-4778-849b-6d5679804a75', 'V3', true, '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');


--
-- Data for Name: Double; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Double" (id, "categoryId") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."Double" (id, "categoryId") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."Double" (id, "categoryId") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."Double" (id, "categoryId") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '4908146f-fa31-4cce-98c2-e62242f05b93');
INSERT INTO public."Double" (id, "categoryId") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');
INSERT INTO public."Double" (id, "categoryId") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3');


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'ALLxALL #1', true, '2024-04-27 03:00:00', '2024-04-28 03:00:00', 60, 6, 12, 'ALLxALL');
INSERT INTO public."Event" (id, name, "isActive", "startDate", "finishDate", "matchDurationInMinutes", "timeOfFirstMatch", "timeOfLastMatch", "eventType") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', 'Test Cup', false, '2024-04-27 03:00:00', '2024-04-27 03:00:00', 90, 9, 13, 'ALLxALL');


--
-- Data for Name: EventDouble; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'ed034668-6175-46fc-afb1-9a803f6ad4b9', '4908146f-fa31-4cce-98c2-e62242f05b93', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '4908146f-fa31-4cce-98c2-e62242f05b93', '2024-04-27 14:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '332228bb-22aa-4332-86e9-bb6ce9ca0a16', '4908146f-fa31-4cce-98c2-e62242f05b93', '2024-04-28 11:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4908146f-fa31-4cce-98c2-e62242f05b93', '2024-04-28 14:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'e7ce4603-e8d7-4c13-8404-62265c055498', '4908146f-fa31-4cce-98c2-e62242f05b93', '2024-04-28 16:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'fd19c48e-52d1-4933-9505-5b1e085a159a', '4908146f-fa31-4cce-98c2-e62242f05b93', '2024-04-27 10:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '8f080fac-9af9-4a86-87df-fe40d4456757', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', '2024-04-27 14:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '3ea54404-7c49-412b-af78-651d60a384b7', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', '2024-04-28 10:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '987ee842-0181-4809-8933-adb3205c24b8', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', '2024-04-28 12:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '2ce98183-d9af-4278-b1c0-813d2fe00dc5', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', '2024-04-28 13:00:00');
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', '36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '4908146f-fa31-4cce-98c2-e62242f05b93', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', '332228bb-22aa-4332-86e9-bb6ce9ca0a16', '4908146f-fa31-4cce-98c2-e62242f05b93', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', '6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4908146f-fa31-4cce-98c2-e62242f05b93', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', '8f080fac-9af9-4a86-87df-fe40d4456757', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL);
INSERT INTO public."EventDouble" ("eventId", "doubleId", "categoryId", "atRest") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', '3ea54404-7c49-412b-af78-651d60a384b7', 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL);


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('7bf9151e-d544-43c4-92e5-d93fa8379374', 1, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('ae706876-ba0f-403f-aeca-f1df27af009a', 2, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('ffb18367-afd3-4d27-9812-06328d8e8f99', 3, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('a719742e-4c85-4328-b78c-23ae2e6b576e', 4, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('9719040a-3874-47c7-8782-1ba6aab46789', 5, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('a40a9f42-188c-4347-8724-ae12ccd253a3', 6, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('8baee723-a377-4b3f-9271-4231c77604ed', 7, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('776d50d8-5329-4d61-bd99-9a3325a325f1', 8, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('308e1a44-752e-4a56-aafa-55a2308638ca', 9, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('46402448-e04d-4406-ab71-4f09fe913f4c', 10, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('28158e3a-28fa-4c12-a033-7145fe8708b0', 11, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('f4233454-b38f-4deb-9a62-fe2f28964ba6', 12, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('416e3464-f271-4b65-95a1-b755dcf169a3', 13, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('c13ad387-206a-4a12-867a-fb4da4af0c90', 14, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('a38db0da-2c9d-4513-a4ef-6c6e87151af6', 15, false, '4908146f-fa31-4cce-98c2-e62242f05b93', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('b51a871c-3a8b-4437-b8d1-617a7095dc54', 16, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('00c77622-efe1-40f1-ae4f-67e1f6b11b20', 17, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('5b3306fe-7db6-4b17-a780-3582bc018fcc', 18, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('7a8bc255-8766-4b46-984b-3fca7adb8775', 19, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('54eba4c9-bd6e-407d-89b5-4ce30cf4475d', 20, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('7c613c6c-1cab-488d-836c-1e735d9fd500', 21, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('e140eefe-2ee6-4087-9069-b1dd9876beb7', 22, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('468ab04f-e378-4a5e-bd30-7497ae33c24e', 23, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('7d7e788e-4943-468f-bbdb-9784d65b9bf0', 24, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);
INSERT INTO public."Match" (id, number, "isFinished", "categoryId", "winnerDoublesId", "eventId", type, "matchDateId", "courtId") VALUES ('d35fdab8-7199-4253-a5e7-12f7e8c5721c', 25, false, 'b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', NULL, 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'SUPERSET', NULL, NULL);


--
-- Data for Name: Set; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('7bf9151e-d544-43c4-92e5-d93fa8379374', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('ae706876-ba0f-403f-aeca-f1df27af009a', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('ffb18367-afd3-4d27-9812-06328d8e8f99', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('a719742e-4c85-4328-b78c-23ae2e6b576e', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('9719040a-3874-47c7-8782-1ba6aab46789', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('a40a9f42-188c-4347-8724-ae12ccd253a3', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('8baee723-a377-4b3f-9271-4231c77604ed', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('776d50d8-5329-4d61-bd99-9a3325a325f1', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('308e1a44-752e-4a56-aafa-55a2308638ca', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('46402448-e04d-4406-ab71-4f09fe913f4c', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('28158e3a-28fa-4c12-a033-7145fe8708b0', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('f4233454-b38f-4deb-9a62-fe2f28964ba6', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('416e3464-f271-4b65-95a1-b755dcf169a3', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('c13ad387-206a-4a12-867a-fb4da4af0c90', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('a38db0da-2c9d-4513-a4ef-6c6e87151af6', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('b51a871c-3a8b-4437-b8d1-617a7095dc54', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('00c77622-efe1-40f1-ae4f-67e1f6b11b20', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('5b3306fe-7db6-4b17-a780-3582bc018fcc', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('7a8bc255-8766-4b46-984b-3fca7adb8775', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('54eba4c9-bd6e-407d-89b5-4ce30cf4475d', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('7c613c6c-1cab-488d-836c-1e735d9fd500', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('e140eefe-2ee6-4087-9069-b1dd9876beb7', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('468ab04f-e378-4a5e-bd30-7497ae33c24e', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('7d7e788e-4943-468f-bbdb-9784d65b9bf0', 'SUPER', NULL, NULL, false);
INSERT INTO public."Set" (id, type, "setWinnerId", result, "isFinished") VALUES ('d35fdab8-7199-4253-a5e7-12f7e8c5721c', 'SUPER', NULL, NULL, false);


--
-- Data for Name: Game; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: MatchDate; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('d42b524e-1429-45d7-968b-a24a83298d7c', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 13:00:00', '2024-04-28 14:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('3e74db41-2fbc-46b9-9d2c-61425b785f29', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 14:00:00', '2024-04-28 15:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('38eaa820-8f5a-44c6-a9eb-62542390bb4e', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 15:00:00', '2024-04-28 16:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('8fbc38f8-fe39-4ea9-bc3c-c06c962019a4', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 09:00:00', '2024-04-27 10:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('89d008c0-1738-4389-8639-f9686ee90b83', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 10:00:00', '2024-04-27 11:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('fb4e6eb3-b1c1-4a1c-a273-1f8dc8e3d630', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 11:00:00', '2024-04-27 12:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('2067c9c5-38f7-4e97-9f20-ff856bd684f2', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 12:00:00', '2024-04-27 13:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('6c4601d1-8693-48b8-a61e-881f008f6b3b', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 13:00:00', '2024-04-27 14:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('5e3b8dba-46f7-4f05-b4af-36eeee48d90c', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 14:00:00', '2024-04-27 15:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ed1dc5d2-9f36-4053-a1da-187d0dd941dc', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-27 15:00:00', '2024-04-27 16:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('b5aaa2ed-b98b-42f5-966e-728d4048692b', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 09:00:00', '2024-04-28 10:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('1ef6e59c-84bc-4c2e-9a82-c7af68592b3a', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 10:00:00', '2024-04-28 11:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('93d91d16-032e-4f0c-a677-8af41ccff6ba', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 11:00:00', '2024-04-28 12:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('40db86bb-f549-4107-aa3c-1a6e5886549e', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 12:00:00', '2024-04-28 13:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('67040492-72e8-413d-8453-6aa4d1d2c7ff', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 13:00:00', '2024-04-28 14:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('11be3de5-2f02-460f-a9da-e415afdbd74f', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 14:00:00', '2024-04-28 15:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('de962e44-70bf-48b1-be69-da2b94300eaa', 'cb270033-04bc-4424-9628-dc3268a9e6e8', NULL, '2024-04-28 15:00:00', '2024-04-28 16:00:00', 'cba3b179-8a75-4778-849b-6d5679804a75');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('3e00ed17-f5b3-45ff-bea7-aa3a99ee91e3', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '7bf9151e-d544-43c4-92e5-d93fa8379374', '2024-04-27 09:00:00', '2024-04-27 10:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('778e5312-ed98-490e-8b95-b7adef59eed9', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'ae706876-ba0f-403f-aeca-f1df27af009a', '2024-04-27 10:00:00', '2024-04-27 11:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('18026cef-3d5f-4448-89d5-7426b37083c5', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'ffb18367-afd3-4d27-9812-06328d8e8f99', '2024-04-27 11:00:00', '2024-04-27 12:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('16b13bc5-f014-477f-8d2e-a8ce3b77e78e', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'a719742e-4c85-4328-b78c-23ae2e6b576e', '2024-04-27 12:00:00', '2024-04-27 13:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('ebad41cd-184d-460f-bae7-44d21fef283e', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '9719040a-3874-47c7-8782-1ba6aab46789', '2024-04-27 13:00:00', '2024-04-27 14:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a55d762f-c5ec-49f8-b24f-ae47c02639b3', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'a40a9f42-188c-4347-8724-ae12ccd253a3', '2024-04-27 14:00:00', '2024-04-27 15:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('3a8b9cb7-0116-41a1-8bce-b47030210e8f', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '8baee723-a377-4b3f-9271-4231c77604ed', '2024-04-27 15:00:00', '2024-04-27 16:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a2692ffe-bb98-4438-a71d-fa20510be0f9', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '776d50d8-5329-4d61-bd99-9a3325a325f1', '2024-04-28 09:00:00', '2024-04-28 10:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('8343779b-118c-4558-b0b7-4194167c1013', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '308e1a44-752e-4a56-aafa-55a2308638ca', '2024-04-28 10:00:00', '2024-04-28 11:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('68c57828-c8bd-46f8-8be4-45fefc622f6a', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '46402448-e04d-4406-ab71-4f09fe913f4c', '2024-04-28 11:00:00', '2024-04-28 12:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a0ea2b89-75a1-4400-834e-2393b9beaf29', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '28158e3a-28fa-4c12-a033-7145fe8708b0', '2024-04-28 12:00:00', '2024-04-28 13:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('814a6211-2405-4021-a11f-2d2d3240af28', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'f4233454-b38f-4deb-9a62-fe2f28964ba6', '2024-04-28 13:00:00', '2024-04-28 14:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('1b1f4a98-c182-4469-9106-a9a70e7769f9', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '416e3464-f271-4b65-95a1-b755dcf169a3', '2024-04-28 14:00:00', '2024-04-28 15:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('09a0c988-bd99-4373-81c7-e6a0e3964e04', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'c13ad387-206a-4a12-867a-fb4da4af0c90', '2024-04-28 15:00:00', '2024-04-28 16:00:00', '1e9c4214-b05e-453f-88c8-e6e7a75af89e');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('f6bad818-fe9e-4670-bc3e-7e387c7a4407', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'a38db0da-2c9d-4513-a4ef-6c6e87151af6', '2024-04-27 09:00:00', '2024-04-27 10:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('a5ac06a8-216c-490c-ab38-5fef1e18071e', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'b51a871c-3a8b-4437-b8d1-617a7095dc54', '2024-04-27 10:00:00', '2024-04-27 11:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('416b1ea3-0bf4-4aff-ac9f-b3185a3fb333', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '00c77622-efe1-40f1-ae4f-67e1f6b11b20', '2024-04-27 11:00:00', '2024-04-27 12:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('83969ef9-2210-4136-a592-1a14e6b7b69f', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '5b3306fe-7db6-4b17-a780-3582bc018fcc', '2024-04-27 12:00:00', '2024-04-27 13:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('15df9d5f-53bd-4516-be5a-db808e3dc44c', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '7a8bc255-8766-4b46-984b-3fca7adb8775', '2024-04-27 13:00:00', '2024-04-27 14:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('227bfc32-db9c-4e4b-95b9-2f740b5ef3a4', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '54eba4c9-bd6e-407d-89b5-4ce30cf4475d', '2024-04-27 14:00:00', '2024-04-27 15:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('2f631490-3817-4702-b675-67cbf5fad684', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '7c613c6c-1cab-488d-836c-1e735d9fd500', '2024-04-27 15:00:00', '2024-04-27 16:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('400f9261-966e-4f23-8f3d-0ae5974add79', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'e140eefe-2ee6-4087-9069-b1dd9876beb7', '2024-04-28 09:00:00', '2024-04-28 10:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('c6e59950-2148-428b-830c-6a814f43c2e5', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '468ab04f-e378-4a5e-bd30-7497ae33c24e', '2024-04-28 10:00:00', '2024-04-28 11:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('9d444962-5a44-43ee-86ab-c581cae25c77', 'cb270033-04bc-4424-9628-dc3268a9e6e8', '7d7e788e-4943-468f-bbdb-9784d65b9bf0', '2024-04-28 11:00:00', '2024-04-28 12:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');
INSERT INTO public."MatchDate" (id, "eventId", "matchId", start, finish, "courtId") VALUES ('c67e01e1-8443-4056-9a53-9b5dbb09b3fc', 'cb270033-04bc-4424-9628-dc3268a9e6e8', 'd35fdab8-7199-4253-a5e7-12f7e8c5721c', '2024-04-28 12:00:00', '2024-04-28 13:00:00', 'b730cfeb-c0c2-46eb-ba24-a992fbde8c36');


--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('ba1f62d1-a407-4833-8768-f403cf997afe', 'Player1@proton.me', 'Player', '1', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('e38bf21f-8a6a-4989-b08b-e8ab00e4bc67', 'Player2@proton.me', 'Player', '2', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('befa3375-f030-41cb-bfd7-860e45f69e5e', 'PlayerThree@proton.me', 'Player', 'Three', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('d9bd04d3-0c14-4672-b5ab-7e85ece7b562', 'PlayerFour@proton.me', 'Player', 'Four', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('fb4d2529-5488-457a-831c-ab204391e042', 'Player5@proton.me', 'Player', '5', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('4f16ee2d-d177-4005-acd2-c0137e5bd60e', 'Player6@proton.me', 'Player', '6', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('31aa8379-4403-41cc-a5a9-c7472c4e9275', 'P7@proton.me', 'P', '7', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('90ceab20-9f47-4e74-9c2f-316ebfa5073f', 'P8@proton.me', 'P', '8', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('8142aac2-eb3d-416c-ab0e-2902c47b5d03', 'P9@proton.me', 'P', '9', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('d070d6f9-a1f9-4c7d-aa1c-0876d0598e84', 'P10@proton.me', 'P', '10', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('7f8d241a-baaf-4027-8cd9-ee2bb36fcfe5', 'JogadorA@proton.me', 'Jogador', 'A', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('fe448ac3-2208-45eb-a662-99111756c308', 'JogadorB@proton.me', 'Jogador', 'B', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('7de29c21-512f-4f51-b006-b2c883f7a1f6', 'ArthurOzzurep@proton.me', 'Arthur', 'Ozzurep', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('fc5c7250-d654-4cbc-b8c8-47ffedfcd026', 'JuJu@proton.me', 'Ju', 'Ju', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('16324576-c6b5-441c-9ef8-ae5479f7f5f4', 'MariaIj@proton.me', 'Maria', 'Ij', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('c9c48abe-d1e9-4bcc-894f-55e70c3f87fb', 'MedusaPluminha@proton.me', 'Medusa', 'Pluminha', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('79c8a669-ae5c-45a6-9836-4e8dbdcb27ce', 'XoanPlastic@proton.me', 'Xoan', 'Plastic', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('25fe9b53-e525-49e5-845c-2f8808527b91', 'GueldeDeus@proton.me', 'Guel', 'deDeus', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('5f9f516f-9991-4148-8494-e3f328b99885', 'JumaZobrinha@proton.me', 'Juma', 'Zobrinha', 'USER', 'DRIVE');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('0949fb60-a01e-46cc-870a-1e8467164a40', 'MedusinhaArteira@proton.me', 'Medusinha', 'Arteira', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('ca7041d1-7ca4-4d65-85d4-45db287d478e', 'MercedesOrquita@proton.me', 'Mercedes', 'Orquita', 'USER', 'REVES');
INSERT INTO public."Player" (id, email, "firstName", "lastName", role, "position") VALUES ('eb46215b-e8df-4a5f-94d1-2bcb5d2aa9a4', 'MarleyCeva Pra Nos@proton.me', 'Marley', 'Ceva Pra Nos', 'USER', 'DRIVE');


--
-- Data for Name: _CategoryToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'd7f0ae85-9b21-4410-8e7e-aa1db54ad1af');
INSERT INTO public."_CategoryToEvent" ("A", "B") VALUES ('b5e3f1fb-c7b0-4353-a18a-4528e44cc5f3', 'd7f0ae85-9b21-4410-8e7e-aa1db54ad1af');


--
-- Data for Name: _CategoryToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'ba1f62d1-a407-4833-8768-f403cf997afe');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'e38bf21f-8a6a-4989-b08b-e8ab00e4bc67');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'befa3375-f030-41cb-bfd7-860e45f69e5e');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'd9bd04d3-0c14-4672-b5ab-7e85ece7b562');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'fb4d2529-5488-457a-831c-ab204391e042');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '4f16ee2d-d177-4005-acd2-c0137e5bd60e');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '31aa8379-4403-41cc-a5a9-c7472c4e9275');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '90ceab20-9f47-4e74-9c2f-316ebfa5073f');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '8142aac2-eb3d-416c-ab0e-2902c47b5d03');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'd070d6f9-a1f9-4c7d-aa1c-0876d0598e84');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '7f8d241a-baaf-4027-8cd9-ee2bb36fcfe5');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'fe448ac3-2208-45eb-a662-99111756c308');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '7de29c21-512f-4f51-b006-b2c883f7a1f6');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'fc5c7250-d654-4cbc-b8c8-47ffedfcd026');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '16324576-c6b5-441c-9ef8-ae5479f7f5f4');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'c9c48abe-d1e9-4bcc-894f-55e70c3f87fb');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '79c8a669-ae5c-45a6-9836-4e8dbdcb27ce');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '25fe9b53-e525-49e5-845c-2f8808527b91');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '5f9f516f-9991-4148-8494-e3f328b99885');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', '0949fb60-a01e-46cc-870a-1e8467164a40');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'ca7041d1-7ca4-4d65-85d4-45db287d478e');
INSERT INTO public."_CategoryToPlayer" ("A", "B") VALUES ('4908146f-fa31-4cce-98c2-e62242f05b93', 'eb46215b-e8df-4a5f-94d1-2bcb5d2aa9a4');


--
-- Data for Name: _CourtToEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('1e9c4214-b05e-453f-88c8-e6e7a75af89e', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('b730cfeb-c0c2-46eb-ba24-a992fbde8c36', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('cba3b179-8a75-4778-849b-6d5679804a75', 'cb270033-04bc-4424-9628-dc3268a9e6e8');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('1e9c4214-b05e-453f-88c8-e6e7a75af89e', 'd7f0ae85-9b21-4410-8e7e-aa1db54ad1af');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('b730cfeb-c0c2-46eb-ba24-a992fbde8c36', 'd7f0ae85-9b21-4410-8e7e-aa1db54ad1af');
INSERT INTO public."_CourtToEvent" ("A", "B") VALUES ('cba3b179-8a75-4778-849b-6d5679804a75', 'd7f0ae85-9b21-4410-8e7e-aa1db54ad1af');


--
-- Data for Name: _DoubleToMatch; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '7bf9151e-d544-43c4-92e5-d93fa8379374');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '7bf9151e-d544-43c4-92e5-d93fa8379374');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'ae706876-ba0f-403f-aeca-f1df27af009a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'ae706876-ba0f-403f-aeca-f1df27af009a');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'ffb18367-afd3-4d27-9812-06328d8e8f99');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', 'ffb18367-afd3-4d27-9812-06328d8e8f99');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'a719742e-4c85-4328-b78c-23ae2e6b576e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', 'a719742e-4c85-4328-b78c-23ae2e6b576e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '9719040a-3874-47c7-8782-1ba6aab46789');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '9719040a-3874-47c7-8782-1ba6aab46789');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', 'a40a9f42-188c-4347-8724-ae12ccd253a3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'a40a9f42-188c-4347-8724-ae12ccd253a3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '8baee723-a377-4b3f-9271-4231c77604ed');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '8baee723-a377-4b3f-9271-4231c77604ed');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '776d50d8-5329-4d61-bd99-9a3325a325f1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '776d50d8-5329-4d61-bd99-9a3325a325f1');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '308e1a44-752e-4a56-aafa-55a2308638ca');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '308e1a44-752e-4a56-aafa-55a2308638ca');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '46402448-e04d-4406-ab71-4f09fe913f4c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '46402448-e04d-4406-ab71-4f09fe913f4c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '28158e3a-28fa-4c12-a033-7145fe8708b0');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '28158e3a-28fa-4c12-a033-7145fe8708b0');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'f4233454-b38f-4deb-9a62-fe2f28964ba6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', 'f4233454-b38f-4deb-9a62-fe2f28964ba6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '416e3464-f271-4b65-95a1-b755dcf169a3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '416e3464-f271-4b65-95a1-b755dcf169a3');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', 'c13ad387-206a-4a12-867a-fb4da4af0c90');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', 'c13ad387-206a-4a12-867a-fb4da4af0c90');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', 'a38db0da-2c9d-4513-a4ef-6c6e87151af6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', 'a38db0da-2c9d-4513-a4ef-6c6e87151af6');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', 'b51a871c-3a8b-4437-b8d1-617a7095dc54');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'b51a871c-3a8b-4437-b8d1-617a7095dc54');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '00c77622-efe1-40f1-ae4f-67e1f6b11b20');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '00c77622-efe1-40f1-ae4f-67e1f6b11b20');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '5b3306fe-7db6-4b17-a780-3582bc018fcc');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '5b3306fe-7db6-4b17-a780-3582bc018fcc');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '7a8bc255-8766-4b46-984b-3fca7adb8775');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', '7a8bc255-8766-4b46-984b-3fca7adb8775');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', '54eba4c9-bd6e-407d-89b5-4ce30cf4475d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '54eba4c9-bd6e-407d-89b5-4ce30cf4475d');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', '7c613c6c-1cab-488d-836c-1e735d9fd500');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '7c613c6c-1cab-488d-836c-1e735d9fd500');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'e140eefe-2ee6-4087-9069-b1dd9876beb7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'e140eefe-2ee6-4087-9069-b1dd9876beb7');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '468ab04f-e378-4a5e-bd30-7497ae33c24e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '468ab04f-e378-4a5e-bd30-7497ae33c24e');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '7d7e788e-4943-468f-bbdb-9784d65b9bf0');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', '7d7e788e-4943-468f-bbdb-9784d65b9bf0');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', 'd35fdab8-7199-4253-a5e7-12f7e8c5721c');
INSERT INTO public."_DoubleToMatch" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'd35fdab8-7199-4253-a5e7-12f7e8c5721c');


--
-- Data for Name: _DoubleToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'ba1f62d1-a407-4833-8768-f403cf997afe');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'e38bf21f-8a6a-4989-b08b-e8ab00e4bc67');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', 'befa3375-f030-41cb-bfd7-860e45f69e5e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', 'd9bd04d3-0c14-4672-b5ab-7e85ece7b562');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'fb4d2529-5488-457a-831c-ab204391e042');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '4f16ee2d-d177-4005-acd2-c0137e5bd60e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '31aa8379-4403-41cc-a5a9-c7472c4e9275');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '90ceab20-9f47-4e74-9c2f-316ebfa5073f');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', '8142aac2-eb3d-416c-ab0e-2902c47b5d03');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'd070d6f9-a1f9-4c7d-aa1c-0876d0598e84');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '7f8d241a-baaf-4027-8cd9-ee2bb36fcfe5');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', 'fe448ac3-2208-45eb-a662-99111756c308');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '7de29c21-512f-4f51-b006-b2c883f7a1f6');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', 'fc5c7250-d654-4cbc-b8c8-47ffedfcd026');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '16324576-c6b5-441c-9ef8-ae5479f7f5f4');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', 'c9c48abe-d1e9-4bcc-894f-55e70c3f87fb');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '79c8a669-ae5c-45a6-9836-4e8dbdcb27ce');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '25fe9b53-e525-49e5-845c-2f8808527b91');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '5f9f516f-9991-4148-8494-e3f328b99885');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '0949fb60-a01e-46cc-870a-1e8467164a40');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'ca7041d1-7ca4-4d65-85d4-45db287d478e');
INSERT INTO public."_DoubleToPlayer" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'eb46215b-e8df-4a5f-94d1-2bcb5d2aa9a4');


--
-- Data for Name: _DoubleToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '7bf9151e-d544-43c4-92e5-d93fa8379374');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '7bf9151e-d544-43c4-92e5-d93fa8379374');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'ae706876-ba0f-403f-aeca-f1df27af009a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'ae706876-ba0f-403f-aeca-f1df27af009a');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'ffb18367-afd3-4d27-9812-06328d8e8f99');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', 'ffb18367-afd3-4d27-9812-06328d8e8f99');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', 'a719742e-4c85-4328-b78c-23ae2e6b576e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', 'a719742e-4c85-4328-b78c-23ae2e6b576e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('36bb0b9e-bc6f-412d-aa1d-0b916f2ddbac', '9719040a-3874-47c7-8782-1ba6aab46789');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '9719040a-3874-47c7-8782-1ba6aab46789');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', 'a40a9f42-188c-4347-8724-ae12ccd253a3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'a40a9f42-188c-4347-8724-ae12ccd253a3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '8baee723-a377-4b3f-9271-4231c77604ed');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '8baee723-a377-4b3f-9271-4231c77604ed');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '776d50d8-5329-4d61-bd99-9a3325a325f1');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '776d50d8-5329-4d61-bd99-9a3325a325f1');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('332228bb-22aa-4332-86e9-bb6ce9ca0a16', '308e1a44-752e-4a56-aafa-55a2308638ca');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', '308e1a44-752e-4a56-aafa-55a2308638ca');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '46402448-e04d-4406-ab71-4f09fe913f4c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '46402448-e04d-4406-ab71-4f09fe913f4c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', '28158e3a-28fa-4c12-a033-7145fe8708b0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '28158e3a-28fa-4c12-a033-7145fe8708b0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('6e149f81-cc00-4c9b-9b52-d1e44912a86d', 'f4233454-b38f-4deb-9a62-fe2f28964ba6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', 'f4233454-b38f-4deb-9a62-fe2f28964ba6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', '416e3464-f271-4b65-95a1-b755dcf169a3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', '416e3464-f271-4b65-95a1-b755dcf169a3');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('e7ce4603-e8d7-4c13-8404-62265c055498', 'c13ad387-206a-4a12-867a-fb4da4af0c90');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', 'c13ad387-206a-4a12-867a-fb4da4af0c90');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('fd19c48e-52d1-4933-9505-5b1e085a159a', 'a38db0da-2c9d-4513-a4ef-6c6e87151af6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('ed034668-6175-46fc-afb1-9a803f6ad4b9', 'a38db0da-2c9d-4513-a4ef-6c6e87151af6');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', 'b51a871c-3a8b-4437-b8d1-617a7095dc54');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'b51a871c-3a8b-4437-b8d1-617a7095dc54');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '00c77622-efe1-40f1-ae4f-67e1f6b11b20');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '00c77622-efe1-40f1-ae4f-67e1f6b11b20');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '5b3306fe-7db6-4b17-a780-3582bc018fcc');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '5b3306fe-7db6-4b17-a780-3582bc018fcc');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('8f080fac-9af9-4a86-87df-fe40d4456757', '7a8bc255-8766-4b46-984b-3fca7adb8775');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', '7a8bc255-8766-4b46-984b-3fca7adb8775');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', '54eba4c9-bd6e-407d-89b5-4ce30cf4475d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '54eba4c9-bd6e-407d-89b5-4ce30cf4475d');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', '7c613c6c-1cab-488d-836c-1e735d9fd500');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '7c613c6c-1cab-488d-836c-1e735d9fd500');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('3ea54404-7c49-412b-af78-651d60a384b7', 'e140eefe-2ee6-4087-9069-b1dd9876beb7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'e140eefe-2ee6-4087-9069-b1dd9876beb7');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '468ab04f-e378-4a5e-bd30-7497ae33c24e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', '468ab04f-e378-4a5e-bd30-7497ae33c24e');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('987ee842-0181-4809-8933-adb3205c24b8', '7d7e788e-4943-468f-bbdb-9784d65b9bf0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', '7d7e788e-4943-468f-bbdb-9784d65b9bf0');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('2ce98183-d9af-4278-b1c0-813d2fe00dc5', 'd35fdab8-7199-4253-a5e7-12f7e8c5721c');
INSERT INTO public."_DoubleToSet" ("A", "B") VALUES ('b7fb8274-3e05-40c6-a8bf-3a5b68eb1130', 'd35fdab8-7199-4253-a5e7-12f7e8c5721c');


--
-- Data for Name: _EventToGame; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToPlace; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');
INSERT INTO public."_EventToPlace" ("A", "B") VALUES ('d7f0ae85-9b21-4410-8e7e-aa1db54ad1af', '3ee61dc5-5f35-4717-a2dd-1d6b48a21afd');


--
-- Data for Name: _EventToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _EventToSet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '7bf9151e-d544-43c4-92e5-d93fa8379374');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'ae706876-ba0f-403f-aeca-f1df27af009a');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'ffb18367-afd3-4d27-9812-06328d8e8f99');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'a719742e-4c85-4328-b78c-23ae2e6b576e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '9719040a-3874-47c7-8782-1ba6aab46789');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'a40a9f42-188c-4347-8724-ae12ccd253a3');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '8baee723-a377-4b3f-9271-4231c77604ed');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '776d50d8-5329-4d61-bd99-9a3325a325f1');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '308e1a44-752e-4a56-aafa-55a2308638ca');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '46402448-e04d-4406-ab71-4f09fe913f4c');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '28158e3a-28fa-4c12-a033-7145fe8708b0');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'f4233454-b38f-4deb-9a62-fe2f28964ba6');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '416e3464-f271-4b65-95a1-b755dcf169a3');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'c13ad387-206a-4a12-867a-fb4da4af0c90');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'a38db0da-2c9d-4513-a4ef-6c6e87151af6');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'b51a871c-3a8b-4437-b8d1-617a7095dc54');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '00c77622-efe1-40f1-ae4f-67e1f6b11b20');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '5b3306fe-7db6-4b17-a780-3582bc018fcc');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '7a8bc255-8766-4b46-984b-3fca7adb8775');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '54eba4c9-bd6e-407d-89b5-4ce30cf4475d');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '7c613c6c-1cab-488d-836c-1e735d9fd500');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'e140eefe-2ee6-4087-9069-b1dd9876beb7');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '468ab04f-e378-4a5e-bd30-7497ae33c24e');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', '7d7e788e-4943-468f-bbdb-9784d65b9bf0');
INSERT INTO public."_EventToSet" ("A", "B") VALUES ('cb270033-04bc-4424-9628-dc3268a9e6e8', 'd35fdab8-7199-4253-a5e7-12f7e8c5721c');


--
-- Data for Name: _GamesPlayed; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _MatchToPlayer; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: Match_number_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Match_number_seq"', 25, true);


--
-- PostgreSQL database dump complete
--

