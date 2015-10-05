--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: galleries; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE galleries (
    id integer NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying
);


ALTER TABLE public.galleries OWNER TO elmirill;

--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE galleries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galleries_id_seq OWNER TO elmirill;

--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE galleries_id_seq OWNED BY galleries.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE news (
    id integer NOT NULL,
    title character varying,
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.news OWNER TO elmirill;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO elmirill;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: pictures; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE pictures (
    id integer NOT NULL,
    caption character varying,
    gallery_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    alt character varying
);


ALTER TABLE public.pictures OWNER TO elmirill;

--
-- Name: pictures_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pictures_id_seq OWNER TO elmirill;

--
-- Name: pictures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE pictures_id_seq OWNED BY pictures.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO elmirill;

--
-- Name: users; Type: TABLE; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO elmirill;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: elmirill
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO elmirill;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmirill
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY galleries ALTER COLUMN id SET DEFAULT nextval('galleries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY pictures ALTER COLUMN id SET DEFAULT nextval('pictures_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY galleries (id, description, created_at, updated_at, name) FROM stdin;
1	Галерея Hooliganz	2015-08-04 20:15:27.629247	2015-08-16 05:10:06.382319	main
\.


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('galleries_id_seq', 1, true);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY news (id, title, body, created_at, updated_at) FROM stdin;
4	Бесплатные мужские стрижки	Требуются модели для проведения мастер-классов. Все мастера с опытом. Учитываем пожелания клиентов. Подробности по телефону +79133811213.	2015-07-15 21:41:32.286835	2015-07-24 13:23:24.155082
6	1000 подписчиков на нашем канале YOU TUBE!	Отличная новость! Вас уже более тысячи! Мы очень признательны всем нашим подписчикам за неподдельный интерес к нашему творчеству.                                      [16.08.2015]\r\n\r\n	2015-08-16 05:06:10.059774	2015-08-16 05:08:42.215885
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('news_id_seq', 7, true);


--
-- Data for Name: pictures; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY pictures (id, caption, gallery_id, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at, alt) FROM stdin;
76	Стрижка Undercut	1	2015-08-05 18:00:48.341707	2015-08-24 16:53:50.848342	2.jpg	image/jpeg	57936	2015-08-05 17:59:52.658239	обучение парикмахеров в новосибирске, курсы мужских стрижек, обучение барберов, парикмахерские курсы новосибирск
77	Стрижка Цезарь	1	2015-08-05 18:00:48.969855	2015-09-05 01:10:08.807858	3.jpg	image/jpeg	339200	2015-08-05 17:59:53.762718	курсы мужских стрижек в Новосибирске, стрижка машинкой, школа мужских стрижек, обучение парикмахеров в новосибирске
79		1	2015-08-05 18:00:51.162743	2015-08-16 05:10:06.40525	5.jpg	image/jpeg	227371	2015-08-05 17:59:58.094008	
80		1	2015-08-05 18:00:51.80697	2015-08-16 05:10:06.40828	6.jpg	image/jpeg	189630	2015-08-05 17:59:59.850299	
81		1	2015-08-05 18:00:52.466106	2015-08-16 05:10:06.411424	7.jpg	image/jpeg	157639	2015-08-05 18:00:01.166832	
82		1	2015-08-05 18:00:53.143705	2015-08-16 05:10:06.414381	8.jpg	image/jpeg	358174	2015-08-05 18:00:02.982401	
84		1	2015-08-05 18:00:54.340766	2015-08-16 05:10:06.421489	10.jpg	image/jpeg	500934	2015-08-05 18:00:08.367185	
85		1	2015-08-05 18:00:55.037758	2015-08-16 05:10:06.425272	11.jpg	image/jpeg	93763	2015-08-05 18:00:10.724115	
86		1	2015-08-05 18:00:55.65362	2015-08-16 05:10:06.429129	12.jpg	image/jpeg	273963	2015-08-05 18:00:11.919171	
87		1	2015-08-05 18:00:56.253552	2015-08-16 05:10:06.432411	13.jpg	image/jpeg	240192	2015-08-05 18:00:13.761063	
88		1	2015-08-05 18:00:56.938689	2015-08-16 05:10:06.435319	14.jpg	image/jpeg	257871	2015-08-05 18:00:15.713934	
89		1	2015-08-05 18:00:57.556704	2015-08-16 05:10:06.438155	15.jpg	image/jpeg	113690	2015-08-05 18:00:18.228471	
90		1	2015-08-05 18:00:58.178511	2015-08-16 05:10:06.441221	16.jpg	image/jpeg	123630	2015-08-05 18:00:19.525826	
91		1	2015-08-05 18:00:58.81872	2015-08-16 05:10:06.444585	18.jpg	image/jpeg	618427	2015-08-05 18:00:20.366513	
93		1	2015-08-05 18:01:00.336774	2015-08-16 05:10:06.450895	20.jpg	image/jpeg	911912	2015-08-05 18:00:23.29936	
94		1	2015-08-05 18:01:01.087583	2015-08-16 05:10:06.453872	21.jpg	image/jpeg	1176917	2015-08-05 18:00:26.131029	
97		1	2015-08-16 05:13:56.746982	2015-08-16 05:13:56.746982	IMG_70891.jpg	image/jpeg	1134056	2015-08-16 05:13:55.742459	
98		1	2015-08-16 05:14:47.936732	2015-08-16 05:14:47.936732	IMG_70881.jpg	image/jpeg	1155115	2015-08-16 05:14:46.902947	
99		1	2015-08-16 05:15:43.241848	2015-08-16 05:15:43.241848	888.jpg	image/jpeg	1431977	2015-08-16 05:15:41.793673	
100		1	2015-08-16 05:20:00.005721	2015-08-16 05:20:00.005721	IMG_71061.jpg	image/jpeg	499987	2015-08-16 05:19:59.43011	
101		1	2015-08-16 08:02:20.385611	2015-08-16 08:02:20.385611	IMG_6141.jpg	image/jpeg	1646791	2015-08-16 08:02:18.794981	
78	Стрижка Цезарь	1	2015-08-05 18:00:49.824119	2015-09-05 01:10:08.810734	4.jpg	image/jpeg	355328	2015-08-05 17:59:56.193851	курсы мужских стрижек в Новосибирске, стрижка машинкой, школа мужских стрижек, обучение парикмахеров в новосибирске
102	Антон Шмелев - Тренер команды hooliganz	1	2015-09-16 17:47:49.68106	2015-09-16 17:47:49.68106	1.jpg	image/jpeg	231836	2015-09-16 17:47:46.680585	мужские стрижки, курсы мужских стрижек в Новосибирске, обучение парикмахеров, школа мужских стрижек
103	Стрижка Undercut	1	2015-09-22 16:17:12.199109	2015-09-22 16:17:12.199109	11085173_596643327139674_1484008086_n.jpg	image/jpeg	91505	2015-09-22 16:17:10.646368	мужская стрижка, обучение парикмахеров в Новосибирске, барбер
104	Стрижка и дизайн усов	1	2015-10-03 16:40:23.011768	2015-10-03 16:40:23.011768	IMGb.jpg	image/jpeg	550133	2015-10-03 16:40:18.552068	обучение парикмахеров в Новосибирске, мужские стрижки, курсы парикмахеров, мужская стрижка
105	Мужская стрижка с дизайном	1	2015-10-03 16:45:42.475932	2015-10-03 16:45:42.475932	IMG.jpg	image/jpeg	205553	2015-10-03 16:45:41.93803	
106	Мужская стрижка от hooliganz	1	2015-10-03 16:48:10.28659	2015-10-03 16:48:10.28659	12145182_981926771897344_1987665696_n.jpg	image/jpeg	97279	2015-10-03 16:48:09.437554	обучение парикмахеров в Новосибирске, курсы парикмахеров, мужская стрижка, школа мужских стрижек hooliganz
107	Мужская стрижка с дизайном	1	2015-10-03 16:49:57.67453	2015-10-03 16:49:57.67453	12071070_1628046367483166_863561565_n.jpg	image/jpeg	88881	2015-10-03 16:49:56.910821	обучение парикмахеров в Новосибирске, курсы парикмахеров, мужская стрижка, школа мужских стрижек hooliganz
108	Стрижка с hair tattoo	1	2015-10-03 16:55:06.391902	2015-10-03 16:55:06.391902	IMG3.jpg	image/jpeg	370177	2015-10-03 16:55:05.679087	обучение парикмахеров в Новосибирске, курсы парикмахеров, мужская стрижка, школа hooliganz
\.


--
-- Name: pictures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('pictures_id_seq', 108, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY schema_migrations (version) FROM stdin;
20150704221912
20150704222312
20150704222414
20150704223856
20150704231625
20150710190615
20150711192715
20150804122312
20150804123218
20150804125617
20150808181107
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: elmirill
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	ant.khay@gmail.com	$2a$10$l6ITWtsePH6HWdv3P77HrucbIGxar69nPiVSW4WjUWD0j/SeyOqtC	\N	\N	\N	4	2015-08-08 20:56:19.391679	2015-08-04 20:03:31.348708	66.249.81.253	66.249.81.183	2015-07-15 21:39:37.251555	2015-08-08 20:56:19.393994
2	hooliganz-school@mail.ru	$2a$10$LglRI43Sy2LQDYxL3KMgoeCRU7zaFyXz7fJ7QTpNDr1FLnQPIzmKG	\N	\N	\N	44	2015-10-03 16:37:08.378339	2015-09-22 16:14:27.381113	91.105.168.143	91.105.168.196	2015-07-16 13:19:26.951991	2015-10-03 16:37:08.405999
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmirill
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY pictures
    ADD CONSTRAINT pictures_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: elmirill; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_pictures_on_gallery_id; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE INDEX index_pictures_on_gallery_id ON pictures USING btree (gallery_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: elmirill; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_4d090b44f9; Type: FK CONSTRAINT; Schema: public; Owner: elmirill
--

ALTER TABLE ONLY pictures
    ADD CONSTRAINT fk_rails_4d090b44f9 FOREIGN KEY (gallery_id) REFERENCES galleries(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

