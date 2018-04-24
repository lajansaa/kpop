--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: album_volumes; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY album_volumes (id, vote_start, vote_end, award, artiste, song, volume, created_at, updated_at) FROM stdin;
1	2016-12-09	2016-12-12	MCOUNTDOWN	BLACKPINK	PLAYING WITH FIRE	7007	2016-12-20 22:43:29	2016-12-20 22:43:29
2	2016-12-09	2016-12-12	MCOUNTDOWN	Baek ChungKang	BOMB DI BOMB	8846	2016-12-20 22:43:29	2016-12-20 22:43:29
3	2016-12-09	2016-12-12	MCOUNTDOWN	BoK	Don't leave	10790	2016-12-20 22:43:29	2016-12-20 22:43:29
4	2016-12-09	2016-12-12	MCOUNTDOWN	HALO	Mariya	9766	2016-12-20 22:43:29	2016-12-20 22:43:29
5	2016-12-09	2016-12-12	MCOUNTDOWN	Badkiz	Ear Attack 2	14498	2016-12-20 22:43:29	2016-12-20 22:43:29
6	2016-12-09	2016-12-12	MCOUNTDOWN	December	disappeared	9122	2016-12-20 22:43:29	2016-12-20 22:43:29
7	2016-12-09	2016-12-12	MCOUNTDOWN	Berrygood	Don't Believe	12694	2016-12-20 22:43:29	2016-12-20 22:43:29
8	2016-12-09	2016-12-12	MCOUNTDOWN	D.I.P	FIZZ	13483	2016-12-20 22:43:29	2016-12-20 22:43:29
9	2016-12-09	2016-12-12	MCOUNTDOWN	Heymiss	Number.1	17975	2016-12-20 22:43:29	2016-12-20 22:43:29
10	2016-12-09	2016-12-12	MCOUNTDOWN	Big Brain	Sick	15569	2016-12-20 22:43:29	2016-12-20 22:43:29
11	2016-12-09	2016-12-12	MCOUNTDOWN	Heize	Star	10249	2016-12-20 22:43:29	2016-12-20 22:43:29
12	2016-12-09	2016-12-12	MCOUNTDOWN	Bom-i	Very Girly	15717	2016-12-20 22:43:29	2016-12-20 22:43:29
13	2016-12-09	2016-12-12	MCOUNTDOWN	A.DE	Good Time	11634	2016-12-20 22:43:29	2016-12-20 22:43:29
14	2016-12-09	2016-12-12	MCOUNTDOWN	BullDok	Why not	9328	2016-12-20 22:43:29	2016-12-20 22:43:29
15	2016-12-09	2016-12-12	MCOUNTDOWN	B1A4	A lie	13139	2016-12-20 22:43:29	2016-12-20 22:43:29
16	2016-12-09	2016-12-12	MCOUNTDOWN	ASTRO	Confession	8471	2016-12-20 22:43:29	2016-12-20 22:43:29
17	2016-12-09	2016-12-12	MCOUNTDOWN	Thunder	Sign	15679	2016-12-20 22:43:29	2016-12-20 22:43:29
18	2016-12-09	2016-12-12	MCOUNTDOWN	BINBLOW	Say Don't Go	13543	2016-12-20 22:43:29	2016-12-20 22:43:29
19	2016-12-09	2016-12-12	MCOUNTDOWN	Superkidd	Sundance	12263	2016-12-20 22:43:29	2016-12-20 22:43:29
20	2016-12-09	2016-12-12	MCOUNTDOWN	Take	LOST	12793	2016-12-20 22:43:29	2016-12-20 22:43:29
21	2016-12-09	2016-12-12	MCOUNTDOWN	SEVENTEEN	BOOMBOOM	131998	2016-12-20 22:43:29	2016-12-20 22:43:29
22	2016-12-09	2016-12-12	MCOUNTDOWN	MAMAMOO	Decalcomanie	44092	2016-12-20 22:43:29	2016-12-20 22:43:29
23	2016-12-09	2016-12-12	MCOUNTDOWN	UP10TION	White Night	7688	2016-12-20 22:43:29	2016-12-20 22:43:29
24	2016-12-09	2016-12-12	MCOUNTDOWN	PENTAGON	Can You Feel It	14744	2016-12-20 22:43:29	2016-12-20 22:43:29
25	2016-12-09	2016-12-12	MCOUNTDOWN	Sechs Kies	Couple (2016)	16121	2016-12-20 22:43:29	2016-12-20 22:43:29
26	2016-12-09	2016-12-12	MCOUNTDOWN	SeJeong	Flower Way	19007	2016-12-20 22:43:29	2016-12-20 22:43:29
27	2016-12-09	2016-12-12	MCOUNTDOWN	VICTON	What time is it now?	7113	2016-12-20 22:43:29	2016-12-20 22:43:29
28	2016-12-09	2016-12-12	MCOUNTDOWN	ToppDogg	Rainy Day	9877	2016-12-20 22:43:29	2016-12-20 22:43:29
29	2016-12-09	2016-12-12	MCOUNTDOWN	VOISPER	Learn To Love	7125	2016-12-20 22:43:29	2016-12-20 22:43:29
30	2016-12-09	2016-12-12	MCOUNTDOWN	HyoYeon	Mystery	15606	2016-12-20 22:43:29	2016-12-20 22:43:29
31	2016-12-09	2016-12-12	MCOUNTDOWN	LABOUM	Winter Story	14799	2016-12-20 22:43:29	2016-12-20 22:43:29
32	2016-12-09	2016-12-12	MCOUNTDOWN	Jung SeungHwan	The fool	18034	2016-12-20 22:43:29	2016-12-20 22:43:29
33	2016-12-09	2016-12-12	MCOUNTDOWN	HIGHTEEN	BOOM BOOM CLAP	12631	2016-12-20 22:43:29	2016-12-20 22:43:29
34	2016-12-09	2016-12-12	MCOUNTDOWN	KCM	Ordinary Love	12606	2016-12-20 22:43:29	2016-12-20 22:43:29
35	2016-12-09	2016-12-12	MCOUNTDOWN	MATILDA	You Bad! Don't Make Me Cry	8823	2016-12-20 22:43:29	2016-12-20 22:43:29
36	2016-12-09	2016-12-12	MCOUNTDOWN	MAN`S AVENUE	Me on that day	13378	2016-12-20 22:43:29	2016-12-20 22:43:29
37	2016-12-09	2016-12-12	MCOUNTDOWN	Kim Feel	Seongbuk-dong	7232	2016-12-20 22:43:29	2016-12-20 22:43:29
38	2016-12-09	2016-12-12	MCOUNTDOWN	KNK	U	16758	2016-12-20 22:43:29	2016-12-20 22:43:29
39	2016-12-09	2016-12-12	MCOUNTDOWN	Park SiHwan	Gift of Love	19097	2016-12-20 22:43:29	2016-12-20 22:43:29
40	2016-12-09	2016-12-12	MCOUNTDOWN	Snuper	It's raining	13595	2016-12-20 22:43:29	2016-12-20 22:43:29
41	2016-12-09	2016-12-12	MCOUNTDOWN	IMFACT	Feel So Good	11421	2016-12-20 22:43:29	2016-12-20 22:43:29
42	2016-12-09	2016-12-12	MCOUNTDOWN	MOMOLAND	JJan! Koong! Kwang!	11698	2016-12-20 22:43:29	2016-12-20 22:43:29
43	2016-12-09	2016-12-12	MCOUNTDOWN	SOUL LATIDO	Your Name	17966	2016-12-20 22:43:29	2016-12-20 22:43:29
44	2016-12-09	2016-12-12	MCOUNTDOWN	The EastLight	holla	8110	2016-12-20 22:43:29	2016-12-20 22:43:29
45	2016-12-09	2016-12-12	MCOUNTDOWN	Sol-T	Bad Girls	16886	2016-12-20 22:43:29	2016-12-20 22:43:29
46	2016-12-09	2016-12-12	MCOUNTDOWN	Wax	You are You are You are	11127	2016-12-20 22:43:29	2016-12-20 22:43:29
47	2016-12-09	2016-12-12	MCOUNTDOWN	OhBliss	BUNNYBUNNY	12934	2016-12-20 22:43:29	2016-12-20 22:43:29
48	2016-12-09	2016-12-12	MCOUNTDOWN	Monday Kiz	Hardest Word	12920	2016-12-20 22:43:29	2016-12-20 22:43:29
49	2016-12-09	2016-12-12	MCOUNTDOWN	Na YoonKwon	So it is	13645	2016-12-20 22:43:29	2016-12-20 22:43:29
50	2016-12-09	2016-12-12	MCOUNTDOWN	NC.A	Next Station	17655	2016-12-20 22:43:29	2016-12-20 22:43:29
51	2016-12-09	2016-12-12	MCOUNTDOWN	BLACKPINK	PLAYING WITH FIRE	7007	2016-12-20 22:43:29	2016-12-20 22:43:29
52	2016-12-09	2016-12-12	MCOUNTDOWN	Baek ChungKang	BOMB DI BOMB	8846	2016-12-20 22:43:29	2016-12-20 22:43:29
53	2016-12-09	2016-12-12	MCOUNTDOWN	BoK	Don't leave	10790	2016-12-20 22:43:29	2016-12-20 22:43:29
54	2016-12-09	2016-12-12	MCOUNTDOWN	HALO	Mariya	9766	2016-12-20 22:43:29	2016-12-20 22:43:29
55	2016-12-09	2016-12-12	MCOUNTDOWN	Badkiz	Ear Attack 2	14498	2016-12-20 22:43:29	2016-12-20 22:43:29
56	2016-12-09	2016-12-12	MCOUNTDOWN	December	disappeared	9122	2016-12-20 22:43:29	2016-12-20 22:43:29
57	2016-12-09	2016-12-12	MCOUNTDOWN	Berrygood	Don't Believe	12694	2016-12-20 22:43:29	2016-12-20 22:43:29
58	2016-12-09	2016-12-12	MCOUNTDOWN	D.I.P	FIZZ	13483	2016-12-20 22:43:29	2016-12-20 22:43:29
59	2016-12-09	2016-12-12	MCOUNTDOWN	Heymiss	Number.1	17975	2016-12-20 22:43:29	2016-12-20 22:43:29
60	2016-12-09	2016-12-12	MCOUNTDOWN	Big Brain	Sick	15569	2016-12-20 22:43:29	2016-12-20 22:43:29
61	2016-12-09	2016-12-12	MCOUNTDOWN	Heize	Star	10249	2016-12-20 22:43:29	2016-12-20 22:43:29
62	2016-12-09	2016-12-12	MCOUNTDOWN	Bom-i	Very Girly	15717	2016-12-20 22:43:29	2016-12-20 22:43:29
63	2016-12-09	2016-12-12	MCOUNTDOWN	A.DE	Good Time	11634	2016-12-20 22:43:29	2016-12-20 22:43:29
64	2016-12-09	2016-12-12	MCOUNTDOWN	BullDok	Why not	9328	2016-12-20 22:43:29	2016-12-20 22:43:29
65	2016-12-09	2016-12-12	MCOUNTDOWN	B1A4	A lie	13139	2016-12-20 22:43:29	2016-12-20 22:43:29
66	2016-12-09	2016-12-12	MCOUNTDOWN	ASTRO	Confession	8471	2016-12-20 22:43:29	2016-12-20 22:43:29
67	2016-12-09	2016-12-12	MCOUNTDOWN	Thunder	Sign	15679	2016-12-20 22:43:29	2016-12-20 22:43:29
68	2016-12-09	2016-12-12	MCOUNTDOWN	BINBLOW	Say Don't Go	13543	2016-12-20 22:43:29	2016-12-20 22:43:29
69	2016-12-09	2016-12-12	MCOUNTDOWN	Superkidd	Sundance	12263	2016-12-20 22:43:29	2016-12-20 22:43:29
70	2016-12-09	2016-12-12	MCOUNTDOWN	Take	LOST	12793	2016-12-20 22:43:29	2016-12-20 22:43:29
71	2016-12-09	2016-12-12	MCOUNTDOWN	SEVENTEEN	BOOMBOOM	131998	2016-12-20 22:43:29	2016-12-20 22:43:29
72	2016-12-09	2016-12-12	MCOUNTDOWN	MAMAMOO	Decalcomanie	44092	2016-12-20 22:43:29	2016-12-20 22:43:29
73	2016-12-09	2016-12-12	MCOUNTDOWN	UP10TION	White Night	7688	2016-12-20 22:43:29	2016-12-20 22:43:29
74	2016-12-09	2016-12-12	MCOUNTDOWN	PENTAGON	Can You Feel It	14744	2016-12-20 22:43:29	2016-12-20 22:43:29
75	2016-12-09	2016-12-12	MCOUNTDOWN	Sechs Kies	Couple (2016)	16121	2016-12-20 22:43:29	2016-12-20 22:43:29
76	2016-12-09	2016-12-12	MCOUNTDOWN	SeJeong	Flower Way	19007	2016-12-20 22:43:29	2016-12-20 22:43:29
77	2016-12-09	2016-12-12	MCOUNTDOWN	VICTON	What time is it now?	7113	2016-12-20 22:43:29	2016-12-20 22:43:29
78	2016-12-09	2016-12-12	MCOUNTDOWN	ToppDogg	Rainy Day	9877	2016-12-20 22:43:29	2016-12-20 22:43:29
79	2016-12-09	2016-12-12	MCOUNTDOWN	VOISPER	Learn To Love	7125	2016-12-20 22:43:29	2016-12-20 22:43:29
80	2016-12-09	2016-12-12	MCOUNTDOWN	HyoYeon	Mystery	15606	2016-12-20 22:43:29	2016-12-20 22:43:29
81	2016-12-09	2016-12-12	MCOUNTDOWN	LABOUM	Winter Story	14799	2016-12-20 22:43:29	2016-12-20 22:43:29
82	2016-12-09	2016-12-12	MCOUNTDOWN	Jung SeungHwan	The fool	18034	2016-12-20 22:43:29	2016-12-20 22:43:29
83	2016-12-09	2016-12-12	MCOUNTDOWN	HIGHTEEN	BOOM BOOM CLAP	12631	2016-12-20 22:43:29	2016-12-20 22:43:29
84	2016-12-09	2016-12-12	MCOUNTDOWN	KCM	Ordinary Love	12606	2016-12-20 22:43:29	2016-12-20 22:43:29
85	2016-12-09	2016-12-12	MCOUNTDOWN	MATILDA	You Bad! Don't Make Me Cry	8823	2016-12-20 22:43:29	2016-12-20 22:43:29
86	2016-12-09	2016-12-12	MCOUNTDOWN	MAN`S AVENUE	Me on that day	13378	2016-12-20 22:43:29	2016-12-20 22:43:29
87	2016-12-09	2016-12-12	MCOUNTDOWN	Kim Feel	Seongbuk-dong	7232	2016-12-20 22:43:29	2016-12-20 22:43:29
88	2016-12-09	2016-12-12	MCOUNTDOWN	KNK	U	16758	2016-12-20 22:43:29	2016-12-20 22:43:29
89	2016-12-09	2016-12-12	MCOUNTDOWN	Park SiHwan	Gift of Love	19097	2016-12-20 22:43:29	2016-12-20 22:43:29
90	2016-12-09	2016-12-12	MCOUNTDOWN	Snuper	It's raining	13595	2016-12-20 22:43:29	2016-12-20 22:43:29
91	2016-12-09	2016-12-12	MCOUNTDOWN	IMFACT	Feel So Good	11421	2016-12-20 22:43:29	2016-12-20 22:43:29
92	2016-12-09	2016-12-12	MCOUNTDOWN	MOMOLAND	JJan! Koong! Kwang!	11698	2016-12-20 22:43:29	2016-12-20 22:43:29
93	2016-12-09	2016-12-12	MCOUNTDOWN	SOUL LATIDO	Your Name	17966	2016-12-20 22:43:29	2016-12-20 22:43:29
94	2016-12-09	2016-12-12	MCOUNTDOWN	The EastLight	holla	8110	2016-12-20 22:43:29	2016-12-20 22:43:29
95	2016-12-09	2016-12-12	MCOUNTDOWN	Sol-T	Bad Girls	16886	2016-12-20 22:43:29	2016-12-20 22:43:29
96	2016-12-09	2016-12-12	MCOUNTDOWN	Wax	You are You are You are	11127	2016-12-20 22:43:29	2016-12-20 22:43:29
97	2016-12-09	2016-12-12	MCOUNTDOWN	OhBliss	BUNNYBUNNY	12934	2016-12-20 22:43:29	2016-12-20 22:43:29
98	2016-12-09	2016-12-12	MCOUNTDOWN	Monday Kiz	Hardest Word	12920	2016-12-20 22:43:29	2016-12-20 22:43:29
99	2016-12-09	2016-12-12	MCOUNTDOWN	Na YoonKwon	So it is	13645	2016-12-20 22:43:29	2016-12-20 22:43:29
100	2016-12-09	2016-12-12	MCOUNTDOWN	NC.A	Next Station	17655	2016-12-20 22:43:29	2016-12-20 22:43:29
\.


--
-- Name: album_volumes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('album_volumes_id_seq', 100, true);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY albums (id, name_eng, name_kor, profile_img, created_at, updated_at, mcountdown) FROM stdin;
1	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/766/1766886.jpg	2017-03-12 14:16:13.479153	2017-03-12 14:16:13.479153	SKETCHBOOK
2	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/801/1801934.jpg	2017-03-12 14:17:42.158747	2017-03-12 14:17:42.158747	ROSE
3	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/761/1761849.jpg	2017-03-12 14:17:43.112097	2017-03-12 14:17:43.112097	B.I.G Rebirth
4	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/762/1762237.jpg	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	STARDOM
6	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/752/1752318.jpg	2017-03-12 15:26:41.75912	2017-03-12 15:26:41.75912	Start A Fire
7	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/767/1767568.jpg	2017-03-12 15:26:46.066224	2017-03-12 15:26:46.066224	SOMEDAY
8	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/758/1758865.jpg	2017-03-12 15:26:48.214395	2017-03-12 15:26:48.214395	MIRROR
9	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/453/1453717.jpg	2017-03-12 15:26:50.662621	2017-03-12 15:26:50.662621	FIZZ
10	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/801/1801525.jpg	2017-03-12 15:26:52.519384	2017-03-12 15:26:52.519384	Every DAY6 March
11	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/767/1767108.jpg	2017-03-12 15:26:54.253073	2017-03-12 15:26:54.253073	An Obvious Melo
12	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/761/1761361.jpg	2017-03-12 15:26:59.877087	2017-03-12 15:26:59.877087	Girl Gang
13	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/766/1766297.jpg	2017-03-12 15:27:01.722048	2017-03-12 15:27:01.722048	Innocent Love
14	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/739/1739861.jpg	2017-03-12 15:27:03.865342	2017-03-12 15:27:03.865342	Honey Dream
15	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/761/1761395.jpg	2017-03-12 15:27:05.414884	2017-03-12 15:27:05.414884	Fabricated City Special Song
16	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/753/1753099.jpg	2017-03-12 15:27:07.265123	2017-03-12 15:27:07.265123	Rainbow
17	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/757/1757003.jpg	2017-03-12 15:27:09.143728	2017-03-12 15:27:09.143728	Sira
18	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/755/1755052.jpg	2017-03-12 15:27:12.485822	2017-03-12 15:27:12.485822	Cold night, You were warm.
19	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/766/1766171.jpg	2017-03-12 15:27:14.321101	2017-03-12 15:27:14.321101	Nam.Sa.Mot
20	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/767/1767907.jpg	2017-03-12 15:27:16.005089	2017-03-12 15:27:16.005089	Lovelyz 2nd Album [R U Ready?]
21	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/739/1739962.jpg	2017-03-12 15:27:17.396103	2017-03-12 15:27:17.396103	Reason
22	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/760/1760389.jpg	2017-03-12 15:27:18.629354	2017-03-12 15:27:18.629354	Tina
23	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/762/1762703.jpg	2017-03-12 15:27:20.777006	2017-03-12 15:27:20.777006	KISS ON THE LIPS
24	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/761/1761440.jpg	2017-03-12 15:27:22.315155	2017-03-12 15:27:22.315155	The First - The 1st Single Album
25	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/802/1802324.jpg	2017-03-12 15:27:24.465897	2017-03-12 15:27:24.465897	WITHOUT U
26	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/760/1760398.jpg	2017-03-12 15:27:26.622431	2017-03-12 15:27:26.622431	SF9 First Mini Album `Burning Sensation`
27	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/752/1752242.jpg	2017-03-12 15:27:28.456339	2017-03-12 15:27:28.456339	Slow Down
28	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/758/1758285.jpg	2017-03-12 15:27:30.304009	2017-03-12 15:27:30.304009	I Live Because I Can't Die
29	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/755/1755705.jpg	2017-03-12 15:27:32.460486	2017-03-12 15:27:32.460486	Study You
30	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/800/1800491.jpg	2017-03-12 15:27:34.363762	2017-03-12 15:27:34.363762	My Voice - The 1st Album
31	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/766/1766408.jpg	2017-03-12 15:27:38.183555	2017-03-12 15:27:38.183555	TWICEcoaster : LANE 2
32	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/766/1766196.jpg	2017-03-12 15:27:39.821403	2017-03-12 15:27:39.821403	VENUS
33	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/800/1800948.jpg	2017-03-12 15:27:42.28128	2017-03-12 15:27:42.28128	READY
34	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/755/1755481.jpg	2017-03-12 15:27:46.88147	2017-03-12 15:27:46.88147	HAKUNAMATATA
35	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/536/1536223.jpg	2017-03-12 15:27:48.743379	2017-03-12 15:27:48.743379	Zingo
36	\N	\N	no available image	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	BLANC7, YEAH
37	\N	\N	no available image	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	Brave Girls, Rollin`
38	\N	\N	no available image	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	GFRIEND, FINGERTIP
39	\N	\N	no available image	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	gugudan, A Girl Like Me
40	\N	\N	no available image	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	Kim JiSoo, Dream All Day
41	\N	\N	no available image	2017-03-12 14:17:44.33865	2017-03-12 14:17:44.33865	The Ray, Nostalgia
43	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/809/1809622.jpg	2017-03-18 14:44:46.916925	2017-03-18 14:44:46.916925	From Head To Toe
44	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/832/1832772.jpg	2017-03-18 14:44:48.752158	2017-03-18 14:44:48.752158	FLIGHT LOG : ARRIVAL
45	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/833/1833437.jpg	2017-03-18 14:44:49.975414	2017-03-18 14:44:49.975414	Soon Jeon Diary 2017
46	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/810/1810056.jpg	2017-03-18 14:44:50.89421	2017-03-18 14:44:50.89421	1st Mini Album [MANIFEST]
47	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/833/1833450.jpg	2017-03-18 14:44:51.820076	2017-03-18 14:44:51.820076	Butterfly Effect
48	\N	\N	no available image	2017-03-18 14:44:53.046858	2017-03-18 14:44:53.046858	Six Bomb, Getting Prettier After
49	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/833/1833204.jpg	2017-04-01 08:06:12.945255	2017-04-01 08:06:12.945255	\tFunky Music
50	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/834/1834823.jpg	2017-04-01 08:06:14.469302	2017-04-01 08:06:14.469302	CNBLUE 7TH MINI ALBUM 7°CN
51	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/836/1836478.jpg	2017-04-01 08:06:16.000163	2017-04-01 08:06:16.000163	GIRL`S DAY EVERYDAY #5
52	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/801/1801129.jpg	2017-04-01 08:06:17.429669	2017-04-01 08:06:17.429669	Yeonnam-dong
53	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/832/1832779.jpg	2017-04-01 08:06:18.967537	2017-04-01 08:06:18.967537	CAN YOU FEEL IT?
54	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/261/1261180.jpg	2017-04-01 08:06:20.296043	2017-04-01 08:06:20.296043	NEW JACK CITY
55	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/834/1834606.jpg	2017-04-01 08:06:21.728382	2017-04-01 08:06:21.728382	\tAlive
56	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/835/1835611.jpg	2017-04-01 08:06:23.368644	2017-04-01 08:06:23.368644	Because of love
57	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/835/1835308.jpg	2017-04-01 08:06:26.644948	2017-04-01 08:06:26.644948	LIPBUBBLE 1ST Digital Single Album `POPCORN`
58	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/835/1835059.jpg	2017-04-01 08:06:28.188854	2017-04-01 08:06:28.188854	THE CLAN pt.2.5 `BEAUTIFUL`
59	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/838/1838817.jpg	2017-04-01 08:06:29.512272	2017-04-01 08:06:29.512272	Sing With The Swing
60	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/834/1834978.jpg	2017-04-01 08:06:31.56291	2017-04-01 08:06:31.56291	The 1st Mini Album 'HI! PRISTIN'
61	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/832/1832778.jpg	2017-04-01 08:06:32.993136	2017-04-01 08:06:32.993136	Love & Live
62	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/883/1883912.jpg	2017-04-09 16:23:33.054948	2017-04-09 16:23:33.054948	THE IDOLM@STER
63	\N	\N	no available image	2017-04-09 16:23:33.789576	2017-04-09 16:23:33.789576	DAY6, I'm Serious
64	\N	\N	no available image	2017-04-09 16:23:34.635735	2017-04-09 16:23:34.635735	Dreamcatcher, GOOD NIGHT
65	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/883/1883962.jpg	2017-04-09 16:23:35.568741	2017-04-09 16:23:35.568741	Tang Tang Tang
66	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/884/1884401.jpg	2017-04-09 16:23:36.484077	2017-04-09 16:23:36.484077	And you?
67	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/943/1943289.jpg	2017-04-09 16:23:37.377613	2017-04-09 16:23:37.377613	IMFACTORY PART 3 (Tension UP)
68	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/944/1944145.jpg	2017-04-09 16:23:38.200247	2017-04-09 16:23:38.200247	DANDULIYA
69	\N	\N	no available image	2017-04-09 16:23:39.332217	2017-04-09 16:23:39.332217	OH MY GIRL, Coloring Book
70	\N	\N	no available image	2017-04-09 16:23:40.2651	2017-04-09 16:23:40.2651	ROSE MOTEL, The Wedding Song
71	\N	\N	no available image	2017-04-09 16:23:41.131459	2017-04-09 16:23:41.131459	Seol Hayoon, The Man Bothers The Woman
72	\N	\N	no available image	2017-04-09 16:23:42.113112	2017-04-09 16:23:42.113112	TEEN TOP, Love Is
73	\N	\N	no available image	2017-04-09 16:23:42.999534	2017-04-09 16:23:42.999534	WINNER, REALLY REALLY
74	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/945/1945916.jpg	2017-04-14 16:13:00.64398	2017-04-14 16:13:00.64398	Lieland in the Springtime
75	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/944/1944907.jpg	2017-04-14 16:13:02.088058	2017-04-14 16:13:02.088058	Eclipse
76	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/834/1834968.jpg	2017-04-14 16:13:03.916482	2017-04-14 16:13:03.916482	Mix B
77	\N	\N	no available image	2017-04-14 16:13:04.835705	2017-04-14 16:13:04.835705	gugudan, Rainbow
78	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/801/1801139.jpg	2017-04-14 16:13:06.371009	2017-04-14 16:13:06.371009	Hwang Ya
79	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/943/1943087.jpg	2017-04-14 16:13:08.1979	2017-04-14 16:13:08.1979	INX 2ND DIGITAL SINGLE `2GETHER`
80	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/944/1944977.jpg	2017-04-14 16:13:10.071168	2017-04-14 16:13:10.071168	SPACE
81	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/944/1944583.jpg	2017-04-14 16:13:11.901709	2017-04-14 16:13:11.901709	MiSO ALL ACCESS
82	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/944/1944556.jpg	2017-04-14 16:13:13.747047	2017-04-14 16:13:13.747047	I Miss You
83	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/884/1884396.jpg	2017-04-14 16:13:15.282486	2017-04-14 16:13:15.282486	Steal Your Heart
84	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/945/1945949.jpg	2017-04-14 16:13:16.919796	2017-04-14 16:13:16.919796	COLOR TV
85	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/978/1978557.jpg	2017-04-23 16:48:07.204546	2017-04-23 16:48:07.204546	BibbidiBobbidiBoo
86	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/979/1979920.jpg	2017-04-23 16:48:08.720391	2017-04-23 16:48:08.720391	If I Become An Adult
87	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/978/1978472.jpg	2017-04-23 16:48:10.869702	2017-04-23 16:48:10.869702	Live In Hope
88	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/979/1979420.jpg	2017-04-23 16:48:13.020071	2017-04-23 16:48:13.020071	YOLO
89	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/978/1978620.jpg	2017-04-23 16:48:15.477429	2017-04-23 16:48:15.477429	MINZY WORK 01 UNO
90	\N	\N	no available image	2017-04-23 16:48:17.311888	2017-04-23 16:48:17.311888	IU, Palette
91	\N	\N	no available image	2017-04-23 16:48:18.852634	2017-04-23 16:48:18.852634	Junggigo, ACROSS THE UNIVERSE
92	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/978/1978693.jpg	2017-04-23 16:48:21.009653	2017-04-23 16:48:21.009653	MISS THIS KISS
93	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/945/1945049.jpg	2017-04-23 16:48:23.161295	2017-04-23 16:48:23.161295	h
94	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/978/1978982.jpg	2017-04-23 16:48:24.691402	2017-04-23 16:48:24.691402	SF9 2nd Mini Album `Breaking Sensation`
95	\N	\N	no available image	2017-04-23 16:48:27.144725	2017-04-23 16:48:27.144725	Ulala Session, Beautiful
96	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/980/1980751.jpg	2017-04-30 07:55:11.189112	2017-04-30 07:55:11.189112	23
97	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/979/1979722.jpg	2017-04-30 07:55:12.963795	2017-04-30 07:55:12.963795	Ring Ring
98	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/981/1981148.jpg	2017-04-30 07:55:15.117861	2017-04-30 07:55:15.117861	Wonderful Love
99	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/980/1980581.jpg	2017-04-30 07:55:17.273857	2017-04-30 07:55:17.273857	I Wanna?
100	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/981/1981763.jpg	2017-04-30 07:55:18.19583	2017-04-30 07:55:18.19583	Love & Evil
101	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/981/1981902.jpg	2017-04-30 07:55:20.645278	2017-04-30 07:55:20.645278	VARSITY 2nd Single Album `Hole In One`
102	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/982/1982892.jpg	2017-05-06 06:05:41.20065	2017-05-06 06:05:41.20065	Keep your eyes on my body
103	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/944/1944656.jpg	2017-05-06 06:05:42.718313	2017-05-06 06:05:42.718313	Please
104	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/978/1978604.jpg	2017-05-06 06:05:44.555467	2017-05-06 06:05:44.555467	FEEL LIKE THIS
105	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/982/1982785.jpg	2017-05-06 06:05:45.773787	2017-05-06 06:05:45.773787	Lovelyz 2nd Album Repackage [지금, 우리]
106	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/980/1980961.jpg	2017-05-06 06:05:47.630698	2017-05-06 06:05:47.630698	Paint on Spring
107	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/836/1836377.jpg	2017-05-06 06:05:49.470172	2017-05-06 06:05:49.470172	Owol 2nd Single `NUNA`
108	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/982/1982426.jpg	2017-05-06 06:05:51.927327	2017-05-06 06:05:51.927327	THE 20TH ANNIVERSARY
109	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/982/1982015.jpg	2017-05-06 06:05:53.46365	2017-05-06 06:05:53.46365	Vanishing Paycheck
110	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/001/982/1982602.jpg	2017-05-06 06:05:55.314943	2017-05-06 06:05:55.314943	199X
111	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/229/2229138.jpg	2017-11-18 08:24:00.38779	2017-11-18 08:24:00.38779	Callin`
112	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/290/2290568.jpg	2017-11-18 08:24:01.918511	2017-11-18 08:24:01.918511	Dream Part.02
113	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/200/2200221.jpg	2017-11-18 08:24:03.460873	2017-11-18 08:24:03.460873	Hiccup
114	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/136/2136002.jpg	2017-11-18 08:24:05.59549	2017-11-18 08:24:05.59549	Funfun
115	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/167/2167236.jpg	2017-11-18 08:24:06.513608	2017-11-18 08:24:06.513608	A Likely Night
116	\N	\N	no available image	2017-11-18 08:24:08.848113	2017-11-18 08:24:08.848113	DK, About time
117	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/390/2390244.jpg	2017-11-18 08:24:09.483489	2017-11-18 08:24:09.483489	Full Moon
118	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/154/2154277.jpg	2017-11-18 08:24:11.066202	2017-11-18 08:24:11.066202	FLASHE SEASON ALBUM
119	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/231/2231820.jpg	2017-11-18 08:24:13.183043	2017-11-18 08:24:13.183043	GATE1 : Paperwhite
120	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/390/2390544.jpg	2017-11-18 08:24:13.847583	2017-11-18 08:24:13.847583	1st Single [Act.3 Chococo Factory]
121	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/133/2133610.jpg	2017-11-18 08:24:15.425846	2017-11-18 08:24:15.425846	Make it ride
122	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/215/2215085.jpg	2017-11-18 08:24:16.957112	2017-11-18 08:24:16.957112	LIPBUBBLE HAEA 1ST Single Album `Paris Party`
123	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/213/2213410.jpg	2017-11-18 08:24:20.913621	2017-11-18 08:24:20.913621	Hashtag 1st Mini album `The girl next door`
124	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/230/2230829.jpg	2017-11-18 08:24:22.488853	2017-11-18 08:24:22.488853	LOVE is Blind
125	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/231/2231556.jpg	2017-11-18 08:24:23.715032	2017-11-18 08:24:23.715032	Carpe Diem
126	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/214/2214664.jpg	2017-11-18 08:24:25.253457	2017-11-18 08:24:25.253457	LIFE
127	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/259/2259825.jpg	2017-11-18 08:24:27.144714	2017-11-18 08:24:27.144714	Ordinary Things
128	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/399/2399061.jpg	2017-11-18 08:24:28.715806	2017-11-18 08:24:28.715806	TRACE OF EMOTION
129	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/390/2390251.jpg	2017-11-18 08:24:30.168779	2017-11-18 08:24:30.168779	the Fillette
130	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/330/2330268.jpg	2017-11-18 08:24:31.089505	2017-11-18 08:24:31.089505	white wedding
131	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/231/2231115.jpg	2017-11-18 08:24:32.625549	2017-11-18 08:24:32.625549	SINCERELY
132	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/399/2399065.jpg	2017-11-18 08:24:33.54887	2017-11-18 08:24:33.54887	Lovelyz 3rd Mini Album [Fall in Lovelyz]
133	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/213/2213889.jpg	2017-11-18 08:24:34.776574	2017-11-18 08:24:34.776574	Do It
134	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/135/2135979.jpg	2017-11-18 08:24:35.697272	2017-11-18 08:24:35.697272	Pink Lady
135	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/390/2390408.jpg	2017-11-18 08:24:36.620426	2017-11-18 08:24:36.620426	THE CODE
136	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/232/2232670.jpg	2017-11-18 08:24:38.77544	2017-11-18 08:24:38.77544	20th
137	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/349/2349729.jpg	2017-11-18 08:24:40.302868	2017-11-18 08:24:40.302868	Without You
138	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/214/2214660.jpg	2017-11-18 08:24:41.53392	2017-11-18 08:24:41.53392	Stay
139	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/133/2133600.jpg	2017-11-18 08:24:43.085707	2017-11-18 08:24:43.085707	Refresh 7th
140	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/399/2399891.jpg	2017-11-18 08:24:44.56907	2017-11-18 08:24:44.56907	EYE CANDY
141	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/360/2360496.jpg	2017-11-18 08:24:46.458233	2017-11-18 08:24:46.458233	SEVENTEEN 2ND ALBUM `TEEN, AGE`
142	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/214/2214071.jpg	2017-11-18 08:24:47.1973	2017-11-18 08:24:47.1973	SF9 3rd Mini Album `Knights of the Sun`
143	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/229/2229102.jpg	2017-11-18 08:24:48.382524	2017-11-18 08:24:48.382524	Don't ask me. Just do it.
144	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/360/2360516.jpg	2017-11-18 08:24:50.450573	2017-11-18 08:24:50.450573	HAPPY BOX PART 2
145	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/259/2259847.jpg	2017-11-18 08:24:51.950855	2017-11-18 08:24:51.950855	The Rose 2nd Single 'Like we used to'
146	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/232/2232812.jpg	2017-11-18 08:24:53.156793	2017-11-18 08:24:53.156793	twicetagram
147	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/290/2290778.jpg	2017-11-18 08:24:53.82369	2017-11-18 08:24:53.82369	She`s Mine
148	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/391/2391172.jpg	2017-11-18 08:24:54.665411	2017-11-18 08:24:54.665411	From. VICTON
149	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/155/2155537.jpg	2017-11-18 08:24:55.289095	2017-11-18 08:24:55.289095	Ramen
150	\N	\N	http://cmsimg.global.mnet.com/clipimage/album/240/002/398/2398758.jpg	2017-11-18 08:24:56.902759	2017-11-18 08:24:56.902759	1-1=0 (NOTHING WITHOUT YOU)
\.


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('albums_id_seq', 150, true);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ollida
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-11-25 09:17:40.182242	2016-11-25 09:17:40.182242
\.


--
-- Data for Name: artistes; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY artistes (id, profile_img, name_eng, name_kor, mcountdown, created_at, updated_at) FROM stdin;
73	http://cmsimg.global.mnet.com/clipimage/artist/240/000/501/501087.jpg	Eyedi	아이디	Eyedi	2017-04-14 16:13:02.953006	2017-04-14 16:14:07.862481
74	http://cmsimg.global.mnet.com/clipimage/artist/240/000/338/338576.jpg	Hwang In Sun	황인숙	Hwang InSun	2017-04-14 16:13:05.721865	2017-04-14 16:14:13.878992
75	http://cmsimg.global.mnet.com/clipimage/artist/240/000/502/502723.jpg	INX	인엑스	INX	2017-04-14 16:13:07.288427	2017-04-14 16:14:19.804581
77	http://cmsimg.global.mnet.com/clipimage/artist/240/001/611/1611780.jpg	Mi SO	미소	MiSO	2017-04-14 16:13:10.973137	2017-04-14 16:14:31.511768
79	http://cmsimg.global.mnet.com/clipimage/artist/240/001/611/1611587.jpg	UNIT BLACK	유닛블랙	UNIT BLACK	2017-04-14 16:13:14.601871	2017-04-14 16:14:43.603208
72	http://cmsimg.global.mnet.com/clipimage/artist/240/000/223/223823.jpg	EXID	이엑스아이디	EXID	2017-04-14 16:13:01.347585	2017-04-14 16:15:10.264452
80	http://cmsimg.global.mnet.com/clipimage/artist/240/000/284/284763.jpg	Wa$$up	와썹	Wa$$up	2017-04-14 16:13:16.152417	2017-04-14 16:19:03.722686
78	http://cmsimg.global.mnet.com/clipimage/artist/240/000/283/283132.jpg	Say Yes	세이예스	Say Yes	2017-04-14 16:13:12.820045	2017-04-14 16:20:56.864448
76	http://cmsimg.global.mnet.com/clipimage/artist/240/000/193/193255.jpg	Jeong Eun Ji	정은지	Jeong EunJi	2017-04-14 16:13:09.131136	2017-04-14 16:22:10.643901
102	http://cmsimg.global.mnet.com/clipimage/artist/240/000/049/49392.jpg	Sechs Kies	젝스키스	Sechs Kies	2017-05-06 06:05:50.379562	2017-05-06 06:06:31.281392
82	http://cmsimg.global.mnet.com/clipimage/artist/240/001/496/1496978.jpg	Bonusbaby	보너스베이비	Bonusbaby	2017-04-23 16:48:08.097104	2017-04-23 16:49:06.326421
81	http://cmsimg.global.mnet.com/clipimage/artist/240/000/337/337028.jpg	Berrygood	비비디바비디부	Berrygood	2017-04-23 16:47:15.583907	2017-04-23 16:50:17.712577
8	http://cmsimg.global.mnet.com/clipimage/artist/240/000/228/228832.jpg	BTOB	비투비	BTOB	2017-03-12 15:26:46.055885	2017-03-25 16:17:04.141175
26	http://cmsimg.global.mnet.com/clipimage/artist/240/000/504/504653.jpg	MASC	마스크	MASC	2017-03-12 15:27:18.619785	2017-03-25 16:17:15.887107
9	http://cmsimg.global.mnet.com/clipimage/artist/240/000/236/236412.jpg	Cross Gene	크로스진	Cross Gene	2017-03-12 15:26:48.204269	2017-03-25 16:19:05.514075
4	http://cmsimg.global.mnet.com/clipimage/artist/240/000/341/341383.jpg	BIGFLO	빅플로	BIGFLO	2017-03-12 14:17:44.334943	2017-03-25 16:19:16.159887
11	http://cmsimg.global.mnet.com/clipimage/artist/240/000/458/458116.jpg	DAY6	데이식스	DAY6	2017-03-12 15:26:52.50688	2017-03-25 16:19:26.785586
12	http://cmsimg.global.mnet.com/clipimage/artist/240/000/047/47798.jpg	Gavy NJ	가비엔제이	Gavy NJ	2017-03-12 15:26:54.241384	2017-03-25 16:19:48.524356
24	http://cmsimg.global.mnet.com/clipimage/artist/240/000/363/363791.jpg	Lovelyz	러블리즈	Lovelyz	2017-03-12 15:27:15.994653	2017-03-25 16:20:10.102424
23	http://cmsimg.global.mnet.com/clipimage/artist/240/001/498/1498473.jpg	L.A.U	NA	L.A.U	2017-03-12 15:27:14.309508	2017-03-27 16:50:12.412347
6	http://cmsimg.global.mnet.com/clipimage/artist/240/001/496/1496873.jpg	BP RANIA	BP 라니아	BP RANIA	2017-03-12 15:26:41.748087	2017-04-01 08:44:57.061173
10	http://cmsimg.global.mnet.com/clipimage/artist/240/001/137/1137058.jpg	D.I.P	디아이피	D.I.P	2017-03-12 15:26:50.657467	2017-04-01 08:45:30.993183
103	http://cmsimg.global.mnet.com/clipimage/artist/240/000/266/266490.jpg	Stella Jang	스텔라장	Stella Jang	2017-05-06 06:05:52.802023	2017-05-06 06:06:37.41336
97	http://cmsimg.global.mnet.com/clipimage/artist/240/000/382/382601.jpg	Babyboo	베이비부	Babyboo	2017-05-06 06:05:40.247372	2017-05-06 06:06:49.081099
98	http://cmsimg.global.mnet.com/clipimage/artist/240/001/580/1580900.jpg	BLACK6IX	블랙식스	BLACK6IX	2017-05-06 06:05:41.818648	2017-05-06 06:06:55.086436
100	http://cmsimg.global.mnet.com/clipimage/artist/240/000/463/463848.jpg	Martin Smith	마틴스미스	Martin Smith	2017-05-06 06:05:46.38804	2017-05-06 06:07:06.771151
101	http://cmsimg.global.mnet.com/clipimage/artist/240/000/249/249188.jpg	Owol	오월	Owol	2017-05-06 06:05:48.537682	2017-05-06 06:07:12.577619
104	http://cmsimg.global.mnet.com/clipimage/artist/240/001/632/1632382.jpg	Triple H	트리플 H	Triple H	2017-05-06 06:05:54.375281	2017-05-06 06:09:00.235741
99	http://cmsimg.global.mnet.com/clipimage/artist/240/001/631/1631004.jpg	EXP EDITION	이엑스피 에디션	EXP EDITION	2017-05-06 06:05:43.627467	2017-05-06 06:09:37.577197
71	http://cmsimg.global.mnet.com/clipimage/artist/240/000/073/73197.jpg	Chon Dan Be	NA	Chon Dan Be	2017-04-14 16:12:59.618173	2017-05-06 06:09:50.925467
27	http://cmsimg.global.mnet.com/clipimage/artist/240/000/244/244936.jpg	Melody Day	멜로디데이	MelodyDay	2017-03-12 15:27:20.772545	2017-03-25 16:20:32.041895
29	http://cmsimg.global.mnet.com/clipimage/artist/240/000/412/412669.jpg	Romeo	로미오	Romeo	2017-03-12 15:27:24.454102	2017-03-25 16:20:43.637338
13	http://cmsimg.global.mnet.com/clipimage/artist/240/000/372/372054.jpg	GFRIEND	여자친구	GFRIEND	2017-03-12 15:26:55.874426	2017-03-25 16:20:55.549642
16	http://cmsimg.global.mnet.com/clipimage/artist/240/000/322/322818.jpg	Han Hee Jun	한희준	Han HeeJun	2017-03-12 15:27:01.717676	2017-03-25 16:21:19.259899
18	http://cmsimg.global.mnet.com/clipimage/artist/240/000/161/161436.jpg	Hong Jin Young	홍진영	Hong JinYoung	2017-03-12 15:27:05.404991	2017-03-25 16:22:05.999469
30	http://cmsimg.global.mnet.com/clipimage/artist/240/000/622/622869.jpg	SF9	에스에프나인	SF9	2017-03-12 15:27:26.610736	2017-03-25 16:22:11.962994
20	http://cmsimg.global.mnet.com/clipimage/artist/240/000/170/170353.jpg	Kang Sira	강시라	Kang Sira	2017-03-12 15:27:09.132696	2017-03-25 16:22:17.94786
34	http://cmsimg.global.mnet.com/clipimage/artist/240/000/146/146995.jpg	Taeyeon	태연	Taeyeon	2017-03-12 15:27:34.353915	2017-03-25 16:22:35.834647
17	http://cmsimg.global.mnet.com/clipimage/artist/240/000/469/469383.jpg	High Soul	하이솔	HighSoul	2017-03-12 15:27:03.860989	2017-03-25 16:34:54.425943
25	http://cmsimg.global.mnet.com/clipimage/artist/240/000/407/407044.jpg	M.Fect	엠펙트	M.Fect	2017-03-12 15:27:17.385318	2017-03-25 16:22:47.919393
36	http://cmsimg.global.mnet.com/clipimage/artist/240/000/463/463178.jpg	TWICE	트와이스	TWICE	2017-03-12 15:27:38.173847	2017-03-25 16:22:53.540535
38	http://cmsimg.global.mnet.com/clipimage/artist/240/001/102/1102863.jpg	VICTON	빅톤	VICTON	2017-03-12 15:27:42.271164	2017-03-25 16:23:11.425712
42	http://cmsimg.global.mnet.com/clipimage/artist/240/000/317/317880.jpg	GOT7	갓세븐	GOT7	2017-03-18 12:54:49.142926	2017-03-25 16:23:17.343822
31	http://cmsimg.global.mnet.com/clipimage/artist/240/000/378/378670.jpg	Shin Gi Won	신기원	Shin GiWon	2017-03-12 15:27:28.444811	2017-03-25 16:23:23.313338
32	http://cmsimg.global.mnet.com/clipimage/artist/240/000/147/147138.jpg	Shin Hyun Woo	신현우	Shin HyunWoo	2017-03-12 15:27:30.296606	2017-03-25 16:23:29.181586
33	http://cmsimg.global.mnet.com/clipimage/artist/240/000/179/179621.jpg	SORAN	소란	SORAN	2017-03-12 15:27:32.450533	2017-03-25 16:23:35.397117
44	http://cmsimg.global.mnet.com/clipimage/artist/240/001/535/1535456.jpg	MVP	엠브이피	MVP	2017-03-18 12:54:51.296862	2017-03-25 16:23:41.309713
46	http://cmsimg.global.mnet.com/clipimage/artist/240/000/222/222729.jpg	Six Bomb	식스밤	Six Bomb	2017-03-18 12:54:53.065798	2017-03-25 16:23:47.670951
14	http://cmsimg.global.mnet.com/clipimage/artist/240/000/497/497139.jpg	Gugudan	구구단	gugudan	2017-03-12 15:26:57.725114	2017-03-25 16:23:53.600967
39	http://cmsimg.global.mnet.com/clipimage/artist/240/001/498/1498239.jpg	WALWARI	왈와리	WALWARI	2017-03-12 15:27:46.878062	2017-03-25 16:24:05.888547
40	http://cmsimg.global.mnet.com/clipimage/artist/240/000/086/86269.jpg	Zingo	징고	Zingo	2017-03-12 15:27:48.732422	2017-03-25 16:24:11.955329
41	http://cmsimg.global.mnet.com/clipimage/artist/240/000/489/489813.jpg	Cra'beat	크라빗	Cra'beat	2017-03-18 12:54:48.225194	2017-03-25 16:24:17.570176
19	http://cmsimg.global.mnet.com/clipimage/artist/240/001/497/1497077.jpg	INA	인아	INA	2017-03-12 15:27:07.254788	2017-03-25 16:24:29.206634
1	http://cmsimg.global.mnet.com/clipimage/artist/240/000/247/247213.jpg	100%	백퍼센트	100%	2017-03-12 14:16:13.44354	2017-03-25 16:24:41.422241
5	no available image	BLANC7	블랑세븐	BLANC7	2017-03-12 15:26:39.91094	2017-03-25 16:24:53.489671
7	http://cmsimg.global.mnet.com/clipimage/artist/240/000/192/192650.jpg	Brave Girls	브레이브걸스	Brave Girls	2017-03-12 15:26:44.204576	2017-03-25 16:24:59.944732
45	http://cmsimg.global.mnet.com/clipimage/artist/240/001/553/1553717.jpg	Seven O'Clock	세븐어클락	Seven O`Clock	2017-03-18 12:54:52.215183	2017-03-25 16:27:19.44354
37	http://cmsimg.global.mnet.com/clipimage/artist/240/000/463/463842.jpg	VAV	브이에이브이	VAV	2017-03-12 15:27:39.810456	2017-03-25 16:28:38.936365
35	http://cmsimg.global.mnet.com/clipimage/artist/240/000/130/130484.jpg	The Ray	더 레이	The Ray	2017-03-12 15:27:36.122228	2017-03-25 16:30:04.201345
28	http://cmsimg.global.mnet.com/clipimage/artist/240/000/505/505958.jpg	NCT DREAM	엔씨티	NCT DREAM	2017-03-12 15:27:22.303955	2017-03-25 16:32:49.79365
22	http://cmsimg.global.mnet.com/clipimage/artist/240/000/454/454421.jpg	Koh Na Yong	고나영	Koh NaYong	2017-03-12 15:27:12.474456	2017-03-25 16:33:46.007035
3	http://cmsimg.global.mnet.com/clipimage/artist/240/000/343/343247.jpg	B.I.G	비아이지	B.I.G	2017-03-12 14:17:43.10872	2017-03-25 16:37:41.466601
2	http://cmsimg.global.mnet.com/clipimage/artist/240/000/222/222402.jpg	B.A.P	비에이피	B.A.P	2017-03-12 14:17:42.14824	2017-03-25 16:38:30.974951
21	http://cmsimg.global.mnet.com/clipimage/artist/240/000/181/181261.jpg	Kim Ji Soo	김지수	Kim JiSoo	2017-03-12 15:27:10.6212	2017-03-27 17:25:37.971985
47	http://cmsimg.global.mnet.com/clipimage/artist/240/000/382/382362.jpg	BABA	바바	BABA	2017-04-01 08:06:12.208604	2017-04-01 08:41:55.395097
49	http://cmsimg.global.mnet.com/clipimage/artist/240/000/177/177668.jpg	Girl's Day	걸스데이	Girl`s Day	2017-04-01 08:06:15.172038	2017-04-01 08:42:07.586607
59	http://cmsimg.global.mnet.com/clipimage/artist/240/001/536/1536092.jpg	LOONA 1/3	이달의 소녀1/3	The Girl of This Month 1/3	2017-04-01 08:06:32.37329	2017-04-01 08:53:15.789457
51	http://cmsimg.global.mnet.com/clipimage/artist/240/001/553/1553629.jpg	Highlight	하이라이트	Highlight	2017-04-01 08:06:18.138711	2017-04-01 08:42:19.017795
15	http://cmsimg.global.mnet.com/clipimage/artist/240/001/238/1238654.jpg	H.U.B.	NA	H.U.B.	2017-03-12 15:26:59.873114	2017-04-01 08:46:04.168483
52	http://cmsimg.global.mnet.com/clipimage/artist/240/000/351/351355.jpg	IK BROTHERS	아이케이	IK BROTHERS	2017-04-01 08:06:19.635623	2017-04-01 08:42:24.767385
53	http://cmsimg.global.mnet.com/clipimage/artist/240/000/218/218179.jpg	J-Min	제이민	J-Min	2017-04-01 08:06:21.004992	2017-04-01 08:42:30.682244
54	http://cmsimg.global.mnet.com/clipimage/artist/240/000/190/190073.jpg	Lee Sun Jung Band	이선정	Lee SunJung Band	2017-04-01 08:06:22.643254	2017-04-01 08:42:36.753148
55	http://cmsimg.global.mnet.com/clipimage/artist/240/001/580/1580662.jpg	LIPBUBBLE	립버블	LIPBUBBLE	2017-04-01 08:06:25.920758	2017-04-01 08:42:42.721228
56	http://cmsimg.global.mnet.com/clipimage/artist/240/000/412/412606.jpg	MONSTA X	몬스타엑스	MONSTA X	2017-04-01 08:06:27.355826	2017-04-01 08:42:48.709936
48	http://cmsimg.global.mnet.com/clipimage/artist/240/000/167/167480.jpg	CNBLUE	씨엔블루	CNBLUE	2017-04-01 08:06:13.634009	2017-04-01 08:43:03.181188
50	http://cmsimg.global.mnet.com/clipimage/artist/240/000/221/221923.jpg	Goo Ja Myung	구자명	Goo JaMyung	2017-04-01 08:06:16.70512	2017-04-01 08:44:11.658701
58	http://cmsimg.global.mnet.com/clipimage/artist/240/000/498/498036.jpg	PRISTIN	프리스틴	PRISTIN	2017-04-01 08:06:30.32668	2017-04-01 08:41:49.28198
57	http://cmsimg.global.mnet.com/clipimage/artist/240/000/474/474606.jpg	PETER HAN	NA	PETER HAN	2017-04-01 08:06:28.890038	2017-04-01 08:46:36.703615
43	http://cmsimg.global.mnet.com/clipimage/artist/240/000/463/463885.jpg	Lee Soon Jeong	NA	Lee Soon Jeong	2017-03-18 12:54:50.315512	2017-05-06 06:10:28.315344
64	http://cmsimg.global.mnet.com/clipimage/artist/240/000/478/478481.jpg	IMFACT	임팩트	IMFACT	2017-04-09 16:23:36.888075	2017-04-09 16:24:40.398962
62	http://cmsimg.global.mnet.com/clipimage/artist/240/001/611/1611428.jpg	HINT	힌트	HINT	2017-04-09 16:23:35.141803	2017-05-06 06:12:31.831013
63	http://cmsimg.global.mnet.com/clipimage/artist/240/000/249/249118.jpg	Hong Dae Kwang	홍대광	Hong DaeKwang	2017-04-09 16:23:35.96542	2017-04-09 16:24:34.780663
69	http://cmsimg.global.mnet.com/clipimage/artist/240/000/177/177685.jpg	TEEN TOP	틴탑	TEEN TOP	2017-04-09 16:23:41.646873	2017-04-14 16:18:29.112225
61	http://cmsimg.global.mnet.com/clipimage/artist/240/000/356/356125.jpg	Dreamcatcher	드림캐쳐	Dreamcatcher	2017-04-09 16:23:34.177119	2017-04-09 16:24:51.770326
65	http://cmsimg.global.mnet.com/clipimage/artist/240/000/244/244712.jpg	Kang So Ri	강소리	Kang So Ri	2017-04-09 16:23:37.780104	2017-04-09 16:24:57.394739
66	http://cmsimg.global.mnet.com/clipimage/artist/240/000/404/404673.jpg	OH MY GIRL	오마이걸	OH MY GIRL	2017-04-09 16:23:38.753703	2017-04-09 16:25:03.157978
67	http://cmsimg.global.mnet.com/clipimage/artist/240/000/211/211948.jpg	ROSE MOTEL	장미여관	ROSE MOTEL	2017-04-09 16:23:39.815125	2017-04-09 16:25:08.902059
68	http://cmsimg.global.mnet.com/clipimage/artist/240/000/560/560602.jpg	Seol Hayoon	설하윤	Seol Hayoon	2017-04-09 16:23:40.661798	2017-04-09 16:25:14.917992
105	http://cmsimg.global.mnet.com/clipimage/artist/240/001/641/1641907.jpg	\N	\N	A.C.E	2017-11-18 08:23:59.456283	2017-11-18 08:23:59.456283
70	http://cmsimg.global.mnet.com/clipimage/artist/240/000/340/340628.jpg	WINNER	위너	WINNER	2017-04-09 16:23:42.54179	2017-04-09 16:25:32.126917
106	http://cmsimg.global.mnet.com/clipimage/artist/240/000/480/480851.jpg	\N	\N	ASTRO	2017-11-18 08:24:01.101084	2017-11-18 08:24:01.101084
107	http://cmsimg.global.mnet.com/clipimage/artist/240/001/878/1878072.jpg	\N	\N	BAIKAL	2017-11-18 08:24:02.82011	2017-11-18 08:24:02.82011
108	http://cmsimg.global.mnet.com/clipimage/artist/240/000/422/422885.jpg	\N	\N	CANDO	2017-11-18 08:24:04.381885	2017-11-18 08:24:04.381885
109	http://cmsimg.global.mnet.com/clipimage/artist/240/000/134/134062.jpg	\N	\N	DK	2017-11-18 08:24:07.429576	2017-11-18 08:24:07.429576
110	http://cmsimg.global.mnet.com/clipimage/artist/240/000/239/239063.jpg	\N	\N	FLASHE	2017-11-18 08:24:10.193311	2017-11-18 08:24:10.193311
111	http://cmsimg.global.mnet.com/clipimage/artist/240/001/926/1926510.jpg	\N	\N	GATE 9	2017-11-18 08:24:12.046062	2017-11-18 08:24:12.046062
112	http://cmsimg.global.mnet.com/clipimage/artist/240/001/762/1762185.jpg	\N	\N	H.B.Y	2017-11-18 08:24:14.497745	2017-11-18 08:24:14.497745
113	http://cmsimg.global.mnet.com/clipimage/artist/240/001/580/1580678.jpg	\N	\N	HAEA	2017-11-18 08:24:16.33686	2017-11-18 08:24:16.33686
84	http://cmsimg.global.mnet.com/clipimage/artist/240/000/459/459901.jpg	DIA	다이아	DIA	2017-04-23 16:48:11.780693	2017-04-23 16:49:35.438943
86	http://cmsimg.global.mnet.com/clipimage/artist/240/000/155/155135.jpg	IU	아이유	IU	2017-04-23 16:48:16.351876	2017-04-23 16:49:50.536759
87	http://cmsimg.global.mnet.com/clipimage/artist/240/000/157/157563.jpg	Junggigo	정기고	Junggigo	2017-04-23 16:48:17.925853	2017-04-23 16:49:56.409545
88	http://cmsimg.global.mnet.com/clipimage/artist/240/000/350/350761.jpg	LABOUM	라붐	LABOUM	2017-04-23 16:48:19.718403	2017-04-23 16:50:02.262745
89	http://cmsimg.global.mnet.com/clipimage/artist/240/000/153/153000.jpg	Lee Hae Ri	이해리	Lee HaeRi	2017-04-23 16:48:21.919835	2017-04-23 16:50:08.108242
90	http://cmsimg.global.mnet.com/clipimage/artist/240/000/155/155000.jpg	Ulala Session	울랄라세션	Ulala Session	2017-04-23 16:48:25.912408	2017-04-23 16:50:13.921043
114	http://cmsimg.global.mnet.com/clipimage/artist/240/001/901/1901083.jpg	\N	\N	Hash Tag	2017-11-18 08:24:20.023651	2017-11-18 08:24:20.023651
115	http://cmsimg.global.mnet.com/clipimage/artist/240/000/278/278659.jpg	\N	\N	HEYNE\r\n\t\t\t\t\t\t\t\t\t\t\tMinsoo	2017-11-18 08:24:21.52975	2017-11-18 08:24:21.52975
116	http://cmsimg.global.mnet.com/clipimage/artist/240/001/926/1926527.jpg	\N	\N	IN2IT	2017-11-18 08:24:23.100018	2017-11-18 08:24:23.100018
117	http://cmsimg.global.mnet.com/clipimage/artist/240/000/073/73842.jpg	\N	\N	Jung DongHa	2017-11-18 08:24:24.63208	2017-11-18 08:24:24.63208
118	http://cmsimg.global.mnet.com/clipimage/artist/240/000/234/234824.jpg	\N	\N	JUNIEL	2017-11-18 08:24:26.146581	2017-11-18 08:24:26.146581
119	http://cmsimg.global.mnet.com/clipimage/artist/240/000/001/1431.jpg	\N	\N	Kim DongWan	2017-11-18 08:24:28.020611	2017-11-18 08:24:28.020611
91	http://cmsimg.global.mnet.com/clipimage/artist/240/000/501/501087.jpg	EYEDI	아이디	EYEDI	2017-04-30 07:55:08.963904	2017-04-30 08:02:13.929617
92	http://cmsimg.global.mnet.com/clipimage/artist/240/000/356/356456.jpg	hyukoh	혁오	hyukoh	2017-04-30 07:55:10.539431	2017-04-30 08:02:19.973705
93	http://cmsimg.global.mnet.com/clipimage/artist/240/001/631/1631556.jpg	Kim Young Chul	김영철	Kim Young Chul	2017-04-30 07:55:12.321014	2017-04-30 08:02:25.987898
94	http://cmsimg.global.mnet.com/clipimage/artist/240/001/102/1102571.jpg	MOMOLAND	모모랜드	MOMOLAND	2017-04-30 07:55:13.879945	2017-04-30 08:02:34.012425
95	http://cmsimg.global.mnet.com/clipimage/artist/240/000/380/380813.jpg	Snuper	스누퍼	Snuper	2017-04-30 07:55:16.319688	2017-04-30 08:02:40.206885
96	http://cmsimg.global.mnet.com/clipimage/artist/240/001/497/1497414.jpg	VARSITY	바시티	VARSITY	2017-04-30 07:55:19.408583	2017-04-30 08:02:46.017794
85	http://cmsimg.global.mnet.com/clipimage/artist/240/000/159/159647.jpg	Gong Minzy	공민지	Gong Minzy	2017-04-23 16:48:13.935449	2017-04-30 08:07:24.412421
83	http://cmsimg.global.mnet.com/clipimage/artist/240/000/359/359539.jpg	Bustered	버스터리드	Bustered	2017-04-23 16:48:09.626359	2017-04-30 08:07:53.065207
60	http://cmsimg.global.mnet.com/clipimage/artist/240/001/580/1580782.jpg	B-Side	NA	B-Side	2017-04-09 16:23:32.59443	2017-05-06 06:10:17.57878
120	http://cmsimg.global.mnet.com/clipimage/artist/240/000/502/502738.jpg	\N	\N	Kim SoHee	2017-11-18 08:24:29.275018	2017-11-18 08:24:29.275018
121	http://cmsimg.global.mnet.com/clipimage/artist/240/000/261/261539.jpg	\N	\N	Lee YeJoon	2017-11-18 08:24:31.734601	2017-11-18 08:24:31.734601
122	http://cmsimg.global.mnet.com/clipimage/artist/240/000/049/49320.jpg	\N	\N	N.R.G	2017-11-18 08:24:37.553746	2017-11-18 08:24:37.553746
123	http://cmsimg.global.mnet.com/clipimage/artist/240/001/663/1663061.jpg	\N	\N	Nick&Sammy	2017-11-18 08:24:39.460554	2017-11-18 08:24:39.460554
124	http://cmsimg.global.mnet.com/clipimage/artist/240/000/312/312399.jpg	\N	\N	POONGDENG2	2017-11-18 08:24:40.914069	2017-11-18 08:24:40.914069
125	http://cmsimg.global.mnet.com/clipimage/artist/240/000/192/192535.jpg	\N	\N	Rania	2017-11-18 08:24:42.452954	2017-11-18 08:24:42.452954
126	http://cmsimg.global.mnet.com/clipimage/artist/240/000/487/487797.jpg	\N	\N	Samuel	2017-11-18 08:24:43.987284	2017-11-18 08:24:43.987284
127	http://cmsimg.global.mnet.com/clipimage/artist/240/000/424/424194.jpg	\N	\N	SEVENTEEN	2017-11-18 08:24:45.539387	2017-11-18 08:24:45.539387
128	http://cmsimg.global.mnet.com/clipimage/artist/240/000/219/219377.jpg	\N	\N	So yumi	2017-11-18 08:24:47.77663	2017-11-18 08:24:47.77663
129	http://cmsimg.global.mnet.com/clipimage/artist/240/000/369/369976.jpg	\N	\N	SONAMOO	2017-11-18 08:24:49.169892	2017-11-18 08:24:49.169892
130	http://cmsimg.global.mnet.com/clipimage/artist/240/001/762/1762329.jpg	\N	\N	The Rose	2017-11-18 08:24:51.358882	2017-11-18 08:24:51.358882
131	http://cmsimg.global.mnet.com/clipimage/artist/240/001/761/1761090.jpg	\N	\N	Wanna One	2017-11-18 08:24:55.977149	2017-11-18 08:24:55.977149
\.


--
-- Name: artistes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('artistes_id_seq', 131, true);


--
-- Data for Name: awards; Type: TABLE DATA; Schema: public; Owner: ollida
--

COPY awards (id, name, profile_img, judging_criteria, created_at, updated_at, masthead_img, description) FROM stdin;
1	MCOUNTDOWN	https://image.ibb.co/k9YaHb/m_countdown_logo_sgxclusive.png	"digital_sales"=>"59.0", "youtube_views"=>"23.0", "mcountdown_votes"=>"18.0"	2016-12-05 16:04:39.755861	2016-12-09 16:27:14.100308	https://image.ibb.co/kBgZAw/mcountdown.png	M Countdown is a music program broadcast by Mnet from CJ E&M Center Studio in Sangam-dong, Mapo District, Seoul. It airs live every Thursday at 18:00 to 19:30 KST, featuring some of the latest and most popular artistes. The show is hosted by Shinee's Key and co-hosted by various artists that are invited to the show each week.
4	Cyworld Digital Music Award	https://i.imgur.com/g9jmO1J.jpg		2016-12-08 07:13:51.974285	2016-12-08 07:13:51.974285	\N	\N
10	Inkigayo	https://i.imgur.com/x7miBJ7.jpg		2016-12-09 13:58:45.236717	2016-12-09 13:58:45.236717	\N	\N
5	Mnet Asian Music Awards	https://i.imgur.com/MASHPO3.png		2016-12-08 07:18:17.463732	2016-12-08 07:18:17.463732	\N	\N
9	Music Bank	https://i.imgur.com/mLIlDkm.jpg		2016-12-08 07:16:04.43513	2016-12-09 05:44:15.736464	\N	\N
8	Show Champion	https://i.imgur.com/XRwVTYG.png		2016-12-08 07:15:01.840171	2016-12-09 03:58:42.297805	\N	\N
6	Show! Music Core	https://i.imgur.com/QylobL0.jpg		2016-12-09 03:55:43.2996	2016-12-09 03:55:43.2996	\N	\N
3	Asia Artist Awards	https://i.imgur.com/ejAGmGk.png		2016-12-08 07:12:17.256293	2016-12-08 07:12:17.256293	\N	\N
7	The Show	https://i.imgur.com/yrUJzMk.jpg		2016-12-09 03:56:54.20685	2016-12-09 03:56:54.20685	\N	\N
\.


--
-- Name: awards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ollida
--

SELECT pg_catalog.setval('awards_id_seq', 11, true);


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY carts (id, user_id, created_at, updated_at, subtotal, tax, shipping, total, order_status) FROM stdin;
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('carts_id_seq', 1, false);


--
-- Data for Name: digital_sales; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY digital_sales (id, date_d, artiste_id, song_id, download_cnt, stream_cnt, created_at, updated_at) FROM stdin;
1	2017-04-03	3	3	0	0	2017-04-02 15:50:44.193166	2017-04-02 15:50:44.193166
2	2017-04-03	47	126	0	0	2017-04-02 15:50:44.226261	2017-04-02 15:50:44.226261
3	2017-04-03	4	4	0	0	2017-04-02 15:50:44.235376	2017-04-02 15:50:44.235376
4	2017-04-03	5	5	0	0	2017-04-02 15:50:44.24567	2017-04-02 15:50:44.24567
5	2017-04-03	7	7	0	0	2017-04-02 15:50:44.259238	2017-04-02 15:50:44.259238
6	2017-04-03	48	127	44833	747105	2017-04-02 15:50:44.268301	2017-04-02 15:50:44.268301
7	2017-04-03	41	120	0	0	2017-04-02 15:50:44.275241	2017-04-02 15:50:44.275241
8	2017-04-03	10	10	0	0	2017-04-02 15:50:44.291356	2017-04-02 15:50:44.291356
9	2017-04-03	12	12	0	0	2017-04-02 15:50:44.301253	2017-04-02 15:50:44.301253
10	2017-04-03	13	13	51136	2820644	2017-04-02 15:50:44.310807	2017-04-02 15:50:44.310807
11	2017-04-03	49	128	0	0	2017-04-02 15:50:44.321742	2017-04-02 15:50:44.321742
12	2017-04-03	50	129	0	0	2017-04-02 15:50:44.33003	2017-04-02 15:50:44.33003
13	2017-04-03	42	121	0	0	2017-04-02 15:50:44.337271	2017-04-02 15:50:44.337271
14	2017-04-03	14	14	0	0	2017-04-02 15:50:44.353101	2017-04-02 15:50:44.353101
15	2017-04-03	15	15	0	0	2017-04-02 15:50:44.363846	2017-04-02 15:50:44.363846
16	2017-04-03	16	16	0	0	2017-04-02 15:50:44.376144	2017-04-02 15:50:44.376144
17	2017-04-03	51	130	0	0	2017-04-02 15:50:44.388353	2017-04-02 15:50:44.388353
18	2017-04-03	17	17	0	0	2017-04-02 15:50:44.396207	2017-04-02 15:50:44.396207
19	2017-04-03	52	131	0	0	2017-04-02 15:50:44.405423	2017-04-02 15:50:44.405423
20	2017-04-03	19	19	0	0	2017-04-02 15:50:44.422035	2017-04-02 15:50:44.422035
21	2017-04-03	53	132	0	0	2017-04-02 15:50:44.431612	2017-04-02 15:50:44.431612
22	2017-04-03	23	23	0	0	2017-04-02 15:50:44.443494	2017-04-02 15:50:44.443494
23	2017-04-03	43	122	0	0	2017-04-02 15:50:44.450949	2017-04-02 15:50:44.450949
24	2017-04-03	54	133	0	0	2017-04-02 15:50:44.457796	2017-04-02 15:50:44.457796
25	2017-04-03	55	134	0	0	2017-04-02 15:50:44.472356	2017-04-02 15:50:44.472356
26	2017-04-03	24	24	17228	909615	2017-04-02 15:50:44.481837	2017-04-02 15:50:44.481837
27	2017-04-03	25	25	0	0	2017-04-02 15:50:44.491764	2017-04-02 15:50:44.491764
28	2017-04-03	56	135	0	0	2017-04-02 15:50:44.498767	2017-04-02 15:50:44.498767
29	2017-04-03	44	123	0	0	2017-04-02 15:50:44.51723	2017-04-02 15:50:44.51723
30	2017-04-03	57	136	0	0	2017-04-02 15:50:44.525496	2017-04-02 15:50:44.525496
31	2017-04-03	58	137	36390	0	2017-04-02 15:50:44.539364	2017-04-02 15:50:44.539364
32	2017-04-03	29	29	0	0	2017-04-02 15:50:44.54704	2017-04-02 15:50:44.54704
33	2017-04-03	45	124	0	0	2017-04-02 15:50:44.561394	2017-04-02 15:50:44.561394
34	2017-04-03	32	32	0	0	2017-04-02 15:50:44.569453	2017-04-02 15:50:44.569453
35	2017-04-03	46	125	0	0	2017-04-02 15:50:44.578849	2017-04-02 15:50:44.578849
36	2017-04-03	33	33	0	0	2017-04-02 15:50:44.589776	2017-04-02 15:50:44.589776
37	2017-04-03	59	138	0	0	2017-04-02 15:50:44.597017	2017-04-02 15:50:44.597017
38	2017-04-03	38	139	0	0	2017-04-02 15:50:44.604644	2017-04-02 15:50:44.604644
39	2017-04-03	39	39	0	0	2017-04-02 15:50:44.621049	2017-04-02 15:50:44.621049
40	2017-04-03	40	40	0	0	2017-04-02 15:50:44.629748	2017-04-02 15:50:44.629748
41	2017-04-10	3	3	0	0	2017-04-09 16:52:08.190391	2017-04-09 16:52:08.190391
42	2017-04-10	47	126	0	0	2017-04-09 16:52:08.205186	2017-04-09 16:52:08.205186
43	2017-04-10	5	5	0	0	2017-04-09 16:52:08.22342	2017-04-09 16:52:08.22342
44	2017-04-10	7	7	0	0	2017-04-09 16:52:08.23145	2017-04-09 16:52:08.23145
45	2017-04-10	60	140	0	0	2017-04-09 16:52:08.244364	2017-04-09 16:52:08.244364
46	2017-04-10	48	127	0	0	2017-04-09 16:52:08.251529	2017-04-09 16:52:08.251529
47	2017-04-10	41	120	0	0	2017-04-09 16:52:08.262656	2017-04-09 16:52:08.262656
48	2017-04-10	11	141	0	0	2017-04-09 16:52:08.269636	2017-04-09 16:52:08.269636
49	2017-04-10	61	142	0	0	2017-04-09 16:52:08.280241	2017-04-09 16:52:08.280241
50	2017-04-10	13	13	42237	2629800	2017-04-09 16:52:08.29413	2017-04-09 16:52:08.29413
51	2017-04-10	49	128	119763	2369566	2017-04-09 16:52:08.301568	2017-04-09 16:52:08.301568
52	2017-04-10	50	129	0	0	2017-04-09 16:52:08.308785	2017-04-09 16:52:08.308785
53	2017-04-10	42	121	0	0	2017-04-09 16:52:08.319049	2017-04-09 16:52:08.319049
54	2017-04-10	14	14	0	0	2017-04-09 16:52:08.330212	2017-04-09 16:52:08.330212
55	2017-04-10	51	130	0	0	2017-04-09 16:52:08.336929	2017-04-09 16:52:08.336929
56	2017-04-10	62	143	0	0	2017-04-09 16:52:08.344205	2017-04-09 16:52:08.344205
57	2017-04-10	63	144	0	0	2017-04-09 16:52:08.359596	2017-04-09 16:52:08.359596
58	2017-04-10	52	131	0	0	2017-04-09 16:52:08.369905	2017-04-09 16:52:08.369905
59	2017-04-10	64	145	0	0	2017-04-09 16:52:08.377825	2017-04-09 16:52:08.377825
60	2017-04-10	53	132	0	0	2017-04-09 16:52:08.388196	2017-04-09 16:52:08.388196
61	2017-04-10	65	146	0	0	2017-04-09 16:52:08.411018	2017-04-09 16:52:08.411018
62	2017-04-10	43	122	0	0	2017-04-09 16:52:08.42067	2017-04-09 16:52:08.42067
63	2017-04-10	54	133	0	0	2017-04-09 16:52:08.429457	2017-04-09 16:52:08.429457
64	2017-04-10	55	134	0	0	2017-04-09 16:52:08.440045	2017-04-09 16:52:08.440045
65	2017-04-10	24	24	0	765769	2017-04-09 16:52:08.451783	2017-04-09 16:52:08.451783
66	2017-04-10	56	135	0	0	2017-04-09 16:52:08.459102	2017-04-09 16:52:08.459102
67	2017-04-10	44	123	0	0	2017-04-09 16:52:08.467464	2017-04-09 16:52:08.467464
68	2017-04-10	66	147	0	0	2017-04-09 16:52:08.484037	2017-04-09 16:52:08.484037
69	2017-04-10	57	136	0	0	2017-04-09 16:52:08.492055	2017-04-09 16:52:08.492055
70	2017-04-10	58	137	31105	816394	2017-04-09 16:52:08.50306	2017-04-09 16:52:08.50306
71	2017-04-10	29	29	0	0	2017-04-09 16:52:08.51463	2017-04-09 16:52:08.51463
72	2017-04-10	67	148	0	0	2017-04-09 16:52:08.521571	2017-04-09 16:52:08.521571
73	2017-04-10	68	149	0	0	2017-04-09 16:52:08.528522	2017-04-09 16:52:08.528522
74	2017-04-10	45	124	0	0	2017-04-09 16:52:08.544645	2017-04-09 16:52:08.544645
75	2017-04-10	32	32	0	0	2017-04-09 16:52:08.554957	2017-04-09 16:52:08.554957
76	2017-04-10	46	125	0	0	2017-04-09 16:52:08.563004	2017-04-09 16:52:08.563004
77	2017-04-10	69	150	0	0	2017-04-09 16:52:08.575812	2017-04-09 16:52:08.575812
78	2017-04-10	59	138	0	0	2017-04-09 16:52:08.584777	2017-04-09 16:52:08.584777
79	2017-04-10	38	139	0	0	2017-04-09 16:52:08.591456	2017-04-09 16:52:08.591456
80	2017-04-10	70	151	0	0	2017-04-09 16:52:08.598427	2017-04-09 16:52:08.598427
81	2017-04-15	47	126	0	0	2017-04-14 16:31:20.690288	2017-04-14 16:31:20.690288
82	2017-04-15	5	5	0	0	2017-04-14 16:31:20.705172	2017-04-14 16:31:20.705172
83	2017-04-15	7	7	0	0	2017-04-14 16:31:20.720771	2017-04-14 16:31:20.720771
84	2017-04-15	71	152	0	0	2017-04-14 16:31:20.731694	2017-04-14 16:31:20.731694
85	2017-04-15	41	120	0	0	2017-04-14 16:31:20.739374	2017-04-14 16:31:20.739374
86	2017-04-15	11	141	0	0	2017-04-14 16:31:20.751718	2017-04-14 16:31:20.751718
87	2017-04-15	61	142	0	0	2017-04-14 16:31:20.772479	2017-04-14 16:31:20.772479
88	2017-04-15	72	153	0	0	2017-04-14 16:31:20.784591	2017-04-14 16:31:20.784591
89	2017-04-15	73	154	0	0	2017-04-14 16:31:20.791792	2017-04-14 16:31:20.791792
90	2017-04-15	50	129	0	0	2017-04-14 16:31:20.803082	2017-04-14 16:31:20.803082
91	2017-04-15	14	155	0	0	2017-04-14 16:31:20.8211	2017-04-14 16:31:20.8211
92	2017-04-15	62	143	0	0	2017-04-14 16:31:20.84728	2017-04-14 16:31:20.84728
94	2017-04-15	74	156	0	0	2017-04-14 16:31:20.872075	2017-04-14 16:31:20.872075
95	2017-04-15	52	131	0	0	2017-04-14 16:31:20.880699	2017-04-14 16:31:20.880699
96	2017-04-15	64	145	0	0	2017-04-14 16:31:20.903685	2017-04-14 16:31:20.903685
97	2017-04-15	75	157	0	0	2017-04-14 16:31:20.912461	2017-04-14 16:31:20.912461
98	2017-04-15	76	158	0	0	2017-04-14 16:31:20.923336	2017-04-14 16:31:20.923336
99	2017-04-15	65	146	0	0	2017-04-14 16:31:20.929889	2017-04-14 16:31:20.929889
100	2017-04-15	43	122	0	0	2017-04-14 16:31:20.943255	2017-04-14 16:31:20.943255
101	2017-04-15	54	133	0	0	2017-04-14 16:31:20.951625	2017-04-14 16:31:20.951625
102	2017-04-15	55	134	0	0	2017-04-14 16:31:20.970428	2017-04-14 16:31:20.970428
103	2017-04-15	77	159	0	0	2017-04-14 16:31:20.977667	2017-04-14 16:31:20.977667
104	2017-04-15	56	135	0	0	2017-04-14 16:31:20.99008	2017-04-14 16:31:20.99008
105	2017-04-15	44	123	0	0	2017-04-14 16:31:20.997125	2017-04-14 16:31:20.997125
106	2017-04-15	66	147	42998	0	2017-04-14 16:31:21.008755	2017-04-14 16:31:21.008755
107	2017-04-15	57	136	0	0	2017-04-14 16:31:21.015506	2017-04-14 16:31:21.015506
108	2017-04-15	58	137	24816	850955	2017-04-14 16:31:21.029968	2017-04-14 16:31:21.029968
109	2017-04-15	29	29	0	0	2017-04-14 16:31:21.041658	2017-04-14 16:31:21.041658
110	2017-04-15	78	160	0	0	2017-04-14 16:31:21.049444	2017-04-14 16:31:21.049444
111	2017-04-15	68	149	0	0	2017-04-14 16:31:21.060186	2017-04-14 16:31:21.060186
112	2017-04-15	45	124	0	0	2017-04-14 16:31:21.078613	2017-04-14 16:31:21.078613
113	2017-04-15	32	32	0	0	2017-04-14 16:31:21.090313	2017-04-14 16:31:21.090313
114	2017-04-15	46	125	0	0	2017-04-14 16:31:21.099138	2017-04-14 16:31:21.099138
115	2017-04-15	69	150	0	0	2017-04-14 16:31:21.111377	2017-04-14 16:31:21.111377
116	2017-04-15	59	138	0	0	2017-04-14 16:31:21.123942	2017-04-14 16:31:21.123942
117	2017-04-15	79	161	0	0	2017-04-14 16:31:21.131444	2017-04-14 16:31:21.131444
118	2017-04-15	38	139	0	0	2017-04-14 16:31:21.138762	2017-04-14 16:31:21.138762
119	2017-04-15	80	162	0	0	2017-04-14 16:31:21.158527	2017-04-14 16:31:21.158527
120	2017-04-15	70	151	196803	3999418	2017-04-14 16:31:21.166197	2017-04-14 16:31:21.166197
93	2017-04-15	63	144	25866	0	2017-04-14 16:31:20.859521	2017-04-14 16:40:10.860083
121	2017-04-24	47	126	0	0	2017-04-23 17:04:24.094557	2017-04-23 17:04:24.094557
122	2017-04-24	81	163	0	0	2017-04-23 17:04:24.128678	2017-04-23 17:04:24.128678
123	2017-04-24	82	164	0	0	2017-04-23 17:04:24.137133	2017-04-23 17:04:24.137133
124	2017-04-24	7	7	0	0	2017-04-23 17:04:24.147453	2017-04-23 17:04:24.147453
125	2017-04-24	83	165	0	0	2017-04-23 17:04:24.155067	2017-04-23 17:04:24.155067
126	2017-04-24	71	152	0	0	2017-04-23 17:04:24.174473	2017-04-23 17:04:24.174473
127	2017-04-24	41	120	0	0	2017-04-23 17:04:24.183628	2017-04-23 17:04:24.183628
128	2017-04-24	84	166	0	0	2017-04-23 17:04:24.194583	2017-04-23 17:04:24.194583
129	2017-04-24	61	142	0	0	2017-04-23 17:04:24.207305	2017-04-23 17:04:24.207305
130	2017-04-24	72	153	0	0	2017-04-23 17:04:24.224336	2017-04-23 17:04:24.224336
131	2017-04-24	73	154	0	0	2017-04-23 17:04:24.232632	2017-04-23 17:04:24.232632
132	2017-04-24	85	167	0	0	2017-04-23 17:04:24.243719	2017-04-23 17:04:24.243719
133	2017-04-24	50	129	0	0	2017-04-23 17:04:24.256613	2017-04-23 17:04:24.256613
134	2017-04-24	62	143	0	0	2017-04-23 17:04:24.263933	2017-04-23 17:04:24.263933
135	2017-04-24	74	156	0	0	2017-04-23 17:04:24.270899	2017-04-23 17:04:24.270899
136	2017-04-24	75	157	0	0	2017-04-23 17:04:24.28656	2017-04-23 17:04:24.28656
137	2017-04-24	86	168	0	0	2017-04-23 17:04:24.295907	2017-04-23 17:04:24.295907
138	2017-04-24	87	169	0	0	2017-04-23 17:04:24.304468	2017-04-23 17:04:24.304468
139	2017-04-24	65	146	0	0	2017-04-23 17:04:24.319816	2017-04-23 17:04:24.319816
140	2017-04-24	88	170	0	0	2017-04-23 17:04:24.326997	2017-04-23 17:04:24.326997
141	2017-04-24	89	171	0	0	2017-04-23 17:04:24.334376	2017-04-23 17:04:24.334376
142	2017-04-24	54	133	0	0	2017-04-23 17:04:24.341435	2017-04-23 17:04:24.341435
143	2017-04-24	55	134	0	0	2017-04-23 17:04:24.359502	2017-04-23 17:04:24.359502
144	2017-04-24	77	159	0	0	2017-04-23 17:04:24.367976	2017-04-23 17:04:24.367976
145	2017-04-24	56	135	0	0	2017-04-23 17:04:24.386251	2017-04-23 17:04:24.386251
146	2017-04-24	44	123	0	0	2017-04-23 17:04:24.394382	2017-04-23 17:04:24.394382
147	2017-04-24	66	147	0	0	2017-04-23 17:04:24.401224	2017-04-23 17:04:24.401224
148	2017-04-24	57	136	0	0	2017-04-23 17:04:24.408646	2017-04-23 17:04:24.408646
149	2017-04-24	58	137	23538	943269	2017-04-23 17:04:24.427688	2017-04-23 17:04:24.427688
150	2017-04-24	78	160	0	0	2017-04-23 17:04:24.435815	2017-04-23 17:04:24.435815
151	2017-04-24	68	149	0	0	2017-04-23 17:04:24.447152	2017-04-23 17:04:24.447152
152	2017-04-24	45	124	0	0	2017-04-23 17:04:24.459524	2017-04-23 17:04:24.459524
153	2017-04-24	30	172	0	0	2017-04-23 17:04:24.466578	2017-04-23 17:04:24.466578
154	2017-04-24	32	32	0	0	2017-04-23 17:04:24.473802	2017-04-23 17:04:24.473802
155	2017-04-24	46	125	0	0	2017-04-23 17:04:24.490091	2017-04-23 17:04:24.490091
156	2017-04-24	69	150	0	0	2017-04-23 17:04:24.499071	2017-04-23 17:04:24.499071
157	2017-04-24	90	173	0	0	2017-04-23 17:04:24.510325	2017-04-23 17:04:24.510325
158	2017-04-24	79	161	0	0	2017-04-23 17:04:24.530244	2017-04-23 17:04:24.530244
159	2017-04-24	80	162	0	0	2017-04-23 17:04:24.540705	2017-04-23 17:04:24.540705
160	2017-04-24	70	151	111151	5393575	2017-04-23 17:04:24.547879	2017-04-23 17:04:24.547879
161	2017-04-30	47	126	0	0	2017-04-30 09:31:50.989375	2017-04-30 09:31:50.989375
162	2017-04-30	81	163	0	0	2017-04-30 09:31:51.013045	2017-04-30 09:31:51.013045
163	2017-04-30	82	164	0	0	2017-04-30 09:31:51.024267	2017-04-30 09:31:51.024267
164	2017-04-30	83	174	0	0	2017-04-30 09:31:51.037068	2017-04-30 09:31:51.037068
165	2017-04-30	71	152	0	0	2017-04-30 09:38:11.134894	2017-04-30 09:38:11.134894
166	2017-04-30	41	120	0	0	2017-04-30 09:38:11.152405	2017-04-30 09:38:11.152405
167	2017-04-30	84	166	0	0	2017-04-30 09:38:11.168892	2017-04-30 09:38:11.168892
168	2017-04-30	61	142	0	0	2017-04-30 09:38:11.189308	2017-04-30 09:38:11.189308
169	2017-04-30	72	153	51616	1908540	2017-04-30 09:38:11.196894	2017-04-30 09:38:11.196894
170	2017-04-30	91	175	0	0	2017-04-30 09:38:11.208807	2017-04-30 09:38:11.208807
171	2017-04-30	50	129	0	0	2017-04-30 09:38:11.223399	2017-04-30 09:38:11.223399
172	2017-04-30	62	143	0	0	2017-04-30 09:38:11.23248	2017-04-30 09:38:11.23248
173	2017-04-30	74	156	0	0	2017-04-30 09:38:11.251683	2017-04-30 09:38:11.251683
174	2017-04-30	92	176	0	0	2017-04-30 09:38:11.262433	2017-04-30 09:38:11.262433
175	2017-04-30	75	157	0	0	2017-04-30 09:38:11.274431	2017-04-30 09:38:11.274431
176	2017-04-30	86	168	0	0	2017-04-30 09:38:11.296295	2017-04-30 09:38:11.296295
177	2017-04-30	87	169	0	0	2017-04-30 09:38:11.30834	2017-04-30 09:38:11.30834
178	2017-04-30	65	146	0	0	2017-04-30 09:38:11.320967	2017-04-30 09:38:11.320967
179	2017-04-30	93	177	0	0	2017-04-30 09:38:11.333407	2017-04-30 09:38:11.333407
180	2017-04-30	88	170	18137	0	2017-04-30 09:38:11.357313	2017-04-30 09:38:11.357313
181	2017-04-30	54	133	0	0	2017-04-30 09:38:11.370668	2017-04-30 09:38:11.370668
182	2017-04-30	55	134	0	0	2017-04-30 09:38:11.382867	2017-04-30 09:38:11.382867
183	2017-04-30	77	159	0	0	2017-04-30 09:38:11.393371	2017-04-30 09:38:11.393371
184	2017-04-30	94	178	0	0	2017-04-30 09:38:11.401783	2017-04-30 09:38:11.401783
185	2017-04-30	56	135	0	0	2017-04-30 09:38:11.423863	2017-04-30 09:38:11.423863
186	2017-04-30	66	147	0	0	2017-04-30 09:38:11.438123	2017-04-30 09:38:11.438123
187	2017-04-30	57	136	0	0	2017-04-30 09:38:11.467371	2017-04-30 09:38:11.467371
188	2017-04-30	58	137	22251	968930	2017-04-30 09:38:11.48814	2017-04-30 09:38:11.48814
189	2017-04-30	78	160	0	0	2017-04-30 09:38:11.499398	2017-04-30 09:38:11.499398
190	2017-04-30	68	149	0	0	2017-04-30 09:38:11.512087	2017-04-30 09:38:11.512087
191	2017-04-30	45	124	0	0	2017-04-30 09:38:11.537147	2017-04-30 09:38:11.537147
192	2017-04-30	30	172	0	0	2017-04-30 09:38:11.549721	2017-04-30 09:38:11.549721
193	2017-04-30	32	32	0	0	2017-04-30 09:38:11.561279	2017-04-30 09:38:11.561279
194	2017-04-30	46	125	0	0	2017-04-30 09:38:11.586018	2017-04-30 09:38:11.586018
195	2017-04-30	95	179	0	0	2017-04-30 09:38:11.596133	2017-04-30 09:38:11.596133
196	2017-04-30	59	180	0	0	2017-04-30 09:38:11.608094	2017-04-30 09:38:11.608094
197	2017-04-30	90	173	0	0	2017-04-30 09:38:11.621379	2017-04-30 09:38:11.621379
198	2017-04-30	96	181	0	0	2017-04-30 09:38:11.644302	2017-04-30 09:38:11.644302
199	2017-04-30	80	162	0	0	2017-04-30 09:38:11.659024	2017-04-30 09:38:11.659024
200	2017-04-30	70	151	75385	5062680	2017-04-30 09:38:11.671228	2017-04-30 09:38:11.671228
201	2017-05-01	47	126	0	0	2017-04-30 15:43:16.648969	2017-04-30 15:43:16.648969
202	2017-05-01	81	163	0	0	2017-04-30 15:43:16.664122	2017-04-30 15:43:16.664122
203	2017-05-01	82	164	0	0	2017-04-30 15:43:16.6791	2017-04-30 15:43:16.6791
204	2017-05-01	83	174	0	0	2017-04-30 15:43:16.689314	2017-04-30 15:43:16.689314
205	2017-05-01	71	152	0	0	2017-04-30 15:43:16.708609	2017-04-30 15:43:16.708609
206	2017-05-01	41	120	0	0	2017-04-30 15:43:16.720868	2017-04-30 15:43:16.720868
207	2017-05-01	84	166	0	0	2017-04-30 15:43:16.731383	2017-04-30 15:43:16.731383
208	2017-05-01	61	142	0	0	2017-04-30 15:43:16.745151	2017-04-30 15:43:16.745151
209	2017-05-01	72	153	51616	1908540	2017-04-30 15:43:16.769612	2017-04-30 15:43:16.769612
210	2017-05-01	91	175	0	0	2017-04-30 15:43:16.780336	2017-04-30 15:43:16.780336
211	2017-05-01	50	129	0	0	2017-04-30 15:43:16.797837	2017-04-30 15:43:16.797837
212	2017-05-01	62	143	0	0	2017-04-30 15:43:16.812874	2017-04-30 15:43:16.812874
213	2017-05-01	74	156	0	0	2017-04-30 15:43:16.821736	2017-04-30 15:43:16.821736
214	2017-05-01	92	176	0	0	2017-04-30 15:43:16.843669	2017-04-30 15:43:16.843669
215	2017-05-01	75	157	0	0	2017-04-30 15:43:16.853985	2017-04-30 15:43:16.853985
216	2017-05-01	86	168	207139	2930672	2017-04-30 15:43:16.861216	2017-04-30 15:43:16.861216
217	2017-05-01	87	169	0	0	2017-04-30 15:43:16.873536	2017-04-30 15:43:16.873536
218	2017-05-01	65	146	0	0	2017-04-30 15:43:16.88306	2017-04-30 15:43:16.88306
219	2017-05-01	93	177	0	0	2017-04-30 15:43:16.898183	2017-04-30 15:43:16.898183
220	2017-05-01	88	170	18137	0	2017-04-30 15:43:16.91987	2017-04-30 15:43:16.91987
221	2017-05-01	54	133	0	0	2017-04-30 15:43:16.930382	2017-04-30 15:43:16.930382
222	2017-05-01	55	134	0	0	2017-04-30 15:43:16.942345	2017-04-30 15:43:16.942345
223	2017-05-01	77	159	0	0	2017-04-30 15:43:16.954572	2017-04-30 15:43:16.954572
224	2017-05-01	94	178	0	0	2017-04-30 15:43:16.964931	2017-04-30 15:43:16.964931
225	2017-05-01	56	135	0	0	2017-04-30 15:43:16.973528	2017-04-30 15:43:16.973528
226	2017-05-01	66	147	0	0	2017-04-30 15:43:16.996986	2017-04-30 15:43:16.996986
227	2017-05-01	57	136	0	0	2017-04-30 15:43:17.028222	2017-04-30 15:43:17.028222
228	2017-05-01	58	137	22251	968930	2017-04-30 15:43:17.036678	2017-04-30 15:43:17.036678
229	2017-05-01	78	160	0	0	2017-04-30 15:43:17.045744	2017-04-30 15:43:17.045744
230	2017-05-01	68	149	0	0	2017-04-30 15:43:17.066186	2017-04-30 15:43:17.066186
231	2017-05-01	45	124	0	0	2017-04-30 15:43:17.076905	2017-04-30 15:43:17.076905
232	2017-05-01	30	172	0	0	2017-04-30 15:43:17.089651	2017-04-30 15:43:17.089651
233	2017-05-01	32	32	0	0	2017-04-30 15:43:17.108104	2017-04-30 15:43:17.108104
234	2017-05-01	46	125	0	0	2017-04-30 15:43:17.123642	2017-04-30 15:43:17.123642
235	2017-05-01	95	179	0	0	2017-04-30 15:43:17.133312	2017-04-30 15:43:17.133312
236	2017-05-01	59	180	0	0	2017-04-30 15:43:17.145527	2017-04-30 15:43:17.145527
237	2017-05-01	90	173	0	0	2017-04-30 15:43:17.158995	2017-04-30 15:43:17.158995
238	2017-05-01	96	181	0	0	2017-04-30 15:43:17.17334	2017-04-30 15:43:17.17334
239	2017-05-01	80	162	0	0	2017-04-30 15:43:17.189595	2017-04-30 15:43:17.189595
240	2017-05-01	70	151	75385	5062680	2017-04-30 15:43:17.199994	2017-04-30 15:43:17.199994
241	2017-05-06	47	126	0	0	2017-05-06 06:56:25.082679	2017-05-06 06:56:25.082679
242	2017-05-06	97	182	0	0	2017-05-06 06:56:25.102636	2017-05-06 06:56:25.102636
243	2017-05-06	81	163	0	0	2017-05-06 06:56:25.115255	2017-05-06 06:56:25.115255
244	2017-05-06	98	183	0	0	2017-05-06 06:56:25.13004	2017-05-06 06:56:25.13004
245	2017-05-06	82	164	0	0	2017-05-06 06:56:25.14418	2017-05-06 06:56:25.14418
246	2017-05-06	83	174	0	0	2017-05-06 06:56:25.154334	2017-05-06 06:56:25.154334
247	2017-05-06	71	152	0	0	2017-05-06 06:56:25.176585	2017-05-06 06:56:25.176585
248	2017-05-06	84	166	0	0	2017-05-06 06:56:25.190994	2017-05-06 06:56:25.190994
249	2017-05-06	61	142	0	0	2017-05-06 06:56:25.206375	2017-05-06 06:56:25.206375
250	2017-05-06	99	184	0	0	2017-05-06 06:56:25.216816	2017-05-06 06:56:25.216816
251	2017-05-06	62	143	0	0	2017-05-06 06:56:25.23721	2017-05-06 06:56:25.23721
252	2017-05-06	74	156	0	0	2017-05-06 06:56:25.250402	2017-05-06 06:56:25.250402
253	2017-05-06	92	176	192218	4776419	2017-05-06 06:56:25.262455	2017-05-06 06:56:25.262455
254	2017-05-06	93	177	0	0	2017-05-06 06:56:25.284265	2017-05-06 06:56:25.284265
255	2017-05-06	88	170	0	0	2017-05-06 06:56:25.300364	2017-05-06 06:56:25.300364
256	2017-05-06	54	133	0	0	2017-05-06 06:56:25.314769	2017-05-06 06:56:25.314769
257	2017-05-06	55	134	0	0	2017-05-06 06:56:25.344393	2017-05-06 06:56:25.344393
258	2017-05-06	24	185	0	0	2017-05-06 06:56:25.354865	2017-05-06 06:56:25.354865
259	2017-05-06	100	186	0	0	2017-05-06 06:56:25.372823	2017-05-06 06:56:25.372823
260	2017-05-06	77	159	0	0	2017-05-06 06:56:25.382859	2017-05-06 06:56:25.382859
261	2017-05-06	94	178	0	0	2017-05-06 06:56:25.39257	2017-05-06 06:56:25.39257
262	2017-05-06	56	135	0	0	2017-05-06 06:56:25.417315	2017-05-06 06:56:25.417315
263	2017-05-06	66	147	0	0	2017-05-06 06:56:25.437195	2017-05-06 06:56:25.437195
264	2017-05-06	101	187	0	0	2017-05-06 06:56:25.44762	2017-05-06 06:56:25.44762
265	2017-05-06	57	136	0	0	2017-05-06 06:56:25.459847	2017-05-06 06:56:25.459847
266	2017-05-06	58	137	0	874280	2017-05-06 06:56:25.477975	2017-05-06 06:56:25.477975
267	2017-05-06	78	160	0	0	2017-05-06 06:56:25.493127	2017-05-06 06:56:25.493127
268	2017-05-06	102	188	0	0	2017-05-06 06:56:25.506434	2017-05-06 06:56:25.506434
269	2017-05-06	68	149	0	0	2017-05-06 06:56:25.516228	2017-05-06 06:56:25.516228
270	2017-05-06	45	124	0	0	2017-05-06 06:56:25.538421	2017-05-06 06:56:25.538421
271	2017-05-06	30	172	0	0	2017-05-06 06:56:25.553005	2017-05-06 06:56:25.553005
272	2017-05-06	46	125	0	0	2017-05-06 06:56:25.57013	2017-05-06 06:56:25.57013
273	2017-05-06	95	179	0	0	2017-05-06 06:56:25.580691	2017-05-06 06:56:25.580691
274	2017-05-06	103	189	0	0	2017-05-06 06:56:25.599298	2017-05-06 06:56:25.599298
275	2017-05-06	59	180	0	0	2017-05-06 06:56:25.61279	2017-05-06 06:56:25.61279
276	2017-05-06	104	190	0	0	2017-05-06 06:56:25.627145	2017-05-06 06:56:25.627145
277	2017-05-06	90	173	0	0	2017-05-06 06:56:25.64804	2017-05-06 06:56:25.64804
278	2017-05-06	96	181	0	0	2017-05-06 06:56:25.66154	2017-05-06 06:56:25.66154
279	2017-05-06	80	162	0	0	2017-05-06 06:56:25.675621	2017-05-06 06:56:25.675621
280	2017-05-06	70	151	61338	4551837	2017-05-06 06:56:25.688321	2017-05-06 06:56:25.688321
\.


--
-- Name: digital_sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('digital_sales_id_seq', 280, true);


--
-- Data for Name: digital_service_providers; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY digital_service_providers (id, name, profile_img, home_url) FROM stdin;
4	Genie	http://www.musaic.com/wp-content/uploads/2016/05/KT-Music-Genie.png	http://www.genie.co.kr/
1	Melon	https://i.imgur.com/e5wbci4.jpg	http://www.melon.com/
2	Bugs!	https://i.imgur.com/72EUSKb.jpg	http://www.bugs.co.kr/
\.


--
-- Name: digital_service_providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('digital_service_providers_id_seq', 4, true);


--
-- Data for Name: digital_service_providers_links; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY digital_service_providers_links (id, song_id, digital_service_provider_id, link, created_at, updated_at) FROM stdin;
1	176	2	http://music.bugs.co.kr/album/20094414	2017-05-06 07:02:06.875459	2017-05-06 07:02:06.875459
2	151	2	http://music.bugs.co.kr/album/20090733	2017-05-06 07:02:32.148757	2017-05-06 07:02:32.148757
3	8	2	http://music.bugs.co.kr/album/20083789	2017-05-06 07:07:04.351068	2017-05-06 07:07:04.351068
4	8	4	http://www.genie.co.kr/detail/albumInfo;jsessionid=C66302E2FCE6C599CDACFC7190C38B21?axnm=80925819	2017-05-06 07:07:09.438404	2017-05-06 07:07:09.438404
5	8	1	http://www.melon.com/album/detail.htm?albumId=10041603	2017-05-06 07:07:14.518878	2017-05-06 07:07:14.518878
6	34	2	http://music.bugs.co.kr/album/621011	2017-05-06 07:07:29.627286	2017-05-06 07:07:29.627286
7	34	4	http://www.genie.co.kr/detail/albumInfo?axnm=80924296	2017-05-06 07:07:34.69813	2017-05-06 07:07:34.69813
8	34	1	http://www.melon.com/album/detail.htm?albumId=10040265	2017-05-06 07:07:39.764276	2017-05-06 07:07:39.764276
9	36	2	http://music.bugs.co.kr/album/20082818	2017-05-06 07:07:54.868017	2017-05-06 07:07:54.868017
10	36	4	http://www.genie.co.kr/detail/albumInfo?axnm=80924087	2017-05-06 07:07:59.933512	2017-05-06 07:07:59.933512
11	36	1	http://www.melon.com/album/detail.htm?albumId=10040060	2017-05-06 07:08:04.993832	2017-05-06 07:08:04.993832
12	128	2	http://music.bugs.co.kr/album/20089211	2017-05-06 07:08:20.111694	2017-05-06 07:08:20.111694
13	128	4	http://www.genie.co.kr/detail/albumInfo?axnm=80933331	2017-05-06 07:08:25.175285	2017-05-06 07:08:25.175285
14	128	1	http://www.melon.com/album/detail.htm?albumId=10049173	2017-05-06 07:08:30.247259	2017-05-06 07:08:30.247259
15	13	2	http://music.bugs.co.kr/album/20085090	2017-05-06 07:08:45.350546	2017-05-06 07:08:45.350546
16	13	4	http://www.genie.co.kr/detail/albumInfo?axnm=80927578	2017-05-06 07:08:50.413628	2017-05-06 07:08:50.413628
17	13	1	http://www.melon.com/album/detail.htm?albumId=10043312	2017-05-06 07:08:55.477092	2017-05-06 07:08:55.477092
18	176	4	http://www.genie.co.kr/detail/albumInfo?axnm=80939364	2017-05-06 07:09:15.61654	2017-05-06 07:09:15.61654
19	176	1	http://www.melon.com/album/detail.htm?albumId=10057570	2017-05-06 07:09:20.684008	2017-05-06 07:09:20.684008
20	153	2	http://music.bugs.co.kr/album/631120	2017-05-06 07:09:35.778173	2017-05-06 07:09:35.778173
21	153	4	http://www.genie.co.kr/detail/albumInfo?axnm=80937675	2017-05-06 07:09:40.843648	2017-05-06 07:09:40.843648
22	153	1	http://www.melon.com/album/detail.htm?albumId=10053013	2017-05-06 07:09:45.915358	2017-05-06 07:09:45.915358
23	168	2	http://music.bugs.co.kr/album/20094140	2017-05-06 07:10:01.024999	2017-05-06 07:10:01.024999
24	168	4	http://www.genie.co.kr/detail/albumInfo?axnm=80941594	2017-05-06 07:10:06.095936	2017-05-06 07:10:06.095936
25	168	1	http://www.melon.com/album/detail.htm?albumId=10056666	2017-05-06 07:10:11.160271	2017-05-06 07:10:11.160271
26	151	4	http://www.genie.co.kr/detail/albumInfo?axnm=80935242	2017-05-06 07:10:31.345805	2017-05-06 07:10:31.345805
27	151	1	http://www.melon.com/album/detail.htm?albumId=10051659	2017-05-06 07:10:36.40713	2017-05-06 07:10:36.40713
28	137	2	http://music.bugs.co.kr/album/20088098	2017-05-06 07:50:43.75099	2017-05-06 07:50:43.75099
29	137	4	http://www.genie.co.kr/detail/albumInfo?axnm=80931782	2017-05-06 07:50:48.813832	2017-05-06 07:50:48.813832
30	137	1	http://www.melon.com/album/detail.htm?albumId=10047779	2017-05-06 07:50:53.881903	2017-05-06 07:50:53.881903
31	170	2	http://music.bugs.co.kr/album/20093064	2017-05-06 07:51:09.000323	2017-05-06 07:51:09.000323
32	170	4	http://www.genie.co.kr/detail/albumInfo?axnm=80939691	2017-05-06 07:51:14.063285	2017-05-06 07:51:14.063285
33	170	1	http://www.melon.com/album/detail.htm?albumId=10055373	2017-05-06 07:51:19.133016	2017-05-06 07:51:19.133016
\.


--
-- Name: digital_service_providers_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('digital_service_providers_links_id_seq', 33, true);


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY films (id, title) FROM stdin;
1	lalaland
2	batman
\.


--
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY line_items (id, cart_id, product_id, quantity, created_at, updated_at, unit_price) FROM stdin;
\.


--
-- Name: line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('line_items_id_seq', 1, false);


--
-- Data for Name: mcountdown_rankings; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY mcountdown_rankings (id, nominee_id, mcountdown_votes, normalized_mv, youtube_views, normalized_yv, download_cnt, stream_cnt, normalized_ds, remainder, score, ranking, created_at, updated_at) FROM stdin;
180	179	0	0	12162	4.87999999999999989	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.457466	2017-03-31 17:02:03.486939
178	177	0	0	192366	13.2400000000000002	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.452092	2017-03-31 17:02:03.492357
159	157	2	9	2098496	20.2100000000000009	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.383828	2017-03-31 17:02:03.49579
160	158	0	0	600404	17.4200000000000017	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.388048	2017-03-31 17:02:03.499273
161	159	0	0	30732	6.26999999999999957	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.391366	2017-03-31 17:02:03.502462
162	161	0	0	484303	16.0300000000000011	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.394245	2017-03-31 17:02:03.505991
163	162	0	0	8120	3.47999999999999998	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.397519	2017-03-31 17:02:03.509362
164	163	0	0	473500	15.3300000000000001	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.40105	2017-03-31 17:02:03.51246
167	166	0	0	80622	9.0600000000000005	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.409549	2017-03-31 17:02:03.515474
168	167	0.100000000000000006	3	2591074	21.6099999999999994	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.412349	2017-03-31 17:02:03.518644
169	168	0	0	165746	12.5500000000000007	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.415474	2017-03-31 17:02:03.530795
173	172	0	0	130709	11.1500000000000004	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.43755	2017-03-31 17:02:03.551473
174	173	0	0	41711	7.66999999999999993	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.440655	2017-03-31 17:02:03.560612
175	174	0	0	11681	4.17999999999999972	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.443341	2017-03-31 17:02:03.563982
176	175	0	0	122535	10.4499999999999993	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.446398	2017-03-31 17:02:03.567609
177	176	0	0	108720	9.75999999999999979	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.449191	2017-03-31 17:02:03.570948
179	178	0	0	31491	6.96999999999999975	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.454882	2017-03-31 17:02:03.574239
183	182	0	0	2293	2.79000000000000004	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.465498	2017-03-31 17:02:03.580181
184	183	0	0	134960	11.8499999999999996	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.468438	2017-03-31 17:02:03.583042
185	184	0	0	546217	16.7300000000000004	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.471081	2017-03-31 17:02:03.586024
187	186	0	0	247237	13.9399999999999995	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.476137	2017-03-31 17:02:03.588888
189	188	0.100000000000000006	3	919073	19.5199999999999996	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.48143	2017-03-31 17:02:03.592047
190	189	0	0	193	0.699999999999999956	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.484194	2017-03-31 17:02:03.594969
191	190	0	0	730	1.3899999999999999	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.486772	2017-03-31 17:02:03.597932
193	192	0	0	1231	2.08999999999999986	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.491991	2017-03-31 17:02:03.601282
194	193	0	0	15529	5.58000000000000007	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.494591	2017-03-31 17:02:03.604386
195	194	0	0	840764	18.8200000000000003	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.497171	2017-03-31 17:02:03.607478
196	195	0	0	452496	14.6400000000000006	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.499799	2017-03-31 17:02:03.610452
197	196	0	0	52345	8.35999999999999943	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.502683	2017-03-31 17:02:03.613489
165	164	7.90000000000000036	12	3621003	22.3000000000000007	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.403912	2017-03-31 17:02:03.61654
198	197	0	0	0	0	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.505493	2017-03-31 17:02:03.622464
170	169	0.5	9	7968050	23	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.418782	2017-04-01 09:57:32.900111
171	170	36.8999999999999986	18	\N	\N	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.421945	2017-04-01 09:57:32.904435
172	171	0	0	788353	18.120000000000001	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.434087	2017-04-01 09:57:32.907509
182	181	0.5	9	2386719	20.9100000000000001	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.462905	2017-04-01 09:57:32.929661
166	165	0	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.406942	2017-03-31 17:01:37.406942
181	180	0	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.460034	2017-03-31 17:01:37.460034
186	185	0	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.473575	2017-03-31 17:01:37.473575
188	187	0	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.478804	2017-03-31 17:01:37.478804
192	191	0	0	\N	\N	\N	\N	\N	\N	\N	\N	2017-03-31 17:01:37.489332	2017-03-31 17:01:37.489332
204	203	4.40000000000000036	10.2899999999999991	883890	18.2399999999999984	44833	747105	33.7100000000000009	37.759999999999998	62.240000000000002	2	2017-04-01 09:58:25.060431	2017-04-02 17:01:16.794811
207	206	0	0	171646	11.9000000000000004	0	0	0	88.0999999999999943	11.9000000000000004	16	2017-04-01 09:58:25.069023	2017-04-02 17:01:16.797429
206	205	0	0	81271	8.72000000000000064	0	0	0	91.2800000000000011	8.72000000000000064	20	2017-04-01 09:58:25.06605	2017-04-02 17:01:16.802736
209	208	2	7.70999999999999996	4447103	20.620000000000001	0	0	0	71.6700000000000017	28.3299999999999983	7	2017-04-01 09:58:25.074263	2017-04-02 17:01:16.805115
208	207	0.5	5.13999999999999968	8654911	22.2100000000000009	51136	2820644	59	13.6500000000000004	86.3499999999999943	1	2017-04-01 09:58:25.071685	2017-04-02 17:01:16.80749
215	214	9.5	12.8599999999999994	0	0	0	0	0	87.1400000000000006	12.8599999999999994	14	2017-04-01 09:58:25.089821	2017-04-02 17:01:16.810399
211	210	36.8999999999999986	15.4299999999999997	20074815	23	0	0	0	61.5700000000000003	38.4299999999999997	5	2017-04-01 09:58:25.079621	2017-04-02 17:01:16.813608
225	224	0	0	2339	2.37999999999999989	0	0	0	97.6200000000000045	2.37999999999999989	28	2017-04-01 09:58:25.115263	2017-04-02 17:01:16.816084
212	211	0	0	859910	17.4499999999999993	0	0	0	82.5499999999999972	17.4499999999999993	8	2017-04-01 09:58:25.082097	2017-04-02 17:01:16.818832
214	213	0	0	42506	7.13999999999999968	0	0	0	92.8599999999999994	7.13999999999999968	22	2017-04-01 09:58:25.087214	2017-04-02 17:01:16.824014
216	215	0	0	11986	3.16999999999999993	0	0	0	96.8299999999999983	3.16999999999999993	27	2017-04-01 09:58:25.092298	2017-04-02 17:01:16.826597
217	216	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.094812	2017-04-02 17:01:16.829875
218	217	0	0	123427	10.3100000000000005	0	0	0	89.6899999999999977	10.3100000000000005	18	2017-04-01 09:58:25.097319	2017-04-02 17:01:16.832713
220	219	0	0	12499	3.9700000000000002	0	0	0	96.0300000000000011	3.9700000000000002	26	2017-04-01 09:58:25.102558	2017-04-02 17:01:16.835254
221	220	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.10526	2017-04-02 17:01:16.837648
222	221	0	0	16423	5.54999999999999982	0	0	0	94.4500000000000028	5.54999999999999982	24	2017-04-01 09:58:25.107804	2017-04-02 17:01:16.840067
201	200	0	0	38525	6.33999999999999986	0	0	0	93.6599999999999966	6.33999999999999986	23	2017-04-01 09:58:25.050544	2017-04-02 17:01:16.845046
226	225	45.6000000000000014	18	4337965	19.8299999999999983	0	0	0	62.1700000000000017	37.8299999999999983	6	2017-04-01 09:58:25.117771	2017-04-02 17:01:16.847598
227	226	0	0	14741	4.75999999999999979	0	0	0	95.2399999999999949	4.75999999999999979	25	2017-04-01 09:58:25.12037	2017-04-02 17:01:16.850499
229	228	0.400000000000000022	2.56999999999999984	4833858	21.4100000000000001	36390	0	16.8599999999999994	59.1599999999999966	40.8400000000000034	4	2017-04-01 09:58:25.125329	2017-04-02 17:01:16.852936
230	229	0	0	265588	13.4800000000000004	0	0	0	86.519999999999996	13.4800000000000004	13	2017-04-01 09:58:25.127859	2017-04-02 17:01:16.855352
234	233	0	0	1273	1.59000000000000008	0	0	0	98.4099999999999966	1.59000000000000008	29	2017-04-01 09:58:25.137962	2017-04-02 17:01:16.857722
231	230	0	0	238987	12.6899999999999995	0	0	0	87.3100000000000023	12.6899999999999995	15	2017-04-01 09:58:25.130468	2017-04-02 17:01:16.860153
235	234	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.14042	2017-04-02 17:01:16.865174
236	235	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.142954	2017-04-02 17:01:16.867563
237	236	0	0	53230	7.92999999999999972	0	0	0	92.0699999999999932	7.92999999999999972	21	2017-04-01 09:58:25.145392	2017-04-02 17:01:16.870004
200	199	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.046682	2017-04-02 17:01:16.872481
203	202	0	0	517299	15.0700000000000003	0	0	0	84.9300000000000068	15.0700000000000003	11	2017-04-01 09:58:25.057245	2017-04-02 17:01:16.875003
199	198	0	0	625147	15.8599999999999994	0	0	0	84.1400000000000006	15.8599999999999994	10	2017-04-01 09:58:25.035745	2017-04-02 17:01:16.877674
210	209	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.077046	2017-04-02 17:01:16.789475
202	201	0	0	509679	14.2799999999999994	0	0	0	85.7199999999999989	14.2799999999999994	12	2017-04-01 09:58:25.053879	2017-04-02 17:01:16.792084
205	204	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.063299	2017-04-02 17:01:16.800091
213	212	0	0	133180	11.0999999999999996	0	0	0	88.9000000000000057	11.0999999999999996	17	2017-04-01 09:58:25.084578	2017-04-02 17:01:16.821359
223	222	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.110313	2017-04-02 17:01:16.842476
232	231	0	0	859	0.790000000000000036	0	0	0	99.2099999999999937	0.790000000000000036	30	2017-04-01 09:58:25.13304	2017-04-02 17:01:16.862733
219	218	0	0	103716	9.51999999999999957	0	0	0	90.480000000000004	9.51999999999999957	19	2017-04-01 09:58:25.099887	2017-04-02 17:01:16.880195
224	223	0.5	5.13999999999999968	2497014	19.0300000000000011	17228	909615	25.2899999999999991	50.5399999999999991	49.4600000000000009	3	2017-04-01 09:58:25.112799	2017-04-02 17:01:16.882673
228	227	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.122876	2017-04-02 17:01:16.885071
233	232	0	0	669225	16.6600000000000001	0	0	0	83.3400000000000034	16.6600000000000001	9	2017-04-01 09:58:25.135469	2017-04-02 17:01:16.887446
238	237	0	0	0	0	0	0	0	100	0	31	2017-04-01 09:58:25.14808	2017-04-02 17:01:16.889827
261	257	0	0	122567	10.0600000000000005	0	0	0	89.9399999999999977	10.0600000000000005	16	2017-04-09 16:50:37.770772	2017-04-09 16:52:42.742386
262	258	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.774667	2017-04-09 16:52:42.745009
263	259	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.778574	2017-04-09 16:52:42.747616
264	260	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.782462	2017-04-09 16:52:42.750452
265	261	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.786467	2017-04-09 16:52:42.753104
266	262	0.900000000000000022	7.5	2680459	20.129999999999999	0	765769	8.42999999999999972	63.9399999999999977	36.0600000000000023	4	2017-04-09 16:50:37.790416	2017-04-09 16:52:42.755752
275	271	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.825729	2017-04-09 16:52:42.78018
276	272	0	0	1019	4.30999999999999961	0	0	0	95.6899999999999977	4.30999999999999961	21	2017-04-09 16:50:37.829537	2017-04-09 16:52:42.783184
277	273	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.833461	2017-04-09 16:52:42.786112
281	277	41.2999999999999972	18	6549756	21.5599999999999987	0	0	0	60.4399999999999977	39.5600000000000023	3	2017-04-09 16:50:37.848982	2017-04-09 16:52:42.705347
242	238	0	0	662860	14.3800000000000008	0	0	0	85.6200000000000045	14.3800000000000008	12	2017-04-09 16:50:37.675115	2017-04-09 16:52:42.707891
243	239	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.686854	2017-04-09 16:52:42.710253
244	240	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.698577	2017-04-09 16:52:42.713101
245	241	0	0	583417	12.9399999999999995	0	0	0	87.0600000000000023	12.9399999999999995	13	2017-04-09 16:50:37.703759	2017-04-09 16:52:42.715709
246	242	0	0	41397	8.63000000000000078	0	0	0	91.3700000000000045	8.63000000000000078	18	2017-04-09 16:50:37.708527	2017-04-09 16:52:42.718647
247	243	3.5	10.5	0	0	0	0	0	89.5	10.5	15	2017-04-09 16:50:37.713409	2017-04-09 16:52:42.721718
248	244	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.717611	2017-04-09 16:52:42.724208
255	251	0	0	998022	17.25	0	0	0	82.75	17.25	9	2017-04-09 16:50:37.747141	2017-04-09 16:52:42.726745
267	263	33.5	16.5	0	0	0	0	0	83.5	16.5	10	2017-04-09 16:50:37.794228	2017-04-09 16:52:42.758479
268	264	0	0	40073	7.19000000000000039	0	0	0	92.8100000000000023	7.19000000000000039	19	2017-04-09 16:50:37.798323	2017-04-09 16:52:42.761158
269	265	0.800000000000000044	6	0	0	0	0	0	94	6	20	2017-04-09 16:50:37.802474	2017-04-09 16:52:42.763865
270	266	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.806443	2017-04-09 16:52:42.766647
271	267	0.100000000000000006	1.5	0	0	31105	816394	25.2899999999999991	73.2099999999999937	26.7899999999999991	6	2017-04-09 16:50:37.810248	2017-04-09 16:52:42.769918
272	268	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.814147	2017-04-09 16:52:42.772481
273	269	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.818179	2017-04-09 16:52:42.775318
274	270	0	0	53	1.43999999999999995	0	0	0	98.5600000000000023	1.43999999999999995	24	2017-04-09 16:50:37.821954	2017-04-09 16:52:42.777782
249	245	0.599999999999999978	4.5	1172414	18.6900000000000013	0	0	0	76.8100000000000023	23.1900000000000013	8	2017-04-09 16:50:37.721647	2017-04-09 16:52:42.680084
250	246	0.400000000000000022	3	5370	5.75	0	0	0	91.25	8.75	17	2017-04-09 16:50:37.725758	2017-04-09 16:52:42.682904
251	247	0.400000000000000022	3	0	0	42237	2629800	50.5700000000000003	46.4299999999999997	53.5700000000000003	2	2017-04-09 16:50:37.730138	2017-04-09 16:52:42.685842
252	248	5.20000000000000018	13.5	0	0	119763	2369566	50.5700000000000003	35.9299999999999997	64.0699999999999932	1	2017-04-09 16:50:37.734755	2017-04-09 16:52:42.688918
253	249	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.739171	2017-04-09 16:52:42.691539
254	250	4.20000000000000018	12	23461328	23	0	0	0	65	35	5	2017-04-09 16:50:37.743176	2017-04-09 16:52:42.693956
278	274	2	9	762609	15.8100000000000005	0	0	0	75.1899999999999977	24.8099999999999987	7	2017-04-09 16:50:37.837283	2017-04-09 16:52:42.697271
279	275	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.841109	2017-04-09 16:52:42.699848
280	276	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.845134	2017-04-09 16:52:42.702258
256	252	6.79999999999999982	15	0	0	0	0	0	85	15	11	2017-04-09 16:50:37.751089	2017-04-09 16:52:42.729827
257	253	0	0	239	2.87999999999999989	0	0	0	97.1200000000000045	2.87999999999999989	22	2017-04-09 16:50:37.75494	2017-04-09 16:52:42.732359
258	254	0	0	135960	11.5	0	0	0	88.5	11.5	14	2017-04-09 16:50:37.758751	2017-04-09 16:52:42.734722
259	255	0	0	0	0	0	0	0	100	0	25	2017-04-09 16:50:37.762626	2017-04-09 16:52:42.737483
260	256	0.100000000000000006	1.5	0	0	0	0	0	98.5	1.5	23	2017-04-09 16:50:37.766638	2017-04-09 16:52:42.739813
287	283	0.599999999999999978	10	1642727	19.4600000000000009	0	0	0	70.5400000000000063	29.4600000000000009	7	2017-04-14 16:31:34.142526	2017-04-14 16:41:57.245789
288	284	0.5	8	0	0	0	0	0	92	8	18	2017-04-14 16:31:34.147859	2017-04-14 16:41:57.248352
290	286	0	0	9210	1.77000000000000002	0	0	0	98.230000000000004	1.77000000000000002	27	2017-04-14 16:31:34.15701	2017-04-14 16:41:57.250846
292	288	0.100000000000000006	2	1062202	16.8099999999999987	0	0	0	81.1899999999999977	18.8099999999999987	10	2017-04-14 16:31:34.165904	2017-04-14 16:41:57.253514
293	289	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.170573	2017-04-14 16:41:57.25603
297	293	0	0	119927	7.95999999999999996	0	0	0	92.0400000000000063	7.95999999999999996	19	2017-04-14 16:31:34.188318	2017-04-14 16:41:57.258697
299	295	15.5999999999999996	16	1427565	17.6900000000000013	0	0	0	66.3100000000000023	33.6899999999999977	6	2017-04-14 16:31:34.197511	2017-04-14 16:41:57.263882
301	297	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.207734	2017-04-14 16:41:57.266289
303	299	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.217568	2017-04-14 16:41:57.268882
305	301	8.19999999999999929	14	6508845	21.2300000000000004	0	0	0	64.769999999999996	35.2299999999999969	5	2017-04-14 16:31:34.226407	2017-04-14 16:41:57.271499
306	302	0	0	46075	6.19000000000000039	0	0	0	93.8100000000000023	6.19000000000000039	21	2017-04-14 16:31:34.231466	2017-04-14 16:41:57.274054
307	303	0.400000000000000022	6	1548373	18.5799999999999983	42998	0	29.5	45.9200000000000017	54.0799999999999983	2	2017-04-14 16:31:34.236199	2017-04-14 16:41:57.276495
310	306	0	0	306834	11.5	0	0	0	88.5	11.5	15	2017-04-14 16:31:34.25091	2017-04-14 16:41:57.278796
312	308	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.260212	2017-04-14 16:41:57.283728
315	311	0	0	695430	15.0399999999999991	0	0	0	84.9599999999999937	15.0399999999999991	11	2017-04-14 16:31:34.274226	2017-04-14 16:41:57.286133
316	312	4.5	12	766137	15.9199999999999999	0	0	0	72.0799999999999983	27.9200000000000017	9	2017-04-14 16:31:34.279026	2017-04-14 16:41:57.28861
294	290	0	0	201226	9.73000000000000043	25866	0	19.6700000000000017	70.5999999999999943	29.3999999999999986	8	2017-04-14 16:31:34.175232	2017-04-14 16:41:57.291375
285	281	0	0	104732	7.08000000000000007	0	0	0	92.9200000000000017	7.08000000000000007	20	2017-04-14 16:31:34.132574	2017-04-14 16:41:57.242983
289	285	15.5999999999999996	16	2198526	20.3500000000000014	0	0	0	63.6499999999999986	36.3500000000000014	4	2017-04-14 16:31:34.152121	2017-04-14 16:41:57.302153
291	287	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.161594	2017-04-14 16:41:57.305449
295	291	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.179519	2017-04-14 16:41:57.308189
296	292	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.183854	2017-04-14 16:41:57.310979
300	296	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.202686	2017-04-14 16:41:57.313988
302	298	0	0	19818	3.54000000000000004	0	0	0	96.4599999999999937	3.54000000000000004	25	2017-04-14 16:31:34.212895	2017-04-14 16:41:57.316688
304	300	0	0	209555	10.6199999999999992	0	0	0	89.3799999999999955	10.6199999999999992	17	2017-04-14 16:31:34.221796	2017-04-14 16:41:57.31913
308	304	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.241258	2017-04-14 16:41:57.321638
309	305	0.299999999999999989	4	7380707	22.120000000000001	24816	850955	19.6700000000000017	54.2100000000000009	45.7899999999999991	3	2017-04-14 16:31:34.245879	2017-04-14 16:41:57.323986
313	309	0	0	349447	12.3800000000000008	0	0	0	87.6200000000000045	12.3800000000000008	14	2017-04-14 16:31:34.26505	2017-04-14 16:41:57.326746
314	310	0	0	1116	0.880000000000000004	0	0	0	99.1200000000000045	0.880000000000000004	28	2017-04-14 16:31:34.269435	2017-04-14 16:41:57.329654
317	313	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.283255	2017-04-14 16:41:57.332567
318	314	0.100000000000000006	2	162565	8.84999999999999964	0	0	0	89.1500000000000057	10.8499999999999996	16	2017-04-14 16:31:34.288088	2017-04-14 16:41:57.335265
319	315	0.100000000000000006	2	0	0	0	0	0	98	2	26	2017-04-14 16:31:34.293311	2017-04-14 16:41:57.337912
320	316	0.100000000000000006	2	13137	2.64999999999999991	0	0	0	95.3499999999999943	4.65000000000000036	23	2017-04-14 16:31:34.298054	2017-04-14 16:41:57.3409
321	317	53.7999999999999972	18	9081856	23	196803	3999418	59	0	100	1	2017-04-14 16:31:34.302708	2017-04-14 16:41:57.343478
329	325	1.10000000000000009	8.17999999999999972	772252	16.6600000000000001	0	0	0	75.1599999999999966	24.8399999999999999	8	2017-04-23 17:04:36.44829	2017-04-23 17:05:05.79338
330	326	0.299999999999999989	4.91000000000000014	0	0	0	0	0	95.0900000000000034	4.91000000000000014	24	2017-04-23 17:04:36.452732	2017-04-23 17:05:05.795889
331	327	20.6000000000000014	16.3599999999999994	3901077	19.8299999999999983	0	0	0	63.8100000000000023	36.1899999999999977	3	2017-04-23 17:04:36.457756	2017-04-23 17:05:05.798453
332	328	0	0	10118	1.59000000000000008	0	0	0	98.4099999999999966	1.59000000000000008	29	2017-04-23 17:04:36.462044	2017-04-23 17:05:05.80105
333	329	0.599999999999999978	6.54999999999999982	1135988	18.2399999999999984	0	0	0	75.2099999999999937	24.7899999999999991	9	2017-04-23 17:04:36.466573	2017-04-23 17:05:05.803676
334	330	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.471442	2017-04-23 17:05:05.806437
284	280	0	0	619404	14.1500000000000004	0	0	0	85.8499999999999943	14.1500000000000004	12	2017-04-14 16:31:34.127709	2017-04-14 16:41:57.240198
298	294	0	0	33749	5.30999999999999961	0	0	0	94.6899999999999977	5.30999999999999961	22	2017-04-14 16:31:34.193103	2017-04-14 16:41:57.261293
311	307	0	0	25212	4.41999999999999993	0	0	0	95.5799999999999983	4.41999999999999993	24	2017-04-14 16:31:34.255777	2017-04-14 16:41:57.281328
282	278	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.105024	2017-04-14 16:41:57.294159
283	279	0	0	560475	13.2699999999999996	0	0	0	86.730000000000004	13.2699999999999996	13	2017-04-14 16:31:34.116923	2017-04-14 16:41:57.296677
286	282	0	0	0	0	0	0	0	100	0	29	2017-04-14 16:31:34.137054	2017-04-14 16:41:57.299369
335	331	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.476595	2017-04-23 17:05:05.809195
336	332	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.481367	2017-04-23 17:05:05.811794
337	333	0	0	39491	5.54999999999999982	0	0	0	94.4500000000000028	5.54999999999999982	23	2017-04-23 17:04:36.486334	2017-04-23 17:05:05.814779
338	334	8.90000000000000036	13.0899999999999999	7150604	20.620000000000001	0	0	0	66.2900000000000063	33.7100000000000009	4	2017-04-23 17:04:36.491656	2017-04-23 17:05:05.817496
339	335	0	0	49896	6.33999999999999986	0	0	0	93.6599999999999966	6.33999999999999986	22	2017-04-23 17:04:36.496421	2017-04-23 17:05:05.820148
340	336	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.500992	2017-04-23 17:05:05.822738
341	337	0.599999999999999978	6.54999999999999982	140349	9.51999999999999957	0	0	0	83.9300000000000068	16.0700000000000003	12	2017-04-23 17:04:36.505424	2017-04-23 17:05:05.825235
343	339	0	0	20677	3.9700000000000002	0	0	0	96.0300000000000011	3.9700000000000002	26	2017-04-23 17:04:36.515909	2017-04-23 17:05:05.830411
344	340	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.521099	2017-04-23 17:05:05.833038
345	341	0	0	379795	11.0999999999999996	0	0	0	88.9000000000000057	11.0999999999999996	18	2017-04-23 17:04:36.526048	2017-04-23 17:05:05.835569
346	342	4.79999999999999982	9.82000000000000028	7747433	21.4100000000000001	0	0	0	68.769999999999996	31.2300000000000004	5	2017-04-23 17:04:36.53063	2017-04-23 17:05:05.838285
347	343	0	0	61227	7.13999999999999968	0	0	0	92.8599999999999994	7.13999999999999968	21	2017-04-23 17:04:36.535178	2017-04-23 17:05:05.840882
348	344	0.200000000000000011	3.27000000000000002	1894345	19.0300000000000011	0	0	0	77.7000000000000028	22.3000000000000007	10	2017-04-23 17:04:36.539467	2017-04-23 17:05:05.843349
349	345	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.544985	2017-04-23 17:05:05.845822
351	347	0	0	34866	4.75999999999999979	0	0	0	95.2399999999999949	4.75999999999999979	25	2017-04-23 17:04:36.554685	2017-04-23 17:05:05.850872
352	348	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.560011	2017-04-23 17:05:05.853688
353	349	0	0	415405	12.6899999999999995	0	0	0	87.3100000000000023	12.6899999999999995	16	2017-04-23 17:04:36.564597	2017-04-23 17:05:05.856208
354	350	7.90000000000000036	11.4499999999999993	871511	17.4499999999999993	0	0	0	71.0999999999999943	28.8999999999999986	7	2017-04-23 17:04:36.569268	2017-04-23 17:05:05.858602
355	351	0	0	1247	0.790000000000000036	0	0	0	99.2099999999999937	0.790000000000000036	30	2017-04-23 17:04:36.573677	2017-04-23 17:05:05.861206
356	352	0	0	706427	15.0700000000000003	0	0	0	84.9300000000000068	15.0700000000000003	14	2017-04-23 17:04:36.578469	2017-04-23 17:05:05.863674
357	353	10.6999999999999993	14.7300000000000004	769658	15.8599999999999994	0	0	0	69.4099999999999966	30.5899999999999999	6	2017-04-23 17:04:36.582948	2017-04-23 17:05:05.866252
359	355	0.599999999999999978	6.54999999999999982	311413	10.3100000000000005	0	0	0	83.1400000000000006	16.8599999999999994	11	2017-04-23 17:04:36.591841	2017-04-23 17:05:05.871682
360	356	0	0	15309	3.16999999999999993	0	0	0	96.8299999999999983	3.16999999999999993	27	2017-04-23 17:04:36.595969	2017-04-23 17:05:05.874081
361	357	43.2999999999999972	18	12501275	23	111151	5393575	59	0	100	1	2017-04-23 17:04:36.600713	2017-04-23 17:05:05.876527
322	318	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.390794	2017-04-23 17:05:05.878937
323	319	0.100000000000000006	1.6399999999999999	454958	13.4800000000000004	0	0	0	84.8799999999999955	15.1199999999999992	13	2017-04-23 17:04:36.420576	2017-04-23 17:05:05.88184
326	322	0	0	134217	8.72000000000000064	0	0	0	91.2800000000000011	8.72000000000000064	19	2017-04-23 17:04:36.434463	2017-04-23 17:05:05.884503
327	323	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.439391	2017-04-23 17:05:05.886947
325	321	0	0	677490	14.2799999999999994	0	0	0	85.7199999999999989	14.2799999999999994	15	2017-04-23 17:04:36.430055	2017-04-23 17:05:05.790902
324	320	0	0	12419	2.37999999999999989	0	0	0	97.6200000000000045	2.37999999999999989	28	2017-04-23 17:04:36.425703	2017-04-23 17:05:05.78796
342	338	0	0	412307	11.9000000000000004	0	0	0	88.0999999999999943	11.9000000000000004	17	2017-04-23 17:04:36.511122	2017-04-23 17:05:05.827688
350	346	0.100000000000000006	1.6399999999999999	8902715	22.2100000000000009	23538	943269	29.5	46.6499999999999986	53.3500000000000014	2	2017-04-23 17:04:36.549826	2017-04-23 17:05:05.848236
358	354	0	0	115745	7.92999999999999972	0	0	0	92.0699999999999932	7.92999999999999972	20	2017-04-23 17:04:36.58753	2017-04-23 17:05:05.86906
328	324	0	0	0	0	0	0	0	100	0	31	2017-04-23 17:04:36.443959	2017-04-23 17:05:05.889472
399	395	0.400000000000000022	4.91000000000000014	62123	7.13999999999999968	0	0	0	87.9500000000000028	12.0500000000000007	18	2017-04-30 09:39:35.140267	2017-04-30 09:40:14.705401
400	396	0	0	15688	3.16999999999999993	0	0	0	96.8299999999999983	3.16999999999999993	27	2017-04-30 09:39:35.144321	2017-04-30 09:40:14.707862
377	373	20	16.3599999999999994	13184324	22.2100000000000009	207139	2930672	52.4399999999999977	8.99000000000000021	91.0100000000000051	2	2017-04-30 09:39:35.043728	2017-04-30 15:43:56.153528
362	358	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:34.957942	2017-04-30 09:40:14.712836
369	365	0.400000000000000022	4.91000000000000014	0	0	0	0	0	95.0900000000000034	4.91000000000000014	25	2017-04-30 09:39:35.00404	2017-04-30 09:40:14.73134
381	377	0.900000000000000022	8.17999999999999972	143015	10.3100000000000005	18137	0	6.55999999999999961	74.9500000000000028	25.0500000000000007	8	2017-04-30 09:39:35.060811	2017-04-30 15:43:56.158449
371	367	0	0	10620	2.37999999999999989	0	0	0	97.6200000000000045	2.37999999999999989	28	2017-04-30 09:39:35.016544	2017-04-30 09:40:14.736654
372	368	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.021495	2017-04-30 09:40:14.739305
379	375	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.052035	2017-04-30 09:40:14.75733
380	376	0	0	440100	13.4800000000000004	0	0	0	86.519999999999996	13.4800000000000004	15	2017-04-30 09:39:35.056297	2017-04-30 09:40:14.760195
382	378	0	0	21005	3.9700000000000002	0	0	0	96.0300000000000011	3.9700000000000002	26	2017-04-30 09:39:35.065031	2017-04-30 09:40:14.765246
383	379	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.069749	2017-04-30 09:40:14.767904
384	380	0	0	439590	12.6899999999999995	0	0	0	87.3100000000000023	12.6899999999999995	17	2017-04-30 09:39:35.073881	2017-04-30 09:40:14.770366
385	381	0.100000000000000006	1.6399999999999999	260976	11.9000000000000004	0	0	0	86.4599999999999937	13.5399999999999991	14	2017-04-30 09:39:35.07809	2017-04-30 09:40:14.772776
390	386	0	0	38189	5.54999999999999982	0	0	0	94.4500000000000028	5.54999999999999982	24	2017-04-30 09:39:35.099007	2017-04-30 09:40:14.683715
391	387	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.103234	2017-04-30 09:40:14.686124
363	359	0.200000000000000011	3.27000000000000002	538560	15.0700000000000003	0	0	0	81.6599999999999966	18.3399999999999999	11	2017-04-30 09:39:34.970089	2017-04-30 09:40:14.715607
364	360	0.100000000000000006	1.6399999999999999	27366	4.75999999999999979	0	0	0	93.5999999999999943	6.40000000000000036	22	2017-04-30 09:39:34.980932	2017-04-30 09:40:14.71828
365	361	0	0	3922940	19.0300000000000011	0	0	0	80.9699999999999989	19.0300000000000011	10	2017-04-30 09:39:34.985619	2017-04-30 09:40:14.720919
366	362	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:34.990148	2017-04-30 09:40:14.723281
367	363	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:34.994432	2017-04-30 09:40:14.726059
373	369	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.026141	2017-04-30 09:40:14.7419
374	370	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.030669	2017-04-30 09:40:14.744449
375	371	0	0	7849	1.59000000000000008	0	0	0	98.4099999999999966	1.59000000000000008	29	2017-04-30 09:39:35.035289	2017-04-30 09:40:14.746824
376	372	0	0	42213	6.33999999999999986	0	0	0	93.6599999999999966	6.33999999999999986	23	2017-04-30 09:39:35.039584	2017-04-30 09:40:14.74972
378	374	0	0	67190	8.72000000000000064	0	0	0	91.2800000000000011	8.72000000000000064	21	2017-04-30 09:39:35.048004	2017-04-30 09:40:14.754696
401	397	43.3999999999999986	18	14604539	23	75385	5062680	52.4399999999999977	6.55999999999999961	93.4399999999999977	1	2017-04-30 09:39:35.148602	2017-04-30 15:43:55.878473
389	385	0.200000000000000011	3.27000000000000002	9812259	21.4100000000000001	22251	968930	19.6700000000000017	55.6499999999999986	44.3500000000000014	4	2017-04-30 09:39:35.094931	2017-04-30 15:43:56.089084
370	366	5.29999999999999982	11.4499999999999993	4585819	19.8299999999999983	51616	1908540	32.7800000000000011	35.9399999999999977	64.0600000000000023	3	2017-04-30 09:39:35.011371	2017-04-30 15:43:56.104577
368	364	2.39999999999999991	9.82000000000000028	1086034	16.6600000000000001	0	0	0	73.519999999999996	26.4800000000000004	7	2017-04-30 09:39:34.999409	2017-04-30 15:43:56.125068
386	382	10.3000000000000007	13.0899999999999999	8563838	20.620000000000001	0	0	0	66.2900000000000063	33.7100000000000009	5	2017-04-30 09:39:35.082483	2017-04-30 09:40:14.673538
387	383	0.599999999999999978	6.54999999999999982	2088945	18.2399999999999984	0	0	0	75.2099999999999937	24.7899999999999991	9	2017-04-30 09:39:35.086608	2017-04-30 09:40:14.676133
388	384	0	0	0	0	0	0	0	100	0	31	2017-04-30 09:39:35.090808	2017-04-30 09:40:14.678803
392	388	0	0	457963	14.2799999999999994	0	0	0	85.7199999999999989	14.2799999999999994	13	2017-04-30 09:39:35.10772	2017-04-30 09:40:14.688563
393	389	15.0999999999999996	14.7300000000000004	1107945	17.4499999999999993	0	0	0	67.8199999999999932	32.1799999999999997	6	2017-04-30 09:39:35.112373	2017-04-30 09:40:14.691193
394	390	0	0	1319	0.790000000000000036	0	0	0	99.2099999999999937	0.790000000000000036	30	2017-04-30 09:39:35.117195	2017-04-30 09:40:14.69365
395	391	0	0	711365	15.8599999999999994	0	0	0	84.1400000000000006	15.8599999999999994	12	2017-04-30 09:39:35.121895	2017-04-30 09:40:14.696054
396	392	0.400000000000000022	4.91000000000000014	64108	7.92999999999999972	0	0	0	87.1599999999999966	12.8399999999999999	16	2017-04-30 09:39:35.126555	2017-04-30 09:40:14.698428
397	393	0.100000000000000006	1.6399999999999999	80070	9.51999999999999957	0	0	0	88.8400000000000034	11.1600000000000001	19	2017-04-30 09:39:35.131297	2017-04-30 09:40:14.700699
398	394	0	0	177630	11.0999999999999996	0	0	0	88.9000000000000057	11.0999999999999996	20	2017-04-30 09:39:35.135883	2017-04-30 09:40:14.703108
408	404	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:38.986661	2017-05-06 07:20:03.882082
409	405	0.299999999999999989	6	1273723	18.3999999999999986	0	0	0	75.5999999999999943	24.3999999999999986	9	2017-05-06 07:19:38.990709	2017-05-06 07:20:03.884432
413	409	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:39.007723	2017-05-06 07:20:03.889232
414	410	0	0	0	0	192218	4776419	59	41	59	2	2017-05-06 07:19:39.012145	2017-05-06 07:20:03.891555
416	412	0.299999999999999989	6	144693	9.19999999999999929	0	0	0	84.7999999999999972	15.1999999999999993	14	2017-05-06 07:19:39.021415	2017-05-06 07:20:03.89393
418	414	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:39.030502	2017-05-06 07:20:03.896207
420	416	0	0	51876	3.83000000000000007	0	0	0	96.1700000000000017	3.83000000000000007	28	2017-05-06 07:19:39.039705	2017-05-06 07:20:03.898732
421	417	0	0	510171	13.8000000000000007	0	0	0	86.2000000000000028	13.8000000000000007	16	2017-05-06 07:19:39.044078	2017-05-06 07:20:03.901031
423	419	4.29999999999999982	12	9221726	20.6999999999999993	0	0	0	67.2999999999999972	32.7000000000000028	4	2017-05-06 07:19:39.053881	2017-05-06 07:20:03.903385
426	422	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:39.067143	2017-05-06 07:20:03.908028
427	423	0.200000000000000011	4	10625693	21.4699999999999989	0	874280	11.8000000000000007	62.7299999999999969	37.2700000000000031	3	2017-05-06 07:19:39.071437	2017-05-06 07:20:03.910412
403	399	0	0	71541036	23	0	0	0	77	23	11	2017-05-06 07:19:38.957966	2017-05-06 07:20:03.912726
406	402	0	0	34909	2.29999999999999982	0	0	0	97.7000000000000028	2.29999999999999982	30	2017-05-06 07:19:38.977307	2017-05-06 07:20:03.877028
407	403	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:38.982036	2017-05-06 07:20:03.879731
438	434	0	0	141541	8.42999999999999972	0	0	0	91.5699999999999932	8.42999999999999972	22	2017-05-06 07:19:39.120898	2017-05-06 07:20:03.965122
439	435	0	0	134256	7.66999999999999993	0	0	0	92.3299999999999983	7.66999999999999993	24	2017-05-06 07:19:39.125566	2017-05-06 07:20:03.967807
440	436	0	0	15864	0.770000000000000018	0	0	0	99.230000000000004	0.770000000000000018	32	2017-05-06 07:19:39.129909	2017-05-06 07:20:03.970203
441	437	41.1000000000000014	18	16364276	22.2300000000000004	61338	4551837	35.3999999999999986	24.370000000000001	75.6299999999999955	1	2017-05-06 07:19:39.134495	2017-05-06 07:20:03.972522
432	428	3.39999999999999991	10	1241732	17.629999999999999	0	0	0	72.3700000000000045	27.629999999999999	7	2017-05-06 07:19:39.094544	2017-05-06 07:20:03.87428
412	408	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:39.003331	2017-05-06 07:20:03.886935
425	421	0	0	79545	5.37000000000000011	0	0	0	94.6299999999999955	5.37000000000000011	25	2017-05-06 07:19:39.062922	2017-05-06 07:20:03.905721
402	398	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:38.939687	2017-05-06 07:20:03.914977
404	400	0.100000000000000006	2	592558	15.3300000000000001	0	0	0	82.6700000000000017	17.3299999999999983	12	2017-05-06 07:19:38.968369	2017-05-06 07:20:03.917344
405	401	0	0	450585	12.2699999999999996	0	0	0	87.730000000000004	12.2699999999999996	18	2017-05-06 07:19:38.972981	2017-05-06 07:20:03.919772
410	406	0.200000000000000011	4	0	0	0	0	0	96	4	27	2017-05-06 07:19:38.994894	2017-05-06 07:20:03.922554
411	407	0	0	409636	11.5	0	0	0	88.5	11.5	19	2017-05-06 07:19:38.999143	2017-05-06 07:20:03.925026
415	411	0	0	514901	14.5700000000000003	0	0	0	85.4300000000000068	14.5700000000000003	15	2017-05-06 07:19:39.016817	2017-05-06 07:20:03.927828
417	413	0	0	21228	1.53000000000000003	0	0	0	98.4699999999999989	1.53000000000000003	31	2017-05-06 07:19:39.025712	2017-05-06 07:20:03.930422
419	415	38.7999999999999972	16	285386	9.97000000000000064	0	0	0	74.0300000000000011	25.9699999999999989	8	2017-05-06 07:19:39.035199	2017-05-06 07:20:03.932935
422	418	0	0	366182	10.7300000000000004	0	0	0	89.269999999999996	10.7300000000000004	20	2017-05-06 07:19:39.049158	2017-05-06 07:20:03.935376
424	420	0.200000000000000011	4	2253779	19.1700000000000017	0	0	0	76.8299999999999983	23.1700000000000017	10	2017-05-06 07:19:39.058546	2017-05-06 07:20:03.937723
428	424	0	0	40755	3.06999999999999984	0	0	0	96.9300000000000068	3.06999999999999984	29	2017-05-06 07:19:39.075756	2017-05-06 07:20:03.939972
429	425	8.80000000000000071	14	916031	16.870000000000001	0	0	0	69.1299999999999955	30.870000000000001	5	2017-05-06 07:19:39.080818	2017-05-06 07:20:03.942504
430	426	0	0	0	0	0	0	0	100	0	33	2017-05-06 07:19:39.085623	2017-05-06 07:20:03.946343
431	427	0	0	489281	13.0299999999999994	0	0	0	86.9699999999999989	13.0299999999999994	17	2017-05-06 07:19:39.090063	2017-05-06 07:20:03.948906
433	429	0	0	714929	16.1000000000000014	0	0	0	83.9000000000000057	16.1000000000000014	13	2017-05-06 07:19:39.098979	2017-05-06 07:20:03.951419
434	430	0.100000000000000006	2	89288	6.12999999999999989	0	0	0	91.8700000000000045	8.13000000000000078	23	2017-05-06 07:19:39.103411	2017-05-06 07:20:03.953722
435	431	0	0	60606	4.59999999999999964	0	0	0	95.4000000000000057	4.59999999999999964	26	2017-05-06 07:19:39.107787	2017-05-06 07:20:03.956585
436	432	0.100000000000000006	2	125370	6.90000000000000036	0	0	0	91.0999999999999943	8.90000000000000036	21	2017-05-06 07:19:39.11224	2017-05-06 07:20:03.959508
437	433	1.89999999999999991	8	3642032	19.9299999999999997	0	0	0	72.0699999999999932	27.9299999999999997	6	2017-05-06 07:19:39.116562	2017-05-06 07:20:03.962604
\.


--
-- Name: mcountdown_rankings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('mcountdown_rankings_id_seq', 441, true);


--
-- Data for Name: mcountdown_votes; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY mcountdown_votes (id, date_d, artiste_id, song_id, mcountdown_votes, created_at, updated_at) FROM stdin;
1	2017-03-13	1	1	0	2017-03-12 16:03:01.470182	2017-03-12 16:03:01.470182
2	2017-03-13	2	2	3.89999999999999991	2017-03-12 16:03:01.508502	2017-03-12 16:03:01.508502
3	2017-03-13	3	3	0	2017-03-12 16:03:01.628458	2017-03-12 16:03:01.628458
4	2017-03-13	4	4	0	2017-03-12 16:03:01.672598	2017-03-12 16:03:01.672598
5	2017-03-13	5	5	0	2017-03-12 16:03:01.702719	2017-03-12 16:03:01.702719
6	2017-03-13	6	6	0	2017-03-12 16:03:01.723099	2017-03-12 16:03:01.723099
7	2017-03-13	7	7	0.100000000000000006	2017-03-12 16:03:01.747532	2017-03-12 16:03:01.747532
9	2017-03-13	9	9	0.100000000000000006	2017-03-12 16:03:01.782041	2017-03-12 16:03:01.782041
10	2017-03-13	10	10	0	2017-03-12 16:03:01.794548	2017-03-12 16:03:01.794548
11	2017-03-13	11	11	0.200000000000000011	2017-03-12 16:03:01.812898	2017-03-12 16:03:01.812898
12	2017-03-13	12	12	0	2017-03-12 16:03:01.832582	2017-03-12 16:03:01.832582
14	2017-03-13	14	14	0.100000000000000006	2017-03-12 16:03:01.888794	2017-03-12 16:03:01.888794
15	2017-03-13	15	15	0	2017-03-12 16:03:01.913728	2017-03-12 16:03:01.913728
16	2017-03-13	16	16	0	2017-03-12 16:03:01.928736	2017-03-12 16:03:01.928736
17	2017-03-13	17	17	0	2017-03-12 16:03:01.944758	2017-03-12 16:03:01.944758
18	2017-03-13	18	18	0	2017-03-12 16:03:01.963124	2017-03-12 16:03:01.963124
19	2017-03-13	19	19	0	2017-03-12 16:03:01.977152	2017-03-12 16:03:01.977152
20	2017-03-13	20	20	0	2017-03-12 16:03:01.990332	2017-03-12 16:03:01.990332
21	2017-03-13	21	21	0	2017-03-12 16:03:02.010676	2017-03-12 16:03:02.010676
22	2017-03-13	22	22	0	2017-03-12 16:03:02.027802	2017-03-12 16:03:02.027802
23	2017-03-13	23	23	0	2017-03-12 16:03:02.045549	2017-03-12 16:03:02.045549
24	2017-03-13	24	24	2.29999999999999982	2017-03-12 16:03:02.067107	2017-03-12 16:03:02.067107
25	2017-03-13	25	25	0	2017-03-12 16:03:02.088991	2017-03-12 16:03:02.088991
26	2017-03-13	26	26	0	2017-03-12 16:03:02.107454	2017-03-12 16:03:02.107454
27	2017-03-13	27	27	0	2017-03-12 16:03:02.130901	2017-03-12 16:03:02.130901
28	2017-03-13	28	28	0.100000000000000006	2017-03-12 16:03:02.169452	2017-03-12 16:03:02.169452
29	2017-03-13	29	29	0.100000000000000006	2017-03-12 16:03:02.196735	2017-03-12 16:03:02.196735
30	2017-03-13	30	30	0.400000000000000022	2017-03-12 16:03:02.212106	2017-03-12 16:03:02.212106
31	2017-03-13	31	31	0	2017-03-12 16:03:02.23052	2017-03-12 16:03:02.23052
32	2017-03-13	32	32	0	2017-03-12 16:03:02.247861	2017-03-12 16:03:02.247861
33	2017-03-13	33	33	0	2017-03-12 16:03:02.26042	2017-03-12 16:03:02.26042
35	2017-03-13	35	35	0	2017-03-12 16:03:02.299226	2017-03-12 16:03:02.299226
37	2017-03-13	37	37	0	2017-03-12 16:03:02.334014	2017-03-12 16:03:02.334014
38	2017-03-13	38	38	0.100000000000000006	2017-03-12 16:03:02.355463	2017-03-12 16:03:02.355463
39	2017-03-13	39	39	0	2017-03-12 16:03:02.366451	2017-03-12 16:03:02.366451
40	2017-03-13	40	40	0	2017-03-12 16:03:02.382318	2017-03-12 16:03:02.382318
8	2017-03-13	8	8	18.3000000000000007	2017-03-12 16:03:01.768153	2017-03-12 16:25:19.843814
13	2017-03-13	13	13	10	2017-03-12 16:03:01.861232	2017-03-12 16:25:19.876637
34	2017-03-13	34	34	34.7999999999999972	2017-03-12 16:03:02.283873	2017-03-12 16:25:20.006236
36	2017-03-13	36	36	29.3999999999999986	2017-03-12 16:03:02.316173	2017-03-12 16:25:20.020798
153	2017-03-18	2	2	2	2017-03-18 14:18:50.618406	2017-03-18 14:18:50.618406
154	2017-03-18	3	3	0	2017-03-18 14:20:06.372205	2017-03-18 14:20:06.372205
155	2017-03-18	4	4	0	2017-03-18 14:21:08.194319	2017-03-18 14:21:08.194319
157	2017-03-18	5	5	0	2017-03-18 14:44:45.666277	2017-03-18 14:44:45.666277
158	2017-03-18	6	6	0	2017-03-18 14:44:45.735983	2017-03-18 14:44:45.735983
159	2017-03-18	7	7	0	2017-03-18 14:44:45.770392	2017-03-18 14:44:45.770392
160	2017-03-18	8	8	7.90000000000000036	2017-03-18 14:44:45.801536	2017-03-18 14:44:45.801536
161	2017-03-18	41	120	0	2017-03-18 14:44:46.934459	2017-03-18 14:44:46.934459
162	2017-03-18	10	10	0	2017-03-18 14:44:46.97309	2017-03-18 14:44:46.97309
163	2017-03-18	11	11	0.100000000000000006	2017-03-18 14:44:47.025045	2017-03-18 14:44:47.025045
164	2017-03-18	12	12	0	2017-03-18 14:44:47.049409	2017-03-18 14:44:47.049409
165	2017-03-18	13	13	14.0999999999999996	2017-03-18 14:44:47.074192	2017-03-18 14:44:47.074192
166	2017-03-18	42	121	74.2000000000000028	2017-03-18 14:44:48.771173	2017-03-18 14:44:48.771173
167	2017-03-18	14	14	0.100000000000000006	2017-03-18 14:44:48.818516	2017-03-18 14:44:48.818516
168	2017-03-18	15	15	0	2017-03-18 14:44:48.888112	2017-03-18 14:44:48.888112
169	2017-03-18	16	16	0	2017-03-18 14:44:48.977195	2017-03-18 14:44:48.977195
170	2017-03-18	17	17	0	2017-03-18 14:44:49.024774	2017-03-18 14:44:49.024774
171	2017-03-18	19	19	0	2017-03-18 14:44:49.059912	2017-03-18 14:44:49.059912
172	2017-03-18	20	20	0	2017-03-18 14:44:49.104214	2017-03-18 14:44:49.104214
173	2017-03-18	21	21	0	2017-03-18 14:44:49.139603	2017-03-18 14:44:49.139603
174	2017-03-18	22	22	0	2017-03-18 14:44:49.174518	2017-03-18 14:44:49.174518
175	2017-03-18	23	23	0	2017-03-18 14:44:49.196908	2017-03-18 14:44:49.196908
176	2017-03-18	43	122	0	2017-03-18 14:44:49.992426	2017-03-18 14:44:49.992426
177	2017-03-18	24	24	1.30000000000000004	2017-03-18 14:44:50.023107	2017-03-18 14:44:50.023107
178	2017-03-18	25	25	0	2017-03-18 14:44:50.062069	2017-03-18 14:44:50.062069
179	2017-03-18	26	26	0	2017-03-18 14:44:50.090946	2017-03-18 14:44:50.090946
180	2017-03-18	27	27	0	2017-03-18 14:44:50.115954	2017-03-18 14:44:50.115954
181	2017-03-18	44	123	0	2017-03-18 14:44:50.916371	2017-03-18 14:44:50.916371
182	2017-03-18	29	29	0	2017-03-18 14:44:50.945177	2017-03-18 14:44:50.945177
183	2017-03-18	45	124	0	2017-03-18 14:44:51.836051	2017-03-18 14:44:51.836051
184	2017-03-18	30	30	0.100000000000000006	2017-03-18 14:44:51.889689	2017-03-18 14:44:51.889689
185	2017-03-18	31	31	0	2017-03-18 14:44:51.913754	2017-03-18 14:44:51.913754
186	2017-03-18	32	32	0	2017-03-18 14:44:51.969421	2017-03-18 14:44:51.969421
187	2017-03-18	46	125	0	2017-03-18 14:44:53.062396	2017-03-18 14:44:53.062396
188	2017-03-18	33	33	0	2017-03-18 14:44:53.111341	2017-03-18 14:44:53.111341
189	2017-03-18	35	35	0	2017-03-18 14:44:53.138099	2017-03-18 14:44:53.138099
190	2017-03-18	37	37	0	2017-03-18 14:44:53.183088	2017-03-18 14:44:53.183088
191	2017-03-18	38	38	0	2017-03-18 14:44:53.212149	2017-03-18 14:44:53.212149
192	2017-03-18	39	39	0	2017-03-18 14:44:53.254583	2017-03-18 14:44:53.254583
193	2017-03-18	40	40	0	2017-03-18 14:44:53.282502	2017-03-18 14:44:53.282502
194	2017-04-01	3	3	0	2017-04-01 08:25:11.099069	2017-04-01 08:25:11.099069
195	2017-04-01	47	126	0	2017-04-01 08:29:19.853684	2017-04-01 08:29:19.853684
196	2017-04-01	4	4	0	2017-04-01 08:29:19.902387	2017-04-01 08:29:19.902387
197	2017-04-01	5	5	0	2017-04-01 08:29:19.93793	2017-04-01 08:29:19.93793
198	2017-04-01	7	7	0	2017-04-01 08:29:19.96837	2017-04-01 08:29:19.96837
199	2017-04-01	48	127	4.40000000000000036	2017-04-01 08:29:19.991084	2017-04-01 08:29:19.991084
200	2017-04-01	41	120	0	2017-04-01 08:29:20.018408	2017-04-01 08:29:20.018408
201	2017-04-01	10	10	0	2017-04-01 08:29:20.044962	2017-04-01 08:29:20.044962
202	2017-04-01	12	12	0	2017-04-01 08:29:20.081841	2017-04-01 08:29:20.081841
203	2017-04-01	13	13	0.5	2017-04-01 08:29:20.107001	2017-04-01 08:29:20.107001
204	2017-04-01	49	128	2	2017-04-01 08:29:20.135784	2017-04-01 08:29:20.135784
205	2017-04-01	50	129	0	2017-04-01 08:29:20.158976	2017-04-01 08:29:20.158976
206	2017-04-01	42	121	36.8999999999999986	2017-04-01 08:29:20.185158	2017-04-01 08:29:20.185158
207	2017-04-01	14	14	0	2017-04-01 08:29:20.210471	2017-04-01 08:29:20.210471
208	2017-04-01	15	15	0	2017-04-01 08:29:20.233001	2017-04-01 08:29:20.233001
209	2017-04-01	16	16	0	2017-04-01 08:29:20.267636	2017-04-01 08:29:20.267636
210	2017-04-01	51	130	9.5	2017-04-01 08:29:20.301142	2017-04-01 08:29:20.301142
211	2017-04-01	17	17	0	2017-04-01 08:29:20.317434	2017-04-01 08:29:20.317434
212	2017-04-01	52	131	0	2017-04-01 08:29:20.348464	2017-04-01 08:29:20.348464
213	2017-04-01	19	19	0	2017-04-01 08:29:20.388978	2017-04-01 08:29:20.388978
214	2017-04-01	53	132	0	2017-04-01 08:29:20.427299	2017-04-01 08:29:20.427299
215	2017-04-01	23	23	0	2017-04-01 08:29:20.456572	2017-04-01 08:29:20.456572
216	2017-04-01	43	122	0	2017-04-01 08:29:20.496218	2017-04-01 08:29:20.496218
217	2017-04-01	54	133	0	2017-04-01 08:29:20.521867	2017-04-01 08:29:20.521867
218	2017-04-01	55	134	0	2017-04-01 08:29:20.555521	2017-04-01 08:29:20.555521
219	2017-04-01	24	24	0.5	2017-04-01 08:29:20.584309	2017-04-01 08:29:20.584309
220	2017-04-01	25	25	0	2017-04-01 08:29:20.617752	2017-04-01 08:29:20.617752
221	2017-04-01	56	135	45.6000000000000014	2017-04-01 08:29:20.651079	2017-04-01 08:29:20.651079
222	2017-04-01	44	123	0	2017-04-01 08:29:20.667032	2017-04-01 08:29:20.667032
223	2017-04-01	57	136	0	2017-04-01 08:29:20.694612	2017-04-01 08:29:20.694612
224	2017-04-01	58	137	0.400000000000000022	2017-04-01 08:29:20.732318	2017-04-01 08:29:20.732318
225	2017-04-01	29	29	0	2017-04-01 08:29:20.770628	2017-04-01 08:29:20.770628
226	2017-04-01	45	124	0	2017-04-01 08:29:20.798003	2017-04-01 08:29:20.798003
227	2017-04-01	32	32	0	2017-04-01 08:29:20.833231	2017-04-01 08:29:20.833231
228	2017-04-01	46	125	0	2017-04-01 08:29:20.857792	2017-04-01 08:29:20.857792
229	2017-04-01	33	33	0	2017-04-01 08:29:20.891933	2017-04-01 08:29:20.891933
230	2017-04-01	59	138	0	2017-04-01 08:29:20.926126	2017-04-01 08:29:20.926126
231	2017-04-01	38	139	0	2017-04-01 08:29:20.954283	2017-04-01 08:29:20.954283
232	2017-04-01	39	39	0	2017-04-01 08:29:20.986182	2017-04-01 08:29:20.986182
233	2017-04-01	40	40	0	2017-04-01 08:29:21.010923	2017-04-01 08:29:21.010923
234	2017-04-10	3	3	0	2017-04-09 16:23:32.131529	2017-04-09 16:23:32.131529
235	2017-04-10	47	126	0	2017-04-09 16:23:32.176217	2017-04-09 16:23:32.176217
236	2017-04-10	5	5	0	2017-04-09 16:23:32.194757	2017-04-09 16:23:32.194757
237	2017-04-10	7	7	0	2017-04-09 16:23:32.214813	2017-04-09 16:23:32.214813
238	2017-04-10	60	140	0	2017-04-09 16:23:33.070385	2017-04-09 16:23:33.070385
239	2017-04-10	48	127	3.5	2017-04-09 16:23:33.090537	2017-04-09 16:23:33.090537
240	2017-04-10	41	120	0	2017-04-09 16:23:33.111533	2017-04-09 16:23:33.111533
241	2017-04-10	11	141	0.599999999999999978	2017-04-09 16:23:33.797975	2017-04-09 16:23:33.797975
242	2017-04-10	61	142	0.400000000000000022	2017-04-09 16:23:34.651931	2017-04-09 16:23:34.651931
243	2017-04-10	13	13	0.400000000000000022	2017-04-09 16:23:34.672062	2017-04-09 16:23:34.672062
244	2017-04-10	49	128	5.20000000000000018	2017-04-09 16:23:34.692997	2017-04-09 16:23:34.692997
245	2017-04-10	50	129	0	2017-04-09 16:23:34.714645	2017-04-09 16:23:34.714645
246	2017-04-10	42	121	4.20000000000000018	2017-04-09 16:23:34.732586	2017-04-09 16:23:34.732586
247	2017-04-10	14	14	0	2017-04-09 16:23:34.751846	2017-04-09 16:23:34.751846
248	2017-04-10	51	130	6.79999999999999982	2017-04-09 16:23:34.771311	2017-04-09 16:23:34.771311
249	2017-04-10	62	143	0	2017-04-09 16:23:35.583067	2017-04-09 16:23:35.583067
250	2017-04-10	63	144	0	2017-04-09 16:23:36.499988	2017-04-09 16:23:36.499988
251	2017-04-10	52	131	0	2017-04-09 16:23:36.527128	2017-04-09 16:23:36.527128
252	2017-04-10	64	145	0.100000000000000006	2017-04-09 16:23:37.39365	2017-04-09 16:23:37.39365
253	2017-04-10	53	132	0	2017-04-09 16:23:37.42212	2017-04-09 16:23:37.42212
254	2017-04-10	65	146	0	2017-04-09 16:23:38.215862	2017-04-09 16:23:38.215862
255	2017-04-10	43	122	0	2017-04-09 16:23:38.242734	2017-04-09 16:23:38.242734
256	2017-04-10	54	133	0	2017-04-09 16:23:38.265017	2017-04-09 16:23:38.265017
257	2017-04-10	55	134	0	2017-04-09 16:23:38.298271	2017-04-09 16:23:38.298271
258	2017-04-10	24	24	0.900000000000000022	2017-04-09 16:23:38.321306	2017-04-09 16:23:38.321306
259	2017-04-10	56	135	33.5	2017-04-09 16:23:38.344024	2017-04-09 16:23:38.344024
260	2017-04-10	44	123	0	2017-04-09 16:23:38.373609	2017-04-09 16:23:38.373609
261	2017-04-10	66	147	0.800000000000000044	2017-04-09 16:23:39.347774	2017-04-09 16:23:39.347774
262	2017-04-10	57	136	0	2017-04-09 16:23:39.375466	2017-04-09 16:23:39.375466
263	2017-04-10	58	137	0.100000000000000006	2017-04-09 16:23:39.421414	2017-04-09 16:23:39.421414
264	2017-04-10	29	29	0	2017-04-09 16:23:39.447343	2017-04-09 16:23:39.447343
265	2017-04-10	67	148	0	2017-04-09 16:23:40.279037	2017-04-09 16:23:40.279037
266	2017-04-10	68	149	0	2017-04-09 16:23:41.139215	2017-04-09 16:23:41.139215
267	2017-04-10	45	124	0	2017-04-09 16:23:41.172852	2017-04-09 16:23:41.172852
268	2017-04-10	32	32	0	2017-04-09 16:23:41.20144	2017-04-09 16:23:41.20144
269	2017-04-10	46	125	0	2017-04-09 16:23:41.235864	2017-04-09 16:23:41.235864
270	2017-04-10	69	150	2	2017-04-09 16:23:42.128495	2017-04-09 16:23:42.128495
271	2017-04-10	59	138	0	2017-04-09 16:23:42.154704	2017-04-09 16:23:42.154704
272	2017-04-10	38	139	0	2017-04-09 16:23:42.177687	2017-04-09 16:23:42.177687
273	2017-04-10	70	151	41.2999999999999972	2017-04-09 16:23:43.011519	2017-04-09 16:23:43.011519
274	2017-04-15	47	126	0	2017-04-14 16:12:58.713686	2017-04-14 16:12:58.713686
275	2017-04-15	5	5	0	2017-04-14 16:12:58.777353	2017-04-14 16:12:58.777353
276	2017-04-15	7	7	0	2017-04-14 16:12:58.796577	2017-04-14 16:12:58.796577
277	2017-04-15	71	152	0	2017-04-14 16:13:00.668468	2017-04-14 16:13:00.668468
278	2017-04-15	41	120	0	2017-04-14 16:13:00.692996	2017-04-14 16:13:00.692996
279	2017-04-15	11	141	0.599999999999999978	2017-04-14 16:13:00.733118	2017-04-14 16:13:00.733118
280	2017-04-15	61	142	0.5	2017-04-14 16:13:00.760241	2017-04-14 16:13:00.760241
281	2017-04-15	72	153	15.5999999999999996	2017-04-14 16:13:02.102525	2017-04-14 16:13:02.102525
282	2017-04-15	73	154	0	2017-04-14 16:13:03.931417	2017-04-14 16:13:03.931417
283	2017-04-15	50	129	0	2017-04-14 16:13:03.957794	2017-04-14 16:13:03.957794
284	2017-04-15	14	155	0.100000000000000006	2017-04-14 16:13:04.8448	2017-04-14 16:13:04.8448
285	2017-04-15	62	143	0	2017-04-14 16:13:04.864161	2017-04-14 16:13:04.864161
286	2017-04-15	63	144	0	2017-04-14 16:13:04.898183	2017-04-14 16:13:04.898183
287	2017-04-15	74	156	0	2017-04-14 16:13:06.3858	2017-04-14 16:13:06.3858
288	2017-04-15	52	131	0	2017-04-14 16:13:06.413542	2017-04-14 16:13:06.413542
289	2017-04-15	64	145	0	2017-04-14 16:13:06.437892	2017-04-14 16:13:06.437892
290	2017-04-15	75	157	0	2017-04-14 16:13:08.21394	2017-04-14 16:13:08.21394
291	2017-04-15	76	158	15.5999999999999996	2017-04-14 16:13:10.085432	2017-04-14 16:13:10.085432
292	2017-04-15	65	146	0	2017-04-14 16:13:10.120689	2017-04-14 16:13:10.120689
293	2017-04-15	43	122	0	2017-04-14 16:13:10.146013	2017-04-14 16:13:10.146013
294	2017-04-15	54	133	0	2017-04-14 16:13:10.166215	2017-04-14 16:13:10.166215
295	2017-04-15	55	134	0	2017-04-14 16:13:10.200832	2017-04-14 16:13:10.200832
296	2017-04-15	77	159	0	2017-04-14 16:13:11.917721	2017-04-14 16:13:11.917721
297	2017-04-15	56	135	8.19999999999999929	2017-04-14 16:13:11.945583	2017-04-14 16:13:11.945583
298	2017-04-15	44	123	0	2017-04-14 16:13:11.971125	2017-04-14 16:13:11.971125
299	2017-04-15	66	147	0.400000000000000022	2017-04-14 16:13:11.99342	2017-04-14 16:13:11.99342
300	2017-04-15	57	136	0	2017-04-14 16:13:12.022513	2017-04-14 16:13:12.022513
301	2017-04-15	58	137	0.299999999999999989	2017-04-14 16:13:12.04605	2017-04-14 16:13:12.04605
302	2017-04-15	29	29	0	2017-04-14 16:13:12.089869	2017-04-14 16:13:12.089869
303	2017-04-15	78	160	0	2017-04-14 16:13:13.762948	2017-04-14 16:13:13.762948
304	2017-04-15	68	149	0	2017-04-14 16:13:13.789195	2017-04-14 16:13:13.789195
305	2017-04-15	45	124	0	2017-04-14 16:13:13.813948	2017-04-14 16:13:13.813948
306	2017-04-15	32	32	0	2017-04-14 16:13:13.859593	2017-04-14 16:13:13.859593
307	2017-04-15	46	125	0	2017-04-14 16:13:13.908104	2017-04-14 16:13:13.908104
308	2017-04-15	69	150	4.5	2017-04-14 16:13:13.933605	2017-04-14 16:13:13.933605
309	2017-04-15	59	138	0	2017-04-14 16:13:13.98191	2017-04-14 16:13:13.98191
310	2017-04-15	79	161	0.100000000000000006	2017-04-14 16:13:15.290715	2017-04-14 16:13:15.290715
311	2017-04-15	38	139	0.100000000000000006	2017-04-14 16:13:15.310681	2017-04-14 16:13:15.310681
312	2017-04-15	80	162	0.100000000000000006	2017-04-14 16:13:16.934783	2017-04-14 16:13:16.934783
313	2017-04-15	70	151	53.7999999999999972	2017-04-14 16:13:16.961066	2017-04-14 16:13:16.961066
314	2017-04-24	47	126	0	2017-04-23 16:47:14.599898	2017-04-23 16:47:14.599898
315	2017-04-24	81	163	0.100000000000000006	2017-04-23 16:48:07.240257	2017-04-23 16:48:07.240257
316	2017-04-24	82	164	0	2017-04-23 16:48:08.736382	2017-04-23 16:48:08.736382
317	2017-04-24	7	7	0	2017-04-23 16:48:08.762172	2017-04-23 16:48:08.762172
318	2017-04-24	83	165	0	2017-04-23 16:48:10.879009	2017-04-23 16:48:10.879009
319	2017-04-24	71	152	0	2017-04-23 16:48:10.89681	2017-04-23 16:48:10.89681
320	2017-04-24	41	120	0	2017-04-23 16:48:10.925334	2017-04-23 16:48:10.925334
321	2017-04-24	84	166	1.10000000000000009	2017-04-23 16:48:13.035674	2017-04-23 16:48:13.035674
322	2017-04-24	61	142	0.299999999999999989	2017-04-23 16:48:13.060645	2017-04-23 16:48:13.060645
323	2017-04-24	72	153	20.6000000000000014	2017-04-23 16:48:13.083275	2017-04-23 16:48:13.083275
324	2017-04-24	73	154	0	2017-04-23 16:48:13.10497	2017-04-23 16:48:13.10497
325	2017-04-24	85	167	0.599999999999999978	2017-04-23 16:48:15.494887	2017-04-23 16:48:15.494887
326	2017-04-24	50	129	0	2017-04-23 16:48:15.522929	2017-04-23 16:48:15.522929
327	2017-04-24	62	143	0	2017-04-23 16:48:15.5451	2017-04-23 16:48:15.5451
328	2017-04-24	74	156	0	2017-04-23 16:48:15.575277	2017-04-23 16:48:15.575277
329	2017-04-24	75	157	0	2017-04-23 16:48:15.601661	2017-04-23 16:48:15.601661
330	2017-04-24	86	168	8.90000000000000036	2017-04-23 16:48:17.327423	2017-04-23 16:48:17.327423
331	2017-04-24	87	169	0	2017-04-23 16:48:18.862398	2017-04-23 16:48:18.862398
332	2017-04-24	65	146	0	2017-04-23 16:48:18.881454	2017-04-23 16:48:18.881454
333	2017-04-24	88	170	0.599999999999999978	2017-04-23 16:48:21.026919	2017-04-23 16:48:21.026919
334	2017-04-24	89	171	0	2017-04-23 16:48:23.177155	2017-04-23 16:48:23.177155
335	2017-04-24	54	133	0	2017-04-23 16:48:23.204568	2017-04-23 16:48:23.204568
336	2017-04-24	55	134	0	2017-04-23 16:48:23.231717	2017-04-23 16:48:23.231717
337	2017-04-24	77	159	0	2017-04-23 16:48:23.264252	2017-04-23 16:48:23.264252
338	2017-04-24	56	135	4.79999999999999982	2017-04-23 16:48:23.288708	2017-04-23 16:48:23.288708
339	2017-04-24	44	123	0	2017-04-23 16:48:23.31686	2017-04-23 16:48:23.31686
340	2017-04-24	66	147	0.200000000000000011	2017-04-23 16:48:23.344243	2017-04-23 16:48:23.344243
341	2017-04-24	57	136	0	2017-04-23 16:48:23.377743	2017-04-23 16:48:23.377743
342	2017-04-24	58	137	0.100000000000000006	2017-04-23 16:48:23.408838	2017-04-23 16:48:23.408838
343	2017-04-24	78	160	0	2017-04-23 16:48:23.433161	2017-04-23 16:48:23.433161
344	2017-04-24	68	149	0	2017-04-23 16:48:23.466892	2017-04-23 16:48:23.466892
345	2017-04-24	45	124	0	2017-04-23 16:48:23.49912	2017-04-23 16:48:23.49912
346	2017-04-24	30	172	7.90000000000000036	2017-04-23 16:48:24.706909	2017-04-23 16:48:24.706909
347	2017-04-24	32	32	0	2017-04-23 16:48:24.734228	2017-04-23 16:48:24.734228
348	2017-04-24	46	125	0	2017-04-23 16:48:24.762599	2017-04-23 16:48:24.762599
349	2017-04-24	69	150	10.6999999999999993	2017-04-23 16:48:24.782857	2017-04-23 16:48:24.782857
350	2017-04-24	90	173	0	2017-04-23 16:48:27.163442	2017-04-23 16:48:27.163442
351	2017-04-24	79	161	0.599999999999999978	2017-04-23 16:48:27.195267	2017-04-23 16:48:27.195267
352	2017-04-24	80	162	0	2017-04-23 16:48:27.222677	2017-04-23 16:48:27.222677
353	2017-04-24	70	151	43.2999999999999972	2017-04-23 16:48:27.253498	2017-04-23 16:48:27.253498
354	2017-04-30	47	126	0	2017-04-30 07:55:06.750985	2017-04-30 07:55:06.750985
355	2017-04-30	81	163	0.200000000000000011	2017-04-30 07:55:06.809357	2017-04-30 07:55:06.809357
356	2017-04-30	82	164	0.100000000000000006	2017-04-30 07:55:06.851198	2017-04-30 07:55:06.851198
357	2017-04-30	83	174	0	2017-04-30 07:55:08.079201	2017-04-30 07:55:08.079201
358	2017-04-30	71	152	0	2017-04-30 07:55:08.1099	2017-04-30 07:55:08.1099
359	2017-04-30	41	120	0	2017-04-30 07:55:08.129787	2017-04-30 07:55:08.129787
360	2017-04-30	84	166	2.39999999999999991	2017-04-30 07:55:08.153285	2017-04-30 07:55:08.153285
361	2017-04-30	61	142	0.400000000000000022	2017-04-30 07:55:08.175491	2017-04-30 07:55:08.175491
362	2017-04-30	72	153	5.29999999999999982	2017-04-30 07:55:08.20559	2017-04-30 07:55:08.20559
363	2017-04-30	91	175	0	2017-04-30 07:55:09.878539	2017-04-30 07:55:09.878539
364	2017-04-30	50	129	0	2017-04-30 07:55:09.910039	2017-04-30 07:55:09.910039
365	2017-04-30	62	143	0	2017-04-30 07:55:09.931405	2017-04-30 07:55:09.931405
366	2017-04-30	74	156	0	2017-04-30 07:55:09.970329	2017-04-30 07:55:09.970329
367	2017-04-30	92	176	0	2017-04-30 07:55:11.207588	2017-04-30 07:55:11.207588
368	2017-04-30	75	157	0	2017-04-30 07:55:11.238602	2017-04-30 07:55:11.238602
369	2017-04-30	86	168	20	2017-04-30 07:55:11.261787	2017-04-30 07:55:11.261787
370	2017-04-30	87	169	0	2017-04-30 07:55:11.296394	2017-04-30 07:55:11.296394
371	2017-04-30	65	146	0	2017-04-30 07:55:11.321413	2017-04-30 07:55:11.321413
372	2017-04-30	93	177	0	2017-04-30 07:55:12.98155	2017-04-30 07:55:12.98155
373	2017-04-30	88	170	0.900000000000000022	2017-04-30 07:55:13.010505	2017-04-30 07:55:13.010505
374	2017-04-30	54	133	0	2017-04-30 07:55:13.035058	2017-04-30 07:55:13.035058
375	2017-04-30	55	134	0	2017-04-30 07:55:13.067869	2017-04-30 07:55:13.067869
376	2017-04-30	77	159	0	2017-04-30 07:55:13.090538	2017-04-30 07:55:13.090538
377	2017-04-30	94	178	0.100000000000000006	2017-04-30 07:55:15.135335	2017-04-30 07:55:15.135335
378	2017-04-30	56	135	10.3000000000000007	2017-04-30 07:55:15.1669	2017-04-30 07:55:15.1669
379	2017-04-30	66	147	0.599999999999999978	2017-04-30 07:55:15.197224	2017-04-30 07:55:15.197224
380	2017-04-30	57	136	0	2017-04-30 07:55:15.237766	2017-04-30 07:55:15.237766
381	2017-04-30	58	137	0.200000000000000011	2017-04-30 07:55:15.269519	2017-04-30 07:55:15.269519
382	2017-04-30	78	160	0	2017-04-30 07:55:15.294546	2017-04-30 07:55:15.294546
383	2017-04-30	68	149	0	2017-04-30 07:55:15.326597	2017-04-30 07:55:15.326597
384	2017-04-30	45	124	0	2017-04-30 07:55:15.364426	2017-04-30 07:55:15.364426
385	2017-04-30	30	172	15.0999999999999996	2017-04-30 07:55:15.392044	2017-04-30 07:55:15.392044
386	2017-04-30	32	32	0	2017-04-30 07:55:15.416598	2017-04-30 07:55:15.416598
387	2017-04-30	46	125	0	2017-04-30 07:55:15.448751	2017-04-30 07:55:15.448751
388	2017-04-30	95	179	0.400000000000000022	2017-04-30 07:55:17.291156	2017-04-30 07:55:17.291156
389	2017-04-30	59	180	0.100000000000000006	2017-04-30 07:55:18.211777	2017-04-30 07:55:18.211777
390	2017-04-30	90	173	0	2017-04-30 07:55:18.245496	2017-04-30 07:55:18.245496
391	2017-04-30	96	181	0.400000000000000022	2017-04-30 07:55:20.660832	2017-04-30 07:55:20.660832
392	2017-04-30	80	162	0	2017-04-30 07:55:20.686795	2017-04-30 07:55:20.686795
393	2017-04-30	70	151	43.3999999999999986	2017-04-30 07:55:20.711142	2017-04-30 07:55:20.711142
394	2017-05-06	47	126	0	2017-05-06 06:05:39.46549	2017-05-06 06:05:39.46549
395	2017-05-06	97	182	0	2017-05-06 06:05:41.229575	2017-05-06 06:05:41.229575
396	2017-05-06	81	163	0.100000000000000006	2017-05-06 06:05:41.254955	2017-05-06 06:05:41.254955
397	2017-05-06	98	183	0	2017-05-06 06:05:42.731068	2017-05-06 06:05:42.731068
398	2017-05-06	82	164	0	2017-05-06 06:05:42.761858	2017-05-06 06:05:42.761858
399	2017-05-06	83	174	0	2017-05-06 06:05:42.78765	2017-05-06 06:05:42.78765
400	2017-05-06	71	152	0	2017-05-06 06:05:42.825955	2017-05-06 06:05:42.825955
401	2017-05-06	84	166	0.299999999999999989	2017-05-06 06:05:42.85296	2017-05-06 06:05:42.85296
402	2017-05-06	61	142	0.200000000000000011	2017-05-06 06:05:42.883232	2017-05-06 06:05:42.883232
403	2017-05-06	99	184	0	2017-05-06 06:05:44.57204	2017-05-06 06:05:44.57204
404	2017-05-06	62	143	0	2017-05-06 06:05:44.601934	2017-05-06 06:05:44.601934
405	2017-05-06	74	156	0	2017-05-06 06:05:44.62814	2017-05-06 06:05:44.62814
406	2017-05-06	92	176	0	2017-05-06 06:05:44.665546	2017-05-06 06:05:44.665546
407	2017-05-06	93	177	0	2017-05-06 06:05:44.698495	2017-05-06 06:05:44.698495
408	2017-05-06	88	170	0.299999999999999989	2017-05-06 06:05:44.72415	2017-05-06 06:05:44.72415
409	2017-05-06	54	133	0	2017-05-06 06:05:44.75909	2017-05-06 06:05:44.75909
410	2017-05-06	55	134	0	2017-05-06 06:05:44.795041	2017-05-06 06:05:44.795041
411	2017-05-06	24	185	38.7999999999999972	2017-05-06 06:05:45.795953	2017-05-06 06:05:45.795953
412	2017-05-06	100	186	0	2017-05-06 06:05:47.646471	2017-05-06 06:05:47.646471
413	2017-05-06	77	159	0	2017-05-06 06:05:47.674217	2017-05-06 06:05:47.674217
414	2017-05-06	94	178	0	2017-05-06 06:05:47.699317	2017-05-06 06:05:47.699317
415	2017-05-06	56	135	4.29999999999999982	2017-05-06 06:05:47.723464	2017-05-06 06:05:47.723464
416	2017-05-06	66	147	0.200000000000000011	2017-05-06 06:05:47.752206	2017-05-06 06:05:47.752206
417	2017-05-06	101	187	0	2017-05-06 06:05:49.486748	2017-05-06 06:05:49.486748
418	2017-05-06	57	136	0	2017-05-06 06:05:49.513915	2017-05-06 06:05:49.513915
419	2017-05-06	58	137	0.200000000000000011	2017-05-06 06:05:49.539198	2017-05-06 06:05:49.539198
420	2017-05-06	78	160	0	2017-05-06 06:05:49.56593	2017-05-06 06:05:49.56593
421	2017-05-06	102	188	8.80000000000000071	2017-05-06 06:05:51.942992	2017-05-06 06:05:51.942992
422	2017-05-06	68	149	0	2017-05-06 06:05:51.971506	2017-05-06 06:05:51.971506
423	2017-05-06	45	124	0	2017-05-06 06:05:51.996558	2017-05-06 06:05:51.996558
424	2017-05-06	30	172	3.39999999999999991	2017-05-06 06:05:52.045499	2017-05-06 06:05:52.045499
425	2017-05-06	46	125	0	2017-05-06 06:05:52.082756	2017-05-06 06:05:52.082756
426	2017-05-06	95	179	0.100000000000000006	2017-05-06 06:05:52.117954	2017-05-06 06:05:52.117954
427	2017-05-06	103	189	0	2017-05-06 06:05:53.486251	2017-05-06 06:05:53.486251
428	2017-05-06	59	180	0.100000000000000006	2017-05-06 06:05:53.524901	2017-05-06 06:05:53.524901
429	2017-05-06	104	190	1.89999999999999991	2017-05-06 06:05:55.324168	2017-05-06 06:05:55.324168
430	2017-05-06	90	173	0	2017-05-06 06:05:55.34175	2017-05-06 06:05:55.34175
431	2017-05-06	96	181	0	2017-05-06 06:05:55.371716	2017-05-06 06:05:55.371716
432	2017-05-06	80	162	0	2017-05-06 06:05:55.406635	2017-05-06 06:05:55.406635
433	2017-05-06	70	151	41.1000000000000014	2017-05-06 06:05:55.438071	2017-05-06 06:05:55.438071
434	2017-11-18	105	191	0.100000000000000006	2017-11-18 08:24:00.452514	2017-11-18 08:24:00.452514
435	2017-11-18	106	192	1.10000000000000009	2017-11-18 08:24:01.93924	2017-11-18 08:24:01.93924
436	2017-11-18	107	193	0	2017-11-18 08:24:03.477509	2017-11-18 08:24:03.477509
437	2017-11-18	108	194	0	2017-11-18 08:24:05.611592	2017-11-18 08:24:05.611592
438	2017-11-18	10	195	0	2017-11-18 08:24:06.529051	2017-11-18 08:24:06.529051
439	2017-11-18	109	196	0	2017-11-18 08:24:08.858374	2017-11-18 08:24:08.858374
440	2017-11-18	72	197	3.79999999999999982	2017-11-18 08:24:09.500447	2017-11-18 08:24:09.500447
441	2017-11-18	110	198	0	2017-11-18 08:24:11.076604	2017-11-18 08:24:11.076604
442	2017-11-18	111	199	0	2017-11-18 08:24:13.192391	2017-11-18 08:24:13.192391
443	2017-11-18	14	200	0.100000000000000006	2017-11-18 08:24:13.857228	2017-11-18 08:24:13.857228
444	2017-11-18	112	201	0	2017-11-18 08:24:15.435728	2017-11-18 08:24:15.435728
445	2017-11-18	113	202	0	2017-11-18 08:24:16.976032	2017-11-18 08:24:16.976032
446	2017-11-18	114	203	0	2017-11-18 08:24:20.929576	2017-11-18 08:24:20.929576
447	2017-11-18	115	204	0	2017-11-18 08:24:22.505342	2017-11-18 08:24:22.505342
448	2017-11-18	116	205	0.299999999999999989	2017-11-18 08:24:23.733886	2017-11-18 08:24:23.733886
449	2017-11-18	117	206	0	2017-11-18 08:24:25.269824	2017-11-18 08:24:25.269824
450	2017-11-18	118	207	0	2017-11-18 08:24:27.163709	2017-11-18 08:24:27.163709
451	2017-11-18	119	208	0.200000000000000011	2017-11-18 08:24:28.732427	2017-11-18 08:24:28.732427
452	2017-11-18	120	209	0	2017-11-18 08:24:30.186478	2017-11-18 08:24:30.186478
453	2017-11-18	54	210	0	2017-11-18 08:24:31.10856	2017-11-18 08:24:31.10856
454	2017-11-18	121	211	0	2017-11-18 08:24:32.645046	2017-11-18 08:24:32.645046
455	2017-11-18	24	212	1.60000000000000009	2017-11-18 08:24:33.570058	2017-11-18 08:24:33.570058
456	2017-11-18	26	213	0	2017-11-18 08:24:34.793893	2017-11-18 08:24:34.793893
457	2017-11-18	77	214	0	2017-11-18 08:24:35.715034	2017-11-18 08:24:35.715034
459	2017-11-18	122	216	0.599999999999999978	2017-11-18 08:24:38.791472	2017-11-18 08:24:38.791472
460	2017-11-18	123	217	0	2017-11-18 08:24:40.319441	2017-11-18 08:24:40.319441
461	2017-11-18	124	218	0	2017-11-18 08:24:41.550585	2017-11-18 08:24:41.550585
462	2017-11-18	125	219	0	2017-11-18 08:24:43.098503	2017-11-18 08:24:43.098503
465	2017-11-18	30	222	0.299999999999999989	2017-11-18 08:24:47.221352	2017-11-18 08:24:47.221352
466	2017-11-18	128	223	0	2017-11-18 08:24:48.398091	2017-11-18 08:24:48.398091
467	2017-11-18	129	224	0	2017-11-18 08:24:50.47394	2017-11-18 08:24:50.47394
468	2017-11-18	130	225	0	2017-11-18 08:24:51.962397	2017-11-18 08:24:51.962397
469	2017-11-18	36	226	6.5	2017-11-18 08:24:53.174095	2017-11-18 08:24:53.174095
470	2017-11-18	37	227	0	2017-11-18 08:24:53.84135	2017-11-18 08:24:53.84135
472	2017-11-18	39	229	0	2017-11-18 08:24:55.306669	2017-11-18 08:24:55.306669
463	2017-11-18	126	220	2.29999999999999982	2017-11-18 08:24:44.580329	2017-11-18 09:01:04.999278
464	2017-11-18	127	221	10	2017-11-18 08:24:46.469438	2017-11-18 09:01:05.012791
458	2017-11-18	56	215	47.1000000000000014	2017-11-18 08:24:36.637628	2017-11-18 09:01:04.901993
471	2017-11-18	38	228	0.299999999999999989	2017-11-18 08:24:54.684331	2017-11-18 09:01:05.153184
473	2017-11-18	131	230	25.8000000000000007	2017-11-18 08:24:56.923223	2017-11-18 09:01:05.213585
\.


--
-- Name: mcountdown_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('mcountdown_votes_id_seq', 473, true);


--
-- Data for Name: nomination_cycles; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY nomination_cycles (id, award_id, start_date, end_date, period_type, created_at, updated_at, ranking_present) FROM stdin;
1	1	2017-03-10	2017-03-13	week	2017-03-12 13:25:51.617896	2017-04-30 08:42:51.961751	t
2	1	2017-03-17	2017-03-20	week	2017-03-18 06:39:34.388214	2017-04-30 08:42:51.97532	t
3	1	2017-03-31	2017-04-03	week	2017-04-01 08:04:29.897573	2017-04-30 08:42:51.981666	t
4	1	2017-04-07	2017-04-10	week	2017-04-09 16:23:32.033444	2017-04-30 08:42:51.988222	t
5	1	2017-04-14	2017-04-17	week	2017-04-14 16:12:58.589409	2017-04-30 08:42:51.995066	t
6	1	2017-04-21	2017-04-24	week	2017-04-23 16:47:14.478547	2017-04-30 08:42:52.018712	t
7	1	2017-04-28	2017-05-01	week	2017-04-30 07:55:06.620396	2017-04-30 09:39:35.155722	t
8	1	2017-05-05	2017-05-08	week	2017-05-06 06:05:39.362406	2017-05-06 07:19:39.141908	t
9	1	2017-11-17	2017-11-20	week	2017-11-18 08:23:57.256911	2017-11-18 08:23:57.256911	f
\.


--
-- Name: nomination_cycles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('nomination_cycles_id_seq', 9, true);


--
-- Data for Name: nominees; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY nominees (id, cycle_id, artiste_id, song_id, created_at, updated_at) FROM stdin;
1	1	1	1	2017-03-13 15:17:56.611655	2017-03-13 15:17:56.611655
2	1	2	2	2017-03-13 15:17:56.646599	2017-03-13 15:17:56.646599
3	1	3	3	2017-03-13 15:17:56.656702	2017-03-13 15:17:56.656702
4	1	4	4	2017-03-13 15:17:56.662818	2017-03-13 15:17:56.662818
5	1	5	5	2017-03-13 15:17:56.675966	2017-03-13 15:17:56.675966
6	1	6	6	2017-03-13 15:17:56.689296	2017-03-13 15:17:56.689296
7	1	7	7	2017-03-13 15:17:56.705746	2017-03-13 15:17:56.705746
8	1	9	9	2017-03-13 15:17:56.710655	2017-03-13 15:17:56.710655
9	1	10	10	2017-03-13 15:17:56.716709	2017-03-13 15:17:56.716709
10	1	11	11	2017-03-13 15:17:56.72241	2017-03-13 15:17:56.72241
11	1	12	12	2017-03-13 15:17:56.729037	2017-03-13 15:17:56.729037
12	1	14	14	2017-03-13 15:17:56.733325	2017-03-13 15:17:56.733325
13	1	15	15	2017-03-13 15:17:56.737928	2017-03-13 15:17:56.737928
14	1	16	16	2017-03-13 15:17:56.746248	2017-03-13 15:17:56.746248
15	1	17	17	2017-03-13 15:17:56.75259	2017-03-13 15:17:56.75259
16	1	18	18	2017-03-13 15:17:56.758438	2017-03-13 15:17:56.758438
17	1	19	19	2017-03-13 15:17:56.764098	2017-03-13 15:17:56.764098
18	1	20	20	2017-03-13 15:17:56.769521	2017-03-13 15:17:56.769521
19	1	21	21	2017-03-13 15:17:56.775694	2017-03-13 15:17:56.775694
20	1	22	22	2017-03-13 15:17:56.780901	2017-03-13 15:17:56.780901
21	1	23	23	2017-03-13 15:17:56.789656	2017-03-13 15:17:56.789656
22	1	24	24	2017-03-13 15:17:56.796466	2017-03-13 15:17:56.796466
23	1	25	25	2017-03-13 15:17:56.800863	2017-03-13 15:17:56.800863
24	1	26	26	2017-03-13 15:17:56.805731	2017-03-13 15:17:56.805731
25	1	27	27	2017-03-13 15:17:56.813856	2017-03-13 15:17:56.813856
26	1	28	28	2017-03-13 15:17:56.818206	2017-03-13 15:17:56.818206
27	1	29	29	2017-03-13 15:17:56.823097	2017-03-13 15:17:56.823097
28	1	30	30	2017-03-13 15:17:56.827533	2017-03-13 15:17:56.827533
29	1	31	31	2017-03-13 15:17:56.833429	2017-03-13 15:17:56.833429
30	1	32	32	2017-03-13 15:17:56.839771	2017-03-13 15:17:56.839771
31	1	33	33	2017-03-13 15:17:56.845177	2017-03-13 15:17:56.845177
32	1	35	35	2017-03-13 15:17:56.851118	2017-03-13 15:17:56.851118
33	1	37	37	2017-03-13 15:17:56.858599	2017-03-13 15:17:56.858599
34	1	38	38	2017-03-13 15:17:56.865825	2017-03-13 15:17:56.865825
35	1	39	39	2017-03-13 15:17:56.870653	2017-03-13 15:17:56.870653
36	1	40	40	2017-03-13 15:17:56.878735	2017-03-13 15:17:56.878735
37	1	8	8	2017-03-13 15:17:56.883816	2017-03-13 15:17:56.883816
38	1	13	13	2017-03-13 15:17:56.888756	2017-03-13 15:17:56.888756
39	1	34	34	2017-03-13 15:17:56.893405	2017-03-13 15:17:56.893405
40	1	36	36	2017-03-13 15:17:56.898073	2017-03-13 15:17:56.898073
157	2	2	2	2017-03-18 14:18:50.679113	2017-03-18 14:18:50.679113
158	2	3	3	2017-03-18 14:20:07.302935	2017-03-18 14:20:07.302935
159	2	4	4	2017-03-18 14:21:09.552956	2017-03-18 14:21:09.552956
161	2	5	5	2017-03-18 14:44:45.715762	2017-03-18 14:44:45.715762
162	2	6	6	2017-03-18 14:44:45.749823	2017-03-18 14:44:45.749823
163	2	7	7	2017-03-18 14:44:45.784274	2017-03-18 14:44:45.784274
164	2	8	8	2017-03-18 14:44:45.810817	2017-03-18 14:44:45.810817
165	2	41	120	2017-03-18 14:44:46.951129	2017-03-18 14:44:46.951129
166	2	10	10	2017-03-18 14:44:46.980762	2017-03-18 14:44:46.980762
167	2	11	11	2017-03-18 14:44:47.032833	2017-03-18 14:44:47.032833
168	2	12	12	2017-03-18 14:44:47.057058	2017-03-18 14:44:47.057058
169	2	13	13	2017-03-18 14:44:47.085855	2017-03-18 14:44:47.085855
170	2	42	121	2017-03-18 14:44:48.781581	2017-03-18 14:44:48.781581
171	2	14	14	2017-03-18 14:44:48.836727	2017-03-18 14:44:48.836727
172	2	15	15	2017-03-18 14:44:48.948973	2017-03-18 14:44:48.948973
173	2	16	16	2017-03-18 14:44:48.990986	2017-03-18 14:44:48.990986
174	2	17	17	2017-03-18 14:44:49.03951	2017-03-18 14:44:49.03951
175	2	19	19	2017-03-18 14:44:49.077205	2017-03-18 14:44:49.077205
176	2	20	20	2017-03-18 14:44:49.11461	2017-03-18 14:44:49.11461
177	2	21	21	2017-03-18 14:44:49.15131	2017-03-18 14:44:49.15131
178	2	22	22	2017-03-18 14:44:49.182532	2017-03-18 14:44:49.182532
179	2	23	23	2017-03-18 14:44:49.211027	2017-03-18 14:44:49.211027
180	2	43	122	2017-03-18 14:44:50.000286	2017-03-18 14:44:50.000286
181	2	24	24	2017-03-18 14:44:50.034677	2017-03-18 14:44:50.034677
182	2	25	25	2017-03-18 14:44:50.07571	2017-03-18 14:44:50.07571
183	2	26	26	2017-03-18 14:44:50.10273	2017-03-18 14:44:50.10273
184	2	27	27	2017-03-18 14:44:50.130274	2017-03-18 14:44:50.130274
185	2	44	123	2017-03-18 14:44:50.924919	2017-03-18 14:44:50.924919
186	2	29	29	2017-03-18 14:44:50.954078	2017-03-18 14:44:50.954078
187	2	45	124	2017-03-18 14:44:51.844741	2017-03-18 14:44:51.844741
188	2	30	30	2017-03-18 14:44:51.897414	2017-03-18 14:44:51.897414
189	2	31	31	2017-03-18 14:44:51.921711	2017-03-18 14:44:51.921711
190	2	32	32	2017-03-18 14:44:51.985068	2017-03-18 14:44:51.985068
191	2	46	125	2017-03-18 14:44:53.068889	2017-03-18 14:44:53.068889
192	2	33	33	2017-03-18 14:44:53.119276	2017-03-18 14:44:53.119276
193	2	35	35	2017-03-18 14:44:53.151883	2017-03-18 14:44:53.151883
194	2	37	37	2017-03-18 14:44:53.195574	2017-03-18 14:44:53.195574
195	2	38	38	2017-03-18 14:44:53.224175	2017-03-18 14:44:53.224175
196	2	39	39	2017-03-18 14:44:53.267128	2017-03-18 14:44:53.267128
197	2	40	40	2017-03-18 14:44:53.29156	2017-03-18 14:44:53.29156
198	3	3	3	2017-04-01 08:28:41.55011	2017-04-01 08:28:41.55011
199	3	47	126	2017-04-01 08:29:19.880535	2017-04-01 08:29:19.880535
200	3	4	4	2017-04-01 08:29:19.911336	2017-04-01 08:29:19.911336
201	3	5	5	2017-04-01 08:29:19.951123	2017-04-01 08:29:19.951123
202	3	7	7	2017-04-01 08:29:19.980561	2017-04-01 08:29:19.980561
203	3	48	127	2017-04-01 08:29:19.997462	2017-04-01 08:29:19.997462
204	3	41	120	2017-04-01 08:29:20.029731	2017-04-01 08:29:20.029731
205	3	10	10	2017-04-01 08:29:20.051974	2017-04-01 08:29:20.051974
206	3	12	12	2017-04-01 08:29:20.097382	2017-04-01 08:29:20.097382
207	3	13	13	2017-04-01 08:29:20.118772	2017-04-01 08:29:20.118772
208	3	49	128	2017-04-01 08:29:20.146035	2017-04-01 08:29:20.146035
209	3	50	129	2017-04-01 08:29:20.169443	2017-04-01 08:29:20.169443
210	3	42	121	2017-04-01 08:29:20.191678	2017-04-01 08:29:20.191678
211	3	14	14	2017-04-01 08:29:20.221042	2017-04-01 08:29:20.221042
212	3	15	15	2017-04-01 08:29:20.245921	2017-04-01 08:29:20.245921
213	3	16	16	2017-04-01 08:29:20.285228	2017-04-01 08:29:20.285228
214	3	51	130	2017-04-01 08:29:20.30736	2017-04-01 08:29:20.30736
215	3	17	17	2017-04-01 08:29:20.334604	2017-04-01 08:29:20.334604
216	3	52	131	2017-04-01 08:29:20.362232	2017-04-01 08:29:20.362232
217	3	19	19	2017-04-01 08:29:20.406399	2017-04-01 08:29:20.406399
218	3	53	132	2017-04-01 08:29:20.439755	2017-04-01 08:29:20.439755
219	3	23	23	2017-04-01 08:29:20.466158	2017-04-01 08:29:20.466158
220	3	43	122	2017-04-01 08:29:20.512409	2017-04-01 08:29:20.512409
221	3	54	133	2017-04-01 08:29:20.53502	2017-04-01 08:29:20.53502
222	3	55	134	2017-04-01 08:29:20.571496	2017-04-01 08:29:20.571496
223	3	24	24	2017-04-01 08:29:20.590298	2017-04-01 08:29:20.590298
224	3	25	25	2017-04-01 08:29:20.63004	2017-04-01 08:29:20.63004
225	3	56	135	2017-04-01 08:29:20.657738	2017-04-01 08:29:20.657738
226	3	44	123	2017-04-01 08:29:20.679789	2017-04-01 08:29:20.679789
227	3	57	136	2017-04-01 08:29:20.706191	2017-04-01 08:29:20.706191
228	3	58	137	2017-04-01 08:29:20.743421	2017-04-01 08:29:20.743421
229	3	29	29	2017-04-01 08:29:20.783675	2017-04-01 08:29:20.783675
230	3	45	124	2017-04-01 08:29:20.808883	2017-04-01 08:29:20.808883
231	3	32	32	2017-04-01 08:29:20.841687	2017-04-01 08:29:20.841687
232	3	46	125	2017-04-01 08:29:20.87822	2017-04-01 08:29:20.87822
233	3	33	33	2017-04-01 08:29:20.900602	2017-04-01 08:29:20.900602
234	3	59	138	2017-04-01 08:29:20.936391	2017-04-01 08:29:20.936391
235	3	38	139	2017-04-01 08:29:20.96496	2017-04-01 08:29:20.96496
236	3	39	39	2017-04-01 08:29:20.997849	2017-04-01 08:29:20.997849
237	3	40	40	2017-04-01 08:29:21.022344	2017-04-01 08:29:21.022344
238	4	3	3	2017-04-09 16:23:32.166063	2017-04-09 16:23:32.166063
239	4	47	126	2017-04-09 16:23:32.18554	2017-04-09 16:23:32.18554
240	4	5	5	2017-04-09 16:23:32.203796	2017-04-09 16:23:32.203796
241	4	7	7	2017-04-09 16:23:32.225856	2017-04-09 16:23:32.225856
242	4	60	140	2017-04-09 16:23:33.081148	2017-04-09 16:23:33.081148
243	4	48	127	2017-04-09 16:23:33.098966	2017-04-09 16:23:33.098966
244	4	41	120	2017-04-09 16:23:33.119834	2017-04-09 16:23:33.119834
245	4	11	141	2017-04-09 16:23:33.8068	2017-04-09 16:23:33.8068
246	4	61	142	2017-04-09 16:23:34.661638	2017-04-09 16:23:34.661638
247	4	13	13	2017-04-09 16:23:34.683724	2017-04-09 16:23:34.683724
248	4	49	128	2017-04-09 16:23:34.701903	2017-04-09 16:23:34.701903
249	4	50	129	2017-04-09 16:23:34.723519	2017-04-09 16:23:34.723519
250	4	42	121	2017-04-09 16:23:34.741133	2017-04-09 16:23:34.741133
251	4	14	14	2017-04-09 16:23:34.760432	2017-04-09 16:23:34.760432
252	4	51	130	2017-04-09 16:23:34.780268	2017-04-09 16:23:34.780268
253	4	62	143	2017-04-09 16:23:35.592358	2017-04-09 16:23:35.592358
254	4	63	144	2017-04-09 16:23:36.508979	2017-04-09 16:23:36.508979
255	4	52	131	2017-04-09 16:23:36.537797	2017-04-09 16:23:36.537797
256	4	64	145	2017-04-09 16:23:37.402715	2017-04-09 16:23:37.402715
257	4	53	132	2017-04-09 16:23:37.432597	2017-04-09 16:23:37.432597
258	4	65	146	2017-04-09 16:23:38.224859	2017-04-09 16:23:38.224859
259	4	43	122	2017-04-09 16:23:38.252676	2017-04-09 16:23:38.252676
260	4	54	133	2017-04-09 16:23:38.272874	2017-04-09 16:23:38.272874
261	4	55	134	2017-04-09 16:23:38.308786	2017-04-09 16:23:38.308786
262	4	24	24	2017-04-09 16:23:38.334991	2017-04-09 16:23:38.334991
263	4	56	135	2017-04-09 16:23:38.36282	2017-04-09 16:23:38.36282
264	4	44	123	2017-04-09 16:23:38.385878	2017-04-09 16:23:38.385878
265	4	66	147	2017-04-09 16:23:39.356624	2017-04-09 16:23:39.356624
266	4	57	136	2017-04-09 16:23:39.394453	2017-04-09 16:23:39.394453
267	4	58	137	2017-04-09 16:23:39.434565	2017-04-09 16:23:39.434565
268	4	29	29	2017-04-09 16:23:39.455831	2017-04-09 16:23:39.455831
269	4	67	148	2017-04-09 16:23:40.286955	2017-04-09 16:23:40.286955
270	4	68	149	2017-04-09 16:23:41.148635	2017-04-09 16:23:41.148635
271	4	45	124	2017-04-09 16:23:41.18907	2017-04-09 16:23:41.18907
272	4	32	32	2017-04-09 16:23:41.224318	2017-04-09 16:23:41.224318
273	4	46	125	2017-04-09 16:23:41.247589	2017-04-09 16:23:41.247589
274	4	69	150	2017-04-09 16:23:42.137782	2017-04-09 16:23:42.137782
275	4	59	138	2017-04-09 16:23:42.165658	2017-04-09 16:23:42.165658
276	4	38	139	2017-04-09 16:23:42.185271	2017-04-09 16:23:42.185271
277	4	70	151	2017-04-09 16:23:43.019613	2017-04-09 16:23:43.019613
278	5	47	126	2017-04-14 16:12:58.762726	2017-04-14 16:12:58.762726
279	5	5	5	2017-04-14 16:12:58.786804	2017-04-14 16:12:58.786804
280	5	7	7	2017-04-14 16:12:58.815285	2017-04-14 16:12:58.815285
281	5	71	152	2017-04-14 16:13:00.68029	2017-04-14 16:13:00.68029
282	5	41	120	2017-04-14 16:13:00.72127	2017-04-14 16:13:00.72127
283	5	11	141	2017-04-14 16:13:00.749044	2017-04-14 16:13:00.749044
284	5	61	142	2017-04-14 16:13:00.770161	2017-04-14 16:13:00.770161
285	5	72	153	2017-04-14 16:13:02.110789	2017-04-14 16:13:02.110789
286	5	73	154	2017-04-14 16:13:03.940124	2017-04-14 16:13:03.940124
287	5	50	129	2017-04-14 16:13:03.97014	2017-04-14 16:13:03.97014
288	5	14	155	2017-04-14 16:13:04.854009	2017-04-14 16:13:04.854009
289	5	62	143	2017-04-14 16:13:04.884482	2017-04-14 16:13:04.884482
290	5	63	144	2017-04-14 16:13:04.90709	2017-04-14 16:13:04.90709
291	5	74	156	2017-04-14 16:13:06.394849	2017-04-14 16:13:06.394849
292	5	52	131	2017-04-14 16:13:06.424756	2017-04-14 16:13:06.424756
293	5	64	145	2017-04-14 16:13:06.448581	2017-04-14 16:13:06.448581
294	5	75	157	2017-04-14 16:13:08.22326	2017-04-14 16:13:08.22326
295	5	76	158	2017-04-14 16:13:10.094277	2017-04-14 16:13:10.094277
296	5	65	146	2017-04-14 16:13:10.133163	2017-04-14 16:13:10.133163
297	5	43	122	2017-04-14 16:13:10.156781	2017-04-14 16:13:10.156781
298	5	54	133	2017-04-14 16:13:10.187653	2017-04-14 16:13:10.187653
299	5	55	134	2017-04-14 16:13:10.210893	2017-04-14 16:13:10.210893
300	5	77	159	2017-04-14 16:13:11.927163	2017-04-14 16:13:11.927163
301	5	56	135	2017-04-14 16:13:11.956335	2017-04-14 16:13:11.956335
302	5	44	123	2017-04-14 16:13:11.979306	2017-04-14 16:13:11.979306
303	5	66	147	2017-04-14 16:13:12.001635	2017-04-14 16:13:12.001635
304	5	57	136	2017-04-14 16:13:12.032484	2017-04-14 16:13:12.032484
305	5	58	137	2017-04-14 16:13:12.062861	2017-04-14 16:13:12.062861
306	5	29	29	2017-04-14 16:13:12.099632	2017-04-14 16:13:12.099632
307	5	78	160	2017-04-14 16:13:13.772154	2017-04-14 16:13:13.772154
308	5	68	149	2017-04-14 16:13:13.800919	2017-04-14 16:13:13.800919
309	5	45	124	2017-04-14 16:13:13.844434	2017-04-14 16:13:13.844434
310	5	32	32	2017-04-14 16:13:13.880266	2017-04-14 16:13:13.880266
311	5	46	125	2017-04-14 16:13:13.920206	2017-04-14 16:13:13.920206
312	5	69	150	2017-04-14 16:13:13.96155	2017-04-14 16:13:13.96155
313	5	59	138	2017-04-14 16:13:14.010868	2017-04-14 16:13:14.010868
314	5	79	161	2017-04-14 16:13:15.300816	2017-04-14 16:13:15.300816
315	5	38	139	2017-04-14 16:13:15.329654	2017-04-14 16:13:15.329654
316	5	80	162	2017-04-14 16:13:16.943481	2017-04-14 16:13:16.943481
317	5	70	151	2017-04-14 16:13:16.973857	2017-04-14 16:13:16.973857
318	6	47	126	2017-04-23 16:47:14.638681	2017-04-23 16:47:14.638681
319	6	81	163	2017-04-23 16:48:07.260883	2017-04-23 16:48:07.260883
320	6	82	164	2017-04-23 16:48:08.745421	2017-04-23 16:48:08.745421
321	6	7	7	2017-04-23 16:48:08.776696	2017-04-23 16:48:08.776696
322	6	83	165	2017-04-23 16:48:10.887258	2017-04-23 16:48:10.887258
323	6	71	152	2017-04-23 16:48:10.914675	2017-04-23 16:48:10.914675
324	6	41	120	2017-04-23 16:48:10.937074	2017-04-23 16:48:10.937074
325	6	84	166	2017-04-23 16:48:13.044158	2017-04-23 16:48:13.044158
326	6	61	142	2017-04-23 16:48:13.071226	2017-04-23 16:48:13.071226
327	6	72	153	2017-04-23 16:48:13.095473	2017-04-23 16:48:13.095473
328	6	73	154	2017-04-23 16:48:13.116994	2017-04-23 16:48:13.116994
329	6	85	167	2017-04-23 16:48:15.504182	2017-04-23 16:48:15.504182
330	6	50	129	2017-04-23 16:48:15.532377	2017-04-23 16:48:15.532377
331	6	62	143	2017-04-23 16:48:15.55329	2017-04-23 16:48:15.55329
332	6	74	156	2017-04-23 16:48:15.585838	2017-04-23 16:48:15.585838
333	6	75	157	2017-04-23 16:48:15.610149	2017-04-23 16:48:15.610149
334	6	86	168	2017-04-23 16:48:17.335246	2017-04-23 16:48:17.335246
335	6	87	169	2017-04-23 16:48:18.871754	2017-04-23 16:48:18.871754
336	6	65	146	2017-04-23 16:48:18.900677	2017-04-23 16:48:18.900677
337	6	88	170	2017-04-23 16:48:21.037621	2017-04-23 16:48:21.037621
338	6	89	171	2017-04-23 16:48:23.186914	2017-04-23 16:48:23.186914
339	6	54	133	2017-04-23 16:48:23.217047	2017-04-23 16:48:23.217047
340	6	55	134	2017-04-23 16:48:23.252982	2017-04-23 16:48:23.252982
341	6	77	159	2017-04-23 16:48:23.275516	2017-04-23 16:48:23.275516
342	6	56	135	2017-04-23 16:48:23.299743	2017-04-23 16:48:23.299743
343	6	44	123	2017-04-23 16:48:23.330559	2017-04-23 16:48:23.330559
344	6	66	147	2017-04-23 16:48:23.36179	2017-04-23 16:48:23.36179
345	6	57	136	2017-04-23 16:48:23.390522	2017-04-23 16:48:23.390522
346	6	58	137	2017-04-23 16:48:23.420381	2017-04-23 16:48:23.420381
347	6	78	160	2017-04-23 16:48:23.446223	2017-04-23 16:48:23.446223
348	6	68	149	2017-04-23 16:48:23.48739	2017-04-23 16:48:23.48739
349	6	45	124	2017-04-23 16:48:23.524765	2017-04-23 16:48:23.524765
350	6	30	172	2017-04-23 16:48:24.715969	2017-04-23 16:48:24.715969
351	6	32	32	2017-04-23 16:48:24.745878	2017-04-23 16:48:24.745878
352	6	46	125	2017-04-23 16:48:24.772361	2017-04-23 16:48:24.772361
353	6	69	150	2017-04-23 16:48:24.802664	2017-04-23 16:48:24.802664
354	6	90	173	2017-04-23 16:48:27.174027	2017-04-23 16:48:27.174027
355	6	79	161	2017-04-23 16:48:27.208369	2017-04-23 16:48:27.208369
356	6	80	162	2017-04-23 16:48:27.232988	2017-04-23 16:48:27.232988
357	6	70	151	2017-04-23 16:48:27.264664	2017-04-23 16:48:27.264664
358	7	47	126	2017-04-30 07:55:06.797242	2017-04-30 07:55:06.797242
359	7	81	163	2017-04-30 07:55:06.839647	2017-04-30 07:55:06.839647
360	7	82	164	2017-04-30 07:55:06.863111	2017-04-30 07:55:06.863111
361	7	83	174	2017-04-30 07:55:08.088168	2017-04-30 07:55:08.088168
362	7	71	152	2017-04-30 07:55:08.119504	2017-04-30 07:55:08.119504
363	7	41	120	2017-04-30 07:55:08.139558	2017-04-30 07:55:08.139558
364	7	84	166	2017-04-30 07:55:08.161379	2017-04-30 07:55:08.161379
365	7	61	142	2017-04-30 07:55:08.18405	2017-04-30 07:55:08.18405
366	7	72	153	2017-04-30 07:55:08.216762	2017-04-30 07:55:08.216762
367	7	91	175	2017-04-30 07:55:09.889444	2017-04-30 07:55:09.889444
368	7	50	129	2017-04-30 07:55:09.921273	2017-04-30 07:55:09.921273
369	7	62	143	2017-04-30 07:55:09.947121	2017-04-30 07:55:09.947121
370	7	74	156	2017-04-30 07:55:09.982593	2017-04-30 07:55:09.982593
371	7	92	176	2017-04-30 07:55:11.217023	2017-04-30 07:55:11.217023
372	7	75	157	2017-04-30 07:55:11.24859	2017-04-30 07:55:11.24859
373	7	86	168	2017-04-30 07:55:11.28398	2017-04-30 07:55:11.28398
374	7	87	169	2017-04-30 07:55:11.310608	2017-04-30 07:55:11.310608
375	7	65	146	2017-04-30 07:55:11.338541	2017-04-30 07:55:11.338541
376	7	93	177	2017-04-30 07:55:12.990366	2017-04-30 07:55:12.990366
377	7	88	170	2017-04-30 07:55:13.022265	2017-04-30 07:55:13.022265
378	7	54	133	2017-04-30 07:55:13.043247	2017-04-30 07:55:13.043247
379	7	55	134	2017-04-30 07:55:13.077135	2017-04-30 07:55:13.077135
380	7	77	159	2017-04-30 07:55:13.104457	2017-04-30 07:55:13.104457
381	7	94	178	2017-04-30 07:55:15.144519	2017-04-30 07:55:15.144519
382	7	56	135	2017-04-30 07:55:15.187914	2017-04-30 07:55:15.187914
383	7	66	147	2017-04-30 07:55:15.223664	2017-04-30 07:55:15.223664
384	7	57	136	2017-04-30 07:55:15.246052	2017-04-30 07:55:15.246052
385	7	58	137	2017-04-30 07:55:15.280685	2017-04-30 07:55:15.280685
386	7	78	160	2017-04-30 07:55:15.304657	2017-04-30 07:55:15.304657
387	7	68	149	2017-04-30 07:55:15.336754	2017-04-30 07:55:15.336754
388	7	45	124	2017-04-30 07:55:15.373891	2017-04-30 07:55:15.373891
389	7	30	172	2017-04-30 07:55:15.40316	2017-04-30 07:55:15.40316
390	7	32	32	2017-04-30 07:55:15.435076	2017-04-30 07:55:15.435076
391	7	46	125	2017-04-30 07:55:15.458141	2017-04-30 07:55:15.458141
392	7	95	179	2017-04-30 07:55:17.300396	2017-04-30 07:55:17.300396
393	7	59	180	2017-04-30 07:55:18.221489	2017-04-30 07:55:18.221489
394	7	90	173	2017-04-30 07:55:18.264707	2017-04-30 07:55:18.264707
395	7	96	181	2017-04-30 07:55:20.668826	2017-04-30 07:55:20.668826
396	7	80	162	2017-04-30 07:55:20.697956	2017-04-30 07:55:20.697956
397	7	70	151	2017-04-30 07:55:20.724009	2017-04-30 07:55:20.724009
398	8	47	126	2017-05-06 06:05:39.51773	2017-05-06 06:05:39.51773
399	8	97	182	2017-05-06 06:05:41.239801	2017-05-06 06:05:41.239801
400	8	81	163	2017-05-06 06:05:41.263508	2017-05-06 06:05:41.263508
401	8	98	183	2017-05-06 06:05:42.742645	2017-05-06 06:05:42.742645
402	8	82	164	2017-05-06 06:05:42.773309	2017-05-06 06:05:42.773309
403	8	83	174	2017-05-06 06:05:42.813742	2017-05-06 06:05:42.813742
404	8	71	152	2017-05-06 06:05:42.842756	2017-05-06 06:05:42.842756
405	8	84	166	2017-05-06 06:05:42.861849	2017-05-06 06:05:42.861849
406	8	61	142	2017-05-06 06:05:42.893487	2017-05-06 06:05:42.893487
407	8	99	184	2017-05-06 06:05:44.581442	2017-05-06 06:05:44.581442
408	8	62	143	2017-05-06 06:05:44.612327	2017-05-06 06:05:44.612327
409	8	74	156	2017-05-06 06:05:44.651868	2017-05-06 06:05:44.651868
410	8	92	176	2017-05-06 06:05:44.673942	2017-05-06 06:05:44.673942
411	8	93	177	2017-05-06 06:05:44.708154	2017-05-06 06:05:44.708154
412	8	88	170	2017-05-06 06:05:44.74767	2017-05-06 06:05:44.74767
413	8	54	133	2017-05-06 06:05:44.77123	2017-05-06 06:05:44.77123
414	8	55	134	2017-05-06 06:05:44.811878	2017-05-06 06:05:44.811878
415	8	24	185	2017-05-06 06:05:45.815208	2017-05-06 06:05:45.815208
416	8	100	186	2017-05-06 06:05:47.655574	2017-05-06 06:05:47.655574
417	8	77	159	2017-05-06 06:05:47.685609	2017-05-06 06:05:47.685609
418	8	94	178	2017-05-06 06:05:47.712671	2017-05-06 06:05:47.712671
419	8	56	135	2017-05-06 06:05:47.740512	2017-05-06 06:05:47.740512
420	8	66	147	2017-05-06 06:05:47.765104	2017-05-06 06:05:47.765104
421	8	101	187	2017-05-06 06:05:49.495457	2017-05-06 06:05:49.495457
422	8	57	136	2017-05-06 06:05:49.524748	2017-05-06 06:05:49.524748
423	8	58	137	2017-05-06 06:05:49.554938	2017-05-06 06:05:49.554938
424	8	78	160	2017-05-06 06:05:49.593683	2017-05-06 06:05:49.593683
425	8	102	188	2017-05-06 06:05:51.951373	2017-05-06 06:05:51.951373
426	8	68	149	2017-05-06 06:05:51.982483	2017-05-06 06:05:51.982483
427	8	45	124	2017-05-06 06:05:52.026894	2017-05-06 06:05:52.026894
428	8	30	172	2017-05-06 06:05:52.072774	2017-05-06 06:05:52.072774
429	8	46	125	2017-05-06 06:05:52.094853	2017-05-06 06:05:52.094853
430	8	95	179	2017-05-06 06:05:52.128977	2017-05-06 06:05:52.128977
431	8	103	189	2017-05-06 06:05:53.509164	2017-05-06 06:05:53.509164
432	8	59	180	2017-05-06 06:05:53.544637	2017-05-06 06:05:53.544637
433	8	104	190	2017-05-06 06:05:55.332746	2017-05-06 06:05:55.332746
434	8	90	173	2017-05-06 06:05:55.359736	2017-05-06 06:05:55.359736
435	8	96	181	2017-05-06 06:05:55.386849	2017-05-06 06:05:55.386849
436	8	80	162	2017-05-06 06:05:55.427624	2017-05-06 06:05:55.427624
437	8	70	151	2017-05-06 06:05:55.450467	2017-05-06 06:05:55.450467
438	9	105	191	2017-11-18 08:24:00.479253	2017-11-18 08:24:00.479253
439	9	106	192	2017-11-18 08:24:01.950618	2017-11-18 08:24:01.950618
440	9	107	193	2017-11-18 08:24:03.486861	2017-11-18 08:24:03.486861
441	9	108	194	2017-11-18 08:24:05.620447	2017-11-18 08:24:05.620447
442	9	10	195	2017-11-18 08:24:06.538526	2017-11-18 08:24:06.538526
443	9	109	196	2017-11-18 08:24:08.86751	2017-11-18 08:24:08.86751
444	9	72	197	2017-11-18 08:24:09.509705	2017-11-18 08:24:09.509705
445	9	110	198	2017-11-18 08:24:11.085253	2017-11-18 08:24:11.085253
446	9	111	199	2017-11-18 08:24:13.20098	2017-11-18 08:24:13.20098
447	9	14	200	2017-11-18 08:24:13.865606	2017-11-18 08:24:13.865606
448	9	112	201	2017-11-18 08:24:15.444167	2017-11-18 08:24:15.444167
449	9	113	202	2017-11-18 08:24:16.985559	2017-11-18 08:24:16.985559
450	9	114	203	2017-11-18 08:24:20.939046	2017-11-18 08:24:20.939046
451	9	115	204	2017-11-18 08:24:22.51398	2017-11-18 08:24:22.51398
452	9	116	205	2017-11-18 08:24:23.74339	2017-11-18 08:24:23.74339
453	9	117	206	2017-11-18 08:24:25.278459	2017-11-18 08:24:25.278459
454	9	118	207	2017-11-18 08:24:27.1733	2017-11-18 08:24:27.1733
455	9	119	208	2017-11-18 08:24:28.741425	2017-11-18 08:24:28.741425
456	9	120	209	2017-11-18 08:24:30.195592	2017-11-18 08:24:30.195592
457	9	54	210	2017-11-18 08:24:31.117306	2017-11-18 08:24:31.117306
458	9	121	211	2017-11-18 08:24:32.654123	2017-11-18 08:24:32.654123
459	9	24	212	2017-11-18 08:24:33.579827	2017-11-18 08:24:33.579827
460	9	26	213	2017-11-18 08:24:34.803859	2017-11-18 08:24:34.803859
461	9	77	214	2017-11-18 08:24:35.73666	2017-11-18 08:24:35.73666
462	9	56	215	2017-11-18 08:24:36.646322	2017-11-18 08:24:36.646322
463	9	122	216	2017-11-18 08:24:38.800696	2017-11-18 08:24:38.800696
464	9	123	217	2017-11-18 08:24:40.344789	2017-11-18 08:24:40.344789
465	9	124	218	2017-11-18 08:24:41.561463	2017-11-18 08:24:41.561463
466	9	125	219	2017-11-18 08:24:43.152017	2017-11-18 08:24:43.152017
467	9	126	220	2017-11-18 08:24:44.600039	2017-11-18 08:24:44.600039
468	9	127	221	2017-11-18 08:24:46.505375	2017-11-18 08:24:46.505375
469	9	30	222	2017-11-18 08:24:47.245465	2017-11-18 08:24:47.245465
470	9	128	223	2017-11-18 08:24:48.424277	2017-11-18 08:24:48.424277
471	9	129	224	2017-11-18 08:24:50.501264	2017-11-18 08:24:50.501264
472	9	130	225	2017-11-18 08:24:51.974115	2017-11-18 08:24:51.974115
473	9	36	226	2017-11-18 08:24:53.185203	2017-11-18 08:24:53.185203
474	9	37	227	2017-11-18 08:24:53.853361	2017-11-18 08:24:53.853361
475	9	38	228	2017-11-18 08:24:54.694799	2017-11-18 08:24:54.694799
476	9	39	229	2017-11-18 08:24:55.319819	2017-11-18 08:24:55.319819
477	9	131	230	2017-11-18 08:24:56.943494	2017-11-18 08:24:56.943494
\.


--
-- Name: nominees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('nominees_id_seq', 477, true);


--
-- Data for Name: order_statuses; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY order_statuses (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: order_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('order_statuses_id_seq', 1, false);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY products (id, name, resource_id, created_at, updated_at, price, purchaseable) FROM stdin;
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('products_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ollida
--

COPY schema_migrations (version) FROM stdin;
20161125081018
20161130145112
20161130174436
20161204053137
20161204053622
20161204091956
20161204162934
20161205155100
20161205155207
20161202021551
20161202040730
20161202052830
20161206020449
20161207154050
20161211172007
20161212035526
20161213050819
20161213061400
20161213071655
20161213124434
20161213163550
20161214081211
20161215092643
20161215092842
20161215143027
20161215145023
20161215145148
20161217170831
20161218071608
20161220135712
20161220141726
20161220145752
20161220151701
20170312061731
20170312062032
20170312062400
20170312062559
20170312062740
20170312063100
20170312063157
20170312063221
20170312063356
20170312072501
20170312080346
20170312094319
20170326162455
20170326170120
20170326171430
20170331153630
20170331155815
20170331155952
20170331164201
20170331164334
20170401034724
20170401035310
20170401044347
20170402154708
20170416170142
20170423164255
20170430082326
20170430082744
20170430170424
20170430173239
20170505161001
20171104071717
20171104151809
20171104151929
20171104152027
20171105094327
20171105094859
20171105095137
20171105095532
20171105162703
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY songs (id, name_eng, name_kor, artiste_id, album_id, mcountdown, created_at, updated_at, melon, bugs, genie) FROM stdin;
21	Dream All Day	\N	21	40	Dream All Day	2017-03-12 16:02:27.272411	2017-03-26 15:46:15.8093	\N	\N	\N
35	Nostalgia	\N	35	41	Nostalgia	2017-03-12 16:02:53.387518	2017-03-26 15:46:15.812309	\N	\N	\N
120	Out Of Honey	\N	41	43	Out Of Honey	2017-03-18 14:44:46.927507	2017-03-26 15:46:15.816322	\N	\N	\N
121	Never Ever	\N	42	44	Never Ever	2017-03-18 14:44:48.766125	2017-03-26 15:46:15.821849	\N	\N	\N
122	Chal Tteok	\N	43	45	Chal Tteok	2017-03-18 14:44:49.986982	2017-03-26 15:46:15.824848	\N	\N	\N
123	Take It	\N	44	46	Take It	2017-03-18 14:44:50.910966	2017-03-26 15:46:15.827766	\N	\N	\N
124	ECHO	\N	45	47	ECHO	2017-03-18 14:44:51.831394	2017-03-26 15:46:15.830822	\N	\N	\N
125	Getting Prettier After	\N	46	48	Getting Prettier After	2017-03-18 14:44:53.058214	2017-03-26 15:46:15.844362	\N	\N	\N
1	Sketch U	어디 있니	1	1	Sketch U	2017-03-12 15:50:14.416917	2017-03-26 15:46:15.848365	\N	\N	\N
24	WoW!	\N	24	20	WoW!	2017-03-12 16:02:32.815397	2017-03-26 15:46:15.714337	\N	\N	\N
2	WAKE ME UP	뮤비코멘터리	2	2	WAKE ME UP	2017-03-12 16:01:47.654459	2017-03-27 16:07:32.136646	\N	\N	\N
23	Nam.Sa.Mot (Guys can't forget love)	남.사.못 (남자는 사랑을 못 잊는다)	23	19	Nam.Sa.Mot(Guys can't forget love)	2017-03-12 16:02:30.653336	2017-03-27 16:50:23.629488	\N	\N	\N
126	Funky Music	\N	47	49	Funky Music	2017-04-01 08:06:12.960063	2017-04-01 08:47:36.140351	\N	\N	\N
127	Between Us	\N	48	50	Between Us	2017-04-01 08:06:14.4808	2017-04-01 08:47:36.155067	\N	\N	\N
143	Tang Tang Tang	탕탕탕	62	65	Tang Tang Tang	2017-04-09 16:23:35.578951	2017-05-06 06:12:44.845864	\N	\N	\N
129	Yeonnam-dong	\N	50	52	Yeonnam-dong	2017-04-01 08:06:17.441012	2017-04-01 08:47:36.172164	\N	\N	\N
130	Plz Don't be sad	\N	51	53	Plz Don't be sad	2017-04-01 08:06:18.978204	2017-04-01 08:47:36.175303	\N	\N	\N
131	Go for it (Power Up Ver.)	\N	52	54	Go for it (Power Up Ver.)	2017-04-01 08:06:20.306642	2017-04-01 08:47:36.178398	\N	\N	\N
132	Alive	\N	53	55	Alive	2017-04-01 08:06:21.740112	2017-04-01 08:47:36.18136	\N	\N	\N
133	Because of love	\N	54	56	Because of love	2017-04-01 08:06:23.379034	2017-04-01 08:47:36.184498	\N	\N	\N
134	POPCORN	\N	55	57	POPCORN	2017-04-01 08:06:26.655683	2017-04-01 08:47:36.187463	\N	\N	\N
135	Beautiful	\N	56	58	Beautiful	2017-04-01 08:06:28.200796	2017-04-01 08:47:36.200142	\N	\N	\N
136	Sing with the Swing	\N	57	59	Sing with the Swing	2017-04-01 08:06:29.517349	2017-04-01 08:47:36.204798	\N	\N	\N
8	MOVIE	\N	8	7	MOVIE	2017-03-12 16:01:57.853996	2017-04-30 16:39:21.31287	http://www.melon.com/album/detail.htm?albumId=10041603	http://music.bugs.co.kr/album/20083789	http://www.genie.co.kr/detail/albumInfo?axnm=80925819
138	Love & Live	\N	59	61	Love & Live	2017-04-01 08:06:33.00486	2017-04-01 08:47:36.211366	\N	\N	\N
139	Gawking	\N	38	33	Gawking	2017-04-01 08:06:33.813751	2017-04-01 08:47:36.214478	\N	\N	\N
3	1.2.3	\N	3	3	1.2.3	2017-03-12 16:01:49.802505	2017-03-26 15:46:15.626458	\N	\N	\N
4	STARDOM	\N	4	4	STARDOM	2017-03-12 16:01:51.85819	2017-03-26 15:46:15.636071	\N	\N	\N
6	Make Me Ah	\N	6	6	Make Me Ah	2017-03-12 16:01:54.737093	2017-03-26 15:46:15.644333	\N	\N	\N
9	Black or White	\N	9	8	Black or White	2017-03-12 16:01:59.786522	2017-03-26 15:46:15.650537	\N	\N	\N
10	FIZZ	\N	10	9	FIZZ	2017-03-12 16:02:01.47107	2017-03-26 15:46:15.653537	\N	\N	\N
11	How Can I Say	\N	11	10	How Can I Say	2017-03-12 16:02:07.006472	2017-03-26 15:46:15.657078	\N	\N	\N
12	An Obvious Melo	\N	12	11	An Obvious Melo	2017-03-12 16:02:10.085509	2017-03-26 15:46:15.666166	\N	\N	\N
15	Girl Gang	\N	15	12	Girl Gang	2017-03-12 16:02:15.667633	2017-03-26 15:46:15.670934	\N	\N	\N
16	Thought of You	\N	16	13	Thought of You	2017-03-12 16:02:17.761686	2017-03-26 15:46:15.674464	\N	\N	\N
17	I LOVE YOU LOVE YOU	\N	17	14	I LOVE YOU LOVE YOU	2017-03-12 16:02:19.595688	2017-03-26 15:46:15.678191	\N	\N	\N
18	Loves Me Loves Me Not	\N	18	15	Loves Me Loves Me Not	2017-03-12 16:02:22.059693	2017-03-26 15:46:15.681955	\N	\N	\N
19	Rainbow	\N	19	16	Rainbow	2017-03-12 16:02:23.283878	2017-03-26 15:46:15.688441	\N	\N	\N
20	Don't Wanna Forget	\N	20	17	Don't Wanna Forget	2017-03-12 16:02:25.16041	2017-03-26 15:46:15.693808	\N	\N	\N
22	Cold night, You were warm.	\N	22	18	Cold night, You were warm.	2017-03-12 16:02:28.814614	2017-03-26 15:46:15.696907	\N	\N	\N
25	Reason	\N	25	21	Reason	2017-03-12 16:02:34.343252	2017-03-26 15:46:15.717767	\N	\N	\N
26	Tina	\N	26	22	Tina	2017-03-12 16:02:36.197195	2017-03-26 15:46:15.721329	\N	\N	\N
27	KISS ON THE LIPS	\N	27	23	KISS ON THE LIPS	2017-03-12 16:02:38.339717	2017-03-26 15:46:15.726741	\N	\N	\N
28	My First and Last	\N	28	24	My First and Last	2017-03-12 16:02:40.801383	2017-03-26 15:46:15.730641	\N	\N	\N
29	Without U	\N	29	25	Without U	2017-03-12 16:02:42.687061	2017-03-26 15:46:15.73593	\N	\N	\N
30	ROAR	\N	30	26	ROAR	2017-03-12 16:02:44.249502	2017-03-26 15:46:15.738906	\N	\N	\N
31	Slow Down	\N	31	27	Slow Down	2017-03-12 16:02:45.443486	2017-03-26 15:46:15.741843	\N	\N	\N
32	I Live Because I Can't Die	\N	32	28	I Live Because I Can't Die	2017-03-12 16:02:47.75739	2017-03-26 15:46:15.744756	\N	\N	\N
33	Study You	\N	33	29	Study You	2017-03-12 16:02:49.707621	2017-03-26 15:46:15.758812	\N	\N	\N
34	Fine	\N	34	30	Fine	2017-03-12 16:02:51.759945	2017-04-30 16:38:12.338585	http://www.melon.com/album/detail.htm?albumId=10040265	http://music.bugs.co.kr/album/621011	http://www.genie.co.kr/detail/albumInfo?axnm=80924296
37	Dance With Me	\N	37	32	Dance With Me	2017-03-12 16:02:56.91507	2017-03-26 15:46:15.769196	\N	\N	\N
38	EYEZ EYEZ	\N	38	33	EYEZ EYEZ	2017-03-12 16:02:58.646919	2017-03-26 15:46:15.772609	\N	\N	\N
39	HAKUNAMATATA	\N	39	34	HAKUNAMATATA	2017-03-12 16:03:00.151979	2017-03-26 15:46:15.776044	\N	\N	\N
40	Sprawl	\N	40	35	Sprawl	2017-03-12 16:03:01.39558	2017-03-26 15:46:15.781331	\N	\N	\N
5	YEAH	\N	5	36	YEAH	2017-03-12 16:01:53.213589	2017-03-26 15:46:15.78822	\N	\N	\N
7	Rollin'	\N	7	37	Rollin`	2017-03-12 16:01:56.146182	2017-03-26 15:46:15.793951	\N	\N	\N
14	A Girl Like Me	\N	14	39	A Girl Like Me	2017-03-12 16:02:14.072253	2017-03-26 15:46:15.805803	\N	\N	\N
140	THE IDOLM@STER	\N	60	62	THE IDOLM@STER	2017-04-09 16:23:33.065126	2017-04-09 16:26:41.318793	\N	\N	\N
142	GOOD NIGHT	\N	61	64	GOOD NIGHT	2017-04-09 16:23:34.646855	2017-04-09 16:26:41.343841	\N	\N	\N
141	I'm Serious	장난 아닌데	11	63	I'm Serious	2017-04-09 16:23:33.793675	2017-04-14 16:37:36.610838	\N	\N	\N
145	Tension Up	\N	64	67	Tension Up	2017-04-09 16:23:37.388871	2017-04-09 16:26:41.359529	\N	\N	\N
146	DANDULIYA	\N	65	68	DANDULIYA	2017-04-09 16:23:38.211183	2017-04-09 16:26:41.362973	\N	\N	\N
147	Coloring Book	\N	66	69	Coloring Book	2017-04-09 16:23:39.343233	2017-04-09 16:26:41.366486	\N	\N	\N
148	The Wedding Song	\N	67	70	The Wedding Song	2017-04-09 16:23:40.275391	2017-04-09 16:26:41.385001	\N	\N	\N
149	The Man Bothers The Woman	\N	68	71	The Man Bothers The Woman	2017-04-09 16:23:41.135488	2017-04-09 16:26:41.390419	\N	\N	\N
150	Love Is	\N	69	72	Love Is	2017-04-09 16:23:42.123962	2017-04-09 16:26:41.394093	\N	\N	\N
152	Lieland in the Springtime	\N	71	74	Lieland in the Springtime	2017-04-14 16:13:00.654231	2017-04-14 16:17:08.735919	\N	\N	\N
154	Best Mistake (K)	\N	73	76	Best Mistake (K)	2017-04-14 16:13:03.927145	2017-04-14 16:17:08.760305	\N	\N	\N
155	Rainbow	\N	14	77	Rainbow	2017-04-14 16:13:04.840143	2017-04-14 16:17:08.768825	\N	\N	\N
156	Hwang Ya	\N	74	78	Hwang Ya	2017-04-14 16:13:06.381705	2017-04-14 16:17:08.772764	\N	\N	\N
157	2GETHER	\N	75	79	2GETHER	2017-04-14 16:13:08.209233	2017-04-14 16:17:08.776251	\N	\N	\N
158	The Spring	\N	76	80	The Spring	2017-04-14 16:13:10.081292	2017-04-14 16:17:08.779748	\N	\N	\N
159	KKPP	\N	77	81	KKPP	2017-04-14 16:13:11.913104	2017-04-14 16:17:08.782837	\N	\N	\N
160	I Miss You	\N	78	82	I Miss You	2017-04-14 16:13:13.758207	2017-04-14 16:17:08.795485	\N	\N	\N
161	Steal Your Heart	\N	79	83	Steal Your Heart	2017-04-14 16:13:15.28663	2017-04-14 16:17:08.799873	\N	\N	\N
162	Color TV	\N	80	84	Color TV	2017-04-14 16:13:16.930625	2017-04-14 16:17:08.804638	\N	\N	\N
144	Fall In Love	비처럼	63	66	Fall In Love	2017-04-09 16:23:36.495262	2017-04-14 16:34:03.82852	\N	\N	\N
164	If I Become An Adult	\N	82	86	If I Become An Adult	2017-04-23 16:48:08.732197	2017-04-23 16:56:20.879707	\N	\N	\N
166	Will You Go Out With Me	\N	84	88	Will You Go Out With Me	2017-04-23 16:48:13.03177	2017-04-23 16:56:20.896052	\N	\N	\N
163	Bibbidi Bobbidi Boo	\N	81	85	BibbidiBobbidiBoo	2017-04-23 16:48:07.234214	2017-04-23 16:56:20.869949	\N	\N	\N
165	Wherever You Are	\N	83	87	Wherever You Are	2017-04-23 16:48:10.875097	2017-04-23 16:56:20.885778	\N	\N	\N
167	NINANO	\N	85	89	NINANO	2017-04-23 16:48:15.490295	2017-04-23 16:56:20.902659	\N	\N	\N
169	ACROSS THE UNIVERSE	\N	87	91	ACROSS THE UNIVERSE	2017-04-23 16:48:18.858462	2017-04-23 16:56:20.918025	\N	\N	\N
189	Vanishing Paycheck	\N	103	109	Vanishing Paycheck	2017-05-06 06:05:53.475799	2017-05-06 06:07:53.052777	\N	\N	\N
171	Hate that I Miss You	\N	89	93	Hate that I Miss You	2017-04-23 16:48:23.173138	2017-04-23 16:56:20.934782	\N	\N	\N
172	Easy Love	\N	30	94	Easy Love	2017-04-23 16:48:24.703183	2017-04-23 16:56:20.943073	\N	\N	\N
173	Beautiful	\N	90	95	Beautiful	2017-04-23 16:48:27.158417	2017-04-23 16:56:20.949691	\N	\N	\N
190	365 FRESH	\N	104	110	365 FRESH	2017-05-06 06:05:55.320047	2017-05-06 06:07:53.068015	\N	\N	\N
36	KNOCK KNOCK	\N	36	31	KNOCK KNOCK	2017-03-12 16:02:55.031685	2017-04-30 16:37:50.502162	http://www.melon.com/album/detail.htm?albumId=10040060	http://music.bugs.co.kr/album/20082818	http://www.genie.co.kr/detail/albumInfo?axnm=80924087
128	I'll be yours	\N	49	51	I'll be yours	2017-04-01 08:06:16.008066	2017-04-30 16:38:36.718943	http://www.melon.com/album/detail.htm?albumId=10049173	http://music.bugs.co.kr/album/20089211	http://www.genie.co.kr/detail/albumInfo?axnm=80933331
13	FINGERTIP	\N	13	38	FINGERTIP	2017-03-12 16:02:12.229548	2017-04-30 16:38:59.059459	http://www.melon.com/album/detail.htm?albumId=10043312	http://music.bugs.co.kr/album/20085090	http://www.genie.co.kr/detail/albumInfo?axnm=80927578
191	\N	\N	105	111	Callin`	2017-11-18 08:24:00.412614	2017-11-18 08:24:00.412614	\N	\N	\N
137	WEE WOO	\N	58	60	WEE WOO	2017-04-01 08:06:31.57347	2017-04-30 16:39:40.764655	http://www.melon.com/album/detail.htm?albumId=10047779	http://music.bugs.co.kr/album/20088098	http://www.genie.co.kr/detail/albumInfo?axnm=80931782
192	\N	\N	106	112	Crazy Sexy Cool	2017-11-18 08:24:01.932565	2017-11-18 08:24:01.932565	\N	\N	\N
174	Dreamer	\N	83	87	Dreamer	2017-04-30 07:55:08.074646	2017-04-30 08:03:04.357114	\N	\N	\N
175	Best Mistake (K)	\N	91	76	Best Mistake (K)	2017-04-30 07:55:09.866806	2017-04-30 08:03:04.371657	\N	\N	\N
176	TOMBOY	\N	92	96	TOMBOY	2017-04-30 07:55:11.202655	2017-04-30 08:03:04.377298	\N	\N	\N
177	Ring Ring	\N	93	97	Ring Ring	2017-04-30 07:55:12.976741	2017-04-30 08:03:04.383229	\N	\N	\N
178	Wonderful Love	\N	94	98	Wonderful Love	2017-04-30 07:55:15.130884	2017-04-30 08:03:04.388209	\N	\N	\N
179	Back:Hug	\N	95	99	Back:Hug	2017-04-30 07:55:17.286656	2017-04-30 08:03:04.392897	\N	\N	\N
180	Sonatine	\N	59	100	Sonatine	2017-04-30 07:55:18.20789	2017-04-30 08:03:04.397392	\N	\N	\N
181	Hole In One	\N	96	101	Hole In One	2017-04-30 07:55:20.656921	2017-04-30 08:03:04.420954	\N	\N	\N
193	\N	\N	107	113	Hiccup	2017-11-18 08:24:03.473355	2017-11-18 08:24:03.473355	\N	\N	\N
194	\N	\N	108	114	Funfun	2017-11-18 08:24:05.607467	2017-11-18 08:24:05.607467	\N	\N	\N
170	Hwi hwi	\N	88	92	Hwi hwi	2017-04-23 16:48:21.022759	2017-04-30 16:40:04.280634	http://www.melon.com/album/detail.htm?albumId=10055373	http://music.bugs.co.kr/album/20093064	http://www.genie.co.kr/detail/albumInfo?axnm=80939691
153	Night Rather Than Day	낮보다는 밤	72	75	Night Rather Than Day	2017-04-14 16:13:02.098598	2017-04-30 17:24:08.929896	http://www.melon.com/album/detail.htm?albumId=10053013	http://music.bugs.co.kr/album/631120	http://www.genie.co.kr/detail/albumInfo;jsessionid=703F8399D108E09F9BCE9ADE4E498767?axnm=80937675
168	Palette	팔레트	86	90	Palette	2017-04-23 16:48:17.323472	2017-04-30 17:24:34.180453	http://www.melon.com/album/detail.htm?albumId=10056666	http://music.bugs.co.kr/album/20094140	http://www.genie.co.kr/detail/albumInfo?axnm=80941594
195	\N	\N	10	115	A Likely Night	2017-11-18 08:24:06.524421	2017-11-18 08:24:06.524421	\N	\N	\N
151	REALLY REALLY	\N	70	73	REALLY REALLY	2017-04-09 16:23:43.007872	2017-04-30 16:37:02.497613	http://www.melon.com/album/detail.htm?albumId=10051659	http://music.bugs.co.kr/album/20090733	http://www.genie.co.kr/detail/albumInfo?axnm=80935242
196	\N	\N	109	116	About time	2017-11-18 08:24:08.853936	2017-11-18 08:24:08.853936	\N	\N	\N
182	Keep your eyes on my body (Original Ver.)	\N	97	102	Keep your eyes on my body (Original Ver.)	2017-05-06 06:05:41.220307	2017-05-06 06:07:53.014701	\N	\N	\N
183	Please	\N	98	103	Please	2017-05-06 06:05:42.726385	2017-05-06 06:07:53.022239	\N	\N	\N
184	FEEL LIKE THIS	\N	99	104	FEEL LIKE THIS	2017-05-06 06:05:44.567627	2017-05-06 06:07:53.027648	\N	\N	\N
185	Now, We	\N	24	105	Now, We	2017-05-06 06:05:45.785047	2017-05-06 06:07:53.032288	\N	\N	\N
186	Paint on Spring	\N	100	106	Paint on Spring	2017-05-06 06:05:47.642257	2017-05-06 06:07:53.03727	\N	\N	\N
187	NUNA (Feat. Microdot)	\N	101	107	NUNA (Feat. Microdot)	2017-05-06 06:05:49.482581	2017-05-06 06:07:53.043029	\N	\N	\N
188	BE WELL	\N	102	108	BE WELL	2017-05-06 06:05:51.93906	2017-05-06 06:07:53.048006	\N	\N	\N
197	\N	\N	72	117	DDD	2017-11-18 08:24:09.495849	2017-11-18 08:24:09.495849	\N	\N	\N
198	\N	\N	110	118	POPPING	2017-11-18 08:24:11.072206	2017-11-18 08:24:11.072206	\N	\N	\N
199	\N	\N	111	119	Chemical	2017-11-18 08:24:13.188365	2017-11-18 08:24:13.188365	\N	\N	\N
200	\N	\N	14	120	Chococo	2017-11-18 08:24:13.853219	2017-11-18 08:24:13.853219	\N	\N	\N
201	\N	\N	112	121	Vroom Vroom	2017-11-18 08:24:15.431535	2017-11-18 08:24:15.431535	\N	\N	\N
202	\N	\N	113	122	Paris Party	2017-11-18 08:24:16.971187	2017-11-18 08:24:16.971187	\N	\N	\N
203	\N	\N	114	123	Hue Hue	2017-11-18 08:24:20.925453	2017-11-18 08:24:20.925453	\N	\N	\N
204	\N	\N	115	124	LOVE is Blind	2017-11-18 08:24:22.50093	2017-11-18 08:24:22.50093	\N	\N	\N
205	\N	\N	116	125	Amazing	2017-11-18 08:24:23.728717	2017-11-18 08:24:23.728717	\N	\N	\N
206	\N	\N	117	126	Your Season	2017-11-18 08:24:25.265385	2017-11-18 08:24:25.265385	\N	\N	\N
207	\N	\N	118	127	I Drink Alone	2017-11-18 08:24:27.159127	2017-11-18 08:24:27.159127	\N	\N	\N
208	\N	\N	119	128	AFTERIMAGE	2017-11-18 08:24:28.727799	2017-11-18 08:24:28.727799	\N	\N	\N
209	\N	\N	120	129	SobokSobok	2017-11-18 08:24:30.181947	2017-11-18 08:24:30.181947	\N	\N	\N
210	\N	\N	54	130	white wedding	2017-11-18 08:24:31.103825	2017-11-18 08:24:31.103825	\N	\N	\N
211	\N	\N	121	131	SINCERELY	2017-11-18 08:24:32.63937	2017-11-18 08:24:32.63937	\N	\N	\N
212	\N	\N	24	132	Twinkle	2017-11-18 08:24:33.563045	2017-11-18 08:24:33.563045	\N	\N	\N
213	\N	\N	26	133	Do It	2017-11-18 08:24:34.789351	2017-11-18 08:24:34.789351	\N	\N	\N
214	\N	\N	77	134	Pink Lady	2017-11-18 08:24:35.710196	2017-11-18 08:24:35.710196	\N	\N	\N
215	\N	\N	56	135	DRAMARAMA	2017-11-18 08:24:36.633372	2017-11-18 08:24:36.633372	\N	\N	\N
216	\N	\N	122	136	20th Night	2017-11-18 08:24:38.787428	2017-11-18 08:24:38.787428	\N	\N	\N
217	\N	\N	123	137	Without You	2017-11-18 08:24:40.314807	2017-11-18 08:24:40.314807	\N	\N	\N
218	\N	\N	124	138	Stay	2017-11-18 08:24:41.545892	2017-11-18 08:24:41.545892	\N	\N	\N
219	\N	\N	125	139	Breathe Heavy	2017-11-18 08:24:43.091776	2017-11-18 08:24:43.091776	\N	\N	\N
220	\N	\N	126	140	Candy	2017-11-18 08:24:44.575134	2017-11-18 08:24:44.575134	\N	\N	\N
221	\N	\N	127	141	CLAP	2017-11-18 08:24:46.464463	2017-11-18 08:24:46.464463	\N	\N	\N
222	\N	\N	30	142	O Sole Mio	2017-11-18 08:24:47.210918	2017-11-18 08:24:47.210918	\N	\N	\N
223	\N	\N	128	143	Don't ask me. Just do it.	2017-11-18 08:24:48.393375	2017-11-18 08:24:48.393375	\N	\N	\N
224	\N	\N	129	144	I (knew it)	2017-11-18 08:24:50.46418	2017-11-18 08:24:50.46418	\N	\N	\N
225	\N	\N	130	145	Like we used to	2017-11-18 08:24:51.958197	2017-11-18 08:24:51.958197	\N	\N	\N
226	\N	\N	36	146	LIKEY	2017-11-18 08:24:53.168978	2017-11-18 08:24:53.168978	\N	\N	\N
227	\N	\N	37	147	She`s Mine	2017-11-18 08:24:53.836535	2017-11-18 08:24:53.836535	\N	\N	\N
228	\N	\N	38	148	REMEMBER ME	2017-11-18 08:24:54.679204	2017-11-18 08:24:54.679204	\N	\N	\N
229	\N	\N	39	149	Ramen	2017-11-18 08:24:55.301768	2017-11-18 08:24:55.301768	\N	\N	\N
230	\N	\N	131	150	Beautiful	2017-11-18 08:24:56.916867	2017-11-18 08:24:56.916867	\N	\N	\N
\.


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('songs_id_seq', 230, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ollida
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, failed_attempts, unlock_token, locked_at, created_at, updated_at, name, username, gender, birthday, avatar_file_name, avatar_content_type, avatar_file_size, avatar_updated_at, fb_uid, fb_token) FROM stdin;
1	lajansa@hotmail.com	$2a$11$8QGoeA.LiAozclwgX5.61OlETKthYjbLrVw6CdmtHu5/lKlKKI0ky	\N	\N	\N	20	2017-11-05 08:37:20.797854	2017-11-05 08:36:39.363802	::1	::1	0	\N	\N	2016-12-06 17:18:41.032619	2017-11-05 08:37:20.801201	\N	\N	\N	\N	\N	\N	\N	\N	10154639727681768	EAAZAuFUAcWQkBACoS5SzrPBw38uzIbXfez1prZBebZB0ZCTh2NmXnqAbHgAbEPt0J4Trza8oEZBAvkovMcCX6UPHkPiygT4SyxFeASszb4JriqtJm3NR8MteATDjJU8uVCMFYMSylVh1pfZBZChSpAZC3G59lbBpdggQ6AUE2IXcIwZDZD
2	lajansa123@hotmail.com	$2a$11$mbYDAuECy8CuuQGNwL8Oe.hGC7p4mEtoW5DcmxlnpluPAReljX94u	\N	\N	\N	2	2017-11-05 09:01:32.276801	2017-11-05 08:43:10.084515	::1	::1	0	\N	\N	2017-11-05 08:43:10.032844	2017-11-05 09:01:32.280055	isa	lajansa123	f	1970-11-05	\N	\N	\N	\N	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ollida
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Data for Name: youtube_videos; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY youtube_videos (id, artiste_id, song_id, video_id, watch_link, thumbnail_img, created_at, updated_at, video_title) FROM stdin;
40	1	1	iPY_CGYDVAs	https://www.youtube.com/watch?v=iPY_CGYDVAs	https://i.ytimg.com/vi/iPY_CGYDVAs/mqdefault.jpg	2017-03-27 14:31:11.359459	2017-03-27 14:31:11.359459	[MV] 100%(백퍼센트) _ Sketch U(어디 있니)
42	3	3	5MKp9dtH3eI	https://www.youtube.com/watch?v=5MKp9dtH3eI	https://i.ytimg.com/vi/5MKp9dtH3eI/mqdefault.jpg	2017-03-27 14:31:12.625768	2017-03-27 14:31:12.625768	비아이지 (B.I.G) - 1.2.3 MV
43	4	4	R1lZvVaK7ZY	https://www.youtube.com/watch?v=R1lZvVaK7ZY	https://i.ytimg.com/vi/R1lZvVaK7ZY/mqdefault.jpg	2017-03-27 14:31:13.272318	2017-03-27 14:31:13.272318	[MV] BIGFLO(빅플로) _ Stardom
44	5	5	zUA5z4pLY7w	https://www.youtube.com/watch?v=zUA5z4pLY7w	https://i.ytimg.com/vi/zUA5z4pLY7w/mqdefault.jpg	2017-03-27 14:31:13.822776	2017-03-27 14:31:13.822776	[MV] BLANC7(블랑세븐) _ YEAH
45	6	6	BvMyNQsuTs8	https://www.youtube.com/watch?v=BvMyNQsuTs8	https://i.ytimg.com/vi/BvMyNQsuTs8/mqdefault.jpg	2017-03-27 14:31:14.534958	2017-03-27 14:31:14.534958	BP 라니아 BP RaNia Make Me Ah (Live @ SBS The Show)
46	7	7	TeaoaAz0VbY	https://www.youtube.com/watch?v=TeaoaAz0VbY	https://i.ytimg.com/vi/TeaoaAz0VbY/mqdefault.jpg	2017-03-27 14:31:15.034618	2017-03-27 14:31:15.034618	브레이브걸스 (Brave Girls) - 롤린 (Rollin') MV
47	9	9	B67kWJWFW2Y	https://www.youtube.com/watch?v=B67kWJWFW2Y	https://i.ytimg.com/vi/B67kWJWFW2Y/mqdefault.jpg	2017-03-27 14:31:15.761259	2017-03-27 14:31:15.761259	[MV] CROSS GENE(크로스진) _ Black or White
48	10	10	FIYm33ygc9g	https://www.youtube.com/watch?v=FIYm33ygc9g	https://i.ytimg.com/vi/FIYm33ygc9g/mqdefault.jpg	2017-03-27 14:31:16.238586	2017-03-27 14:31:16.238586	D.I.P - FIZZ Official M/V
49	11	11	dwywhL1PenQ	https://www.youtube.com/watch?v=dwywhL1PenQ	https://i.ytimg.com/vi/dwywhL1PenQ/mqdefault.jpg	2017-03-27 14:31:16.990033	2017-03-27 14:31:16.990033	DAY6 "How Can I Say(어떻게 말해)" M/V
50	12	12	gDa2gAyh8MM	https://www.youtube.com/watch?v=gDa2gAyh8MM	https://i.ytimg.com/vi/gDa2gAyh8MM/mqdefault.jpg	2017-03-27 14:31:17.937732	2017-03-27 14:31:17.937732	[MV] Gavy NJ(가비엔제이) _ An Obvious Melo(뻔한 멜로)
51	14	14	zrNxJJ7fxCk	https://www.youtube.com/watch?v=zrNxJJ7fxCk	https://i.ytimg.com/vi/zrNxJJ7fxCk/mqdefault.jpg	2017-03-27 14:31:18.508097	2017-03-27 14:31:18.508097	구구단 (gugudan) - 나 같은 애 (A Girl Like Me) MV
52	15	15	jO0PU5eZP68	https://www.youtube.com/watch?v=jO0PU5eZP68	https://i.ytimg.com/vi/jO0PU5eZP68/mqdefault.jpg	2017-03-27 14:31:19.146362	2017-03-27 14:31:19.146362	H.U.B - 미친듯이 (GIRL GANG) 안무영상 Choreography
53	16	16	s1mXQpkVhmo	https://www.youtube.com/watch?v=s1mXQpkVhmo	https://i.ytimg.com/vi/s1mXQpkVhmo/mqdefault.jpg	2017-03-27 14:31:19.668264	2017-03-27 14:31:19.668264	한희준 (HeeJun Han) - 생각나 (Think of you)
54	17	17	4hokrRHI6Kg	https://www.youtube.com/watch?v=4hokrRHI6Kg	https://i.ytimg.com/vi/4hokrRHI6Kg/mqdefault.jpg	2017-03-27 14:31:20.107199	2017-03-27 14:31:20.107199	하이솔 - 사랑해 사랑해 (I LOVE YOU LOVE YOU) (Feat. 리제)
55	18	18	6lNjo0c4JZc	https://www.youtube.com/watch?v=6lNjo0c4JZc	https://i.ytimg.com/vi/6lNjo0c4JZc/mqdefault.jpg	2017-03-27 14:31:20.561852	2017-03-27 14:31:20.561852	홍진영(Hong Jin Young) 'Loves Me, Loves Me Not' MV 공개 (사랑한다 안한다, 조작된 도시, Ji Chang Wook, 지창욱) [통통영상]
56	19	19	60CUHKysfJE	https://www.youtube.com/watch?v=60CUHKysfJE	https://i.ytimg.com/vi/60CUHKysfJE/mqdefault.jpg	2017-03-27 14:31:20.999985	2017-03-27 14:31:20.999985	[MV] INA(인아) _ Rainbow
57	20	20	LMugtwFA7lY	https://www.youtube.com/watch?v=LMugtwFA7lY	https://i.ytimg.com/vi/LMugtwFA7lY/mqdefault.jpg	2017-03-27 14:31:21.598919	2017-03-27 14:31:21.598919	강시라 (Kang Sira) - 못 잊어 (Don’t Wanna Forget) MV
59	22	22	EYL2mS7XdR4	https://www.youtube.com/watch?v=EYL2mS7XdR4	https://i.ytimg.com/vi/EYL2mS7XdR4/mqdefault.jpg	2017-03-27 14:31:22.820844	2017-03-27 14:31:22.820844	고나영 Koh Nayoung - 차가운 밤, 따뜻했던 너. Cold night, You were warm. M/V
61	24	24	PZxPUM4bUzY	https://www.youtube.com/watch?v=PZxPUM4bUzY	https://i.ytimg.com/vi/PZxPUM4bUzY/mqdefault.jpg	2017-03-27 14:31:23.967653	2017-03-27 14:31:23.967653	러블리즈 (Lovelyz) - WoW! MV
62	25	25	bGGEKELPVHM	https://www.youtube.com/watch?v=bGGEKELPVHM	https://i.ytimg.com/vi/bGGEKELPVHM/mqdefault.jpg	2017-03-27 14:31:24.385814	2017-03-27 14:31:24.385814	엠펙트(Mfect) - 혼자남은 이유(Reason) DANCE PRACTICE
63	26	26	7_gZU7yWpls	https://www.youtube.com/watch?v=7_gZU7yWpls	https://i.ytimg.com/vi/7_gZU7yWpls/mqdefault.jpg	2017-03-27 14:31:24.813853	2017-03-27 14:31:24.813853	[MV] MASC(마스크) _ Tina(티나)
64	27	27	GEhDA13d4lQ	https://www.youtube.com/watch?v=GEhDA13d4lQ	https://i.ytimg.com/vi/GEhDA13d4lQ/mqdefault.jpg	2017-03-27 14:31:25.253932	2017-03-27 14:31:25.253932	[MV] MELODYDAY(멜로디데이) _ KISS ON THE LIPS
65	28	28	4pUc7SD0PmU	https://www.youtube.com/watch?v=4pUc7SD0PmU	https://i.ytimg.com/vi/4pUc7SD0PmU/mqdefault.jpg	2017-03-27 14:37:20.104356	2017-03-27 14:37:20.104356	NCT DREAM_마지막 첫사랑 (My First and Last)_Music Video
66	29	29	ynigqeL7oC4	https://www.youtube.com/watch?v=ynigqeL7oC4	https://i.ytimg.com/vi/ynigqeL7oC4/mqdefault.jpg	2017-03-27 14:37:20.718332	2017-03-27 14:37:20.718332	[MV] ROMEO(로미오) _ WITHOUT U(니가 없는데)
67	30	30	lLg_k_QpFgQ	https://www.youtube.com/watch?v=lLg_k_QpFgQ	https://i.ytimg.com/vi/lLg_k_QpFgQ/mqdefault.jpg	2017-03-27 14:37:21.332972	2017-03-27 14:37:21.332972	[MV] SF9(에스에프나인) _ ROAR(부르릉)
68	31	31	OmaJGYYn6lY	https://www.youtube.com/watch?v=OmaJGYYn6lY	https://i.ytimg.com/vi/OmaJGYYn6lY/mqdefault.jpg	2017-03-27 14:37:21.950327	2017-03-27 14:37:21.950327	[MV]  신기원 - Slow Down
69	32	32	ltXBjFwyd0U	https://www.youtube.com/watch?v=ltXBjFwyd0U	https://i.ytimg.com/vi/ltXBjFwyd0U/mqdefault.jpg	2017-03-27 14:37:22.661749	2017-03-27 14:37:22.661749	170207 Shin Hyun Woo (신현우) - I Can't Die (죽지못해 살아)
70	33	33	_F5NZHs7Cm0	https://www.youtube.com/watch?v=_F5NZHs7Cm0	https://i.ytimg.com/vi/_F5NZHs7Cm0/mqdefault.jpg	2017-03-27 14:37:23.121123	2017-03-27 14:37:23.121123	【MV韓中字】SORAN(소란)- 研讀著你(너를 공부해) Soran-I Study You
71	35	35	3oFq7tCw6OA	https://www.youtube.com/watch?v=3oFq7tCw6OA	https://i.ytimg.com/vi/3oFq7tCw6OA/mqdefault.jpg	2017-03-27 14:37:23.793427	2017-03-27 14:37:23.793427	The Ray(더레이) - 노스텔지어 Official M/V
72	37	37	bvnN1_-m91I	https://www.youtube.com/watch?v=bvnN1_-m91I	https://i.ytimg.com/vi/bvnN1_-m91I/mqdefault.jpg	2017-03-27 14:37:24.403597	2017-03-27 14:37:24.403597	[MV] VAV(브이에이브이) _ Venus(비너스) (Dance With Me)
73	38	38	nlJp65MCqjo	https://www.youtube.com/watch?v=nlJp65MCqjo	https://i.ytimg.com/vi/nlJp65MCqjo/mqdefault.jpg	2017-03-27 14:37:25.020028	2017-03-27 14:37:25.020028	[MV] VICTON (빅톤) _ EYEZ EYEZ
74	39	39	UQrjyOz9dFg	https://www.youtube.com/watch?v=UQrjyOz9dFg	https://i.ytimg.com/vi/UQrjyOz9dFg/mqdefault.jpg	2017-03-27 14:37:25.632805	2017-03-27 14:37:25.632805	왈와리(WALWARI) - '하쿠나마타타(HAKUNAMATATA)' MV
75	8	8	42A-rFdralM	https://www.youtube.com/watch?v=42A-rFdralM	https://i.ytimg.com/vi/42A-rFdralM/mqdefault.jpg	2017-03-27 14:37:26.862506	2017-03-27 14:37:26.862506	[MV] BTOB(비투비) _ MOVIE
76	13	13	i1n_1jrUEjU	https://www.youtube.com/watch?v=i1n_1jrUEjU	https://i.ytimg.com/vi/i1n_1jrUEjU/mqdefault.jpg	2017-03-27 14:37:27.477498	2017-03-27 14:37:27.477498	[MV] GFRIEND(여자친구) _ FINGERTIP
58	21	21	Lc_hPsg4gI0	https://www.youtube.com/watch?v=Lc_hPsg4gI0	https://i.ytimg.com/vi/Lc_hPsg4gI0/mqdefault.jpg	2017-03-27 14:31:22.330038	2017-03-27 17:24:46.639219	[MV] Kim Ji Soo(김지수) _ Dream All Day
41	2	2	Ku_FYERiHC8	https://www.youtube.com/watch?v=Ku_FYERiHC8	https://i.ytimg.com/vi/Ku_FYERiHC8/mqdefault.jpg	2017-03-27 14:31:12.078615	2017-03-27 17:27:14.32494	[MV] B.A.P _ WAKE ME UP
77	34	34	NHXUM-6a3dU	https://www.youtube.com/watch?v=NHXUM-6a3dU	https://i.ytimg.com/vi/NHXUM-6a3dU/mqdefault.jpg	2017-03-27 14:37:28.091761	2017-03-27 14:37:28.091761	TAEYEON 태연_Fine_Music Video
78	36	36	8A2t_tAjMz8	https://www.youtube.com/watch?v=8A2t_tAjMz8	https://i.ytimg.com/vi/8A2t_tAjMz8/mqdefault.jpg	2017-03-27 14:37:29.013151	2017-03-27 14:37:29.013151	TWICE(트와이스) "KNOCK KNOCK" M/V
79	40	40	NA	\N	\N	2017-03-27 15:08:17.445149	2017-03-27 15:08:17.445149	\N
60	23	23	IEcyTJ4eNhM	https://www.youtube.com/watch?v=IEcyTJ4eNhM	https://i.ytimg.com/vi/IEcyTJ4eNhM/mqdefault.jpg	2017-03-27 14:31:23.417477	2017-03-27 17:23:52.172111	L.A.U - 남.사.못(남자는 사랑을 못 잊는다) Nam.Sa.Mot(Guys can't forget love) Official M/V
80	58	137	wLfHuClrQdI	https://www.youtube.com/watch?v=wLfHuClrQdI	https://i.ytimg.com/vi/wLfHuClrQdI/mqdefault.jpg	2017-04-01 09:06:32.499426	2017-04-01 09:06:32.499426	[MV] PRISTIN(프리스틴) _ WEE WOO
83	44	123	wdOAnj7W7rs	https://www.youtube.com/watch?v=wdOAnj7W7rs	https://i.ytimg.com/vi/wdOAnj7W7rs/mqdefault.jpg	2017-04-01 09:06:34.395726	2017-04-01 09:06:34.395726	MVP(엠브이피) '선택해(Take It)' MV Choreography Ver.
84	49	128	7crt2Ip93VI	https://www.youtube.com/watch?v=7crt2Ip93VI	https://i.ytimg.com/vi/7crt2Ip93VI/mqdefault.jpg	2017-04-01 09:06:34.932928	2017-04-01 09:06:34.932928	[MV] Girl's Day(걸스데이) _ I'll be yours
86	48	127	oHaSMGJRSAQ	https://www.youtube.com/watch?v=oHaSMGJRSAQ	https://i.ytimg.com/vi/oHaSMGJRSAQ/mqdefault.jpg	2017-04-01 09:10:23.950881	2017-04-01 09:10:23.950881	[MV] CNBLUE(씨엔블루) _ Between Us(헷갈리게)
89	42	121	IZ1t7CwfvEc	https://www.youtube.com/watch?v=IZ1t7CwfvEc	https://i.ytimg.com/vi/IZ1t7CwfvEc/mqdefault.jpg	2017-04-01 09:10:25.111625	2017-04-01 09:10:25.111625	GOT7 "Never Ever" M/V
91	53	132	eYfKq6PvH0c	https://www.youtube.com/watch?v=eYfKq6PvH0c	https://i.ytimg.com/vi/eYfKq6PvH0c/mqdefault.jpg	2017-04-01 09:10:26.423215	2017-04-01 09:10:26.423215	J-Min 제이민_Alive_Music Video
93	54	133	rgU5YbxXCXE	https://www.youtube.com/watch?v=rgU5YbxXCXE	https://i.ytimg.com/vi/rgU5YbxXCXE/mqdefault.jpg	2017-04-01 09:10:26.981726	2017-04-01 09:10:26.981726	[MV] Lee sun jung Band(이선정밴드) _ Because of love
94	56	135	f5Zedh_5DDM	https://www.youtube.com/watch?v=f5Zedh_5DDM	https://i.ytimg.com/vi/f5Zedh_5DDM/mqdefault.jpg	2017-04-01 09:10:27.627507	2017-04-01 09:10:27.627507	[MV] 몬스타엑스(MONSTA X) - 아름다워(Beautiful)
96	45	124	qoKNuxHyXqg	https://www.youtube.com/watch?v=qoKNuxHyXqg	https://i.ytimg.com/vi/qoKNuxHyXqg/mqdefault.jpg	2017-04-01 09:10:28.658072	2017-04-01 09:10:28.658072	세븐어클락 Seven O'Clock(SOC) - 시계바늘 ECHO Official M/V
97	46	125	vEiUjcoGUBw	https://www.youtube.com/watch?v=vEiUjcoGUBw	https://i.ytimg.com/vi/vEiUjcoGUBw/mqdefault.jpg	2017-04-01 09:10:29.096036	2017-04-01 09:10:29.096036	[MV] 식스밤 "예뻐지는 중입니다 After" - 예뻐지는 중입니다 After
99	38	139	NA	\N	\N	2017-04-01 09:10:29.774274	2017-04-01 09:10:29.774274	\N
104	63	144	mvkUuZ4LzMM	https://www.youtube.com/watch?v=mvkUuZ4LzMM	https://i.ytimg.com/vi/mvkUuZ4LzMM/mqdefault.jpg	2017-04-09 16:45:12.741577	2017-04-09 16:45:12.741577	홍대광 (Hong Dae Kwang) - 비처럼 fall in love MV
98	59	138	NA	\N	\N	2017-04-01 09:10:29.581259	2017-04-01 10:06:07.865979	\N
95	57	136	NA	\N	\N	2017-04-01 09:10:28.145248	2017-04-01 10:08:01.120377	\N
92	43	122	NA	\N	\N	2017-04-01 09:10:26.698274	2017-04-01 10:09:07.696248	\N
105	64	145	_BNlXODCoaI	https://www.youtube.com/watch?v=_BNlXODCoaI	https://i.ytimg.com/vi/_BNlXODCoaI/mqdefault.jpg	2017-04-09 16:47:22.531886	2017-04-09 16:47:22.531886	임팩트 IMFACT - 텐션업 Tension Up Official M/V
106	65	146	NA	\N	\N	2017-04-09 16:47:29.173561	2017-04-09 16:47:29.173561	\N
90	52	131	NA	\N	\N	2017-04-01 09:10:26.001301	2017-04-01 10:11:49.287396	\N
82	55	134	NA	\N	\N	2017-04-01 09:06:33.99146	2017-04-01 10:12:11.575317	\N
87	41	120	NA	\N	\N	2017-04-01 09:10:24.218013	2017-04-01 10:12:23.303492	\N
88	50	129	NA	\N	\N	2017-04-01 09:10:24.822888	2017-04-01 10:12:31.234558	\N
81	51	130	NA	\N	\N	2017-04-01 09:06:33.272534	2017-04-01 10:12:43.592894	\N
85	47	126	NA	\N	\N	2017-04-01 09:10:23.345719	2017-04-01 10:13:01.987183	\N
100	60	140	GPa27Hzr3v0	https://www.youtube.com/watch?v=GPa27Hzr3v0	https://i.ytimg.com/vi/GPa27Hzr3v0/mqdefault.jpg	2017-04-09 16:44:31.609813	2017-04-09 16:44:31.609813	[Official MV] B-Side (Real Girls Project)  "THE IDOLM@STER"
101	11	141	ZmHQbzbM8pI	https://www.youtube.com/watch?v=ZmHQbzbM8pI	https://i.ytimg.com/vi/ZmHQbzbM8pI/mqdefault.jpg	2017-04-09 16:44:41.389672	2017-04-09 16:44:41.389672	DAY6 "I'm Serious(장난 아닌데)" M/V
107	66	147	7cjZFjWBZI0	https://www.youtube.com/watch?v=7cjZFjWBZI0	https://i.ytimg.com/vi/7cjZFjWBZI0/mqdefault.jpg	2017-04-09 16:47:47.90097	2017-04-09 16:47:47.90097	[MV] OH MY GIRL(오마이걸) _ Coloring Book(컬러링북)
110	69	150	39LfDc8X5qI	https://www.youtube.com/watch?v=39LfDc8X5qI	https://i.ytimg.com/vi/39LfDc8X5qI/mqdefault.jpg	2017-04-09 16:48:22.649013	2017-04-09 16:48:22.649013	TEEN TOP(틴탑)_바람이 분다(Love Comes) M/V
111	70	151	4tBnF46ybZk	https://www.youtube.com/watch?v=4tBnF46ybZk	https://i.ytimg.com/vi/4tBnF46ybZk/mqdefault.jpg	2017-04-09 16:48:28.965362	2017-04-09 16:48:28.965362	WINNER - ‘REALLY REALLY’ M/V
103	62	143	NA	\N	\N	2017-04-09 16:45:06.338459	2017-04-09 16:48:37.356812	\N
102	61	142	NA	\N	\N	2017-04-09 16:44:47.687899	2017-04-09 16:49:01.075212	\N
109	68	149	NA	\N	\N	2017-04-09 16:48:06.940442	2017-04-09 16:49:42.319458	\N
108	67	148	NA	\N	\N	2017-04-09 16:48:00.32809	2017-04-09 16:49:57.076743	\N
113	72	153	5wEjz3RdnKA	https://www.youtube.com/watch?v=5wEjz3RdnKA	https://i.ytimg.com/vi/5wEjz3RdnKA/mqdefault.jpg	2017-04-14 16:23:41.076016	2017-04-14 16:23:41.076016	[EXID(이엑스아이디)] 낮보다는 밤 (Night Rather Than Day) Music Video
114	73	154	uVC7EEEqlEs	https://www.youtube.com/watch?v=uVC7EEEqlEs	https://i.ytimg.com/vi/uVC7EEEqlEs/mqdefault.jpg	2017-04-14 16:23:47.579566	2017-04-14 16:23:47.579566	아이디(Eyedi) - Best Mistake (K) Official Music Video
115	14	155	zrNxJJ7fxCk	https://www.youtube.com/watch?v=zrNxJJ7fxCk	https://i.ytimg.com/vi/zrNxJJ7fxCk/mqdefault.jpg	2017-04-14 16:23:54.213752	2017-04-14 16:23:54.213752	구구단 (gugudan) - 나 같은 애 (A Girl Like Me) MV
116	74	156	NA	\N	\N	2017-04-14 16:24:00.58994	2017-04-14 16:24:00.58994	\N
117	75	157	R143j-1QAt0	https://www.youtube.com/watch?v=R143j-1QAt0	https://i.ytimg.com/vi/R143j-1QAt0/mqdefault.jpg	2017-04-14 16:24:10.182854	2017-04-14 16:24:10.182854	[MV] INX(인엑스) - 2GETHER
118	76	158	PWDISJZr7Yc	https://www.youtube.com/watch?v=PWDISJZr7Yc	https://i.ytimg.com/vi/PWDISJZr7Yc/mqdefault.jpg	2017-04-14 16:24:16.64644	2017-04-14 16:24:16.64644	[MV] Jeong Eun Ji(정은지) _ The Spring(너란 봄) (Feat. Hareem(하림))
119	77	159	BT05GiMlY4g	https://www.youtube.com/watch?v=BT05GiMlY4g	https://i.ytimg.com/vi/BT05GiMlY4g/mqdefault.jpg	2017-04-14 16:24:26.124501	2017-04-14 16:24:26.124501	[MV] MiSO(미소) _ KKPP(낄끼빠빠)
120	78	160	RuPBZ2Um1YQ	https://www.youtube.com/watch?v=RuPBZ2Um1YQ	https://i.ytimg.com/vi/RuPBZ2Um1YQ/mqdefault.jpg	2017-04-14 16:24:48.109859	2017-04-14 16:24:48.109859	Say Yes - 부르고 불러 I Miss You Official M/V
121	79	161	huGWcaaLJdE	https://www.youtube.com/watch?v=huGWcaaLJdE	https://i.ytimg.com/vi/huGWcaaLJdE/mqdefault.jpg	2017-04-14 16:25:07.027167	2017-04-14 16:25:07.027167	UNIT BLACK (유닛블랙) - 뺏겠어 (Steal Your Heart)_OFFICIAL MV
122	80	162	yYs5vBgmgi4	https://www.youtube.com/watch?v=yYs5vBgmgi4	https://i.ytimg.com/vi/yYs5vBgmgi4/mqdefault.jpg	2017-04-14 16:25:13.47628	2017-04-14 16:25:13.47628	[WASSUP(와썹)] WASSUP 3RD MINI ALBUM [COLOR TV ] Teaser
112	71	152	NA	\N	\N	2017-04-14 16:23:31.449989	2017-04-14 16:28:31.009267	\N
123	81	163	dTdsfJj4YlA	https://www.youtube.com/watch?v=dTdsfJj4YlA	https://i.ytimg.com/vi/dTdsfJj4YlA/mqdefault.jpg	2017-04-23 16:56:45.195308	2017-04-23 16:56:45.195308	[MV] Berry Good(베리굿) _ BibbidiBobbidiBoo(비비디바비디부)
124	82	164	FN4Z6HEab0M	https://www.youtube.com/watch?v=FN4Z6HEab0M	https://i.ytimg.com/vi/FN4Z6HEab0M/mqdefault.jpg	2017-04-23 16:56:51.518853	2017-04-23 16:56:51.518853	[M/V] Bonusbaby(보너스베이비) - If I Become An Adult(어른이 된다면)
125	83	165	jDzT3cS8Xew	https://www.youtube.com/watch?v=jDzT3cS8Xew	https://i.ytimg.com/vi/jDzT3cS8Xew/mqdefault.jpg	2017-04-23 16:57:01.062347	2017-04-23 16:57:01.062347	[MV] Bursters(버스터즈) _ Whenever You Call Me(나를 부르면)
126	84	166	Fn7GFHT7WO4	https://www.youtube.com/watch?v=Fn7GFHT7WO4	https://i.ytimg.com/vi/Fn7GFHT7WO4/mqdefault.jpg	2017-04-23 16:57:07.811684	2017-04-23 16:57:07.811684	[MV] DIA(다이아) _ Will you go out with me(나랑 사귈래)
127	85	167	-cAe6KIupII	https://www.youtube.com/watch?v=-cAe6KIupII	https://i.ytimg.com/vi/-cAe6KIupII/mqdefault.jpg	2017-04-23 16:57:20.352358	2017-04-23 16:57:20.352358	공민지(Minzy) - 니나노 (Feat. 플로우식(Flowsik)) Music Video Teaser
128	86	168	d9IxdwEFk1c	https://www.youtube.com/watch?v=d9IxdwEFk1c	https://i.ytimg.com/vi/d9IxdwEFk1c/mqdefault.jpg	2017-04-23 16:57:29.924211	2017-04-23 16:57:29.924211	[MV] IU(아이유) _ Palette(팔레트) (Feat. G-DRAGON)
129	87	169	uPISvnTISAM	https://www.youtube.com/watch?v=uPISvnTISAM	https://i.ytimg.com/vi/uPISvnTISAM/mqdefault.jpg	2017-04-23 16:57:36.378201	2017-04-23 16:57:36.378201	[MV] 정기고(JUNGGIGO)_ACROSS THE UNIVERSE
130	88	170	jvoSKOzP2so	https://www.youtube.com/watch?v=jvoSKOzP2so	https://i.ytimg.com/vi/jvoSKOzP2so/mqdefault.jpg	2017-04-23 16:57:42.693647	2017-04-23 16:57:42.693647	LABOUM(라붐) -  'Hwi hwi (휘휘)' Official M/V Teaser
131	89	171	1IXfIGy7kUI	https://www.youtube.com/watch?v=1IXfIGy7kUI	https://i.ytimg.com/vi/1IXfIGy7kUI/mqdefault.jpg	2017-04-23 16:57:49.33366	2017-04-23 16:57:49.33366	이해리 (Lee Hae Ri) (다비치 (DAVICHI)) - 미운 날 (Hate that I Miss You) MV
132	30	172	YPl7Boo_1ZY	https://www.youtube.com/watch?v=YPl7Boo_1ZY	https://i.ytimg.com/vi/YPl7Boo_1ZY/mqdefault.jpg	2017-04-23 16:58:20.2005	2017-04-23 16:58:20.2005	[MV] SF9(에스에프나인) _ Easy Love(쉽다)
133	90	173	1sa_j7t5z9Y	https://www.youtube.com/watch?v=1sa_j7t5z9Y	https://i.ytimg.com/vi/1sa_j7t5z9Y/mqdefault.jpg	2017-04-23 16:58:35.665432	2017-04-23 16:58:35.665432	[MV] ULALA SESSION(울랄라세션) _ Beautiful(아름다운 한컷)
135	91	175	uVC7EEEqlEs	https://www.youtube.com/watch?v=uVC7EEEqlEs	https://i.ytimg.com/vi/uVC7EEEqlEs/mqdefault.jpg	2017-04-30 08:03:43.535637	2017-04-30 08:03:43.535637	아이디(Eyedi) - Best Mistake (K) Official Music Video
137	93	177	l95Oi8sssqA	https://www.youtube.com/watch?v=l95Oi8sssqA	https://i.ytimg.com/vi/l95Oi8sssqA/mqdefault.jpg	2017-04-30 08:04:05.601566	2017-04-30 08:04:05.601566	[MV] Kim YoungChul(김영철), Hong JinYoung(홍진영) _ Ring Ring(따르릉)
138	94	178	TkSv0TkvTRs	https://www.youtube.com/watch?v=TkSv0TkvTRs	https://i.ytimg.com/vi/TkSv0TkvTRs/mqdefault.jpg	2017-04-30 08:04:21.110109	2017-04-30 08:04:21.110109	[MV] MOMOLAND( 모모랜드) _ Wonderful love(어마어마해)
139	95	179	UTRIFs1CodM	https://www.youtube.com/watch?v=UTRIFs1CodM	https://i.ytimg.com/vi/UTRIFs1CodM/mqdefault.jpg	2017-04-30 08:04:52.030725	2017-04-30 08:04:52.030725	SNUPER(스누퍼) 4th Mini Album 'Back:Hug (백허그)' M/V
140	59	180	a6JmCdDs_GM	https://www.youtube.com/watch?v=a6JmCdDs_GM	https://i.ytimg.com/vi/a6JmCdDs_GM/mqdefault.jpg	2017-04-30 08:04:58.337632	2017-04-30 08:04:58.337632	[MV] 이달의 소녀 1/3 (LOOΠΔ 1/3) "알 수 없는 비밀(Sonatine)"
141	96	181	NRF63lS1PEY	https://www.youtube.com/watch?v=NRF63lS1PEY	https://i.ytimg.com/vi/NRF63lS1PEY/mqdefault.jpg	2017-04-30 08:05:07.979057	2017-04-30 08:05:07.979057	바시티 (VARSITY) - Hole in one MV
134	83	174	NA	\N	\N	2017-04-30 08:03:30.928755	2017-04-30 08:10:18.552326	\N
136	92	176	NA	\N	\N	2017-04-30 08:03:49.862128	2017-04-30 08:12:21.793847	\N
143	98	183	xSfQ-OjlfXk	https://www.youtube.com/watch?v=xSfQ-OjlfXk	https://i.ytimg.com/vi/xSfQ-OjlfXk/mqdefault.jpg	2017-05-06 06:11:14.135201	2017-05-06 06:11:14.135201	[MV] BLACK6IX(블랙식스) _ Please(제발)
144	99	184	R8_fuXncjDo	https://www.youtube.com/watch?v=R8_fuXncjDo	https://i.ytimg.com/vi/R8_fuXncjDo/mqdefault.jpg	2017-05-06 06:11:27.029558	2017-05-06 06:11:27.029558	EXP EDITION 이엑스피 에디션 | 'FEEL LIKE THIS' MV
145	24	185	UyLQz1y9UzE	https://www.youtube.com/watch?v=UyLQz1y9UzE	https://i.ytimg.com/vi/UyLQz1y9UzE/mqdefault.jpg	2017-05-06 06:11:42.73014	2017-05-06 06:11:42.73014	러블리즈 (Lovelyz) - 지금, 우리 (Now, We) MV
146	100	186	npU-ZlTPNtA	https://www.youtube.com/watch?v=npU-ZlTPNtA	https://i.ytimg.com/vi/npU-ZlTPNtA/mqdefault.jpg	2017-05-06 06:11:49.08708	2017-05-06 06:11:49.08708	마틴스미스 (Martin Smith) - 봄 그리고 너 (Paint on Spring) MV
147	101	187	FZ6eb9x3mqE	https://www.youtube.com/watch?v=FZ6eb9x3mqE	https://i.ytimg.com/vi/FZ6eb9x3mqE/mqdefault.jpg	2017-05-06 06:12:07.680642	2017-05-06 06:12:07.680642	오월 Owol - NUNA(들이대) [feat. Microdot] Official M/V
148	102	188	ZYwXHV5-x6w	https://www.youtube.com/watch?v=ZYwXHV5-x6w	https://i.ytimg.com/vi/ZYwXHV5-x6w/mqdefault.jpg	2017-05-06 06:12:20.107438	2017-05-06 06:12:20.107438	SECHSKIES - ‘아프지 마요 (BE WELL)’ M/V
149	103	189	-rSqW5ojE5A	https://www.youtube.com/watch?v=-rSqW5ojE5A	https://i.ytimg.com/vi/-rSqW5ojE5A/mqdefault.jpg	2017-05-06 06:12:38.918862	2017-05-06 06:12:38.918862	스텔라장 (Stella Jang) - 월급은 통장을 스칠 뿐 (Vanishing Paycheck) MV
150	104	190	8gPQenyj1nI	https://www.youtube.com/watch?v=8gPQenyj1nI	https://i.ytimg.com/vi/8gPQenyj1nI/mqdefault.jpg	2017-05-06 06:12:48.325884	2017-05-06 06:12:48.325884	[MV] Triple H(트리플 H) _ 365 FRESH
142	97	182	NA	\N	\N	2017-05-06 06:11:04.447956	2017-05-06 06:15:46.505988	\N
\.


--
-- Name: youtube_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('youtube_videos_id_seq', 150, true);


--
-- Data for Name: youtube_views; Type: TABLE DATA; Schema: public; Owner: Isa
--

COPY youtube_views (id, date_d, youtube_id, youtube_views, created_at, updated_at, artiste_id, song_id) FROM stdin;
69	2017-03-27	68	193	2017-03-27 14:37:22.156451	2017-03-31 15:44:51.622329	31	31
70	2017-03-27	69	729	2017-03-27 14:37:22.760725	2017-03-31 15:44:51.625209	32	32
71	2017-03-27	70	1231	2017-03-27 14:37:23.221626	2017-03-31 15:44:51.628289	33	33
72	2017-03-27	71	15525	2017-03-27 14:37:23.880327	2017-03-31 15:44:51.631516	35	35
73	2017-03-27	72	840733	2017-03-27 14:37:24.507362	2017-03-31 15:44:51.634531	37	37
74	2017-03-27	73	452339	2017-03-27 14:37:25.125589	2017-03-31 15:44:51.63765	38	38
75	2017-03-27	74	52336	2017-03-27 14:37:25.734893	2017-03-31 15:44:51.640816	39	39
77	2017-03-27	75	3616914	2017-03-27 14:37:26.959137	2017-03-31 15:47:28.682044	8	8
78	2017-03-27	76	7963895	2017-03-27 14:37:27.610007	2017-03-31 15:47:28.687948	13	13
79	2017-03-27	77	12392509	2017-03-27 14:37:28.193415	2017-03-31 15:47:28.691639	34	34
80	2017-03-27	78	66754873	2017-03-27 14:37:29.126535	2017-03-31 15:47:28.69493	36	36
41	2017-03-27	40	168034	2017-03-27 14:31:11.475032	2017-03-31 15:47:28.698196	1	1
101	2017-03-28	60	12162	2017-03-27 15:08:15.693624	2017-03-31 15:47:28.715651	23	23
99	2017-03-28	58	192366	2017-03-27 15:08:15.49745	2017-03-31 15:47:28.719459	21	21
82	2017-03-28	41	2098496	2017-03-27 15:08:13.464551	2017-03-31 15:47:28.722935	2	2
213	2017-04-01	44	509679	2017-04-01 09:52:46.804235	2017-04-01 09:52:46.804235	5	5
81	2017-03-28	40	168045	2017-03-27 15:08:13.06677	2017-03-31 15:44:51.412076	1	1
83	2017-03-28	42	600404	2017-03-27 15:08:13.588141	2017-03-31 15:44:51.42333	3	3
84	2017-03-28	43	30732	2017-03-27 15:08:13.682803	2017-03-31 15:44:51.427175	4	4
85	2017-03-28	44	484303	2017-03-27 15:08:13.78051	2017-03-31 15:44:51.43122	5	5
86	2017-03-28	45	8120	2017-03-27 15:08:13.884798	2017-03-31 15:44:51.434515	6	6
87	2017-03-28	46	473500	2017-03-27 15:08:13.992422	2017-03-31 15:44:51.43766	7	7
88	2017-03-28	47	596761	2017-03-27 15:08:14.099557	2017-03-31 15:44:51.440678	9	9
89	2017-03-28	48	80622	2017-03-27 15:08:14.203295	2017-03-31 15:44:51.443642	10	10
90	2017-03-28	49	2591074	2017-03-27 15:08:14.57278	2017-03-31 15:44:51.446688	11	11
91	2017-03-28	50	165746	2017-03-27 15:08:14.733854	2017-03-31 15:44:51.449672	12	12
92	2017-03-28	51	788353	2017-03-27 15:08:14.824403	2017-03-31 15:44:51.452547	14	14
93	2017-03-28	52	130709	2017-03-27 15:08:14.920555	2017-03-31 15:44:51.45586	15	15
94	2017-03-28	53	41711	2017-03-27 15:08:15.019698	2017-03-31 15:44:51.458959	16	16
95	2017-03-28	54	11681	2017-03-27 15:08:15.107845	2017-03-31 15:44:51.46188	17	17
96	2017-03-28	55	4712	2017-03-27 15:08:15.204936	2017-03-31 15:44:51.465241	18	18
97	2017-03-28	56	122535	2017-03-27 15:08:15.306145	2017-03-31 15:44:51.468523	19	19
98	2017-03-28	57	108720	2017-03-27 15:08:15.403413	2017-03-31 15:44:51.471558	20	20
100	2017-03-28	59	31491	2017-03-27 15:08:15.596642	2017-03-31 15:44:51.474579	22	22
102	2017-03-28	61	2386719	2017-03-27 15:08:15.790399	2017-03-31 15:44:51.477685	24	24
103	2017-03-28	62	2293	2017-03-27 15:08:15.89532	2017-03-31 15:44:51.481283	25	25
104	2017-03-28	63	134960	2017-03-27 15:08:15.985015	2017-03-31 15:44:51.484523	26	26
105	2017-03-28	64	546217	2017-03-27 15:08:16.083714	2017-03-31 15:44:51.488146	27	27
106	2017-03-28	65	3861012	2017-03-27 15:08:16.178796	2017-03-31 15:44:51.491711	28	28
107	2017-03-28	66	247237	2017-03-27 15:08:16.273607	2017-03-31 15:44:51.494852	29	29
108	2017-03-28	67	919073	2017-03-27 15:08:16.374246	2017-03-31 15:44:51.498383	30	30
109	2017-03-28	68	193	2017-03-27 15:08:16.482482	2017-03-31 15:44:51.501806	31	31
110	2017-03-28	69	730	2017-03-27 15:08:16.578192	2017-03-31 15:44:51.505031	32	32
111	2017-03-28	70	1231	2017-03-27 15:08:16.681982	2017-03-31 15:44:51.508097	33	33
112	2017-03-28	71	15529	2017-03-27 15:08:16.786878	2017-03-31 15:44:51.511171	35	35
113	2017-03-28	72	840764	2017-03-27 15:08:16.88103	2017-03-31 15:44:51.514415	37	37
114	2017-03-28	73	452496	2017-03-27 15:08:16.976782	2017-03-31 15:44:51.517505	38	38
115	2017-03-28	74	52345	2017-03-27 15:08:17.074177	2017-03-31 15:44:51.520589	39	39
117	2017-03-28	75	3621003	2017-03-27 15:08:17.550173	2017-03-31 15:44:51.523577	8	8
118	2017-03-28	76	7968050	2017-03-27 15:08:17.64175	2017-03-31 15:44:51.526961	13	13
119	2017-03-28	77	12396966	2017-03-27 15:08:17.736416	2017-03-31 15:44:51.530066	34	34
120	2017-03-28	78	66773648	2017-03-27 15:08:17.835137	2017-03-31 15:44:51.542518	36	36
43	2017-03-27	42	600256	2017-03-27 14:31:12.728153	2017-03-31 15:44:51.545999	3	3
46	2017-03-27	45	8114	2017-03-27 14:31:14.665523	2017-03-31 15:44:51.549799	6	6
49	2017-03-27	48	80617	2017-03-27 14:31:16.364749	2017-03-31 15:44:51.553123	10	10
50	2017-03-27	49	2589770	2017-03-27 14:31:17.640136	2017-03-31 15:44:51.556424	11	11
53	2017-03-27	52	130699	2017-03-27 14:31:19.280469	2017-03-31 15:44:51.559602	15	15
56	2017-03-27	55	4712	2017-03-27 14:31:20.673689	2017-03-31 15:44:51.562634	18	18
57	2017-03-27	56	122531	2017-03-27 14:31:21.120819	2017-03-31 15:44:51.565992	19	19
61	2017-03-27	60	421531721	2017-03-27 14:31:23.51594	2017-03-31 15:44:51.569343	23	23
62	2017-03-27	61	2385453	2017-03-27 14:31:24.069363	2017-03-31 15:44:51.572585	24	24
63	2017-03-27	62	2291	2017-03-27 14:31:24.511748	2017-03-31 15:44:51.575699	25	25
64	2017-03-27	63	134935	2017-03-27 14:31:24.910932	2017-03-31 15:44:51.578971	26	26
42	2017-03-27	41	89297	2017-03-27 14:31:12.172887	2017-03-31 15:44:51.582804	2	2
45	2017-03-27	44	484245	2017-03-27 14:31:13.91405	2017-03-31 15:44:51.586025	5	5
47	2017-03-27	46	473360	2017-03-27 14:31:15.160611	2017-03-31 15:44:51.589137	7	7
48	2017-03-27	47	596753	2017-03-27 14:31:15.863443	2017-03-31 15:44:51.591947	9	9
51	2017-03-27	50	165721	2017-03-27 14:31:18.029509	2017-03-31 15:44:51.594944	12	12
52	2017-03-27	51	787964	2017-03-27 14:31:18.623107	2017-03-31 15:44:51.597853	14	14
54	2017-03-27	53	41709	2017-03-27 14:31:19.759863	2017-03-31 15:44:51.600828	16	16
55	2017-03-27	54	11681	2017-03-27 14:31:20.204315	2017-03-31 15:44:51.603736	17	17
58	2017-03-27	57	108719	2017-03-27 14:31:21.702795	2017-03-31 15:44:51.606766	20	20
59	2017-03-27	58	478712744	2017-03-27 14:31:22.448707	2017-03-31 15:44:51.609994	21	21
60	2017-03-27	59	31489	2017-03-27 14:31:22.927821	2017-03-31 15:44:51.613197	22	22
65	2017-03-27	64	546154	2017-03-27 14:31:25.461175	2017-03-31 15:44:51.616491	27	27
67	2017-03-27	66	247136	2017-03-27 14:37:20.812588	2017-03-31 15:44:51.619487	29	29
44	2017-03-27	43	30687	2017-03-27 14:31:13.380867	2017-03-31 15:47:28.701383	4	4
66	2017-03-27	65	3860601	2017-03-27 14:37:20.212075	2017-03-31 15:47:28.705178	28	28
68	2017-03-27	67	918999	2017-03-27 14:37:21.429252	2017-03-31 15:47:28.708629	30	30
116	2017-03-28	79	0	2017-03-27 15:08:17.456104	2017-03-31 15:47:28.712112	40	40
217	2017-04-01	48	81271	2017-04-01 09:52:59.081347	2017-04-01 09:52:59.081347	10	10
218	2017-04-01	50	171646	2017-04-01 09:53:02.127717	2017-04-01 09:53:02.127717	12	12
225	2017-04-01	53	42506	2017-04-01 09:53:23.681864	2017-04-01 09:53:23.681864	16	16
227	2017-04-01	54	11986	2017-04-01 09:53:29.813828	2017-04-01 09:53:29.813828	17	17
229	2017-04-01	56	123427	2017-04-01 09:53:35.952159	2017-04-01 09:53:35.952159	19	19
231	2017-04-01	60	12499	2017-04-01 09:53:42.092492	2017-04-01 09:53:42.092492	23	23
211	2017-04-01	85	0	2017-04-01 09:52:40.670854	2017-04-01 10:14:16.089232	47	126
212	2017-04-01	43	38525	2017-04-01 09:52:43.723684	2017-04-01 10:14:19.183503	4	4
214	2017-04-01	46	517299	2017-04-01 09:52:49.881096	2017-04-01 10:14:25.292634	7	7
215	2017-04-01	86	883890	2017-04-01 09:52:52.938274	2017-04-01 10:14:28.388348	48	127
216	2017-04-01	87	0	2017-04-01 09:52:56.009668	2017-04-01 10:14:28.394637	41	120
219	2017-04-01	76	8654911	2017-04-01 09:53:05.207276	2017-04-01 10:14:37.567407	13	13
221	2017-04-01	88	0	2017-04-01 09:53:11.341433	2017-04-01 10:14:40.658701	50	129
222	2017-04-01	89	20074815	2017-04-01 09:53:14.411869	2017-04-01 10:14:43.732496	42	121
223	2017-04-01	51	859910	2017-04-01 09:53:17.469236	2017-04-01 10:14:46.791099	14	14
224	2017-04-01	52	133180	2017-04-01 09:53:20.598393	2017-04-01 10:14:49.854762	15	15
226	2017-04-01	81	0	2017-04-01 09:53:26.746839	2017-04-01 10:14:52.910162	51	130
228	2017-04-01	90	0	2017-04-01 09:53:32.882537	2017-04-01 10:14:55.972125	52	131
230	2017-04-01	91	103716	2017-04-01 09:53:39.0013	2017-04-01 10:15:02.111462	53	132
232	2017-04-01	92	0	2017-04-01 09:53:45.171819	2017-04-01 10:15:05.171486	43	122
233	2017-04-01	93	16423	2017-04-01 09:53:48.224029	2017-04-01 10:15:08.271453	54	133
236	2017-04-01	62	2339	2017-04-01 09:53:57.397541	2017-04-01 09:53:57.397541	25	25
243	2017-04-01	69	859	2017-04-01 09:54:18.907383	2017-04-01 09:54:18.907383	32	32
245	2017-04-01	70	1273	2017-04-01 09:54:25.013044	2017-04-01 09:54:25.013044	33	33
247	2017-04-01	99	0	2017-04-01 09:54:28.099779	2017-04-01 09:54:28.099779	38	139
249	2017-04-01	79	0	2017-04-01 09:54:31.173609	2017-04-01 09:54:31.173609	40	40
210	2017-04-01	42	625147	2017-04-01 09:52:37.597803	2017-04-01 10:14:16.074883	3	3
220	2017-04-01	84	4447103	2017-04-01 09:53:08.274003	2017-04-01 10:14:40.644356	49	128
234	2017-04-01	82	0	2017-04-01 09:53:51.278056	2017-04-01 10:15:08.282133	55	134
235	2017-04-01	61	2497014	2017-04-01 09:53:54.345725	2017-04-01 10:15:11.33427	24	24
237	2017-04-01	94	4337965	2017-04-01 09:54:00.468124	2017-04-01 10:15:17.436549	56	135
238	2017-04-01	83	14741	2017-04-01 09:54:03.550733	2017-04-01 10:15:20.514196	44	123
239	2017-04-01	95	0	2017-04-01 09:54:06.611768	2017-04-01 10:15:20.53949	57	136
240	2017-04-01	80	4833858	2017-04-01 09:54:09.715858	2017-04-01 10:15:23.596864	58	137
241	2017-04-01	66	265588	2017-04-01 09:54:12.773102	2017-04-01 10:15:26.688654	29	29
242	2017-04-01	96	238987	2017-04-01 09:54:15.83949	2017-04-01 10:15:29.749608	45	124
244	2017-04-01	97	669225	2017-04-01 09:54:21.953363	2017-04-01 10:15:35.857679	46	125
246	2017-04-01	98	0	2017-04-01 09:54:28.084651	2017-04-01 10:15:38.931334	59	138
248	2017-04-01	74	53230	2017-04-01 09:54:31.159283	2017-04-01 10:15:42.02656	39	39
251	2017-04-10	85	0	2017-04-09 16:27:40.889011	2017-04-09 16:27:40.889011	47	126
250	2017-04-10	42	662860	2017-04-09 16:27:40.879082	2017-04-09 16:41:29.043838	3	3
252	2017-04-10	44	0	2017-04-09 16:41:32.118405	2017-04-09 16:41:32.118405	5	5
253	2017-04-10	46	583417	2017-04-09 16:41:35.173702	2017-04-09 16:41:35.173702	7	7
254	2017-04-10	100	41397	2017-04-09 16:44:31.621725	2017-04-09 16:44:31.621725	60	140
255	2017-04-10	86	0	2017-04-09 16:44:34.685882	2017-04-09 16:44:34.685882	48	127
256	2017-04-10	87	0	2017-04-09 16:44:34.702176	2017-04-09 16:44:34.702176	41	120
257	2017-04-10	101	1172414	2017-04-09 16:44:41.401205	2017-04-09 16:44:41.401205	11	141
258	2017-04-10	102	5370	2017-04-09 16:44:47.699695	2017-04-09 16:44:47.699695	61	142
259	2017-04-10	76	0	2017-04-09 16:44:50.773279	2017-04-09 16:44:50.773279	13	13
260	2017-04-10	84	0	2017-04-09 16:44:53.82494	2017-04-09 16:44:53.82494	49	128
261	2017-04-10	88	0	2017-04-09 16:44:53.839958	2017-04-09 16:44:53.839958	50	129
262	2017-04-10	89	23461328	2017-04-09 16:44:56.89924	2017-04-09 16:44:56.89924	42	121
263	2017-04-10	51	998022	2017-04-09 16:44:59.959564	2017-04-09 16:44:59.959564	14	14
264	2017-04-10	81	0	2017-04-09 16:44:59.974241	2017-04-09 16:44:59.974241	51	130
265	2017-04-10	103	239	2017-04-09 16:45:06.349938	2017-04-09 16:45:06.349938	62	143
266	2017-04-10	104	135960	2017-04-09 16:45:12.752144	2017-04-09 16:45:12.752144	63	144
267	2017-04-10	90	0	2017-04-09 16:45:12.759215	2017-04-09 16:45:12.759215	52	131
268	2017-04-10	105	0	2017-04-09 16:47:22.543745	2017-04-09 16:47:22.543745	64	145
269	2017-04-10	91	122567	2017-04-09 16:47:25.625762	2017-04-09 16:47:25.625762	53	132
270	2017-04-10	106	0	2017-04-09 16:47:29.184924	2017-04-09 16:47:29.184924	65	146
271	2017-04-10	92	0	2017-04-09 16:47:29.192792	2017-04-09 16:47:29.192792	43	122
272	2017-04-10	93	0	2017-04-09 16:47:32.240722	2017-04-09 16:47:32.240722	54	133
273	2017-04-10	82	0	2017-04-09 16:47:32.254452	2017-04-09 16:47:32.254452	55	134
274	2017-04-10	61	2680459	2017-04-09 16:47:35.32743	2017-04-09 16:47:35.32743	24	24
275	2017-04-10	94	0	2017-04-09 16:47:38.382306	2017-04-09 16:47:38.382306	56	135
276	2017-04-10	83	40073	2017-04-09 16:47:41.479082	2017-04-09 16:47:41.479082	44	123
277	2017-04-10	107	0	2017-04-09 16:47:47.912146	2017-04-09 16:47:47.912146	66	147
278	2017-04-10	95	0	2017-04-09 16:47:47.927236	2017-04-09 16:47:47.927236	57	136
279	2017-04-10	80	0	2017-04-09 16:47:50.982087	2017-04-09 16:47:50.982087	58	137
280	2017-04-10	66	0	2017-04-09 16:47:54.028148	2017-04-09 16:47:54.028148	29	29
281	2017-04-10	108	0	2017-04-09 16:48:00.339554	2017-04-09 16:48:00.339554	67	148
282	2017-04-10	109	53	2017-04-09 16:48:06.952345	2017-04-09 16:48:06.952345	68	149
283	2017-04-10	96	0	2017-04-09 16:48:10.077089	2017-04-09 16:48:10.077089	45	124
284	2017-04-10	69	1019	2017-04-09 16:48:13.135891	2017-04-09 16:48:13.135891	32	32
285	2017-04-10	97	0	2017-04-09 16:48:16.251689	2017-04-09 16:48:16.251689	46	125
286	2017-04-10	110	762609	2017-04-09 16:48:22.653971	2017-04-09 16:48:22.653971	69	150
287	2017-04-10	98	0	2017-04-09 16:48:22.662823	2017-04-09 16:48:22.662823	59	138
288	2017-04-10	99	0	2017-04-09 16:48:22.671837	2017-04-09 16:48:22.671837	38	139
289	2017-04-10	111	6549756	2017-04-09 16:48:28.978479	2017-04-09 16:48:28.978479	70	151
290	2017-04-15	85	0	2017-04-14 16:23:18.021549	2017-04-14 16:23:18.021549	47	126
291	2017-04-15	44	560475	2017-04-14 16:23:21.730913	2017-04-14 16:23:21.730913	5	5
292	2017-04-15	46	619404	2017-04-14 16:23:24.827016	2017-04-14 16:23:24.827016	7	7
293	2017-04-15	112	104732	2017-04-14 16:23:31.46811	2017-04-14 16:23:31.46811	71	152
294	2017-04-15	87	0	2017-04-14 16:23:31.485371	2017-04-14 16:23:31.485371	41	120
295	2017-04-15	101	1642727	2017-04-14 16:23:34.558351	2017-04-14 16:23:34.558351	11	141
296	2017-04-15	102	0	2017-04-14 16:23:34.580232	2017-04-14 16:23:34.580232	61	142
297	2017-04-15	113	2198526	2017-04-14 16:23:41.087375	2017-04-14 16:23:41.087375	72	153
298	2017-04-15	114	9210	2017-04-14 16:23:47.590799	2017-04-14 16:23:47.590799	73	154
299	2017-04-15	88	0	2017-04-14 16:23:47.598613	2017-04-14 16:23:47.598613	50	129
300	2017-04-15	115	1062202	2017-04-14 16:23:54.224675	2017-04-14 16:23:54.224675	14	155
301	2017-04-15	103	0	2017-04-14 16:23:54.232563	2017-04-14 16:23:54.232563	62	143
302	2017-04-15	104	201226	2017-04-14 16:23:57.338193	2017-04-14 16:23:57.338193	63	144
303	2017-04-15	116	0	2017-04-14 16:24:00.601289	2017-04-14 16:24:00.601289	74	156
304	2017-04-15	90	0	2017-04-14 16:24:00.609849	2017-04-14 16:24:00.609849	52	131
305	2017-04-15	105	119927	2017-04-14 16:24:03.655069	2017-04-14 16:24:03.655069	64	145
306	2017-04-15	117	33749	2017-04-14 16:24:10.194829	2017-04-14 16:24:10.194829	75	157
307	2017-04-15	118	1427565	2017-04-14 16:24:16.658033	2017-04-14 16:24:16.658033	76	158
308	2017-04-15	106	0	2017-04-14 16:24:16.666259	2017-04-14 16:24:16.666259	65	146
309	2017-04-15	92	0	2017-04-14 16:24:16.674312	2017-04-14 16:24:16.674312	43	122
310	2017-04-15	93	19818	2017-04-14 16:24:19.719532	2017-04-14 16:24:19.719532	54	133
311	2017-04-15	82	0	2017-04-14 16:24:19.734428	2017-04-14 16:24:19.734428	55	134
312	2017-04-15	119	209555	2017-04-14 16:24:26.135609	2017-04-14 16:24:26.135609	77	159
313	2017-04-15	94	6508845	2017-04-14 16:24:29.19453	2017-04-14 16:24:29.19453	56	135
314	2017-04-15	83	46075	2017-04-14 16:24:32.252349	2017-04-14 16:24:32.252349	44	123
315	2017-04-15	107	1548373	2017-04-14 16:24:35.343977	2017-04-14 16:24:35.343977	66	147
316	2017-04-15	95	0	2017-04-14 16:24:35.359398	2017-04-14 16:24:35.359398	57	136
317	2017-04-15	80	7380707	2017-04-14 16:24:38.42213	2017-04-14 16:24:38.42213	58	137
318	2017-04-15	66	306834	2017-04-14 16:24:41.642815	2017-04-14 16:24:41.642815	29	29
319	2017-04-15	120	25212	2017-04-14 16:24:48.117176	2017-04-14 16:24:48.117176	78	160
320	2017-04-15	109	0	2017-04-14 16:24:48.123994	2017-04-14 16:24:48.123994	68	149
321	2017-04-15	96	349447	2017-04-14 16:24:51.168909	2017-04-14 16:24:51.168909	45	124
322	2017-04-15	69	1116	2017-04-14 16:24:54.261721	2017-04-14 16:24:54.261721	32	32
323	2017-04-15	97	695430	2017-04-14 16:24:57.318424	2017-04-14 16:24:57.318424	46	125
324	2017-04-15	110	766137	2017-04-14 16:25:00.375156	2017-04-14 16:25:00.375156	69	150
325	2017-04-15	98	0	2017-04-14 16:25:00.389925	2017-04-14 16:25:00.389925	59	138
326	2017-04-15	121	162565	2017-04-14 16:25:07.039333	2017-04-14 16:25:07.039333	79	161
327	2017-04-15	99	0	2017-04-14 16:25:07.047264	2017-04-14 16:25:07.047264	38	139
328	2017-04-15	122	13137	2017-04-14 16:25:13.487242	2017-04-14 16:25:13.487242	80	162
329	2017-04-15	111	9081856	2017-04-14 16:25:16.53954	2017-04-14 16:25:16.53954	70	151
330	2017-04-24	85	0	2017-04-23 16:51:30.642508	2017-04-23 16:51:30.642508	47	126
331	2017-04-24	123	454958	2017-04-23 16:56:45.220365	2017-04-23 16:56:45.220365	81	163
332	2017-04-24	124	12419	2017-04-23 16:56:51.524085	2017-04-23 16:56:51.524085	82	164
333	2017-04-24	46	677490	2017-04-23 16:56:54.581275	2017-04-23 16:56:54.581275	7	7
334	2017-04-24	125	134217	2017-04-23 16:57:01.067248	2017-04-23 16:57:01.067248	83	165
335	2017-04-24	112	0	2017-04-23 16:57:01.075608	2017-04-23 16:57:01.075608	71	152
336	2017-04-24	87	0	2017-04-23 16:57:01.083089	2017-04-23 16:57:01.083089	41	120
337	2017-04-24	126	772252	2017-04-23 16:57:07.823346	2017-04-23 16:57:07.823346	84	166
338	2017-04-24	102	0	2017-04-23 16:57:07.831958	2017-04-23 16:57:07.831958	61	142
339	2017-04-24	113	3901077	2017-04-23 16:57:10.884479	2017-04-23 16:57:10.884479	72	153
340	2017-04-24	114	10118	2017-04-23 16:57:13.969319	2017-04-23 16:57:13.969319	73	154
341	2017-04-24	127	1135988	2017-04-23 16:57:20.356901	2017-04-23 16:57:20.356901	85	167
342	2017-04-24	88	0	2017-04-23 16:57:20.364749	2017-04-23 16:57:20.364749	50	129
343	2017-04-24	103	0	2017-04-23 16:57:20.372005	2017-04-23 16:57:20.372005	62	143
344	2017-04-24	116	0	2017-04-23 16:57:20.378676	2017-04-23 16:57:20.378676	74	156
345	2017-04-24	117	39491	2017-04-23 16:57:23.441262	2017-04-23 16:57:23.441262	75	157
346	2017-04-24	128	7150604	2017-04-23 16:57:29.935038	2017-04-23 16:57:29.935038	86	168
347	2017-04-24	129	49896	2017-04-23 16:57:36.382805	2017-04-23 16:57:36.382805	87	169
348	2017-04-24	106	0	2017-04-23 16:57:36.390365	2017-04-23 16:57:36.390365	65	146
349	2017-04-24	130	140349	2017-04-23 16:57:42.704606	2017-04-23 16:57:42.704606	88	170
350	2017-04-24	131	412307	2017-04-23 16:57:49.344772	2017-04-23 16:57:49.344772	89	171
351	2017-04-24	93	20677	2017-04-23 16:57:52.394241	2017-04-23 16:57:52.394241	54	133
352	2017-04-24	82	0	2017-04-23 16:57:52.401799	2017-04-23 16:57:52.401799	55	134
353	2017-04-24	119	379795	2017-04-23 16:57:55.458402	2017-04-23 16:57:55.458402	77	159
354	2017-04-24	94	7747433	2017-04-23 16:57:58.508512	2017-04-23 16:57:58.508512	56	135
355	2017-04-24	83	61227	2017-04-23 16:58:01.566976	2017-04-23 16:58:01.566976	44	123
356	2017-04-24	107	1894345	2017-04-23 16:58:04.621763	2017-04-23 16:58:04.621763	66	147
357	2017-04-24	95	0	2017-04-23 16:58:04.629578	2017-04-23 16:58:04.629578	57	136
358	2017-04-24	80	8902715	2017-04-23 16:58:07.742778	2017-04-23 16:58:07.742778	58	137
359	2017-04-24	120	34866	2017-04-23 16:58:10.804957	2017-04-23 16:58:10.804957	78	160
360	2017-04-24	109	0	2017-04-23 16:58:10.819909	2017-04-23 16:58:10.819909	68	149
361	2017-04-24	96	415405	2017-04-23 16:58:13.902147	2017-04-23 16:58:13.902147	45	124
362	2017-04-24	132	871511	2017-04-23 16:58:20.211695	2017-04-23 16:58:20.211695	30	172
363	2017-04-24	69	1247	2017-04-23 16:58:23.266713	2017-04-23 16:58:23.266713	32	32
364	2017-04-24	97	706427	2017-04-23 16:58:26.323804	2017-04-23 16:58:26.323804	46	125
365	2017-04-24	110	769658	2017-04-23 16:58:29.373561	2017-04-23 16:58:29.373561	69	150
366	2017-04-24	133	115745	2017-04-23 16:58:35.676678	2017-04-23 16:58:35.676678	90	173
367	2017-04-24	121	311413	2017-04-23 16:58:38.725297	2017-04-23 16:58:38.725297	79	161
368	2017-04-24	122	15309	2017-04-23 16:58:41.785922	2017-04-23 16:58:41.785922	80	162
369	2017-04-24	111	12501275	2017-04-23 16:58:44.844923	2017-04-23 16:58:44.844923	70	151
370	2017-04-30	85	0	2017-04-30 08:03:17.56805	2017-04-30 08:03:17.56805	47	126
371	2017-04-30	123	538560	2017-04-30 08:03:21.255371	2017-04-30 08:03:21.255371	81	163
372	2017-04-30	124	27366	2017-04-30 08:03:24.310519	2017-04-30 08:03:24.310519	82	164
373	2017-04-30	134	3922940	2017-04-30 08:03:30.940611	2017-04-30 08:03:30.940611	83	174
374	2017-04-30	112	0	2017-04-30 08:03:30.954098	2017-04-30 08:03:30.954098	71	152
375	2017-04-30	87	0	2017-04-30 08:03:30.961128	2017-04-30 08:03:30.961128	41	120
376	2017-04-30	126	1086034	2017-04-30 08:03:34.018554	2017-04-30 08:03:34.018554	84	166
377	2017-04-30	102	0	2017-04-30 08:03:34.025923	2017-04-30 08:03:34.025923	61	142
378	2017-04-30	113	4585819	2017-04-30 08:03:37.099338	2017-04-30 08:03:37.099338	72	153
379	2017-04-30	135	10620	2017-04-30 08:03:43.546744	2017-04-30 08:03:43.546744	91	175
380	2017-04-30	88	0	2017-04-30 08:03:43.554011	2017-04-30 08:03:43.554011	50	129
381	2017-04-30	103	0	2017-04-30 08:03:43.5609	2017-04-30 08:03:43.5609	62	143
382	2017-04-30	116	0	2017-04-30 08:03:43.567314	2017-04-30 08:03:43.567314	74	156
383	2017-04-30	136	7849	2017-04-30 08:03:49.87358	2017-04-30 08:03:49.87358	92	176
384	2017-04-30	117	42213	2017-04-30 08:03:52.967854	2017-04-30 08:03:52.967854	75	157
385	2017-04-30	128	13184324	2017-04-30 08:03:56.057484	2017-04-30 08:03:56.057484	86	168
386	2017-04-30	129	67190	2017-04-30 08:03:59.131081	2017-04-30 08:03:59.131081	87	169
387	2017-04-30	106	0	2017-04-30 08:03:59.148327	2017-04-30 08:03:59.148327	65	146
388	2017-04-30	137	440100	2017-04-30 08:04:05.612872	2017-04-30 08:04:05.612872	93	177
389	2017-04-30	130	143015	2017-04-30 08:04:08.664659	2017-04-30 08:04:08.664659	88	170
390	2017-04-30	93	21005	2017-04-30 08:04:11.726913	2017-04-30 08:04:11.726913	54	133
391	2017-04-30	82	0	2017-04-30 08:04:11.742429	2017-04-30 08:04:11.742429	55	134
392	2017-04-30	119	439590	2017-04-30 08:04:14.801087	2017-04-30 08:04:14.801087	77	159
393	2017-04-30	138	260976	2017-04-30 08:04:21.121343	2017-04-30 08:04:21.121343	94	178
394	2017-04-30	94	8563838	2017-04-30 08:04:24.172269	2017-04-30 08:04:24.172269	56	135
395	2017-04-30	107	2088945	2017-04-30 08:04:27.291642	2017-04-30 08:04:27.291642	66	147
396	2017-04-30	95	0	2017-04-30 08:04:27.30594	2017-04-30 08:04:27.30594	57	136
397	2017-04-30	80	9812259	2017-04-30 08:04:30.358419	2017-04-30 08:04:30.358419	58	137
398	2017-04-30	120	38189	2017-04-30 08:04:33.422142	2017-04-30 08:04:33.422142	78	160
399	2017-04-30	109	0	2017-04-30 08:04:33.433071	2017-04-30 08:04:33.433071	68	149
400	2017-04-30	96	457963	2017-04-30 08:04:36.485	2017-04-30 08:04:36.485	45	124
401	2017-04-30	132	1107945	2017-04-30 08:04:39.54933	2017-04-30 08:04:39.54933	30	172
402	2017-04-30	69	1319	2017-04-30 08:04:42.678148	2017-04-30 08:04:42.678148	32	32
403	2017-04-30	97	711365	2017-04-30 08:04:45.740509	2017-04-30 08:04:45.740509	46	125
404	2017-04-30	139	64108	2017-04-30 08:04:52.041791	2017-04-30 08:04:52.041791	95	179
405	2017-04-30	140	80070	2017-04-30 08:04:58.348737	2017-04-30 08:04:58.348737	59	180
406	2017-04-30	133	177630	2017-04-30 08:05:01.408502	2017-04-30 08:05:01.408502	90	173
407	2017-04-30	141	62123	2017-04-30 08:05:07.991063	2017-04-30 08:05:07.991063	96	181
408	2017-04-30	122	15688	2017-04-30 08:05:11.054524	2017-04-30 08:05:11.054524	80	162
409	2017-04-30	111	14604539	2017-04-30 08:05:14.118715	2017-04-30 08:05:14.118715	70	151
410	2017-05-06	85	0	2017-05-06 06:10:57.976937	2017-05-06 06:10:57.976937	47	126
411	2017-05-06	142	71541036	2017-05-06 06:11:04.452705	2017-05-06 06:11:04.452705	97	182
412	2017-05-06	123	592558	2017-05-06 06:11:07.50788	2017-05-06 06:11:07.50788	81	163
413	2017-05-06	143	450585	2017-05-06 06:11:14.146724	2017-05-06 06:11:14.146724	98	183
414	2017-05-06	124	34909	2017-05-06 06:11:17.191555	2017-05-06 06:11:17.191555	82	164
415	2017-05-06	134	0	2017-05-06 06:11:17.206602	2017-05-06 06:11:17.206602	83	174
416	2017-05-06	112	0	2017-05-06 06:11:17.21474	2017-05-06 06:11:17.21474	71	152
417	2017-05-06	126	1273723	2017-05-06 06:11:20.611949	2017-05-06 06:11:20.611949	84	166
418	2017-05-06	102	0	2017-05-06 06:11:20.626452	2017-05-06 06:11:20.626452	61	142
419	2017-05-06	144	409636	2017-05-06 06:11:27.041294	2017-05-06 06:11:27.041294	99	184
420	2017-05-06	103	0	2017-05-06 06:11:27.049976	2017-05-06 06:11:27.049976	62	143
421	2017-05-06	116	0	2017-05-06 06:11:27.0573	2017-05-06 06:11:27.0573	74	156
422	2017-05-06	136	0	2017-05-06 06:11:27.064024	2017-05-06 06:11:27.064024	92	176
423	2017-05-06	137	514901	2017-05-06 06:11:30.168222	2017-05-06 06:11:30.168222	93	177
424	2017-05-06	130	144693	2017-05-06 06:11:33.223997	2017-05-06 06:11:33.223997	88	170
425	2017-05-06	93	21228	2017-05-06 06:11:36.277731	2017-05-06 06:11:36.277731	54	133
426	2017-05-06	82	0	2017-05-06 06:11:36.292355	2017-05-06 06:11:36.292355	55	134
427	2017-05-06	145	285386	2017-05-06 06:11:42.741693	2017-05-06 06:11:42.741693	24	185
428	2017-05-06	146	51876	2017-05-06 06:11:49.102496	2017-05-06 06:11:49.102496	100	186
429	2017-05-06	119	510171	2017-05-06 06:11:52.162281	2017-05-06 06:11:52.162281	77	159
430	2017-05-06	138	366182	2017-05-06 06:11:55.263299	2017-05-06 06:11:55.263299	94	178
431	2017-05-06	94	9221726	2017-05-06 06:11:58.327737	2017-05-06 06:11:58.327737	56	135
432	2017-05-06	107	2253779	2017-05-06 06:12:01.383474	2017-05-06 06:12:01.383474	66	147
433	2017-05-06	147	79545	2017-05-06 06:12:07.691971	2017-05-06 06:12:07.691971	101	187
434	2017-05-06	95	0	2017-05-06 06:12:07.699765	2017-05-06 06:12:07.699765	57	136
435	2017-05-06	80	10625693	2017-05-06 06:12:10.751125	2017-05-06 06:12:10.751125	58	137
436	2017-05-06	120	40755	2017-05-06 06:12:13.810421	2017-05-06 06:12:13.810421	78	160
437	2017-05-06	148	916031	2017-05-06 06:12:20.112576	2017-05-06 06:12:20.112576	102	188
438	2017-05-06	109	0	2017-05-06 06:12:20.121581	2017-05-06 06:12:20.121581	68	149
439	2017-05-06	96	489281	2017-05-06 06:12:23.191547	2017-05-06 06:12:23.191547	45	124
440	2017-05-06	132	1241732	2017-05-06 06:12:26.248491	2017-05-06 06:12:26.248491	30	172
441	2017-05-06	97	714929	2017-05-06 06:12:29.329673	2017-05-06 06:12:29.329673	46	125
442	2017-05-06	139	89288	2017-05-06 06:12:32.38818	2017-05-06 06:12:32.38818	95	179
443	2017-05-06	149	60606	2017-05-06 06:12:38.931135	2017-05-06 06:12:38.931135	103	189
444	2017-05-06	140	125370	2017-05-06 06:12:41.987658	2017-05-06 06:12:41.987658	59	180
445	2017-05-06	150	3642032	2017-05-06 06:12:48.337285	2017-05-06 06:12:48.337285	104	190
446	2017-05-06	133	141541	2017-05-06 06:12:51.395988	2017-05-06 06:12:51.395988	90	173
447	2017-05-06	141	134256	2017-05-06 06:12:54.451044	2017-05-06 06:12:54.451044	96	181
448	2017-05-06	122	15864	2017-05-06 06:12:57.513051	2017-05-06 06:12:57.513051	80	162
449	2017-05-06	111	16364276	2017-05-06 06:13:00.568145	2017-05-06 06:13:00.568145	70	151
\.


--
-- Name: youtube_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Isa
--

SELECT pg_catalog.setval('youtube_views_id_seq', 449, true);


--
-- PostgreSQL database dump complete
--

