--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 13.7 (Ubuntu 13.7-1.pgdg20.04+1)

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
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.admin (id, username, roles, password) FROM stdin;
1	admin	["ROLE_ADMIN"]	$2y$13$uDiygqpSdFGIXKWDNuF59eTxVH6ORG317ldl6RM2wo8zqkzu6CZTe
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
111111	Asdváros	2022	t	asd-conf
2222222	Cityovics 	2021	f	city-conf
333333	Bélafalce	2022	f	belafalva-conf
2	Oklahoma	2120	t	okla-homa
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename, state) FROM stdin;
2	2222222	ASDASDASD	SDFAsdgafdhkfhjfgh	sdfsfsd{@sdfsdfsd.fd	2022-08-04 16:54:07	\N	submitted
3	2222222	asdadasd	sdfasfsdagsag	asdads@asdsds.sd	2022-08-04 16:54:27	\N	published
1	2222222	asdasdasd	asdASDGSAFSDF	SADFADSA@ASDASD.SD	2022-08-04 16:53:56	a7cb8a33a6b7.png	published
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20220707085501	2022-08-04 16:36:04	63
DoctrineMigrations\\Version20220707103101	2022-08-04 16:36:04	2
DoctrineMigrations\\Version20220711093019	2022-08-04 16:36:04	10
DoctrineMigrations\\Version20220711114523	2022-08-04 16:36:04	6
DoctrineMigrations\\Version20220711120208	2022-08-04 16:36:04	4
DoctrineMigrations\\Version20220711141311	2022-08-04 16:36:04	13
DoctrineMigrations\\Version20220712095643	2022-08-04 16:36:04	1
DoctrineMigrations\\Version20220712130012	2022-08-04 16:36:04	0
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
1	O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:26:\\"App\\\\Message\\\\CommentMessage\\":2:{s:30:\\"\\0App\\\\Message\\\\CommentMessage\\0id\\";i:1;s:35:\\"\\0App\\\\Message\\\\CommentMessage\\0context\\";a:4:{s:7:\\"user_ip\\";s:9:\\"127.0.0.1\\";s:10:\\"user_agent\\";s:111:\\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\\";s:8:\\"referrer\\";s:42:\\"http://localhost:8000/conference/city-conf\\";s:9:\\"permalink\\";s:42:\\"http://localhost:8000/conference/city-conf\\";}}}	[]	default	2022-08-04 16:53:56	2022-08-04 16:53:56	\N
2	O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:26:\\"App\\\\Message\\\\CommentMessage\\":2:{s:30:\\"\\0App\\\\Message\\\\CommentMessage\\0id\\";i:2;s:35:\\"\\0App\\\\Message\\\\CommentMessage\\0context\\";a:4:{s:7:\\"user_ip\\";s:9:\\"127.0.0.1\\";s:10:\\"user_agent\\";s:111:\\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\\";s:8:\\"referrer\\";s:42:\\"http://localhost:8000/conference/city-conf\\";s:9:\\"permalink\\";s:42:\\"http://localhost:8000/conference/city-conf\\";}}}	[]	default	2022-08-04 16:54:07	2022-08-04 16:54:07	\N
3	O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:26:\\"App\\\\Message\\\\CommentMessage\\":2:{s:30:\\"\\0App\\\\Message\\\\CommentMessage\\0id\\";i:3;s:35:\\"\\0App\\\\Message\\\\CommentMessage\\0context\\";a:4:{s:7:\\"user_ip\\";s:9:\\"127.0.0.1\\";s:10:\\"user_agent\\";s:111:\\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\\";s:8:\\"referrer\\";s:42:\\"http://localhost:8000/conference/city-conf\\";s:9:\\"permalink\\";s:42:\\"http://localhost:8000/conference/city-conf\\";}}}	[]	default	2022-08-04 16:54:27	2022-08-04 16:54:27	\N
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.sessions (sess_id, sess_data, sess_lifetime, sess_time) FROM stdin;
lfkshv74s9o57re4ms27o311mj	\\x5f7366325f617474726962757465737c613a31303a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32373a22687474703a2f2f6c6f63616c686f73743a383030302f61646d696e223b733a31383a225f637372662f61757468656e746963617465223b733a34333a22713770684b76762d49436a70373279505453574c2d64394c433635327543596171697672496537705f4c51223b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a353a2261646d696e223b733a31343a225f73656375726974795f6d61696e223b733a3435393a224f3a37353a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c487474705c41757468656e74696361746f725c546f6b656e5c506f737441757468656e7469636174696f6e546f6b656e223a323a7b693a303b733a343a226d61696e223b693a313b613a353a7b693a303b4f3a31363a224170705c456e746974795c41646d696e223a343a7b733a32303a22004170705c456e746974795c41646d696e006964223b693a313b733a32363a22004170705c456e746974795c41646d696e00757365726e616d65223b733a353a2261646d696e223b733a32333a22004170705c456e746974795c41646d696e00726f6c6573223b613a313a7b693a303b733a31303a22524f4c455f41444d494e223b7d733a32363a22004170705c456e746974795c41646d696e0070617373776f7264223b733a36303a2224327924313324754469796771705364464749584b57444e754635396554785648364f52473331376c646c36524d32776f387a716b7a7536435a5465223b7d693a313b623a313b693a323b4e3b693a333b613a303a7b7d693a343b613a323a7b693a303b733a31303a22524f4c455f41444d494e223b693a313b733a393a22524f4c455f55534552223b7d7d7d223b733a33333a225f637372662f65612d62617463682d616374696f6e2d626174636844656c657465223b733a34333a22666f7367517148504366773259652d2d776b75507564493344786459596563644d4c755f4252594331646b223b733a31353a225f637372662f65612d64656c657465223b733a34333a2274514e45654355554a66696e456a58676c4741386973454351736470584f77533564773034457758757777223b733a31353a225f637372662f65612d746f67676c65223b733a34333a224f4648666d7a77784c7a77394448474d6867444b7a474974715f49454f427056347176764d47754574336b223b733a31363a225f637372662f436f6e666572656e6365223b733a34333a226a53394735464732426d7975676a534133454631447165376e4c555074794a3664684854414e4e6c666334223b733a31383a225f637372662f636f6d6d656e745f666f726d223b733a34333a226e486357726766466c56673976536363684375316c7435426a424b6f4271584a745f5233386977506b6238223b733a31333a225f637372662f436f6d6d656e74223b733a34333a226a594e57524d37737749315a496c356c735475667150715572573375426c696c6a5f6a545f34707551344d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313635393632343937393b733a313a2263223b693a313635393632343337343b733a313a226c223b693a303b7d	1659626420	1659624980
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.comment_id_seq', 3, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

