--
-- PostgreSQL database dump
--

\restrict jm7Zv8TnRSEuWhVLwf4uiEo9ltb3Bk8sKxQlcuOxKiXShRGRoS3eG3tiwwIRRtq

-- Dumped from database version 17.9 (Debian 17.9-0+deb13u1)
-- Dumped by pg_dump version 17.9 (Debian 17.9-0+deb13u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	contenttypes	contenttype
3	auth	group
4	auth	permission
5	auth	user
6	axis_saas	schoolclient
7	axis_saas	schooldomain
8	axis_saas	student
9	sessions	session
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add content type	2	add_contenttype
6	Can change content type	2	change_contenttype
7	Can delete content type	2	delete_contenttype
8	Can view content type	2	view_contenttype
9	Can add permission	4	add_permission
10	Can change permission	4	change_permission
11	Can delete permission	4	delete_permission
12	Can view permission	4	view_permission
13	Can add group	3	add_group
14	Can change group	3	change_group
15	Can delete group	3	delete_group
16	Can view group	3	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add school client	6	add_schoolclient
22	Can change school client	6	change_schoolclient
23	Can delete school client	6	delete_schoolclient
24	Can view school client	6	view_schoolclient
25	Can add student	8	add_student
26	Can change student	8	change_student
27	Can delete student	8	delete_student
28	Can view student	8	view_student
29	Can add school domain	7	add_schooldomain
30	Can change school domain	7	change_schooldomain
31	Can delete school domain	7	delete_schooldomain
32	Can view school domain	7	view_schooldomain
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$8vM757SxIv05kKrq26COgf$W+ddB1UN2Y3z7qy8u64nHMS8DQuvk/r7UfanpVcC2R0=	\N	t	admin_pending			admin_pending@a.com	t	t	2026-05-18 12:22:16.070829+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.axis_saas_student (id, name, roll_number, grade, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 12:22:15.632047+00
2	auth	0001_initial	2026-05-18 12:22:15.762511+00
3	admin	0001_initial	2026-05-18 12:22:15.791689+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 12:22:15.808932+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 12:22:15.819154+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 12:22:15.844354+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 12:22:15.857212+00
8	auth	0003_alter_user_email_max_length	2026-05-18 12:22:15.869543+00
9	auth	0004_alter_user_username_opts	2026-05-18 12:22:15.88045+00
10	auth	0005_alter_user_last_login_null	2026-05-18 12:22:15.895066+00
11	auth	0006_require_contenttypes_0002	2026-05-18 12:22:15.897647+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 12:22:15.90761+00
13	auth	0008_alter_user_username_max_length	2026-05-18 12:22:15.923823+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 12:22:15.935554+00
15	auth	0010_alter_group_name_max_length	2026-05-18 12:22:15.950104+00
16	auth	0011_update_proxy_permissions	2026-05-18 12:22:15.961901+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 12:22:15.974459+00
18	axis_saas	0001_initial	2026-05-18 12:22:16.001628+00
19	sessions	0001_initial	2026-05-18 12:22:16.010317+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: a; Owner: axis_admin
--

COPY a.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$AfOntUg805tHgQ17191K4D$Ps5TkhtS6NLc3utt5ZbwmLdj9/QDNP/BRqNm1uFnYbU=	2026-05-18 17:03:33.781978+00	t	a			a@aa.com	t	t	2026-05-18 15:00:15.248945+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	2	2000.00	2026-05-18 15:00:43.30646+00
3	3	6.00	2026-05-18 16:31:41.914626+00
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	sa	s	s	a	2	A	2026-05-18	active	\N	\N				1001	2000.00	2026-05-18 15:01:09.748903+00
2	sami	sami anjum	933933	399393	3	A	2026-05-18	active	\N	\N	\N		\N	1002	6.00	2026-05-18 16:29:57.516728+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 15:00:43.31115+00	1	Class 2 - RS 2000	1	[{"added": {}}]	1	1
2	2026-05-18 15:01:09.761316+00	1	sa - Reg: 1001 (2-A)	1	[{"added": {}}]	4	1
3	2026-05-18 16:29:28.186124+00	2	Class 3 - RS 360	1	[{"added": {}}]	1	1
4	2026-05-18 16:29:57.52877+00	2	sami - Reg: 1002 (3-A)	1	[{"added": {}}]	4	1
5	2026-05-18 16:30:55.514244+00	2	Class 3 - RS 360.00	3		1	1
6	2026-05-18 16:31:29.098651+00	3	Class 3 - RS 1	1	[{"added": {}}]	1	1
7	2026-05-18 16:31:41.921328+00	3	Class 3 - RS 6	2	[{"changed": {"fields": ["Monthly Fee (RS)"]}}]	1	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 15:00:14.800196+00
2	auth	0001_initial	2026-05-18 15:00:14.877095+00
3	admin	0001_initial	2026-05-18 15:00:14.904849+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 15:00:14.918368+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 15:00:14.936452+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 15:00:14.978856+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 15:00:14.992449+00
8	auth	0003_alter_user_email_max_length	2026-05-18 15:00:15.007444+00
9	auth	0004_alter_user_username_opts	2026-05-18 15:00:15.02654+00
10	auth	0005_alter_user_last_login_null	2026-05-18 15:00:15.038994+00
11	auth	0006_require_contenttypes_0002	2026-05-18 15:00:15.041834+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 15:00:15.052342+00
13	auth	0008_alter_user_username_max_length	2026-05-18 15:00:15.068464+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 15:00:15.082415+00
15	auth	0010_alter_group_name_max_length	2026-05-18 15:00:15.096642+00
16	auth	0011_update_proxy_permissions	2026-05-18 15:00:15.109244+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 15:00:15.121529+00
18	axis_saas	0001_initial	2026-05-18 15:00:15.166308+00
19	sessions	0001_initial	2026-05-18 15:00:15.177806+00
20	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:42.595204+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:42.6084+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: aa; Owner: axis_admin
--

COPY aa.django_session (session_key, session_data, expire_date) FROM stdin;
8igj6tf4etrchhh1k9rrjw0v6zmo5j9i	.eJxVjTsOwyAQRO9CHSGDsVlSpvcZ0GKW4HxAMriKcvdgyYoSTTefNy9mcavRboVWu3h2ZoKdfj2H853SHvgbpmvmc051XRzfK_xIC5-yp8fl6P4BIpbY1qYHkk2DG4UcghydFABBKT1oGEMPGslIVBB8b3SQQgN2RiMKo7ug4AutlDBVW-ZIT7Q1t8eGR2TvD6CTQtY:1wPBaF:jE8vG1XH1p7ywPvRToObTuxs10Qg7Ph_ZLXYDHN80fY	2026-06-02 03:57:31.300576+00
ina5lpvtimvybhgry3tgexzkzfxg46zk	.eJxVjDsOwyAQRO9CHSHz3SVlep8BLQaCkwgkY1dR7h5bcpFounlv5s08bWvxW0-LnyO7MsEuv12g6ZnqAeKD6r3xqdV1mQM_FH7SzscW0-t2un8HhXrZ105hkntMsEKaLG2QAjFrDQbQZoVAyUnSmKNykKUApMEBkXAwZI3s8wXAOjbc:1wOzUQ:6ffW1Slvjk0P5PA1vTs_325FlGfhugZD0z28ltZfSlU	2026-06-01 15:02:42.305783+00
jf2weyusbtv2x9jqdw9b0h2hu07xpwaf	.eJxVjcsOwiAQRf-FtWkKpQVcuvcbyFCGgg9qgLox_rtUTaOZ3dxzz30QDUvxesmYdLBkTyjZ_f4MjGeMa2BPEKe5GedYUjDNijTfNDfH2eLl8GX_BB6yr23VSWT1ejNQ1js2GEaldJyLXsjBdVIAKgZcOtsp4RgVElolAKgSreNykxaMEIvOo8cr6DLXxaoH2AAYS7jjZ9yFOGG6pRDLG9KUPF_y21En:1wP1Ns:OG2rj3ZZVt1TN6RxRySV_l1MuuYjuRujIIFLih7qKDI	2026-06-01 17:04:04.938511+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$xMHRNPwr0WVN3blBygYMfa$2S41inrPBhO3GqCrrtxUMFn5TJvKbqu5j7xAOAHDEhA=	2026-05-18 17:56:11.138066+00	t	a			a@aaa.com	t	t	2026-05-18 17:56:00.731642+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 17:56:00.318225+00
2	auth	0001_initial	2026-05-18 17:56:00.394131+00
3	admin	0001_initial	2026-05-18 17:56:00.419445+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 17:56:00.432803+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 17:56:00.44403+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 17:56:00.471243+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 17:56:00.483769+00
8	auth	0003_alter_user_email_max_length	2026-05-18 17:56:00.496337+00
9	auth	0004_alter_user_username_opts	2026-05-18 17:56:00.506976+00
10	auth	0005_alter_user_last_login_null	2026-05-18 17:56:00.519205+00
11	auth	0006_require_contenttypes_0002	2026-05-18 17:56:00.521075+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 17:56:00.538938+00
13	auth	0008_alter_user_username_max_length	2026-05-18 17:56:00.553739+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 17:56:00.565993+00
15	auth	0010_alter_group_name_max_length	2026-05-18 17:56:00.579387+00
16	auth	0011_update_proxy_permissions	2026-05-18 17:56:00.590266+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 17:56:00.601396+00
18	axis_saas	0001_initial	2026-05-18 17:56:00.635176+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-18 17:56:00.64419+00
20	sessions	0001_initial	2026-05-18 17:56:00.653578+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:43.419839+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: aaa; Owner: axis_admin
--

COPY aaa.django_session (session_key, session_data, expire_date) FROM stdin;
x0u4hh5wgb7lt1wq4qi1hps2s1dmf4m2	.eJxVjcsOwiAQRf-FtSGFAq0u3fsNZIBpwQcYoG6M_26bNo3uJnPPPfdNNEzV66lg1sGRE2Hk8PszYG8Yl8BdIY6J2hRrDoYuCN3SQi_J4f28sX8CD8XPbeGkRA6msYI3XT8oiUIKceRCKnDSgOFWIS63BNmhYYx3BvqhVQMY1u7SihFi1cV6fICuaV6c9QCwE2BreOG6PoQ4Yn7mEOtKaUY-XxUdUy4:1wP2Ho:p52z6RnqplgBCzIeywBKQtRIk5vRnzVnT4z25u6_EhM	2026-06-01 18:01:52.265641+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$Y3EpEsY19dXdvjNiNd8Pkm$4/sKGhHqttxwvA10tYbYp6iLbQkIgCH16nhWBLSNyqA=	\N	t	a			a@aaaa.com	t	t	2026-05-19 02:53:37.861529+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 02:53:37.238701+00
2	auth	0001_initial	2026-05-19 02:53:37.386144+00
3	admin	0001_initial	2026-05-19 02:53:37.398965+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 02:53:37.41293+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 02:53:37.424531+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 02:53:37.454375+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 02:53:37.468771+00
8	auth	0003_alter_user_email_max_length	2026-05-19 02:53:37.482621+00
9	auth	0004_alter_user_username_opts	2026-05-19 02:53:37.497234+00
10	auth	0005_alter_user_last_login_null	2026-05-19 02:53:37.53061+00
11	auth	0006_require_contenttypes_0002	2026-05-19 02:53:37.536251+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 02:53:37.548665+00
13	auth	0008_alter_user_username_max_length	2026-05-19 02:53:37.596279+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 02:53:37.613567+00
15	auth	0010_alter_group_name_max_length	2026-05-19 02:53:37.642468+00
16	auth	0011_update_proxy_permissions	2026-05-19 02:53:37.657504+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 02:53:37.680797+00
18	axis_saas	0001_initial	2026-05-19 02:53:37.766277+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 02:53:37.775163+00
20	sessions	0001_initial	2026-05-19 02:53:37.78968+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:43.905658+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: aaaa; Owner: axis_admin
--

COPY aaaa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	axis_saas	feerecord
8	axis_saas	feestructure
9	axis_saas	paymenttransaction
10	axis_saas	schoolclient
11	axis_saas	schooldomain
12	axis_saas	schoolfeesettings
13	axis_saas	student
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add fee record	7	add_feerecord
26	Can change fee record	7	change_feerecord
27	Can delete fee record	7	delete_feerecord
28	Can view fee record	7	view_feerecord
29	Can add fee structure	8	add_feestructure
30	Can change fee structure	8	change_feestructure
31	Can delete fee structure	8	delete_feestructure
32	Can view fee structure	8	view_feestructure
33	Can add school client	10	add_schoolclient
34	Can change school client	10	change_schoolclient
35	Can delete school client	10	delete_schoolclient
36	Can view school client	10	view_schoolclient
37	Can add school fee settings	12	add_schoolfeesettings
38	Can change school fee settings	12	change_schoolfeesettings
39	Can delete school fee settings	12	delete_schoolfeesettings
40	Can view school fee settings	12	view_schoolfeesettings
41	Can add student	13	add_student
42	Can change student	13	change_student
43	Can delete student	13	delete_student
44	Can view student	13	view_student
45	Can add school domain	11	add_schooldomain
46	Can change school domain	11	change_schooldomain
47	Can delete school domain	11	delete_schooldomain
48	Can view school domain	11	view_schooldomain
49	Can add payment transaction	9	add_paymenttransaction
50	Can change payment transaction	9	change_paymenttransaction
51	Can delete payment transaction	9	delete_paymenttransaction
52	Can view payment transaction	9	view_paymenttransaction
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$9VxbgHO3gejxYHSNTHhO8p$2N0+87hQLEr6nFCJTiGVgssY1WLhwiuB0MpvMsBKgpY=	\N	t	s			s@aaw.com	t	t	2026-05-22 17:10:18.912548+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 17:11:57.04155+00	2026-05-22 17:11:57.041584+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 17:10:17.820664+00
2	auth	0001_initial	2026-05-22 17:10:17.95595+00
3	admin	0001_initial	2026-05-22 17:10:18.005848+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 17:10:18.035143+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 17:10:18.056477+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 17:10:18.099322+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 17:10:18.123095+00
8	auth	0003_alter_user_email_max_length	2026-05-22 17:10:18.144786+00
9	auth	0004_alter_user_username_opts	2026-05-22 17:10:18.160621+00
10	auth	0005_alter_user_last_login_null	2026-05-22 17:10:18.180537+00
11	auth	0006_require_contenttypes_0002	2026-05-22 17:10:18.183355+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 17:10:18.212295+00
13	auth	0008_alter_user_username_max_length	2026-05-22 17:10:18.234196+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 17:10:18.258563+00
15	auth	0010_alter_group_name_max_length	2026-05-22 17:10:18.281835+00
16	auth	0011_update_proxy_permissions	2026-05-22 17:10:18.30566+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 17:10:18.361671+00
18	axis_saas	0001_initial	2026-05-22 17:10:18.64459+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 17:10:18.671252+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 17:10:18.701529+00
21	sessions	0001_initial	2026-05-22 17:10:18.730749+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: aaw; Owner: axis_admin
--

COPY aaw.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$TFHGi7E9MFqsp81mmHV2rW$oK7bN0mUFgn6Ma/Texntkv01+zjePrmSOAY3jLaICd4=	\N	t	s			s@ac.com	t	t	2026-05-22 11:50:46.621695+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 11:53:53.043419+00	2026-05-22 11:53:53.043455+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 11:50:45.577753+00
2	auth	0001_initial	2026-05-22 11:50:45.718647+00
3	admin	0001_initial	2026-05-22 11:50:45.775796+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 11:50:45.79654+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 11:50:45.811164+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 11:50:45.847236+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 11:50:45.870074+00
8	auth	0003_alter_user_email_max_length	2026-05-22 11:50:45.892867+00
9	auth	0004_alter_user_username_opts	2026-05-22 11:50:45.910045+00
10	auth	0005_alter_user_last_login_null	2026-05-22 11:50:45.933612+00
11	auth	0006_require_contenttypes_0002	2026-05-22 11:50:45.936547+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 11:50:45.973851+00
13	auth	0008_alter_user_username_max_length	2026-05-22 11:50:46.004482+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 11:50:46.031704+00
15	auth	0010_alter_group_name_max_length	2026-05-22 11:50:46.054263+00
16	auth	0011_update_proxy_permissions	2026-05-22 11:50:46.073536+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 11:50:46.093895+00
18	axis_saas	0001_initial	2026-05-22 11:50:46.363988+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 11:50:46.384777+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 11:50:46.411941+00
21	sessions	0001_initial	2026-05-22 11:50:46.437486+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ac; Owner: axis_admin
--

COPY ac.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$OdqEp7xqpNQhfMI38pGNkM$kIZQBw9Q/C5YxPA5WfNRCvnxGQ55o5MxD1MlT6V1Jmk=	2026-05-19 03:11:34.822323+00	t	s			s@afv.com	t	t	2026-05-19 03:11:26.946681+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:11:26.500753+00
2	auth	0001_initial	2026-05-19 03:11:26.603969+00
3	admin	0001_initial	2026-05-19 03:11:26.613729+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:11:26.629504+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:11:26.641489+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:11:26.665349+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:11:26.678351+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:11:26.690132+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:11:26.701257+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:11:26.713418+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:11:26.715668+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:11:26.727298+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:11:26.74226+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:11:26.764156+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:11:26.776982+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:11:26.793084+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:11:26.808575+00
18	axis_saas	0001_initial	2026-05-19 03:11:26.84766+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:11:26.858188+00
20	sessions	0001_initial	2026-05-19 03:11:26.869383+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.651296+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: afv; Owner: axis_admin
--

COPY afv.django_session (session_key, session_data, expire_date) FROM stdin;
fmpwkonaj1bwn153kh0en1rvhvfrgxw2	.eJxVjcsOgyAURP-FdUMAH2iX3fcbyIV7EfrARtFN03-vRmPa7cyZM29mYMrBTCMNJiI7M8lOv5kFd6e0FniD1PXc9SkP0fIV4Xs78muP9Ljs7J8gwBiWtZOiVtAqW1WNFKiUEFh77a3QjiTausBCFKh1acGqqtTeKwQUpStJ1k17SDMlSNmMLtATTO6Xx0UPfj4IcDnOtL37mDoaXkNMeaOMZJ8v7WFS9w:1wPAuj:Tv_Gh00jWas5P8jjwgzgd49vk0W0rVORVVkV7KLwxl0	2026-06-02 03:14:37.118009+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$OIAWH3cuueoQamapRjPq3E$ePMv7fY87gFaJk8yJeo/kdN8qkxTmfJ4po7/pve7s3s=	\N	t	s			s@agaaba.com	t	t	2026-05-19 10:24:47.443694+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 10:24:46.800329+00
2	auth	0001_initial	2026-05-19 10:24:46.96219+00
3	admin	0001_initial	2026-05-19 10:24:47.004218+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 10:24:47.01472+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 10:24:47.026485+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 10:24:47.05074+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 10:24:47.071384+00
8	auth	0003_alter_user_email_max_length	2026-05-19 10:24:47.083064+00
9	auth	0004_alter_user_username_opts	2026-05-19 10:24:47.10854+00
10	auth	0005_alter_user_last_login_null	2026-05-19 10:24:47.121116+00
11	auth	0006_require_contenttypes_0002	2026-05-19 10:24:47.124085+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 10:24:47.135818+00
13	auth	0008_alter_user_username_max_length	2026-05-19 10:24:47.156313+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 10:24:47.172232+00
15	auth	0010_alter_group_name_max_length	2026-05-19 10:24:47.187601+00
16	auth	0011_update_proxy_permissions	2026-05-19 10:24:47.201617+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 10:24:47.214019+00
18	axis_saas	0001_initial	2026-05-19 10:24:47.334697+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 10:24:47.343675+00
20	axis_saas	0003_add_school_logo	2026-05-19 10:24:47.351892+00
21	axis_saas	0004_add_student_bform	2026-05-19 10:24:47.358016+00
22	sessions	0001_initial	2026-05-19 10:24:47.372708+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: agaaba; Owner: axis_admin
--

COPY agaaba.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$pi3W5835BXlogH6RL14yn2$kcc94PsDeeHNcypcd7LNjztd10txCWt6axbm3U4Kmlc=	\N	t	s			s@agvava.com	t	t	2026-05-20 08:31:08.700495+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.618113+00	2026-05-21 16:56:30.618137+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:31:07.984312+00
2	auth	0001_initial	2026-05-20 08:31:08.207044+00
3	admin	0001_initial	2026-05-20 08:31:08.241226+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:31:08.252696+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:31:08.273374+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:31:08.306665+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:31:08.322626+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:31:08.339087+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:31:08.353487+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:31:08.367483+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:31:08.370592+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:31:08.381818+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:31:08.402366+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:31:08.41931+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:31:08.447152+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:31:08.463551+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:31:08.480291+00
18	axis_saas	0001_initial	2026-05-20 08:31:08.534536+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:31:08.540464+00
20	sessions	0001_initial	2026-05-20 08:31:08.554672+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:46.751819+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:01.432794+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:20.976015+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:42.620027+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:17.511742+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: agvava; Owner: axis_admin
--

COPY agvava.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$f0psBZCpXfbfrCQYM4r1ce$lly9lM1u8tC6wo9o+ypj81AxN7RDg1NLXC6qqsFBNhk=	\N	t	aa			aa@ahahahahaha.com	t	t	2026-05-20 10:51:13.705365+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	samianjum	sahaa	hazir khan	20202	10	B	2026-05-20	active	female	1111-11-11	ww		ww	AX-AHAHAHAHAHA-2026-0001	700.00	2026-05-20 10:52:22.068336+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
2	5	2026	700.00	0.00	2026-06-06	pending	\N	1
1	1	2026	700.00	10.00	2026-02-10	partial	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	700.00	2026-05-20 10:51:41.299326+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	10.00	2026-05-20	cash	partial	RCPT-20260520-0001	ok	admin	1
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.84972+00	2026-05-21 16:56:30.849744+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 10:51:12.345427+00
2	auth	0001_initial	2026-05-20 10:51:12.605793+00
3	admin	0001_initial	2026-05-20 10:51:12.651705+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 10:51:12.677549+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 10:51:12.706702+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 10:51:12.76875+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 10:51:12.798642+00
8	auth	0003_alter_user_email_max_length	2026-05-20 10:51:12.829133+00
9	auth	0004_alter_user_username_opts	2026-05-20 10:51:12.854777+00
10	auth	0005_alter_user_last_login_null	2026-05-20 10:51:12.883145+00
11	auth	0006_require_contenttypes_0002	2026-05-20 10:51:12.887627+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 10:51:12.912903+00
13	auth	0008_alter_user_username_max_length	2026-05-20 10:51:12.950039+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 10:51:12.979021+00
15	auth	0010_alter_group_name_max_length	2026-05-20 10:51:13.012166+00
16	auth	0011_update_proxy_permissions	2026-05-20 10:51:13.041727+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 10:51:13.069546+00
18	axis_saas	0001_initial	2026-05-20 10:51:13.190829+00
19	axis_saas	0002_student_b_form_number	2026-05-20 10:51:13.222593+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:51:13.512672+00
21	sessions	0001_initial	2026-05-20 10:51:13.536688+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:06.254349+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:23.020301+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:44.542714+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:20.09415+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ahahahahaha; Owner: axis_admin
--

COPY ahahahahaha.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$JZnaZiJROFfRgK07QlghCD$G49t0ncbyxeWkHmgMzWe+XwNEYC8ve/ulK7FYSCNPUQ=	\N	t	allah			allah@allah.com	t	t	2026-05-21 08:03:37.96814+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	samianjum	hazir khan	3650227332629	03059787326	10	C	2026-05-21	active	male	1111-11-11	okara cantt			AX-ALLAH-2026-0001	600.00	2026-05-21 08:31:49.865053+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
2	5	2026	600.00	0.00	2026-06-06	pending	\N	1
1	1	2026	456.00	456.00	2026-02-15	paid	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	600.00	2026-05-21 08:44:17.303285+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	456.00	2026-05-21	cash	full	RCPT-20260521-0001		admin	1
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.876894+00	2026-05-21 16:56:30.876926+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 08:03:36.580198+00
2	auth	0001_initial	2026-05-21 08:03:37.405694+00
3	admin	0001_initial	2026-05-21 08:03:37.442949+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 08:03:37.469916+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 08:03:37.480621+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 08:03:37.511734+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 08:03:37.528603+00
8	auth	0003_alter_user_email_max_length	2026-05-21 08:03:37.544621+00
9	auth	0004_alter_user_username_opts	2026-05-21 08:03:37.557545+00
10	auth	0005_alter_user_last_login_null	2026-05-21 08:03:37.570671+00
11	auth	0006_require_contenttypes_0002	2026-05-21 08:03:37.572733+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 08:03:37.585672+00
13	auth	0008_alter_user_username_max_length	2026-05-21 08:03:37.617072+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 08:03:37.632806+00
15	auth	0010_alter_group_name_max_length	2026-05-21 08:03:37.647013+00
16	auth	0011_update_proxy_permissions	2026-05-21 08:03:37.661075+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 08:03:37.677304+00
18	axis_saas	0001_initial	2026-05-21 08:03:37.738355+00
19	axis_saas	0002_student_b_form_number	2026-05-21 08:03:37.745369+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 08:03:37.852448+00
21	sessions	0001_initial	2026-05-21 08:03:37.862587+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:06.634013+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:23.229538+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:44.735459+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:20.266912+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: allah; Owner: axis_admin
--

COPY allah.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	axis_saas	schoolclient
7	axis_saas	schooldomain
8	admin	logentry
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	2	add_permission
2	Can change permission	2	change_permission
3	Can delete permission	2	delete_permission
4	Can view permission	2	view_permission
5	Can add group	1	add_group
6	Can change group	1	change_group
7	Can delete group	1	delete_group
8	Can view group	1	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add school client	6	add_schoolclient
22	Can change school client	6	change_schoolclient
23	Can delete school client	6	delete_schoolclient
24	Can view school client	6	view_schoolclient
25	Can add school domain	7	add_schooldomain
26	Can change school domain	7	change_schooldomain
27	Can delete school domain	7	delete_schooldomain
28	Can view school domain	7	view_schooldomain
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.axis_saas_schoolclient (id, schema_name, name, created_on, is_active) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 07:37:13.474054+00
2	auth	0001_initial	2026-05-18 07:37:13.550929+00
3	admin	0001_initial	2026-05-18 07:37:13.572623+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 07:37:13.583642+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 07:37:13.596645+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 07:37:13.622098+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 07:37:13.635659+00
8	auth	0003_alter_user_email_max_length	2026-05-18 07:37:13.651185+00
9	auth	0004_alter_user_username_opts	2026-05-18 07:37:13.664927+00
10	auth	0005_alter_user_last_login_null	2026-05-18 07:37:13.679925+00
11	auth	0006_require_contenttypes_0002	2026-05-18 07:37:13.682171+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 07:37:13.692569+00
13	auth	0008_alter_user_username_max_length	2026-05-18 07:37:13.707728+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 07:37:13.720043+00
15	auth	0010_alter_group_name_max_length	2026-05-18 07:37:13.742304+00
16	auth	0011_update_proxy_permissions	2026-05-18 07:37:13.751705+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 07:37:13.764119+00
18	axis_saas	0001_initial	2026-05-18 07:37:13.78554+00
19	sessions	0001_initial	2026-05-18 07:37:13.797145+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: aps; Owner: axis_admin
--

COPY aps.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$DeW9nanoJR1j6MQwkhFc0l$JwAXKnnQq5qyrnpZI8RxUjwqY1W/s7hSR/y0qpJhqGU=	\N	t	s			s@as.com	t	t	2026-05-22 04:39:04.714287+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	s	s	1	1	1	A	2026-05-22	active	male	1111-11-11	2		2	1001	800.00	2026-05-22 04:39:36.863291+00
2	2	22	2	2	2	2	2026-05-22	active	male	2222-02-22			22	1002	9000.00	2026-05-22 04:39:55.544966+00
3	3	3	33	3	3	3	2026-05-22	active	male	3333-03-31	3		3	1003	10000.00	2026-05-22 04:40:12.222312+00
4	4	4	4	4	4	4	2026-05-22	active	male	4444-04-04	4		4	1004	7600.00	2026-05-22 04:40:25.011149+00
5	5	5	5	5	5	5	2026-05-22	active	male	5555-05-05	5		5	1005	1000.00	2026-05-22 04:40:37.370359+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
2	5	2026	9000.00	0.00	2026-06-06	pending	\N	2
4	5	2026	7600.00	0.00	2026-06-06	pending	\N	4
5	5	2026	1000.00	0.00	2026-06-06	pending	\N	5
1	5	2026	800.00	800.00	2026-06-06	paid	\N	1
3	5	2026	10000.00	2999.00	2026-06-06	partial	\N	3
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	800.00	2026-05-22 04:40:44.505305+00
2	2	9000.00	2026-05-22 04:40:48.756357+00
3	3	10000.00	2026-05-22 04:40:52.930819+00
4	4	7600.00	2026-05-22 04:40:58.593273+00
5	5	1000.00	2026-05-22 11:43:43.183635+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	800.00	2026-05-22	cash	full	RCPT-20260522-0001		s	1
2	2999.00	2026-05-22	cash	full	RCPT-20260522-0002		s	3
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
2	2	3
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 04:41:00.609882+00	2026-05-22 04:41:00.609906+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 04:39:04.011237+00
2	auth	0001_initial	2026-05-22 04:39:04.148868+00
3	admin	0001_initial	2026-05-22 04:39:04.173519+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 04:39:04.184734+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 04:39:04.201696+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 04:39:04.23012+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 04:39:04.242803+00
8	auth	0003_alter_user_email_max_length	2026-05-22 04:39:04.258632+00
9	auth	0004_alter_user_username_opts	2026-05-22 04:39:04.271646+00
10	auth	0005_alter_user_last_login_null	2026-05-22 04:39:04.290586+00
11	auth	0006_require_contenttypes_0002	2026-05-22 04:39:04.29441+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 04:39:04.307465+00
13	auth	0008_alter_user_username_max_length	2026-05-22 04:39:04.325571+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 04:39:04.343258+00
15	auth	0010_alter_group_name_max_length	2026-05-22 04:39:04.360191+00
16	auth	0011_update_proxy_permissions	2026-05-22 04:39:04.379447+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 04:39:04.397722+00
18	axis_saas	0001_initial	2026-05-22 04:39:04.605162+00
19	sessions	0001_initial	2026-05-22 04:39:04.621008+00
20	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:46.918766+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:22.139239+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: as; Owner: axis_admin
--

COPY "as".django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$iWqcZ7wWPIgyqhSWyjiG2p$dyE1WC11QYccWRpMqCaXXdAyz7eQyGDtdTeBnGe1Ox4=	2026-05-19 03:14:57.639535+00	t	a			a@asaga.com	t	t	2026-05-19 03:14:48.30197+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:14:47.913505+00
2	auth	0001_initial	2026-05-19 03:14:47.981434+00
3	admin	0001_initial	2026-05-19 03:14:47.991915+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:14:48.005595+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:14:48.018165+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:14:48.042043+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:14:48.054851+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:14:48.067059+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:14:48.081188+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:14:48.095992+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:14:48.098144+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:14:48.110312+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:14:48.125723+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:14:48.147741+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:14:48.161456+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:14:48.172001+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:14:48.183511+00
18	axis_saas	0001_initial	2026-05-19 03:14:48.219862+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:14:48.229748+00
20	sessions	0001_initial	2026-05-19 03:14:48.241368+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.806555+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: asaga; Owner: axis_admin
--

COPY asaga.django_session (session_key, session_data, expire_date) FROM stdin;
71bdkctmujldea1i9f470qm0etlqcay7	.eJxVjc0OwiAQhN-Fs2mk0G716N1nIMuytPgDplAvxne3jdXodeabbx7C4FQGM2UeTXBiL6TY_GYW6cxxKdwJY58qSrGMwVYLUq1tro7J8eWwsn-CAfMwrwk0QEst1l42iqX1VrfKEjrNnnWL0CnQDSnaAmunG6gR2IKkrlP1zn-lhSPGYjINfEVT0vw46zFjj18GqYQ7v_99iD2PtzHE8uGMFM8Xd2RU0A:1wPAv3:hQwHi3bB0U4xBwkmbOv2HRLKQFcTf7djDlkamJTTLgk	2026-06-02 03:14:57.984966+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$M5YtbNUU8kYIkBOGkTB9kq$+r9JfHkt+iGS2iOuEmMd/3Fuq+xTHH1LEE7pgykJDR4=	\N	t	s			s@b.com	t	t	2026-05-22 05:43:20.190177+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	ss	s	s	s	1	s	2026-05-22	active	male	1111-11-11	s		1	1001	200.00	2026-05-22 05:43:51.419973+00
3	3	3	3	3	3	3	2026-05-22	active	male	3333-03-31	33		3	1003	8999.00	2026-05-22 05:44:20.656827+00
4	4	4	4	4	4	4	2026-05-22	active	male	4444-04-04	4		44	1004	44444.00	2026-05-22 05:44:34.831352+00
2	2	2	2	2	22	2	2026-05-22	active	male	2222-02-22	2		2	1002	1000.00	2026-05-22 05:44:07.125993+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
4	5	2026	1000.00	0.00	2026-06-06	pending	\N	2
2	5	2026	8999.00	8999.00	2026-06-06	paid	\N	3
1	5	2026	200.00	200.00	2026-06-06	paid	\N	1
3	5	2026	44444.00	956.00	2026-06-06	partial	\N	4
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	200.00	2026-05-22 05:44:51.791919+00
2	2	3000.00	2026-05-22 05:44:56.35223+00
3	3	8999.00	2026-05-22 05:45:03.664398+00
4	4	44444.00	2026-05-22 07:34:04.893385+00
5	10	500.00	2026-05-22 08:02:20.515355+00
6	22	1000.00	2026-05-22 11:43:43.377807+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	500.00	2026-05-22	cash	full	RCPT-20260522-0001		s	3
2	8499.00	2026-05-22	cash	full	RCPT-20260522-0002		s	3
3	200.00	2026-05-22	cash	full	RCPT-20260522-0003		s	1
4	44.00	2026-05-22	cash	full	RCPT-20260522-0004		s	4
5	888.00	2026-05-22	cash	full	RCPT-20260522-0005		s	4
6	2.00	2026-05-22	cash	full	RCPT-20260522-0006		s	4
7	22.00	2026-05-22	cash	full	RCPT-20260522-0007		s	4
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	2
2	2	2
3	3	1
4	4	3
5	5	3
6	6	3
7	7	3
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 05:45:18.666226+00	2026-05-22 05:45:18.666251+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 05:43:19.098845+00
2	auth	0001_initial	2026-05-22 05:43:19.332126+00
3	admin	0001_initial	2026-05-22 05:43:19.425464+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 05:43:19.442614+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 05:43:19.455699+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 05:43:19.528467+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 05:43:19.543744+00
8	auth	0003_alter_user_email_max_length	2026-05-22 05:43:19.566619+00
9	auth	0004_alter_user_username_opts	2026-05-22 05:43:19.586061+00
10	auth	0005_alter_user_last_login_null	2026-05-22 05:43:19.604977+00
11	auth	0006_require_contenttypes_0002	2026-05-22 05:43:19.611377+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 05:43:19.632042+00
13	auth	0008_alter_user_username_max_length	2026-05-22 05:43:19.655784+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 05:43:19.675369+00
15	auth	0010_alter_group_name_max_length	2026-05-22 05:43:19.691076+00
16	auth	0011_update_proxy_permissions	2026-05-22 05:43:19.703259+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 05:43:19.717942+00
18	axis_saas	0001_initial	2026-05-22 05:43:20.075799+00
19	sessions	0001_initial	2026-05-22 05:43:20.090403+00
20	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:47.373223+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:22.536525+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: b; Owner: axis_admin
--

COPY b.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$tg6aBJeUVpULirXPGZnJFu$KKcXktx9pPuUZjRqjorMgLamczqYQKbHFzL2eJOxoyo=	\N	t	s			s@ba.com	t	t	2026-05-22 04:55:05.459756+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	1	11	1	1	1	1	2026-05-22	active	male	1111-11-11	1			1001	600.00	2026-05-22 04:55:33.399149+00
2	2	2	2	2	2	2	2026-05-22	active	male	2222-02-22	2		2	1002	800.00	2026-05-22 04:55:47.709588+00
3	2	2	2	2	2	2	2026-05-22	active	male	2222-02-22	2		2	1003	800.00	2026-05-22 04:56:01.966089+00
4	3	3	3	33	3	3	2026-05-22	active	male	3333-03-31	3		3	1004	900.00	2026-05-22 04:56:19.286544+00
5	4	4	4	4	4	4	2026-05-22	active	male	4444-04-04	4		4	1005	1000.00	2026-05-22 04:56:34.846275+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
4	5	2026	900.00	0.00	2026-06-06	pending	\N	4
5	5	2026	1000.00	0.00	2026-06-06	pending	\N	5
1	5	2026	600.00	600.00	2026-06-06	paid	\N	1
3	5	2026	800.00	800.00	2026-06-06	paid	\N	3
2	5	2026	800.00	355.00	2026-06-06	partial	\N	2
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	600.00	2026-05-22 04:56:46.758155+00
2	2	800.00	2026-05-22 04:56:50.576245+00
3	3	900.00	2026-05-22 04:56:54.565708+00
4	4	1000.00	2026-05-22 11:43:43.276545+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	600.00	2026-05-22	cash	full	RCPT-20260522-0001		s	1
2	800.00	2026-05-22	cash	full	RCPT-20260522-0002		s	3
3	22.00	2026-05-22	cash	full	RCPT-20260522-0003		s	2
4	333.00	2026-05-22	cash	full	RCPT-20260522-0004		s	2
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
2	2	3
3	3	2
4	4	2
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 04:56:55.701801+00	2026-05-22 04:56:55.70183+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 04:55:04.905564+00
2	auth	0001_initial	2026-05-22 04:55:04.994733+00
3	admin	0001_initial	2026-05-22 04:55:05.020672+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 04:55:05.035366+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 04:55:05.052537+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 04:55:05.083477+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 04:55:05.097404+00
8	auth	0003_alter_user_email_max_length	2026-05-22 04:55:05.114651+00
9	auth	0004_alter_user_username_opts	2026-05-22 04:55:05.126062+00
10	auth	0005_alter_user_last_login_null	2026-05-22 04:55:05.138729+00
11	auth	0006_require_contenttypes_0002	2026-05-22 04:55:05.141903+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 04:55:05.154255+00
13	auth	0008_alter_user_username_max_length	2026-05-22 04:55:05.170507+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 04:55:05.197814+00
15	auth	0010_alter_group_name_max_length	2026-05-22 04:55:05.212657+00
16	auth	0011_update_proxy_permissions	2026-05-22 04:55:05.226942+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 04:55:05.244219+00
18	axis_saas	0001_initial	2026-05-22 04:55:05.354006+00
19	sessions	0001_initial	2026-05-22 04:55:05.368464+00
20	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:47.114753+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:22.306025+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ba; Owner: axis_admin
--

COPY ba.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$7PyhKKxjejnXBUoYGD4NEd$YoE/uZAiXfmjPFOH3RwD7WnJR9G0mT101//Bt7nFWbM=	\N	t	s			s@baba.com	t	t	2026-05-19 09:06:06.253727+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 09:06:05.616928+00
2	auth	0001_initial	2026-05-19 09:06:05.717303+00
3	admin	0001_initial	2026-05-19 09:06:05.752321+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 09:06:05.791229+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 09:06:05.816952+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 09:06:05.869169+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 09:06:05.904485+00
8	auth	0003_alter_user_email_max_length	2026-05-19 09:06:05.933301+00
9	auth	0004_alter_user_username_opts	2026-05-19 09:06:05.954914+00
10	auth	0005_alter_user_last_login_null	2026-05-19 09:06:05.971148+00
11	auth	0006_require_contenttypes_0002	2026-05-19 09:06:05.973734+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 09:06:05.990696+00
13	auth	0008_alter_user_username_max_length	2026-05-19 09:06:06.012009+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 09:06:06.025727+00
15	auth	0010_alter_group_name_max_length	2026-05-19 09:06:06.040073+00
16	auth	0011_update_proxy_permissions	2026-05-19 09:06:06.054347+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 09:06:06.06989+00
18	axis_saas	0001_initial	2026-05-19 09:06:06.111805+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 09:06:06.120814+00
20	axis_saas	0003_add_school_logo	2026-05-19 09:06:06.139103+00
21	sessions	0001_initial	2026-05-19 09:06:06.155267+00
22	axis_saas	0004_add_student_bform	2026-05-19 10:28:01.06708+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: baba; Owner: axis_admin
--

COPY baba.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	axis_saas	feerecord
8	axis_saas	feestructure
9	axis_saas	paymenttransaction
10	axis_saas	schoolclient
11	axis_saas	schooldomain
12	axis_saas	schoolfeesettings
13	axis_saas	student
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add fee record	7	add_feerecord
26	Can change fee record	7	change_feerecord
27	Can delete fee record	7	delete_feerecord
28	Can view fee record	7	view_feerecord
29	Can add fee structure	8	add_feestructure
30	Can change fee structure	8	change_feestructure
31	Can delete fee structure	8	delete_feestructure
32	Can view fee structure	8	view_feestructure
33	Can add school client	10	add_schoolclient
34	Can change school client	10	change_schoolclient
35	Can delete school client	10	delete_schoolclient
36	Can view school client	10	view_schoolclient
37	Can add school fee settings	12	add_schoolfeesettings
38	Can change school fee settings	12	change_schoolfeesettings
39	Can delete school fee settings	12	delete_schoolfeesettings
40	Can view school fee settings	12	view_schoolfeesettings
41	Can add student	13	add_student
42	Can change student	13	change_student
43	Can delete student	13	delete_student
44	Can view student	13	view_student
45	Can add school domain	11	add_schooldomain
46	Can change school domain	11	change_schooldomain
47	Can delete school domain	11	delete_schooldomain
48	Can view school domain	11	view_schooldomain
49	Can add payment transaction	9	add_paymenttransaction
50	Can change payment transaction	9	change_paymenttransaction
51	Can delete payment transaction	9	delete_paymenttransaction
52	Can view payment transaction	9	view_paymenttransaction
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$omOtKCHVU4Ggh6qDKCbDGg$o45gx2g0xCpxWarYnUkaQ4pifv2MpxGrzhtAL0C6YgI=	\N	t	s			s@bas.com	t	t	2026-05-22 17:04:41.911906+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 17:08:54.218745+00	2026-05-22 17:08:54.218779+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 17:04:41.369726+00
2	auth	0001_initial	2026-05-22 17:04:41.462299+00
3	admin	0001_initial	2026-05-22 17:04:41.48622+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 17:04:41.496312+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 17:04:41.507611+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 17:04:41.537639+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 17:04:41.554432+00
8	auth	0003_alter_user_email_max_length	2026-05-22 17:04:41.56775+00
9	auth	0004_alter_user_username_opts	2026-05-22 17:04:41.579965+00
10	auth	0005_alter_user_last_login_null	2026-05-22 17:04:41.592081+00
11	auth	0006_require_contenttypes_0002	2026-05-22 17:04:41.594019+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 17:04:41.604233+00
13	auth	0008_alter_user_username_max_length	2026-05-22 17:04:41.619589+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 17:04:41.632897+00
15	auth	0010_alter_group_name_max_length	2026-05-22 17:04:41.649594+00
16	auth	0011_update_proxy_permissions	2026-05-22 17:04:41.662218+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 17:04:41.675435+00
18	axis_saas	0001_initial	2026-05-22 17:04:41.790483+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 17:04:41.804951+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 17:04:41.817291+00
21	sessions	0001_initial	2026-05-22 17:04:41.828764+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bas; Owner: axis_admin
--

COPY bas.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$k7cfC0hbCtfTKbMzVarXLN$I3ywz9Gsw1QZujAYqBEbeGvbqxsdug/DR0P1L/lLHlM=	\N	t	s			s@bb.com	t	t	2026-05-21 17:09:59.674393+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	s	s	s	s	1	A	2026-05-21	active	male	1111-11-11	s			1001	1000.00	2026-05-21 17:10:29.855844+00
2	gaga	gaga	2	2	2	A	2026-05-21	active	male	1111-11-11	a		a	1002	44.00	2026-05-21 17:16:35.962254+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
2	5	2026	44.00	0.00	2026-06-06	pending	\N	2
1	5	2026	1000.00	1000.00	2026-06-05	paid	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
2	1	1000.00	2026-05-21 17:15:02.761242+00
1	10	66.00	2026-05-21 17:16:07.165123+00
3	2	44.00	2026-05-21 17:16:45.645672+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	1000.00	2026-05-21	cash	full	RCPT-20260521-0001		s	1
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-21 17:10:42.095711+00	2026-05-21 17:10:46.040803+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 17:09:59.173615+00
2	auth	0001_initial	2026-05-21 17:09:59.249316+00
3	admin	0001_initial	2026-05-21 17:09:59.27415+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 17:09:59.284765+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 17:09:59.29905+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 17:09:59.326281+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 17:09:59.339438+00
8	auth	0003_alter_user_email_max_length	2026-05-21 17:09:59.354348+00
9	auth	0004_alter_user_username_opts	2026-05-21 17:09:59.366619+00
10	auth	0005_alter_user_last_login_null	2026-05-21 17:09:59.380915+00
11	auth	0006_require_contenttypes_0002	2026-05-21 17:09:59.383077+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 17:09:59.395902+00
13	auth	0008_alter_user_username_max_length	2026-05-21 17:09:59.413457+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 17:09:59.427451+00
15	auth	0010_alter_group_name_max_length	2026-05-21 17:09:59.443298+00
16	auth	0011_update_proxy_permissions	2026-05-21 17:09:59.4558+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 17:09:59.469754+00
18	axis_saas	0001_initial	2026-05-21 17:09:59.595637+00
19	sessions	0001_initial	2026-05-21 17:09:59.606408+00
20	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:46.270917+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:21.638769+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bb; Owner: axis_admin
--

COPY bb.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$AfwEDzXf5epHv0QHoCzC7J$kWfRD2+DOaKGdsMh2NI8UqWuBZGa2n1IqV9phnOJbKE=	\N	t	s			s@bgng.com	t	t	2026-05-20 08:23:57.230994+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.593705+00	2026-05-21 16:56:30.593726+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:23:56.559962+00
2	auth	0001_initial	2026-05-20 08:23:56.787506+00
3	admin	0001_initial	2026-05-20 08:23:56.819706+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:23:56.83129+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:23:56.845671+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:23:56.876296+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:23:56.892695+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:23:56.907221+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:23:56.91919+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:23:56.937382+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:23:56.939784+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:23:56.951029+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:23:56.969667+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:23:56.986784+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:23:57.019797+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:23:57.03011+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:23:57.044703+00
18	axis_saas	0001_initial	2026-05-20 08:23:57.107678+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:23:57.113306+00
20	sessions	0001_initial	2026-05-20 08:23:57.128352+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:46.494581+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:01.1243+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:20.781947+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:42.451647+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:17.343224+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bgng; Owner: axis_admin
--

COPY bgng.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$SdO2OuiLLWFDk407vIyVe9$ha1v1DKx5C2L8L7CenU4TYNfs3uE3xj1GwGVE3uZVH8=	\N	t	s			s@bh.com	t	t	2026-05-22 16:30:54.232797+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 16:35:14.676009+00	2026-05-22 16:35:14.676036+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 16:30:53.54362+00
2	auth	0001_initial	2026-05-22 16:30:53.687613+00
3	admin	0001_initial	2026-05-22 16:30:53.735114+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 16:30:53.753127+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 16:30:53.766304+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 16:30:53.80051+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 16:30:53.813621+00
8	auth	0003_alter_user_email_max_length	2026-05-22 16:30:53.827185+00
9	auth	0004_alter_user_username_opts	2026-05-22 16:30:53.83642+00
10	auth	0005_alter_user_last_login_null	2026-05-22 16:30:53.848479+00
11	auth	0006_require_contenttypes_0002	2026-05-22 16:30:53.850563+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 16:30:53.860957+00
13	auth	0008_alter_user_username_max_length	2026-05-22 16:30:53.875746+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 16:30:53.88774+00
15	auth	0010_alter_group_name_max_length	2026-05-22 16:30:53.903259+00
16	auth	0011_update_proxy_permissions	2026-05-22 16:30:53.913673+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 16:30:53.928957+00
18	axis_saas	0001_initial	2026-05-22 16:30:54.071232+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 16:30:54.085427+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 16:30:54.097327+00
21	sessions	0001_initial	2026-05-22 16:30:54.154621+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bh; Owner: axis_admin
--

COPY bh.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$JtAwQjJGtYehwjRQXefbOm$KcLy0JWyK1NWtObX3nVPFbsLyi4HO3GLSoSq7f/mYTo=	\N	t	sa			sa@bhattya.com	t	t	2026-05-20 07:52:03.17888+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.491049+00	2026-05-21 16:56:30.491082+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 07:52:02.589595+00
2	auth	0001_initial	2026-05-20 07:52:02.722463+00
3	admin	0001_initial	2026-05-20 07:52:02.75224+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 07:52:02.767147+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 07:52:02.781223+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 07:52:02.81075+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 07:52:02.825069+00
8	auth	0003_alter_user_email_max_length	2026-05-20 07:52:02.84252+00
9	auth	0004_alter_user_username_opts	2026-05-20 07:52:02.854251+00
10	auth	0005_alter_user_last_login_null	2026-05-20 07:52:02.871511+00
11	auth	0006_require_contenttypes_0002	2026-05-20 07:52:02.873871+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 07:52:02.884929+00
13	auth	0008_alter_user_username_max_length	2026-05-20 07:52:02.926773+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 07:52:02.943191+00
15	auth	0010_alter_group_name_max_length	2026-05-20 07:52:02.961608+00
16	auth	0011_update_proxy_permissions	2026-05-20 07:52:02.97765+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 07:52:02.994576+00
18	axis_saas	0001_initial	2026-05-20 07:52:03.047794+00
19	axis_saas	0002_student_b_form_number	2026-05-20 07:52:03.054095+00
20	sessions	0001_initial	2026-05-20 07:52:03.067203+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:45.166579+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:17:59.086407+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:19.933558+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:41.594734+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:16.388162+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bhattya; Owner: axis_admin
--

COPY bhattya.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$puN5HkOERYm6iymJkAw4zR$9FYEUhLvJ0h+pjyeg7GJH7CHyJdtI6AYEPPm3HDBCOA=	\N	t	sami			sami@bpf.com	t	t	2026-05-21 16:50:47.064103+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	muhammad sami anjum	hazir khan	3650226223326	03366969594	10	C	2026-05-21	active	male	2010-01-01	okar cantt			1001	1000.00	2026-05-21 16:51:43.790076+00
2	muhammad	khan	356050254025	03059187326	10	c	2026-05-21	active	male	1111-11-11	okara			1002	1000.00	2026-05-21 16:52:34.734177+00
3	ngaga	gagag	35335	35353	8	c	2026-05-21	active	male	1111-11-11	safafaf		afafa	1003	1000.00	2026-05-21 16:53:09.063667+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	1
2	5	2026	1000.00	0.00	2026-06-06	pending	\N	2
3	5	2026	1000.00	0.00	2026-06-06	pending	\N	3
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	1000.00	2026-05-21 17:15:02.702034+00
2	8	1000.00	2026-05-21 17:15:02.733016+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	22.00	15	2026-05-21 16:56:30.965783+00	2026-05-21 16:57:13.994756+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 16:50:46.3037+00
2	auth	0001_initial	2026-05-21 16:50:46.456627+00
3	admin	0001_initial	2026-05-21 16:50:46.484148+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 16:50:46.496037+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 16:50:46.509156+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 16:50:46.534341+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 16:50:46.547774+00
8	auth	0003_alter_user_email_max_length	2026-05-21 16:50:46.560624+00
9	auth	0004_alter_user_username_opts	2026-05-21 16:50:46.570369+00
10	auth	0005_alter_user_last_login_null	2026-05-21 16:50:46.582541+00
11	auth	0006_require_contenttypes_0002	2026-05-21 16:50:46.584732+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 16:50:46.595105+00
13	auth	0008_alter_user_username_max_length	2026-05-21 16:50:46.617337+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 16:50:46.627904+00
15	auth	0010_alter_group_name_max_length	2026-05-21 16:50:46.641725+00
16	auth	0011_update_proxy_permissions	2026-05-21 16:50:46.651325+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 16:50:46.663035+00
18	axis_saas	0001_initial	2026-05-21 16:50:46.70776+00
19	axis_saas	0002_student_b_form_number	2026-05-21 16:50:46.714657+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 16:50:46.780365+00
21	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 16:50:46.928199+00
22	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 16:50:46.951517+00
23	sessions	0001_initial	2026-05-21 16:50:46.979832+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:46.089341+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:21.457489+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bpf; Owner: axis_admin
--

COPY bpf.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$U9Ha2FOsv6H9dc28e8j9aX$Z7mHY0EPWIZEXTmMjswEHYyxNUVSVy7DuNIsk+HYvQw=	\N	t	s			s@bulla.com	t	t	2026-05-20 09:48:05.654321+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	reha	haha	22	22	2	A	2026-05-20	active	male	1111-11-11	ss		s	AX-BULLA-2026-0001	1000.00	2026-05-20 09:48:29.354138+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	2	1000.00	2026-05-21 17:15:02.616095+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.807762+00	2026-05-21 16:56:30.807792+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 09:48:05.219837+00
2	auth	0001_initial	2026-05-20 09:48:05.304228+00
3	admin	0001_initial	2026-05-20 09:48:05.327421+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 09:48:05.338527+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 09:48:05.350018+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 09:48:05.376247+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 09:48:05.389263+00
8	auth	0003_alter_user_email_max_length	2026-05-20 09:48:05.40152+00
9	auth	0004_alter_user_username_opts	2026-05-20 09:48:05.413424+00
10	auth	0005_alter_user_last_login_null	2026-05-20 09:48:05.425893+00
11	auth	0006_require_contenttypes_0002	2026-05-20 09:48:05.427772+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 09:48:05.43791+00
13	auth	0008_alter_user_username_max_length	2026-05-20 09:48:05.453087+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 09:48:05.474284+00
15	auth	0010_alter_group_name_max_length	2026-05-20 09:48:05.487153+00
16	auth	0011_update_proxy_permissions	2026-05-20 09:48:05.498645+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 09:48:05.510463+00
18	axis_saas	0001_initial	2026-05-20 09:48:05.558374+00
19	axis_saas	0002_student_b_form_number	2026-05-20 09:48:05.564749+00
20	sessions	0001_initial	2026-05-20 09:48:05.574276+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:49.456803+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:05.787362+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:22.840477+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:44.34552+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:19.912924+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: bulla; Owner: axis_admin
--

COPY bulla.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$VqZuT7S5GB0CrnQMUGxbAV$2oCL14EX7gP98mX8SuKuh5mVCYpAmFqbWoLkLhTE8L8=	\N	t	s			s@cs.com	t	t	2026-05-22 10:49:28.183743+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 10:56:27.760226+00	2026-05-22 10:56:27.760252+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 10:49:27.604168+00
2	auth	0001_initial	2026-05-22 10:49:27.685111+00
3	admin	0001_initial	2026-05-22 10:49:27.71485+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 10:49:27.725257+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 10:49:27.750289+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 10:49:27.7768+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 10:49:27.788918+00
8	auth	0003_alter_user_email_max_length	2026-05-22 10:49:27.803585+00
9	auth	0004_alter_user_username_opts	2026-05-22 10:49:27.815367+00
10	auth	0005_alter_user_last_login_null	2026-05-22 10:49:27.830006+00
11	auth	0006_require_contenttypes_0002	2026-05-22 10:49:27.832156+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 10:49:27.854259+00
13	auth	0008_alter_user_username_max_length	2026-05-22 10:49:27.870519+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 10:49:27.890381+00
15	auth	0010_alter_group_name_max_length	2026-05-22 10:49:27.906499+00
16	auth	0011_update_proxy_permissions	2026-05-22 10:49:27.920146+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 10:49:27.935485+00
18	axis_saas	0001_initial	2026-05-22 10:49:28.065389+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 10:49:28.074407+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 10:49:28.083581+00
21	sessions	0001_initial	2026-05-22 10:49:28.094523+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: cs; Owner: axis_admin
--

COPY cs.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$COADABiprzDt0Ygz41GGzS$C1gpCNtqjCgOonrLh4HfeQAAXxekCCbgA3fDngEFLjg=	\N	t	s			s@ehsas.com	t	t	2026-05-20 08:54:00.906938+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.679201+00	2026-05-21 16:56:30.679229+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:54:00.308812+00
2	auth	0001_initial	2026-05-20 08:54:00.401551+00
3	admin	0001_initial	2026-05-20 08:54:00.429226+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:54:00.445121+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:54:00.45921+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:54:00.491516+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:54:00.509393+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:54:00.525495+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:54:00.541154+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:54:00.557702+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:54:00.561024+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:54:00.594871+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:54:00.635466+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:54:00.653569+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:54:00.672753+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:54:00.704418+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:54:00.718789+00
18	axis_saas	0001_initial	2026-05-20 08:54:00.76934+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:54:00.775947+00
20	sessions	0001_initial	2026-05-20 08:54:00.789401+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:47.900773+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:03.046548+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:21.671556+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:43.292674+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:18.33034+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ehsas; Owner: axis_admin
--

COPY ehsas.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$OGMRPy3Oqv4QdZlijq2aTq$oNlwrsPf/G9dAftRzJg5lnVD4kNrR19VngWElBNk1hg=	\N	t	s			s@ena.com	t	t	2026-05-20 06:00:11.79076+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.441737+00	2026-05-21 16:56:30.441761+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 06:00:10.251215+00
2	auth	0001_initial	2026-05-20 06:00:10.830564+00
3	admin	0001_initial	2026-05-20 06:00:10.934987+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 06:00:10.968101+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 06:00:11.002988+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 06:00:11.085848+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 06:00:11.123295+00
8	auth	0003_alter_user_email_max_length	2026-05-20 06:00:11.194505+00
9	auth	0004_alter_user_username_opts	2026-05-20 06:00:11.223032+00
10	auth	0005_alter_user_last_login_null	2026-05-20 06:00:11.259662+00
11	auth	0006_require_contenttypes_0002	2026-05-20 06:00:11.265745+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 06:00:11.292471+00
13	auth	0008_alter_user_username_max_length	2026-05-20 06:00:11.361491+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 06:00:11.392658+00
15	auth	0010_alter_group_name_max_length	2026-05-20 06:00:11.428422+00
16	auth	0011_update_proxy_permissions	2026-05-20 06:00:11.471619+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 06:00:11.506269+00
18	axis_saas	0001_initial	2026-05-20 06:00:11.630575+00
19	axis_saas	0002_student_b_form_number	2026-05-20 06:00:11.638533+00
20	sessions	0001_initial	2026-05-20 06:00:11.6626+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:44.643014+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:17:58.335498+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:19.576976+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:41.256458+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:16.040489+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ena; Owner: axis_admin
--

COPY ena.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$t4KRNBlVFgYwKGx9enaxfA$i+HlYONWYC1Kr+Nm15W91Zot45JeOhvvNHOaTbXMlwE=	\N	t	s			s@f.com	t	t	2026-05-22 03:49:26.276016+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	hah	gaga	2	2	1	1	2026-05-22	active	male	1111-11-11	111		1	1001	1066.00	2026-05-22 03:50:26.462586+00
2	11	11	111	111	1	11	2026-05-22	active	male	1111-11-11	111			1002	1066.00	2026-05-22 03:50:45.5464+00
3	2	2	2	2	2	2	2026-05-22	active	male	2222-02-22	2		2	1003	6000.00	2026-05-22 03:51:00.821988+00
4	3	3	3	3	3	3	2026-05-22	active	male	3333-03-31	3			1004	8000.00	2026-05-22 03:51:15.899805+00
5	4	44	4	4	4	4	2026-05-22	active	male	4444-04-04	4		4	1005	1000.00	2026-05-22 03:51:34.265347+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
3	5	2026	6000.00	0.00	2026-06-06	pending	\N	3
5	5	2026	1000.00	0.00	2026-06-06	pending	\N	5
2	5	2026	1066.00	1066.00	2026-06-06	paid	\N	2
1	5	2026	1066.00	1066.00	2026-06-06	paid	\N	1
4	5	2026	8000.00	8000.00	2026-06-06	paid	\N	4
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	1066.00	2026-05-22 03:51:43.434526+00
2	2	6000.00	2026-05-22 03:51:49.195723+00
3	3	8000.00	2026-05-22 03:51:54.373779+00
4	4	1000.00	2026-05-22 11:43:43.096031+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	1066.00	2026-05-22	cash	full	RCPT-20260522-0001		s	2
2	1066.00	2026-05-22	cash	full	RCPT-20260522-0002		s	1
3	8000.00	2026-05-22	cash	full	RCPT-20260522-0003		s	4
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	2
2	2	1
3	3	4
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	2	15	0.00	2026-05-22 03:51:56.309712+00	2026-05-22 03:52:07.415012+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 03:49:25.375653+00
2	auth	0001_initial	2026-05-22 03:49:25.554766+00
3	admin	0001_initial	2026-05-22 03:49:25.611614+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 03:49:25.634259+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 03:49:25.654688+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 03:49:25.734965+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 03:49:25.770918+00
8	auth	0003_alter_user_email_max_length	2026-05-22 03:49:25.803014+00
9	auth	0004_alter_user_username_opts	2026-05-22 03:49:25.828896+00
10	auth	0005_alter_user_last_login_null	2026-05-22 03:49:25.872417+00
11	auth	0006_require_contenttypes_0002	2026-05-22 03:49:25.875123+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 03:49:25.908323+00
13	auth	0008_alter_user_username_max_length	2026-05-22 03:49:25.946092+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 03:49:25.971712+00
15	auth	0010_alter_group_name_max_length	2026-05-22 03:49:25.99133+00
16	auth	0011_update_proxy_permissions	2026-05-22 03:49:26.003677+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 03:49:26.018771+00
18	axis_saas	0001_initial	2026-05-22 03:49:26.183196+00
19	sessions	0001_initial	2026-05-22 03:49:26.19239+00
20	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:46.717835+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:21.973559+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: f; Owner: axis_admin
--

COPY f.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$NqCDB2yzZ47UcN1rMduPnb$cwqGdzSwUtWXnUR6Op1x7XKvqBn/eVCRjx+5XxqQLCo=	\N	t	f			f@fa.com	t	t	2026-05-19 03:53:14.997414+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:53:14.45129+00
2	auth	0001_initial	2026-05-19 03:53:14.539902+00
3	admin	0001_initial	2026-05-19 03:53:14.606513+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:53:14.628176+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:53:14.657598+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:53:14.702744+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:53:14.717618+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:53:14.737378+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:53:14.754297+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:53:14.771371+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:53:14.776856+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:53:14.790341+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:53:14.80928+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:53:14.820976+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:53:14.83921+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:53:14.850883+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:53:14.875448+00
18	axis_saas	0001_initial	2026-05-19 03:53:14.912984+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:53:14.921178+00
20	sessions	0001_initial	2026-05-19 03:53:14.932266+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:45.121101+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: fa; Owner: axis_admin
--

COPY fa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$7jgpsZzfBJwaW3UV5r3VGo$WVuXH7sulr7/K0swZ1BRwcflJpBblPEmLJ8m+cVjmi8=	\N	t	s			s@fafafa.com	t	t	2026-05-19 17:56:49.393357+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.412352+00	2026-05-21 16:56:30.41238+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 17:56:48.491843+00
2	auth	0001_initial	2026-05-19 17:56:48.724177+00
3	admin	0001_initial	2026-05-19 17:56:48.759947+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 17:56:48.784693+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 17:56:48.805113+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 17:56:48.883244+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 17:56:48.911585+00
8	auth	0003_alter_user_email_max_length	2026-05-19 17:56:48.935768+00
9	auth	0004_alter_user_username_opts	2026-05-19 17:56:48.957058+00
10	auth	0005_alter_user_last_login_null	2026-05-19 17:56:48.979999+00
11	auth	0006_require_contenttypes_0002	2026-05-19 17:56:48.982881+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 17:56:49.01058+00
13	auth	0008_alter_user_username_max_length	2026-05-19 17:56:49.037631+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 17:56:49.061788+00
15	auth	0010_alter_group_name_max_length	2026-05-19 17:56:49.076535+00
16	auth	0011_update_proxy_permissions	2026-05-19 17:56:49.093513+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 17:56:49.11487+00
19	sessions	0001_initial	2026-05-19 17:56:49.237839+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: fafafa; Owner: axis_admin
--

COPY fafafa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$G4HSMFcF3A8Nhx9sijNq8v$ZZiM/AWTKlOCsoadtUM3oxR3BhKixueAxnk4ltqK57E=	\N	t	s			s@faga.com	t	t	2026-05-19 04:13:26.125916+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:13:25.532565+00
2	auth	0001_initial	2026-05-19 04:13:25.641818+00
3	admin	0001_initial	2026-05-19 04:13:25.679807+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:13:25.695806+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:13:25.717428+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:13:25.759072+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:13:25.78246+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:13:25.810024+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:13:25.821913+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:13:25.841947+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:13:25.84673+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:13:25.861608+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:13:25.890601+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:13:25.909964+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:13:25.928726+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:13:25.941749+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:13:25.958447+00
18	axis_saas	0001_initial	2026-05-19 04:13:26.00157+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:13:26.017785+00
20	sessions	0001_initial	2026-05-19 04:13:26.038872+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:45.570685+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: faga; Owner: axis_admin
--

COPY faga.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$ppf4dlvHPT8e01RyZuNz5z$NyNeGVPTqme8I0HhPHnKY5kboPIdfIIHeV4o6EpfIYk=	\N	t	s			s@fasg.com	t	t	2026-05-19 17:27:40.252424+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 17:27:39.120496+00
2	auth	0001_initial	2026-05-19 17:27:39.600847+00
3	admin	0001_initial	2026-05-19 17:27:39.722851+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 17:27:39.741409+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 17:27:39.757906+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 17:27:39.795619+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 17:27:39.817908+00
8	auth	0003_alter_user_email_max_length	2026-05-19 17:27:39.836343+00
9	auth	0004_alter_user_username_opts	2026-05-19 17:27:39.854089+00
10	auth	0005_alter_user_last_login_null	2026-05-19 17:27:39.869822+00
11	auth	0006_require_contenttypes_0002	2026-05-19 17:27:39.872381+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 17:27:39.882961+00
13	auth	0008_alter_user_username_max_length	2026-05-19 17:27:39.937762+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 17:27:39.951913+00
15	auth	0010_alter_group_name_max_length	2026-05-19 17:27:39.979264+00
16	auth	0011_update_proxy_permissions	2026-05-19 17:27:39.989104+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 17:27:40.002252+00
18	axis_saas	0001_initial	2026-05-19 17:27:40.099146+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 17:27:40.107763+00
20	axis_saas	0003_add_school_logo	2026-05-19 17:27:40.117617+00
21	sessions	0001_initial	2026-05-19 17:27:40.155727+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: fasg; Owner: axis_admin
--

COPY fasg.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$K3LkD9U95S4EdBca0nHnLD$H23IXKjyshOWYzJZ/w8GulJZhtsFIg64qV1zQ+CcFlg=	2026-05-18 17:41:56.779428+00	t	ga			ga@ga.com	t	t	2026-05-18 17:41:48.802482+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 17:41:48.311109+00
2	auth	0001_initial	2026-05-18 17:41:48.44359+00
3	admin	0001_initial	2026-05-18 17:41:48.469243+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 17:41:48.480054+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 17:41:48.491459+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 17:41:48.519592+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 17:41:48.534375+00
8	auth	0003_alter_user_email_max_length	2026-05-18 17:41:48.54932+00
9	auth	0004_alter_user_username_opts	2026-05-18 17:41:48.560945+00
10	auth	0005_alter_user_last_login_null	2026-05-18 17:41:48.586649+00
11	auth	0006_require_contenttypes_0002	2026-05-18 17:41:48.589045+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 17:41:48.600889+00
13	auth	0008_alter_user_username_max_length	2026-05-18 17:41:48.623719+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 17:41:48.639701+00
15	auth	0010_alter_group_name_max_length	2026-05-18 17:41:48.659856+00
16	auth	0011_update_proxy_permissions	2026-05-18 17:41:48.671101+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 17:41:48.685511+00
18	axis_saas	0001_initial	2026-05-18 17:41:48.722732+00
19	sessions	0001_initial	2026-05-18 17:41:48.73249+00
20	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:42.918299+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:42.930425+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ga; Owner: axis_admin
--

COPY ga.django_session (session_key, session_data, expire_date) FROM stdin;
v7rtyuuae6mfqif8iy4q84ikp9mnt04q	.eJxVjcsOwiAURP-FtSFASyUu3fsN5AKXgg8wQN0Y_91Wm0a3M2fOPImGqQU9VSw6OnIgnOx-MwP2gmkp3BnSmKnNqZVo6ILQta30lB1ejyv7JwhQw7wWXHqjTMc6wVB5xYxjDgQ4KTuP3HAYUA2M7WXfIxNeCceg58JKiX7wfpM2TJCarjbgDXTL8-OsH2EDwLb4wO-5j2nEci8xtQ-kOXm9AVuPUjo:1wP2CY:YiMZZJMyXBR8-A9n-jAPrYfUmj0r9dHVJl7MSDnCklI	2026-06-01 17:56:26.885397+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$PwdfCC8TQDFHArsfKylo1P$KWrlm8Vsqphj4FyXXtJ3/rdJYMFwjh0JD85vNu/qXXk=	2026-05-18 16:33:23.718603+00	t	sa			sa@gag.com	t	t	2026-05-18 16:33:16.81557+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	3	333.00	2026-05-18 16:33:54.869713+00
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	s	sw	ww	w	3	s	2026-05-18	active	\N	\N	\N		\N	1001	333.00	2026-05-18 16:33:43.926122+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 16:33:43.930754+00	1	s - Reg: 1001 (3-s)	1	[{"added": {}}]	4	1
2	2026-05-18 16:33:54.8752+00	1	Class 3 - RS 333	1	[{"added": {}}]	1	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 16:33:16.240676+00
2	auth	0001_initial	2026-05-18 16:33:16.37934+00
3	admin	0001_initial	2026-05-18 16:33:16.411505+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 16:33:16.428892+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 16:33:16.443064+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 16:33:16.470658+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 16:33:16.483786+00
8	auth	0003_alter_user_email_max_length	2026-05-18 16:33:16.501921+00
9	auth	0004_alter_user_username_opts	2026-05-18 16:33:16.515836+00
10	auth	0005_alter_user_last_login_null	2026-05-18 16:33:16.539823+00
11	auth	0006_require_contenttypes_0002	2026-05-18 16:33:16.542703+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 16:33:16.553581+00
13	auth	0008_alter_user_username_max_length	2026-05-18 16:33:16.569877+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 16:33:16.583482+00
15	auth	0010_alter_group_name_max_length	2026-05-18 16:33:16.597906+00
16	auth	0011_update_proxy_permissions	2026-05-18 16:33:16.611724+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 16:33:16.623714+00
18	axis_saas	0001_initial	2026-05-18 16:33:16.675522+00
19	sessions	0001_initial	2026-05-18 16:33:16.686902+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: gag; Owner: axis_admin
--

COPY gag.django_session (session_key, session_data, expire_date) FROM stdin;
glhzo1sfv79pxxd4r31d8ynxbwm14u4h	.eJxVjEEOwiAQRe_C2hDagTK6dN8zNMMMSNVAUtqV8e7apAvd_vfef6mJtjVPW4vLNIu6qE6dfrdA_IhlB3Kncquaa1mXOehd0QdteqwSn9fD_TvI1PK39pLEQoAhEQobQe_IBrQAFmXoTRe5t47ZmeDOYhEBwXtjADgZAlHvD-RjN20:1wP0uj:6uqeZet53RgIwtKrWe3gS4itmijwhb1QlcEXKO_pn1Q	2026-06-01 16:33:57.391917+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$84dOIaQD3wRRvPMWk6ACwm$ijCdkEyMrccUk63jOU+WWfWllfB7zhivuXERUeZyguI=	\N	t	a			a@gaga.com	t	t	2026-05-19 02:57:06.851355+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 02:57:06.38111+00
2	auth	0001_initial	2026-05-19 02:57:06.489918+00
3	admin	0001_initial	2026-05-19 02:57:06.500118+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 02:57:06.51455+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 02:57:06.530265+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 02:57:06.563244+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 02:57:06.575666+00
8	auth	0003_alter_user_email_max_length	2026-05-19 02:57:06.589187+00
9	auth	0004_alter_user_username_opts	2026-05-19 02:57:06.601587+00
10	auth	0005_alter_user_last_login_null	2026-05-19 02:57:06.612687+00
11	auth	0006_require_contenttypes_0002	2026-05-19 02:57:06.614569+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 02:57:06.632536+00
13	auth	0008_alter_user_username_max_length	2026-05-19 02:57:06.653499+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 02:57:06.666126+00
15	auth	0010_alter_group_name_max_length	2026-05-19 02:57:06.682042+00
16	auth	0011_update_proxy_permissions	2026-05-19 02:57:06.693289+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 02:57:06.706153+00
18	axis_saas	0001_initial	2026-05-19 02:57:06.751987+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 02:57:06.760796+00
20	sessions	0001_initial	2026-05-19 02:57:06.773493+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.052497+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: gaga; Owner: axis_admin
--

COPY gaga.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$qzInKRj3IpB4GIvoLbZsF1$Hsc+THCCqyeylMFL9LC8xIuNbD2B5bTTN6bhyvQFffM=	2026-05-19 03:08:01.754397+00	t	s			s@gagaad.com	t	t	2026-05-19 03:07:49.859467+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:07:49.356691+00
2	auth	0001_initial	2026-05-19 03:07:49.455752+00
3	admin	0001_initial	2026-05-19 03:07:49.470242+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:07:49.482943+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:07:49.494591+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:07:49.523426+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:07:49.536056+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:07:49.551959+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:07:49.563234+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:07:49.577581+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:07:49.579859+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:07:49.592837+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:07:49.611169+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:07:49.63023+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:07:49.646092+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:07:49.660897+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:07:49.676499+00
18	axis_saas	0001_initial	2026-05-19 03:07:49.743691+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:07:49.756325+00
20	sessions	0001_initial	2026-05-19 03:07:49.77057+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.502733+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: gagaad; Owner: axis_admin
--

COPY gagaad.django_session (session_key, session_data, expire_date) FROM stdin;
4flyc99cc9w3wonnipcioood0hsktn13	.eJxVjssSwiAMRf-FtdORCo116d5vYEJIW3yAA9SN47_bjp2qy-SenJunMDiWwYyZk_FOHIQUm9-dRbpwmAN3xtDHimIoydtqRqolzdUpOr4eF_ZPMGAepus9tJLBga0ZlayBQU-TVqxto4DrlkhLsrum0eSk6iwBKN26rmlBbvdqlRYOGIrJNPANTYlT46TvsUf8NiMV_-DPA50PPad78qGsoJHi9QbThVTY:1wPArN:_pfpAFmdslY0Gi7TwiPDwMdRuu0DqN5Z6NzZxAs2WVs	2026-06-02 03:11:09.193984+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$QXIr498tT7Bb9ggbRyPgdd$XxLb/EVVcV2ZTstzJ4ljb5TBXPW4obWqJz5tSogWU2o=	\N	t	a			a@gagas.com	t	t	2026-05-19 04:23:03.496218+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:23:02.845081+00
2	auth	0001_initial	2026-05-19 04:23:03.045693+00
3	admin	0001_initial	2026-05-19 04:23:03.143446+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:23:03.156505+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:23:03.170829+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:23:03.204665+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:23:03.219038+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:23:03.236814+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:23:03.248055+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:23:03.261426+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:23:03.26367+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:23:03.276429+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:23:03.302186+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:23:03.322699+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:23:03.337567+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:23:03.351183+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:23:03.363589+00
18	axis_saas	0001_initial	2026-05-19 04:23:03.404321+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:23:03.41229+00
20	sessions	0001_initial	2026-05-19 04:23:03.422433+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:45.877151+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: gagas; Owner: axis_admin
--

COPY gagas.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	axis_saas	feerecord
8	axis_saas	feestructure
9	axis_saas	paymenttransaction
10	axis_saas	schoolclient
11	axis_saas	schooldomain
12	axis_saas	schoolfeesettings
13	axis_saas	student
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add fee record	7	add_feerecord
26	Can change fee record	7	change_feerecord
27	Can delete fee record	7	delete_feerecord
28	Can view fee record	7	view_feerecord
29	Can add fee structure	8	add_feestructure
30	Can change fee structure	8	change_feestructure
31	Can delete fee structure	8	delete_feestructure
32	Can view fee structure	8	view_feestructure
33	Can add school client	10	add_schoolclient
34	Can change school client	10	change_schoolclient
35	Can delete school client	10	delete_schoolclient
36	Can view school client	10	view_schoolclient
37	Can add school fee settings	12	add_schoolfeesettings
38	Can change school fee settings	12	change_schoolfeesettings
39	Can delete school fee settings	12	delete_schoolfeesettings
40	Can view school fee settings	12	view_schoolfeesettings
41	Can add student	13	add_student
42	Can change student	13	change_student
43	Can delete student	13	delete_student
44	Can view student	13	view_student
45	Can add school domain	11	add_schooldomain
46	Can change school domain	11	change_schooldomain
47	Can delete school domain	11	delete_schooldomain
48	Can view school domain	11	view_schooldomain
49	Can add payment transaction	9	add_paymenttransaction
50	Can change payment transaction	9	change_paymenttransaction
51	Can delete payment transaction	9	delete_paymenttransaction
52	Can view payment transaction	9	view_paymenttransaction
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$Edd0csWbWeG9Uj1ClGhXJA$wtw5+xpFykC0JaBncDhExbwxtHXNm20BqdjMRZOF0RU=	\N	t	s			s@gav.com	t	t	2026-05-22 17:17:05.005005+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 17:20:32.729232+00	2026-05-22 17:20:32.729275+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 17:17:04.06811+00
2	auth	0001_initial	2026-05-22 17:17:04.257242+00
3	admin	0001_initial	2026-05-22 17:17:04.290959+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 17:17:04.309378+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 17:17:04.333574+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 17:17:04.384124+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 17:17:04.4021+00
8	auth	0003_alter_user_email_max_length	2026-05-22 17:17:04.420039+00
9	auth	0004_alter_user_username_opts	2026-05-22 17:17:04.438617+00
10	auth	0005_alter_user_last_login_null	2026-05-22 17:17:04.472781+00
11	auth	0006_require_contenttypes_0002	2026-05-22 17:17:04.481663+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 17:17:04.513762+00
13	auth	0008_alter_user_username_max_length	2026-05-22 17:17:04.539484+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 17:17:04.572272+00
15	auth	0010_alter_group_name_max_length	2026-05-22 17:17:04.593378+00
16	auth	0011_update_proxy_permissions	2026-05-22 17:17:04.609003+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 17:17:04.627724+00
18	axis_saas	0001_initial	2026-05-22 17:17:04.769798+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 17:17:04.783532+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 17:17:04.804573+00
21	sessions	0001_initial	2026-05-22 17:17:04.835386+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: gav; Owner: axis_admin
--

COPY gav.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	schoolclient
2	axis_saas	schooldomain
3	axis_saas	student
4	admin	logentry
5	auth	group
6	auth	permission
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add school client	1	add_schoolclient
2	Can change school client	1	change_schoolclient
3	Can delete school client	1	delete_schoolclient
4	Can view school client	1	view_schoolclient
5	Can add student	3	add_student
6	Can change student	3	change_student
7	Can delete student	3	delete_student
8	Can view student	3	view_student
9	Can add school domain	2	add_schooldomain
10	Can change school domain	2	change_schooldomain
11	Can delete school domain	2	delete_schooldomain
12	Can view school domain	2	view_schooldomain
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	6	add_permission
18	Can change permission	6	change_permission
19	Can delete permission	6	delete_permission
20	Can view permission	6	view_permission
21	Can add group	5	add_group
22	Can change group	5	change_group
23	Can delete group	5	delete_group
24	Can view group	5	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$IsjlqpeHbtZHdnF7tMmiB9$ZW4N+t/AL+1Tiw1PKDUCLxMnWsc0HacVH6hB1qBjij0=	2026-05-18 17:44:48.208753+00	t	ha			ha@ha.com	t	t	2026-05-18 13:53:55.675023+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.axis_saas_student (id, name, roll_number, grade, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 13:53:55.199657+00
2	auth	0001_initial	2026-05-18 13:53:55.312655+00
3	admin	0001_initial	2026-05-18 13:53:55.339825+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 13:53:55.350397+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 13:53:55.361962+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 13:53:55.387037+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 13:53:55.398154+00
8	auth	0003_alter_user_email_max_length	2026-05-18 13:53:55.410247+00
9	auth	0004_alter_user_username_opts	2026-05-18 13:53:55.421185+00
10	auth	0005_alter_user_last_login_null	2026-05-18 13:53:55.443184+00
11	auth	0006_require_contenttypes_0002	2026-05-18 13:53:55.445606+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 13:53:55.457131+00
13	auth	0008_alter_user_username_max_length	2026-05-18 13:53:55.479062+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 13:53:55.498923+00
15	auth	0010_alter_group_name_max_length	2026-05-18 13:53:55.514434+00
16	auth	0011_update_proxy_permissions	2026-05-18 13:53:55.528719+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 13:53:55.545586+00
18	axis_saas	0001_initial	2026-05-18 13:53:55.588702+00
19	sessions	0001_initial	2026-05-18 13:53:55.602261+00
20	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:43.074785+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:43.088347+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ha; Owner: axis_admin
--

COPY ha.django_session (session_key, session_data, expire_date) FROM stdin;
bb0d44nxscs4vd49rpbzfrus6s4l90ha	.eJxVjEEOwiAQRe_C2pAyVcq4dN8zkJkBpGogKe3KeHfbpAvd_vfefytP65L92uLsp6CuyqjT78Ykz1h2EB5U7lVLLcs8sd4VfdCmxxri63a4fweZWt5qiYBsE8qFe2IWJgTA3lhMIsxxOMMGMQyUDHbWdi5QzzaAAwTjWH2-FJU4mw:1wOyZh:5s85a1fGSfYBpSu6SI6yLOd5shsUUvssf-DNKykJGlM	2026-06-01 14:04:05.737607+00
hbpcz4dlzqbv9polfbo022xjpg017dex	.eJxVjc0OwiAQBt-FsyGFKi0evfsMZHdZCv5Q01Ivxne3VdPodWd2vodwMJXoppEHl7zYCyU2vzcEOnNegD9B7npJfS5DQrko8ktHeew9Xw5f9y8QYYzzN7G2aIKlHdaASAhWa1srYwMRIjdbPUPrGwjKVsZUrYcajdettlq1uEYLZ8jFjRT5Cq708-Kcj7AKQCXd-TMeUu54uA0pl7fklHi-AMZFUvQ:1wP21M:oJmGZUcOz0XcE1ey1M-4p2hsSvHFT7opW1ys6Rks2iI	2026-06-01 17:44:52.210862+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$3Mzlne9bMBicje6ZUJYGp8$vHq5rhNDZQZLPIm13SZwDzF52SvuykSVYPOHHfk35K8=	2026-05-19 03:19:31.134928+00	t	a			a@haha.com	t	t	2026-05-19 03:00:11.702071+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:00:11.186015+00
2	auth	0001_initial	2026-05-19 03:00:11.269996+00
3	admin	0001_initial	2026-05-19 03:00:11.281254+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:00:11.293259+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:00:11.305382+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:00:11.331703+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:00:11.34852+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:00:11.362153+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:00:11.37684+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:00:11.389885+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:00:11.392137+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:00:11.402696+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:00:11.417246+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:00:11.435967+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:00:11.45024+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:00:11.461576+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:00:11.478211+00
18	axis_saas	0001_initial	2026-05-19 03:00:11.553837+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:00:11.565819+00
20	sessions	0001_initial	2026-05-19 03:00:11.587599+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.208651+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: haha; Owner: axis_admin
--

COPY haha.django_session (session_key, session_data, expire_date) FROM stdin;
om5wn4rqjuyzcuughtwieq5sjay87d99	.eJxVjc0OwiAQhN-Fs2lKpQIevfsMZJfdFvyhhlIvxne3jU2j15lvvnkJB1MJbho5u0jiKKTY_WYI_sppKegCqR8qP6SSI1YLUq3tWJ0H4ttpZf8EAcYwr8Gg3Zu9NESqY6u19LJWLbXakPINMNJBt5o67BCauiFtyUBtEY2SjcJNWjhBKm70ge_gyjA_zvoAATYEfIlP_t53MfWcHzmmsmJOivcH0zRUJQ:1wPBa8:jkvar5TqOUocqMKdpS1gP-yQ0oaAffPHRpf74nvYuLc	2026-06-02 03:57:24.053834+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	axis_saas	feerecord
8	axis_saas	feestructure
9	axis_saas	paymenttransaction
10	axis_saas	schoolclient
11	axis_saas	schooldomain
12	axis_saas	schoolfeesettings
13	axis_saas	student
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add fee record	7	add_feerecord
26	Can change fee record	7	change_feerecord
27	Can delete fee record	7	delete_feerecord
28	Can view fee record	7	view_feerecord
29	Can add fee structure	8	add_feestructure
30	Can change fee structure	8	change_feestructure
31	Can delete fee structure	8	delete_feestructure
32	Can view fee structure	8	view_feestructure
33	Can add school client	10	add_schoolclient
34	Can change school client	10	change_schoolclient
35	Can delete school client	10	delete_schoolclient
36	Can view school client	10	view_schoolclient
37	Can add school fee settings	12	add_schoolfeesettings
38	Can change school fee settings	12	change_schoolfeesettings
39	Can delete school fee settings	12	delete_schoolfeesettings
40	Can view school fee settings	12	view_schoolfeesettings
41	Can add student	13	add_student
42	Can change student	13	change_student
43	Can delete student	13	delete_student
44	Can view student	13	view_student
45	Can add school domain	11	add_schooldomain
46	Can change school domain	11	change_schooldomain
47	Can delete school domain	11	delete_schooldomain
48	Can view school domain	11	view_schooldomain
49	Can add payment transaction	9	add_paymenttransaction
50	Can change payment transaction	9	change_paymenttransaction
51	Can delete payment transaction	9	delete_paymenttransaction
52	Can view payment transaction	9	view_paymenttransaction
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$FguOrtY4ezTNY5n6YmSK49$BGpJUrUjm5rhOHMVxYybhBVpk71wIwZ1ohcXFPQw4bk=	\N	t	s			s@hahaaa.com	t	t	2026-05-22 17:21:30.706103+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 17:23:04.360624+00	2026-05-22 17:23:04.360655+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 17:21:28.464934+00
2	auth	0001_initial	2026-05-22 17:21:28.812533+00
3	admin	0001_initial	2026-05-22 17:21:28.887697+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 17:21:28.915408+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 17:21:28.951665+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 17:21:29.049578+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 17:21:29.164601+00
8	auth	0003_alter_user_email_max_length	2026-05-22 17:21:29.22751+00
9	auth	0004_alter_user_username_opts	2026-05-22 17:21:29.267741+00
10	auth	0005_alter_user_last_login_null	2026-05-22 17:21:29.309926+00
11	auth	0006_require_contenttypes_0002	2026-05-22 17:21:29.319062+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 17:21:29.343927+00
13	auth	0008_alter_user_username_max_length	2026-05-22 17:21:29.377577+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 17:21:29.403513+00
15	auth	0010_alter_group_name_max_length	2026-05-22 17:21:29.447372+00
16	auth	0011_update_proxy_permissions	2026-05-22 17:21:29.481403+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 17:21:29.510163+00
18	axis_saas	0001_initial	2026-05-22 17:21:29.7019+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 17:21:29.714414+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 17:21:29.729651+00
21	sessions	0001_initial	2026-05-22 17:21:29.803833+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: hahaaa; Owner: axis_admin
--

COPY hahaaa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$tHkXlgLRBcOm185eWgdPQn$BHLsYMmP1T0Th3DcOgXP/gxLYUwMjONQ6oyYB4DX3nI=	\N	t	sass			sass@hapt.com	t	t	2026-05-19 04:36:18.677701+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:36:18.214391+00
2	auth	0001_initial	2026-05-19 04:36:18.291434+00
3	admin	0001_initial	2026-05-19 04:36:18.317931+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:36:18.329125+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:36:18.342269+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:36:18.37032+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:36:18.384118+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:36:18.397374+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:36:18.408634+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:36:18.42061+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:36:18.422689+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:36:18.43605+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:36:18.464696+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:36:18.478027+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:36:18.491445+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:36:18.503096+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:36:18.519435+00
18	axis_saas	0001_initial	2026-05-19 04:36:18.570184+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:36:18.578377+00
20	axis_saas	0003_add_school_logo	2026-05-19 04:36:18.585736+00
21	sessions	0001_initial	2026-05-19 04:36:18.597503+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: hapt; Owner: axis_admin
--

COPY hapt.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$vAeWIgrKLecBxNqWRrX7DB$voQNS4KXOlI5SrHriK6U4ux8HPVbOZd9kVlGkcxeGyc=	\N	t	s			s@hg.com	t	t	2026-05-19 04:04:17.884725+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:04:17.357927+00
2	auth	0001_initial	2026-05-19 04:04:17.461112+00
3	admin	0001_initial	2026-05-19 04:04:17.487304+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:04:17.498369+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:04:17.514765+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:04:17.539419+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:04:17.556591+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:04:17.572597+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:04:17.586982+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:04:17.601711+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:04:17.604668+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:04:17.619164+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:04:17.640623+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:04:17.663708+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:04:17.681264+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:04:17.692343+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:04:17.707508+00
18	axis_saas	0001_initial	2026-05-19 04:04:17.754328+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:04:17.76302+00
20	sessions	0001_initial	2026-05-19 04:04:17.80036+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:45.273741+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: hg; Owner: axis_admin
--

COPY hg.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$oWt1wiQs6bXXorhsfvMI4C$48e042cmgxfsvqgaB3ZPJrMkRK7GO0BDenNxl/g4qMA=	\N	t	s			s@hoho.com	t	t	2026-05-20 08:59:12.911656+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.695921+00	2026-05-21 16:56:30.695977+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:59:12.38513+00
2	auth	0001_initial	2026-05-20 08:59:12.483+00
3	admin	0001_initial	2026-05-20 08:59:12.51291+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:59:12.524504+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:59:12.537447+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:59:12.570234+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:59:12.583977+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:59:12.600269+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:59:12.613253+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:59:12.626565+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:59:12.628922+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:59:12.640818+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:59:12.659741+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:59:12.686461+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:59:12.700066+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:59:12.714144+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:59:12.730719+00
18	axis_saas	0001_initial	2026-05-20 08:59:12.786957+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:59:12.796736+00
20	sessions	0001_initial	2026-05-20 08:59:12.813458+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:48.146164+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:03.560507+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:21.881245+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:43.457684+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:18.591035+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: hoho; Owner: axis_admin
--

COPY hoho.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$CcPmaQnVde81HBZzHAK4PH$6OVQwC5aLqMAr4Y5Bn65YlGJUrnqsxIX1ynzkPUAGiE=	\N	t	s			s@ifi.com	t	t	2026-05-19 10:28:48.404005+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 10:28:47.837895+00
2	auth	0001_initial	2026-05-19 10:28:47.93181+00
3	admin	0001_initial	2026-05-19 10:28:47.956724+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 10:28:47.96934+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 10:28:47.987594+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 10:28:48.022659+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 10:28:48.037794+00
8	auth	0003_alter_user_email_max_length	2026-05-19 10:28:48.056527+00
9	auth	0004_alter_user_username_opts	2026-05-19 10:28:48.07613+00
10	auth	0005_alter_user_last_login_null	2026-05-19 10:28:48.093167+00
11	auth	0006_require_contenttypes_0002	2026-05-19 10:28:48.099951+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 10:28:48.121496+00
13	auth	0008_alter_user_username_max_length	2026-05-19 10:28:48.154999+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 10:28:48.169791+00
15	auth	0010_alter_group_name_max_length	2026-05-19 10:28:48.191933+00
16	auth	0011_update_proxy_permissions	2026-05-19 10:28:48.204582+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 10:28:48.228933+00
18	axis_saas	0001_initial	2026-05-19 10:28:48.271986+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 10:28:48.281941+00
20	axis_saas	0003_add_school_logo	2026-05-19 10:28:48.290916+00
21	axis_saas	0004_add_student_bform	2026-05-19 10:28:48.297084+00
22	sessions	0001_initial	2026-05-19 10:28:48.309243+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ifi; Owner: axis_admin
--

COPY ifi.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$RtMnGgtKxJ3GoHesmQFRMg$AKgQbrGTQwTaKmVIweGr7w/+14ZsnNn58L4mBkp5hVQ=	\N	t	s			s@imas.com	t	t	2026-05-19 03:05:29.945158+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:05:29.404896+00
2	auth	0001_initial	2026-05-19 03:05:29.490123+00
3	admin	0001_initial	2026-05-19 03:05:29.505222+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:05:29.526201+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:05:29.542733+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:05:29.573552+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:05:29.584459+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:05:29.604275+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:05:29.620539+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:05:29.638315+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:05:29.640966+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:05:29.658149+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:05:29.678077+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:05:29.702996+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:05:29.728986+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:05:29.740556+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:05:29.761287+00
18	axis_saas	0001_initial	2026-05-19 03:05:29.826938+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:05:29.836241+00
20	sessions	0001_initial	2026-05-19 03:05:29.849302+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.358398+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: imas; Owner: axis_admin
--

COPY imas.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$ps40uYnj1QWCrUYr4asdCR$3+EWEZjlOGQ+XOukAL0BIbOn2fGVI7AK08du25IxbyA=	\N	t	s			s@j.com	t	t	2026-05-22 10:19:17.157855+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 10:31:36.367653+00	2026-05-22 10:31:36.367679+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 10:19:16.645472+00
2	auth	0001_initial	2026-05-22 10:19:16.720015+00
3	admin	0001_initial	2026-05-22 10:19:16.747341+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 10:19:16.75743+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 10:19:16.769726+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 10:19:16.797557+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 10:19:16.809823+00
8	auth	0003_alter_user_email_max_length	2026-05-22 10:19:16.822688+00
9	auth	0004_alter_user_username_opts	2026-05-22 10:19:16.834011+00
10	auth	0005_alter_user_last_login_null	2026-05-22 10:19:16.846813+00
11	auth	0006_require_contenttypes_0002	2026-05-22 10:19:16.848978+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 10:19:16.859188+00
13	auth	0008_alter_user_username_max_length	2026-05-22 10:19:16.874761+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 10:19:16.90613+00
15	auth	0010_alter_group_name_max_length	2026-05-22 10:19:16.919759+00
16	auth	0011_update_proxy_permissions	2026-05-22 10:19:16.934119+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 10:19:16.946558+00
18	axis_saas	0001_initial	2026-05-22 10:19:17.056529+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 10:19:17.064899+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 10:19:17.072982+00
21	sessions	0001_initial	2026-05-22 10:19:17.084151+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: j; Owner: axis_admin
--

COPY j.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$tbZOuVU6nMUJWVbIlQpQfY$1ARDk5SQ41ZpLYtragO5Yr6q+5zIZ6XrmJR2g3Q8jUk=	\N	t	s			s@jaat.com	t	t	2026-05-19 04:17:55.186232+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:17:54.627754+00
2	auth	0001_initial	2026-05-19 04:17:54.711252+00
3	admin	0001_initial	2026-05-19 04:17:54.738161+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:17:54.750028+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:17:54.761855+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:17:54.790473+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:17:54.803878+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:17:54.829886+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:17:54.841944+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:17:54.858856+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:17:54.864592+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:17:54.88963+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:17:54.927028+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:17:54.950762+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:17:54.980896+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:17:54.995655+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:17:55.016243+00
18	axis_saas	0001_initial	2026-05-19 04:17:55.062317+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:17:55.072686+00
20	sessions	0001_initial	2026-05-19 04:17:55.085196+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:45.72111+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: jaat; Owner: axis_admin
--

COPY jaat.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.django_content_type (id, app_label, model) FROM stdin;
1	contenttypes	contenttype
2	sessions	session
3	axis_saas	schoolclient
4	axis_saas	schooldomain
5	axis_saas	student
6	admin	logentry
7	auth	group
8	auth	permission
9	auth	user
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add content type	1	add_contenttype
2	Can change content type	1	change_contenttype
3	Can delete content type	1	delete_contenttype
4	Can view content type	1	view_contenttype
5	Can add session	2	add_session
6	Can change session	2	change_session
7	Can delete session	2	delete_session
8	Can view session	2	view_session
9	Can add school client	3	add_schoolclient
10	Can change school client	3	change_schoolclient
11	Can delete school client	3	delete_schoolclient
12	Can view school client	3	view_schoolclient
13	Can add student	5	add_student
14	Can change student	5	change_student
15	Can delete student	5	delete_student
16	Can view student	5	view_student
17	Can add school domain	4	add_schooldomain
18	Can change school domain	4	change_schooldomain
19	Can delete school domain	4	delete_schooldomain
20	Can view school domain	4	view_schooldomain
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add permission	8	add_permission
26	Can change permission	8	change_permission
27	Can delete permission	8	delete_permission
28	Can view permission	8	view_permission
29	Can add group	7	add_group
30	Can change group	7	change_group
31	Can delete group	7	delete_group
32	Can view group	7	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$oQSCpwl2OxT3gKryFIdevR$74IYImPxC1YBf1G7uLzff04Wfl2apBPn/3GYiWSGYSU=	2026-05-18 08:58:28.959396+00	t	jeko			jeko@jekoo.com	t	t	2026-05-18 08:54:46.408321+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.axis_saas_student (id, name, roll_number, grade, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:54:45.972655+00
2	auth	0001_initial	2026-05-18 08:54:46.08824+00
3	admin	0001_initial	2026-05-18 08:54:46.114212+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:54:46.127935+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:54:46.141717+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:54:46.170549+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:54:46.184496+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:54:46.197922+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:54:46.209919+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:54:46.222271+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:54:46.224136+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:54:46.234496+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:54:46.250332+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:54:46.26368+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:54:46.277445+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:54:46.288181+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:54:46.301867+00
18	axis_saas	0001_initial	2026-05-18 08:54:46.329372+00
19	sessions	0001_initial	2026-05-18 08:54:46.339028+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: jekoo; Owner: axis_admin
--

COPY jekoo.django_session (session_key, session_data, expire_date) FROM stdin;
8oorqwtoix6tv58z8tquhgffi5rzmfic	.eJxVjDsOwjAQBe_iGllxbCdrSnrOYK29zziAEimfCnF3iJQC2jcz76Uib2uN24I5DqLOyqjT75Y4PzDuQO483iadp3Gdh6R3RR900ddJ8Lwc7t9B5aV-676hFqCGSURyZ31INvm-ZTIMbsAF3LmShWCTsQFwBZ4pUxCHLOr9AQqcOYw:1wOur1:dNW06TW45XmYBxCRZpzexxYR4FaptDyPZZaDyLfWmLk	2026-06-01 10:05:43.604175+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.django_content_type (id, app_label, model) FROM stdin;
1	sessions	session
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	admin	logentry
7	axis_saas	schoolclient
8	axis_saas	schooldomain
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add session	1	add_session
2	Can change session	1	change_session
3	Can delete session	1	delete_session
4	Can view session	1	view_session
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add school client	7	add_schoolclient
26	Can change school client	7	change_schoolclient
27	Can delete school client	7	delete_schoolclient
28	Can view school client	7	view_schoolclient
29	Can add school domain	8	add_schooldomain
30	Can change school domain	8	change_schooldomain
31	Can delete school domain	8	delete_schooldomain
32	Can view school domain	8	view_schooldomain
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$R5IDqunp5lP0pitU33FijR$6AeZC+DXbCgl9GIkRszR35Ew1tmBlpXzqaLn4qXED/4=	\N	t	j			management@jhan.com	t	t	2026-05-18 07:47:47.030257+00
2	pbkdf2_sha256$1200000$43F8jHTSDRkHhHdvJx0nqb$0NDgvYLPx1JqY9iVSYki8WIkrUY3YHIklbgJdZhXTCM=	\N	t	sami				t	t	2026-05-18 07:54:44.821828+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_email, admin_password, admin_username) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 07:44:48.776833+00
2	auth	0001_initial	2026-05-18 07:44:48.884994+00
3	admin	0001_initial	2026-05-18 07:44:48.91367+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 07:44:48.925866+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 07:44:48.937331+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 07:44:48.969274+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 07:44:48.980772+00
8	auth	0003_alter_user_email_max_length	2026-05-18 07:44:48.99299+00
9	auth	0004_alter_user_username_opts	2026-05-18 07:44:49.002413+00
10	auth	0005_alter_user_last_login_null	2026-05-18 07:44:49.013755+00
11	auth	0006_require_contenttypes_0002	2026-05-18 07:44:49.015729+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 07:44:49.025816+00
13	auth	0008_alter_user_username_max_length	2026-05-18 07:44:49.041406+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 07:44:49.053875+00
15	auth	0010_alter_group_name_max_length	2026-05-18 07:44:49.070332+00
16	auth	0011_update_proxy_permissions	2026-05-18 07:44:49.080981+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 07:44:49.094107+00
18	axis_saas	0001_initial	2026-05-18 07:44:49.112714+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 07:44:49.134994+00
20	sessions	0001_initial	2026-05-18 07:44:49.15081+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: jhan; Owner: axis_admin
--

COPY jhan.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$3KjirfX49QwHTawCiaV34R$XdWaLnpzwJyYbiZIXApEcrBGIKw3J/S+3qRNQ+PcPGI=	\N	t	sas			sas@jhant.com	t	t	2026-05-20 08:50:23.328584+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.664287+00	2026-05-21 16:56:30.664309+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:50:22.670942+00
2	auth	0001_initial	2026-05-20 08:50:22.773153+00
3	admin	0001_initial	2026-05-20 08:50:22.804572+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:50:22.82778+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:50:22.844647+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:50:22.883258+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:50:22.903971+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:50:22.952508+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:50:22.98547+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:50:23.025792+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:50:23.028898+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:50:23.041608+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:50:23.060356+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:50:23.0808+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:50:23.102924+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:50:23.11775+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:50:23.131009+00
18	axis_saas	0001_initial	2026-05-20 08:50:23.197149+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:50:23.210853+00
20	sessions	0001_initial	2026-05-20 08:50:23.228192+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:47.633287+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:02.571579+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:21.489333+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:43.119504+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:18.103134+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: jhant; Owner: axis_admin
--

COPY jhant.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	schoolclient
2	axis_saas	schooldomain
3	axis_saas	student
4	admin	logentry
5	auth	group
6	auth	permission
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add school client	1	add_schoolclient
2	Can change school client	1	change_schoolclient
3	Can delete school client	1	delete_schoolclient
4	Can view school client	1	view_schoolclient
5	Can add student	3	add_student
6	Can change student	3	change_student
7	Can delete student	3	delete_student
8	Can view student	3	view_student
9	Can add school domain	2	add_schooldomain
10	Can change school domain	2	change_schooldomain
11	Can delete school domain	2	delete_schooldomain
12	Can view school domain	2	view_schooldomain
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	6	add_permission
18	Can change permission	6	change_permission
19	Can delete permission	6	delete_permission
20	Can view permission	6	view_permission
21	Can add group	5	add_group
22	Can change group	5	change_group
23	Can delete group	5	delete_group
24	Can view group	5	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$TMpkIc4Y7YwmNxa3gjrczK$RCeCRr4g5SF7ktirYQRwU54jZPild8ootqxLGtxPCbU=	2026-05-18 13:53:24.747957+00	t	jh			jh@jho.com	t	t	2026-05-18 13:37:46.78262+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.axis_saas_student (id, name, roll_number, grade, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 13:37:45.496135+00
2	auth	0001_initial	2026-05-18 13:37:46.432324+00
3	admin	0001_initial	2026-05-18 13:37:46.458373+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 13:37:46.469432+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 13:37:46.480493+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 13:37:46.510449+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 13:37:46.524957+00
8	auth	0003_alter_user_email_max_length	2026-05-18 13:37:46.541026+00
9	auth	0004_alter_user_username_opts	2026-05-18 13:37:46.563328+00
10	auth	0005_alter_user_last_login_null	2026-05-18 13:37:46.57645+00
11	auth	0006_require_contenttypes_0002	2026-05-18 13:37:46.578736+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 13:37:46.590321+00
13	auth	0008_alter_user_username_max_length	2026-05-18 13:37:46.605274+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 13:37:46.619224+00
15	auth	0010_alter_group_name_max_length	2026-05-18 13:37:46.637949+00
16	auth	0011_update_proxy_permissions	2026-05-18 13:37:46.64958+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 13:37:46.663999+00
18	axis_saas	0001_initial	2026-05-18 13:37:46.699509+00
19	sessions	0001_initial	2026-05-18 13:37:46.710524+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: jho; Owner: axis_admin
--

COPY jho.django_session (session_key, session_data, expire_date) FROM stdin;
l3sg6c50owx07zaqry3qrv8hozlfs3zq	.eJxVjDsOwjAQBe_iGllZ_5eSnjNY6x8OIFuKkwpxd4iUAto3M-_FPG1r9dvIi58TOzNgp98tUHzktoN0p3brPPa2LnPgu8IPOvi1p_y8HO7fQaVRv7WLTk7WulgAnVRK62wRjNFJFnAqCKToREYUQMoWOwEqY03EpFHkAOz9AaxsNoE:1wOyAR:jJkkUVnZ0dAN2qpAhpBZCLqTvvLqCFL7Th_FThn8vk4	2026-06-01 13:37:59.246071+00
xtmyamd8jwf6rtvjeld35m5g8gmpr1kb	.eJxVjDsOwjAQBe_iGllZ_5eSnjNY6x8OIFuKkwpxd4iUAto3M-_FPG1r9dvIi58TOzNgp98tUHzktoN0p3brPPa2LnPgu8IPOvi1p_y8HO7fQaVRv7WLTk7WulgAnVRK62wRjNFJFnAqCKToREYUQMoWOwEqY03EpFHkAOz9AaxsNoE:1wOyPN:J4mr9Tx9RXFT7FH_Clil6PA4P-CN-qY9Uo2wf6qUGGo	2026-06-01 13:53:25.313296+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$7J8IoJNbuRldlpMwZPRKLR$gYaB6fsBg4v2LwpeJBU8mfciFGKET0wVrd8HmzvhRdA=	\N	t	s			s@jht.com	t	t	2026-05-21 10:20:52.461459+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.941097+00	2026-05-21 16:56:30.941122+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 10:20:51.623128+00
2	auth	0001_initial	2026-05-21 10:20:51.750158+00
3	admin	0001_initial	2026-05-21 10:20:51.779923+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 10:20:51.799761+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 10:20:51.820581+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 10:20:51.851758+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 10:20:51.867996+00
8	auth	0003_alter_user_email_max_length	2026-05-21 10:20:51.884962+00
9	auth	0004_alter_user_username_opts	2026-05-21 10:20:51.897645+00
10	auth	0005_alter_user_last_login_null	2026-05-21 10:20:51.909478+00
11	auth	0006_require_contenttypes_0002	2026-05-21 10:20:51.911815+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 10:20:51.923179+00
13	auth	0008_alter_user_username_max_length	2026-05-21 10:20:51.938849+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 10:20:51.953544+00
15	auth	0010_alter_group_name_max_length	2026-05-21 10:20:51.968673+00
16	auth	0011_update_proxy_permissions	2026-05-21 10:20:51.981635+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 10:20:52.000001+00
18	axis_saas	0001_initial	2026-05-21 10:20:52.081009+00
19	axis_saas	0002_student_b_form_number	2026-05-21 10:20:52.08741+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 10:20:52.195147+00
21	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:20:52.3756+00
22	sessions	0001_initial	2026-05-21 10:20:52.387033+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:23.995866+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:45.297698+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:20.787847+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: jht; Owner: axis_admin
--

COPY jht.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.django_content_type (id, app_label, model) FROM stdin;
1	contenttypes	contenttype
2	admin	logentry
3	sessions	session
4	auth	group
5	auth	permission
6	auth	user
7	axis_saas	schoolclient
8	axis_saas	schooldomain
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add content type	1	add_contenttype
2	Can change content type	1	change_contenttype
3	Can delete content type	1	delete_contenttype
4	Can view content type	1	view_contenttype
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add session	3	add_session
10	Can change session	3	change_session
11	Can delete session	3	delete_session
12	Can view session	3	view_session
13	Can add permission	5	add_permission
14	Can change permission	5	change_permission
15	Can delete permission	5	delete_permission
16	Can view permission	5	view_permission
17	Can add group	4	add_group
18	Can change group	4	change_group
19	Can delete group	4	delete_group
20	Can view group	4	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add school client	7	add_schoolclient
26	Can change school client	7	change_schoolclient
27	Can delete school client	7	delete_schoolclient
28	Can view school client	7	view_schoolclient
29	Can add school domain	8	add_schooldomain
30	Can change school domain	8	change_schooldomain
31	Can delete school domain	8	delete_schooldomain
32	Can view school domain	8	view_schooldomain
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$x7SH7aGRS9Dxiv3N8HN6iP$Mt8vPtwAej9KHUTq3tXV2lX4J+O3ZdTDMn8UJw2vbuw=	\N	t	admin_k			management@k.com	t	t	2026-05-18 08:00:42.341039+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.axis_saas_schoolclient (id, schema_name, name, created_on, is_active) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:00:41.882674+00
2	auth	0001_initial	2026-05-18 08:00:41.954677+00
3	admin	0001_initial	2026-05-18 08:00:41.997894+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:00:42.008545+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:00:42.022252+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:00:42.049729+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:00:42.062756+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:00:42.075822+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:00:42.093081+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:00:42.104192+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:00:42.106059+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:00:42.116585+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:00:42.130507+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:00:42.141602+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:00:42.154546+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:00:42.165077+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:00:42.176599+00
18	axis_saas	0001_initial	2026-05-18 08:00:42.197725+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 08:00:42.213294+00
20	axis_saas	0003_remove_schoolclient_admin_email_and_more	2026-05-18 08:00:42.226038+00
21	sessions	0001_initial	2026-05-18 08:00:42.23544+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: k; Owner: axis_admin
--

COPY k.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$UPoA7tm7ktGZQ9rVV74ubo$qpNoaHVB5xDvwDAOiuQmdpkOOuiiejhs9OT8MkeqOsc=	2026-05-18 17:36:49.043752+00	t	k			k@khang.com	t	t	2026-05-18 17:36:38.851266+00
2	pbkdf2_sha256$1200000$BWtwcOmI8930J8syEmagFv$eQBHMuHCu6zXc8cNp0DHbYLkOagjRjM/4TOY7n1rrSI=	\N	f	sami				t	t	2026-05-18 17:37:14.587286+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 17:37:15.150802+00	2	sami	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 17:36:38.354791+00
2	auth	0001_initial	2026-05-18 17:36:38.4551+00
3	admin	0001_initial	2026-05-18 17:36:38.484277+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 17:36:38.495727+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 17:36:38.513195+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 17:36:38.544154+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 17:36:38.555635+00
8	auth	0003_alter_user_email_max_length	2026-05-18 17:36:38.570365+00
9	auth	0004_alter_user_username_opts	2026-05-18 17:36:38.582134+00
10	auth	0005_alter_user_last_login_null	2026-05-18 17:36:38.594575+00
11	auth	0006_require_contenttypes_0002	2026-05-18 17:36:38.59641+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 17:36:38.616815+00
13	auth	0008_alter_user_username_max_length	2026-05-18 17:36:38.631363+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 17:36:38.643575+00
15	auth	0010_alter_group_name_max_length	2026-05-18 17:36:38.657462+00
16	auth	0011_update_proxy_permissions	2026-05-18 17:36:38.667833+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 17:36:38.67912+00
18	axis_saas	0001_initial	2026-05-18 17:36:38.727049+00
19	sessions	0001_initial	2026-05-18 17:36:38.738826+00
20	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:42.427712+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:42.442599+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: khang; Owner: axis_admin
--

COPY khang.django_session (session_key, session_data, expire_date) FROM stdin;
vjmcqtyp1tq957x36pwqkl0ryf8mrj7m	.eJxVjkEOwiAURO_C2hBoA1iX7j0D-Xw-BatgWurGeHfbWI1uZ17ezINZmGu080SjTZ4dmGS738wBDpTXwp8h94VjyXVMjq8I39qJn4qny3Fj_wQRprhqG-0xQGdaEJ1qQToZtFOKBAJRA84ZbcgoLTwI0mFPSkpojWnROET3lVbKkKudMNIVbC3L4qIf4nLuywDWdKf3fki5p_E2plw_nJXs-QKx4FWH:1wP1tz:HlB4R5F__a0LIaF3fL3dSuWhFzJJ-YnJqoNhpSCn05Y	2026-06-01 17:37:15.564173+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	sessions	session
3	axis_saas	schoolclient
4	axis_saas	schooldomain
5	auth	group
6	auth	permission
7	auth	user
8	contenttypes	contenttype
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add session	2	add_session
6	Can change session	2	change_session
7	Can delete session	2	delete_session
8	Can view session	2	view_session
9	Can add school client	3	add_schoolclient
10	Can change school client	3	change_schoolclient
11	Can delete school client	3	delete_schoolclient
12	Can view school client	3	view_schoolclient
13	Can add school domain	4	add_schooldomain
14	Can change school domain	4	change_schooldomain
15	Can delete school domain	4	delete_schooldomain
16	Can view school domain	4	view_schooldomain
17	Can add permission	6	add_permission
18	Can change permission	6	change_permission
19	Can delete permission	6	delete_permission
20	Can view permission	6	view_permission
21	Can add group	5	add_group
22	Can change group	5	change_group
23	Can delete group	5	delete_group
24	Can view group	5	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$YEAXpmvXnNOZ8DuclUzXn9$SfGzLjeT7onNNGsASUXkwzdVc11LPNmSPa7EWkEmb0M=	2026-05-18 07:49:12.821473+00	t	k			k@gmail.com	t	t	2026-05-18 07:48:55.302986+00
2	pbkdf2_sha256$1200000$z6BThxueCyAzk2QWUm9ohu$2EIgBYWgGvWUxuak3HGx3Ijf3Zv239OnUvdjtxQxAfs=	\N	t	admin_khud			management@khud.com	t	t	2026-05-18 08:00:16.762111+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_email, admin_password, admin_username) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 07:48:54.824273+00
2	auth	0001_initial	2026-05-18 07:48:54.905459+00
3	admin	0001_initial	2026-05-18 07:48:54.928862+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 07:48:54.93881+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 07:48:54.949242+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 07:48:54.973578+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 07:48:54.985267+00
8	auth	0003_alter_user_email_max_length	2026-05-18 07:48:55.000212+00
9	auth	0004_alter_user_username_opts	2026-05-18 07:48:55.020079+00
10	auth	0005_alter_user_last_login_null	2026-05-18 07:48:55.033796+00
11	auth	0006_require_contenttypes_0002	2026-05-18 07:48:55.03836+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 07:48:55.05442+00
13	auth	0008_alter_user_username_max_length	2026-05-18 07:48:55.079629+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 07:48:55.101616+00
15	auth	0010_alter_group_name_max_length	2026-05-18 07:48:55.121597+00
16	auth	0011_update_proxy_permissions	2026-05-18 07:48:55.142022+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 07:48:55.159601+00
18	axis_saas	0001_initial	2026-05-18 07:48:55.192144+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 07:48:55.210592+00
20	sessions	0001_initial	2026-05-18 07:48:55.222741+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: khud; Owner: axis_admin
--

COPY khud.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$dUXtkXsUjb6QgIfVVu2gxF$XWS8O99y0lWH+iAxYpCyEncMcR8uw4WE2iEj4U4XLWM=	\N	t	s			s@kk.com	t	t	2026-05-21 17:52:32.381353+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	sami	hazir	36363636	53531	1	A	2026-05-21	active	female	0001-11-11	S			1001	2600.00	2026-05-21 17:53:24.131063+00
2	22	2	222	22	1	A	2026-05-21	active	male	1111-11-11	2			1002	2600.00	2026-05-21 17:53:42.151438+00
3	33	3	33	33	3	33	2026-05-21	active	\N	3333-03-31	333		33	1003	4444.00	2026-05-21 17:53:56.624582+00
4	33	33	33	33	3	3	2026-05-21	active	male	3333-03-31	3		3	1004	4444.00	2026-05-21 17:54:11.344026+00
5	44	4	44	44	44	44	2026-05-21	active	male	4444-04-04	44		4	1005	1000.00	2026-05-21 17:54:28.594146+00
6	4	4	44	4	4	4	2026-05-21	active	male	4444-04-04	4		4	1006	1000.00	2026-05-21 17:54:43.1432+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
4	5	2026	4444.00	0.00	2026-06-05	pending	\N	4
5	5	2026	1000.00	0.00	2026-06-06	pending	\N	5
6	5	2026	1000.00	0.00	2026-06-06	pending	\N	6
1	5	2026	2600.00	2600.00	2026-06-05	paid	\N	1
3	5	2026	4444.00	4444.00	2026-06-05	paid	\N	3
2	5	2026	2600.00	2600.00	2026-06-05	paid	\N	2
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	2600.00	2026-05-21 17:55:03.079572+00
2	2	699.00	2026-05-21 17:55:10.164745+00
3	3	4444.00	2026-05-21 17:55:13.990407+00
4	44	1000.00	2026-05-22 11:43:42.935941+00
5	4	1000.00	2026-05-22 11:43:42.958779+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	2600.00	2026-05-21	cash	full	RCPT-20260521-0001		s	1
2	444.00	2026-05-21	cash	full	RCPT-20260521-0002		s	3
3	4000.00	2026-05-21	cash	full	RCPT-20260521-0003		s	3
4	2600.00	2026-05-22	cash	full	RCPT-20260522-0001		s	2
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
2	2	3
3	3	3
4	4	2
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	21	15	0.00	2026-05-21 17:54:49.328729+00	2026-05-21 17:55:29.458233+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 17:52:31.811847+00
2	auth	0001_initial	2026-05-21 17:52:31.908143+00
3	admin	0001_initial	2026-05-21 17:52:31.956774+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 17:52:31.966793+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 17:52:31.979242+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 17:52:32.003973+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 17:52:32.016565+00
8	auth	0003_alter_user_email_max_length	2026-05-21 17:52:32.030003+00
9	auth	0004_alter_user_username_opts	2026-05-21 17:52:32.040727+00
10	auth	0005_alter_user_last_login_null	2026-05-21 17:52:32.055851+00
11	auth	0006_require_contenttypes_0002	2026-05-21 17:52:32.058591+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 17:52:32.08033+00
13	auth	0008_alter_user_username_max_length	2026-05-21 17:52:32.094497+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 17:52:32.108305+00
15	auth	0010_alter_group_name_max_length	2026-05-21 17:52:32.123207+00
16	auth	0011_update_proxy_permissions	2026-05-21 17:52:32.133863+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 17:52:32.147194+00
18	axis_saas	0001_initial	2026-05-21 17:52:32.288174+00
19	sessions	0001_initial	2026-05-21 17:52:32.310366+00
20	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:46.505921+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:21.807269+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: kk; Owner: axis_admin
--

COPY kk.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	auth	user
4	sessions	session
5	contenttypes	contenttype
6	axis_saas	schoolclient
7	axis_saas	schooldomain
8	admin	logentry
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	2	add_permission
2	Can change permission	2	change_permission
3	Can delete permission	2	delete_permission
4	Can view permission	2	view_permission
5	Can add group	1	add_group
6	Can change group	1	change_group
7	Can delete group	1	delete_group
8	Can view group	1	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add session	4	add_session
14	Can change session	4	change_session
15	Can delete session	4	delete_session
16	Can view session	4	view_session
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add school client	6	add_schoolclient
22	Can change school client	6	change_schoolclient
23	Can delete school client	6	delete_schoolclient
24	Can view school client	6	view_schoolclient
25	Can add school domain	7	add_schooldomain
26	Can change school domain	7	change_schooldomain
27	Can delete school domain	7	delete_schooldomain
28	Can view school domain	7	view_schooldomain
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$8LHqu2zJo9l6sRoijTxLHs$ydVbmb4+DrTbfblDGM7W9NTM8aeTnhBcC61xKQZjWxc=	\N	t	lahori			management@lahore.com	t	t	2026-05-18 08:12:20.908408+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_password, admin_username) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:12:20.411731+00
2	auth	0001_initial	2026-05-18 08:12:20.507545+00
3	admin	0001_initial	2026-05-18 08:12:20.535857+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:12:20.56+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:12:20.580454+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:12:20.615509+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:12:20.630205+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:12:20.64532+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:12:20.656513+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:12:20.668437+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:12:20.670413+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:12:20.681811+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:12:20.698408+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:12:20.711492+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:12:20.725159+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:12:20.736844+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:12:20.748486+00
18	axis_saas	0001_initial	2026-05-18 08:12:20.77065+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 08:12:20.784766+00
20	axis_saas	0003_remove_schoolclient_admin_email_and_more	2026-05-18 08:12:20.797294+00
21	axis_saas	0004_schoolclient_admin_password_and_more	2026-05-18 08:12:20.807829+00
22	sessions	0001_initial	2026-05-18 08:12:20.818798+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: lahore; Owner: axis_admin
--

COPY lahore.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$g04LHZj0lut61D78fuR7qA$DS9e7Hsme/aIp0GzNJj4nxp0gZzXvN6XcsrBYuAw2i0=	\N	t	s			s@lal.com	t	t	2026-05-20 08:43:18.623334+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.645803+00	2026-05-21 16:56:30.645837+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:43:18.030034+00
2	auth	0001_initial	2026-05-20 08:43:18.17026+00
3	admin	0001_initial	2026-05-20 08:43:18.199966+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:43:18.211751+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:43:18.224168+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:43:18.250425+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:43:18.267745+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:43:18.283875+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:43:18.297253+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:43:18.310427+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:43:18.315183+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:43:18.32715+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:43:18.342016+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:43:18.367685+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:43:18.382186+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:43:18.394837+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:43:18.409236+00
18	axis_saas	0001_initial	2026-05-20 08:43:18.466594+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:43:18.472517+00
20	sessions	0001_initial	2026-05-20 08:43:18.485669+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:47.365576+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:02.09032+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:21.324555+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:42.951305+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:17.901847+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: lal; Owner: axis_admin
--

COPY lal.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$UFEqLXLSBPk3DSFAudPZ6g$0WI0SdrD7gkQmavQGbeeY22UjoIqURjLq50iQ3p0wMM=	\N	t	sami			sami@lundschol.com	t	t	2026-05-20 08:13:50.509715+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.542206+00	2026-05-21 16:56:30.542232+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:13:49.924031+00
2	auth	0001_initial	2026-05-20 08:13:50.049857+00
3	admin	0001_initial	2026-05-20 08:13:50.097386+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:13:50.112074+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:13:50.131217+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:13:50.176272+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:13:50.18915+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:13:50.210977+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:13:50.224137+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:13:50.239776+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:13:50.243097+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:13:50.258167+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:13:50.275996+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:13:50.292971+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:13:50.308984+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:13:50.323604+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:13:50.345414+00
18	axis_saas	0001_initial	2026-05-20 08:13:50.414431+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:13:50.421628+00
20	sessions	0001_initial	2026-05-20 08:13:50.43332+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:45.94869+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:00.299415+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:20.44848+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:42.098465+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:16.891782+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: lundschol; Owner: axis_admin
--

COPY lundschol.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$VrkD2jfjgGUrzLU55XKFvr$9oEYUkqRhdzt89BGX4bg1i+w5zQS+osZ9xUJT1cpMhA=	\N	t	s			s@major.com	t	t	2026-05-20 08:06:47.073156+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	f	f	f	f	f	w	2026-05-20	active	male	1111-11-11	11		s	AX-MAJOR-2026-0001	1000.00	2026-05-20 08:07:21.760272+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	f	1000.00	2026-05-21 17:15:02.319734+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.5298+00	2026-05-21 16:56:30.529847+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:06:46.096372+00
2	auth	0001_initial	2026-05-20 08:06:46.220491+00
3	admin	0001_initial	2026-05-20 08:06:46.250352+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:06:46.263254+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:06:46.30771+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:06:46.396753+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:06:46.422751+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:06:46.45143+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:06:46.471827+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:06:46.504743+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:06:46.511446+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:06:46.533695+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:06:46.562562+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:06:46.588071+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:06:46.614169+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:06:46.655506+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:06:46.716659+00
18	axis_saas	0001_initial	2026-05-20 08:06:46.830463+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:06:46.843936+00
20	sessions	0001_initial	2026-05-20 08:06:46.861165+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:45.68088+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:17:59.889833+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:20.275774+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:41.923558+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:16.7279+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: major; Owner: axis_admin
--

COPY major.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$5IrCYdgh6V4P3eif2MHN96$BLfGHSrnpyzKfXBk5TFLobasKj1Bhrq5OmWCX9+JSQk=	\N	t	s			s@mama.com	t	t	2026-05-22 07:16:08.119874+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	1	1	1	11	1	1	2026-05-22	active	male	1111-11-11	1			1001	20000.00	2026-05-22 07:16:45.293484+00
2	2	2	2	2	2	2	2026-05-22	active	male	2222-02-22	2		2	1002	30000.00	2026-05-22 07:17:01.896786+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	20000.00	0.00	2026-06-06	pending	\N	1
2	5	2026	30000.00	30000.00	2026-06-06	paid	\N	2
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	20000.00	2026-05-22 07:17:09.450751+00
2	2	30000.00	2026-05-22 07:17:13.779563+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	30000.00	2026-05-22	cash	full	RCPT-20260522-0001		s	2
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	2
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 07:17:15.936969+00	2026-05-22 07:17:15.93699+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 07:16:07.477925+00
2	auth	0001_initial	2026-05-22 07:16:07.599063+00
3	admin	0001_initial	2026-05-22 07:16:07.661793+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 07:16:07.672506+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 07:16:07.683691+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 07:16:07.708775+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 07:16:07.721183+00
8	auth	0003_alter_user_email_max_length	2026-05-22 07:16:07.733967+00
9	auth	0004_alter_user_username_opts	2026-05-22 07:16:07.751462+00
10	auth	0005_alter_user_last_login_null	2026-05-22 07:16:07.762296+00
11	auth	0006_require_contenttypes_0002	2026-05-22 07:16:07.764188+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 07:16:07.773802+00
13	auth	0008_alter_user_username_max_length	2026-05-22 07:16:07.788215+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 07:16:07.800253+00
15	auth	0010_alter_group_name_max_length	2026-05-22 07:16:07.813302+00
16	auth	0011_update_proxy_permissions	2026-05-22 07:16:07.823608+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 07:16:07.83486+00
18	axis_saas	0001_initial	2026-05-22 07:16:07.960833+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 07:16:07.970145+00
20	sessions	0001_initial	2026-05-22 07:16:07.991059+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:22.714449+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: mama; Owner: axis_admin
--

COPY mama.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$01iTz2EIusuAN7mZHYQjKd$gBZBhOAs4IhfDOfmYdiQ9Lk2qpjoFBND2CrUcHlMUiI=	\N	t	s			s@mgmg.com	t	t	2026-05-20 09:03:58.35734+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.721656+00	2026-05-21 16:56:30.721679+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 09:03:57.809949+00
2	auth	0001_initial	2026-05-20 09:03:57.912845+00
3	admin	0001_initial	2026-05-20 09:03:57.942151+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 09:03:57.957654+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 09:03:57.974604+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 09:03:58.008082+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 09:03:58.025508+00
8	auth	0003_alter_user_email_max_length	2026-05-20 09:03:58.046148+00
9	auth	0004_alter_user_username_opts	2026-05-20 09:03:58.060291+00
10	auth	0005_alter_user_last_login_null	2026-05-20 09:03:58.080775+00
11	auth	0006_require_contenttypes_0002	2026-05-20 09:03:58.083625+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 09:03:58.094077+00
13	auth	0008_alter_user_username_max_length	2026-05-20 09:03:58.110416+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 09:03:58.135076+00
15	auth	0010_alter_group_name_max_length	2026-05-20 09:03:58.149045+00
16	auth	0011_update_proxy_permissions	2026-05-20 09:03:58.160887+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 09:03:58.172664+00
18	axis_saas	0001_initial	2026-05-20 09:03:58.220595+00
19	axis_saas	0002_student_b_form_number	2026-05-20 09:03:58.228451+00
20	sessions	0001_initial	2026-05-20 09:03:58.240772+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:48.413532+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:03.977825+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:22.07408+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:43.625846+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:18.787908+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: mgmg; Owner: axis_admin
--

COPY mgmg.django_session (session_key, session_data, expire_date) FROM stdin;
vqt8z3kmjbn1fhvw5mfgl7kpkxq5a75s	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSnlpuemK9UCACfeGD8:1wPcqR:8Wkt39zn8i-qU8DRm5i07BMAo5r6FGCpkco5AmJT4Zk	2026-06-03 09:04:03.789755+00
vrrxi0twt19by6w3o6dsxezh3sw9h0zz	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSnlpuemK9UCACfeGD8:1wPct4:vvb-75-u_tacrAbO6ZdWrdBC1BDyOYC-3bOgcyk6qec	2026-06-03 09:06:46.466604+00
bilxcfeiwek6ntfhz0nkquvdjs7d4vyu	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSnlpuemK9UCACfeGD8:1wPct9:MZE0N_plTxf2vYO4x5r8uVbfzI25WZK61fy9mhr3yBc	2026-06-03 09:06:51.468668+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$M4iCyAQKayvr4EcMar3bEW$40hFWQ9DsJO5vzR/sbSxRUzPnDTvBluADVdPvUw/pPI=	\N	t	s			s@ms.com	t	t	2026-05-22 09:57:27.926379+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	s	s	s	s	1	s	2026-05-22	active	male	1111-11-11	s		s	1001	1.00	2026-05-22 09:58:21.540093+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	333.00	0.00	2026-06-06	pending	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	1.00	2026-05-22 09:58:45.848038+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 09:58:23.111805+00	2026-05-22 09:58:23.111828+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 09:57:27.202125+00
2	auth	0001_initial	2026-05-22 09:57:27.397967+00
3	admin	0001_initial	2026-05-22 09:57:27.435191+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 09:57:27.449006+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 09:57:27.461681+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 09:57:27.485623+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 09:57:27.498594+00
8	auth	0003_alter_user_email_max_length	2026-05-22 09:57:27.512018+00
9	auth	0004_alter_user_username_opts	2026-05-22 09:57:27.530436+00
10	auth	0005_alter_user_last_login_null	2026-05-22 09:57:27.541193+00
11	auth	0006_require_contenttypes_0002	2026-05-22 09:57:27.543512+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 09:57:27.554153+00
13	auth	0008_alter_user_username_max_length	2026-05-22 09:57:27.568457+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 09:57:27.580235+00
15	auth	0010_alter_group_name_max_length	2026-05-22 09:57:27.605211+00
16	auth	0011_update_proxy_permissions	2026-05-22 09:57:27.620259+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 09:57:27.637428+00
18	axis_saas	0001_initial	2026-05-22 09:57:27.801097+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 09:57:27.810576+00
20	sessions	0001_initial	2026-05-22 09:57:27.827088+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:22.879328+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ms; Owner: axis_admin
--

COPY ms.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.django_content_type (id, app_label, model) FROM stdin;
1	contenttypes	contenttype
2	auth	group
3	auth	permission
4	auth	user
5	admin	logentry
6	sessions	session
7	axis_saas	schoolclient
8	axis_saas	schooldomain
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add content type	1	add_contenttype
2	Can change content type	1	change_contenttype
3	Can delete content type	1	delete_contenttype
4	Can view content type	1	view_contenttype
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add school client	7	add_schoolclient
26	Can change school client	7	change_schoolclient
27	Can delete school client	7	delete_schoolclient
28	Can view school client	7	view_schoolclient
29	Can add school domain	8	add_schooldomain
30	Can change school domain	8	change_schooldomain
31	Can delete school domain	8	delete_schooldomain
32	Can view school domain	8	view_schooldomain
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$sIVSRO7UVbxVNBFbtC0m2B$6l/UzDQNIylL5H5O17f1Bsxce77vcPhotVAOK34+zmo=	2026-05-18 08:03:24.497526+00	t	mts			management@mts.com	t	t	2026-05-18 08:03:03.576399+00
2	pbkdf2_sha256$1200000$wPkdkJatymMVlsajTIAzTE$ZeIqW2+KyzbflXiXW8FFtVf+kNrirqRBVxb7lXsA6fM=	2026-05-18 17:14:08.083334+00	t	mtschool			mtschool@mts.com	t	t	2026-05-18 17:13:30.989397+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_password, admin_username, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:03:02.723769+00
2	auth	0001_initial	2026-05-18 08:03:02.806699+00
3	admin	0001_initial	2026-05-18 08:03:02.831249+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:03:02.844878+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:03:02.860325+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:03:02.888498+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:03:02.906445+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:03:02.920382+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:03:02.935161+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:03:02.950951+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:03:02.95329+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:03:02.963395+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:03:02.99409+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:03:03.017899+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:03:03.041107+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:03:03.067987+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:03:03.105888+00
18	axis_saas	0001_initial	2026-05-18 08:03:03.141305+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 08:03:03.182038+00
20	axis_saas	0003_remove_schoolclient_admin_email_and_more	2026-05-18 08:03:03.254914+00
21	axis_saas	0004_schoolclient_admin_password_and_more	2026-05-18 08:03:03.302894+00
22	sessions	0001_initial	2026-05-18 08:03:03.332437+00
23	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:42.078409+00
24	axis_saas	0003_add_school_logo	2026-05-19 04:35:42.097084+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: mts; Owner: axis_admin
--

COPY mts.django_session (session_key, session_data, expire_date) FROM stdin;
26ntglhz85o474jskpkw3c6lnysohngs	.eJxVjDsOwjAQRO_iGlk2_lPScwZrvV7jALKlOKkQdyeRUkAxzbw382YR1qXGddAcp8wuTLLTb5cAn9R2kB_Q7p1jb8s8Jb4r_KCD33qm1_Vw_w4qjLqtlVcWLZG3WlnlgtsiVACH3qDIMiVTtAn6bGWBRAmtA1NAOIdkJEr2-QK_cTeD:1wOswe:QjBOGWY5SfOGHoZOu7g2F6NSWdbWtlp_UU9ZpnSp2zg	2026-06-01 08:03:24.509393+00
boaepwyza3m0sbdusa8v2hv5ll8qna2k	.eJxVjcsOwiAQRf-FtWmgQLUu3fsNZGCmLWrBAHVj_HfbtPGxnLnnnvtkBqYymClTMh7ZkdVs9_uz4K4UlgAvEPpYuRhK8rZakGpLc3WOSLfTxv4JBsjD3LZWAYGzLedKCdCibXjTHnAvFApA0sjROuGaVs5nzXkNoLWWxGUnpPxKCwUIxWQ30AimxHlx1o8lfwhwxT9oXe986Cndkw9lpUzNXm8UD1M_:1wP1do:TK19mHPwBvsbY7kAkGh8ggELj889AN-dpptqcMSGClg	2026-06-01 17:20:32.4933+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$eUMIPaZcJiUyMKLxbbzG9H$SrUyYlWbpsdqc71BKHXtnWqbO8pxcVYeqECybv9NkSg=	\N	t	s			s@mtsf.com	t	t	2026-05-19 08:18:06.344895+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 08:18:05.293032+00
2	auth	0001_initial	2026-05-19 08:18:05.907736+00
3	admin	0001_initial	2026-05-19 08:18:05.94116+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 08:18:05.952064+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 08:18:05.962848+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 08:18:05.988415+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 08:18:06.013384+00
8	auth	0003_alter_user_email_max_length	2026-05-19 08:18:06.024256+00
9	auth	0004_alter_user_username_opts	2026-05-19 08:18:06.035796+00
10	auth	0005_alter_user_last_login_null	2026-05-19 08:18:06.04637+00
11	auth	0006_require_contenttypes_0002	2026-05-19 08:18:06.048195+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 08:18:06.058327+00
13	auth	0008_alter_user_username_max_length	2026-05-19 08:18:06.088846+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 08:18:06.110504+00
15	auth	0010_alter_group_name_max_length	2026-05-19 08:18:06.13975+00
16	auth	0011_update_proxy_permissions	2026-05-19 08:18:06.154442+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 08:18:06.175847+00
22	sessions	0001_initial	2026-05-19 08:18:06.269938+00
23	axis_saas	0001_initial	2026-05-19 08:37:22.381391+00
24	axis_saas	0002_alter_schoolclient_name	2026-05-19 08:37:22.392134+00
25	axis_saas	0003_add_school_logo	2026-05-19 08:37:22.403395+00
26	axis_saas	0004_add_student_bform	2026-05-19 08:37:22.414715+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: mtsf; Owner: axis_admin
--

COPY mtsf.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$U98KYRgmf8zjXDk3QuCjgn$n7TQ8pX8cUvVagKmq9lalJkHDx3NCpnHRPu6DKjNx2M=	\N	t	mts			mts@mtss.com	t	t	2026-05-19 04:56:06.531953+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:56:06.046019+00
2	auth	0001_initial	2026-05-19 04:56:06.121137+00
3	admin	0001_initial	2026-05-19 04:56:06.176338+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:56:06.187772+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:56:06.204163+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:56:06.227753+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:56:06.238529+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:56:06.251056+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:56:06.261426+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:56:06.273744+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:56:06.276234+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:56:06.287268+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:56:06.30354+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:56:06.317262+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:56:06.332292+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:56:06.343862+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:56:06.37+00
18	axis_saas	0001_initial	2026-05-19 04:56:06.418329+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:56:06.431813+00
20	axis_saas	0003_add_school_logo	2026-05-19 04:56:06.441085+00
21	sessions	0001_initial	2026-05-19 04:56:06.458637+00
22	axis_saas	0004_add_student_bform	2026-05-19 06:51:28.581917+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: mtss; Owner: axis_admin
--

COPY mtss.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$BfRXrsMtPfkbONtOXcpYlA$4kaf/iA/yI10FpUP2JuPHq9K3eHy1+G+ADKhCdOAQCo=	\N	t	s			s@n.com	t	t	2026-05-22 16:35:49.886438+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 16:56:35.89021+00	2026-05-22 16:56:35.890238+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 16:35:49.358516+00
2	auth	0001_initial	2026-05-22 16:35:49.441312+00
3	admin	0001_initial	2026-05-22 16:35:49.471038+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 16:35:49.481984+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 16:35:49.495137+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 16:35:49.523259+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 16:35:49.538093+00
8	auth	0003_alter_user_email_max_length	2026-05-22 16:35:49.551085+00
9	auth	0004_alter_user_username_opts	2026-05-22 16:35:49.561901+00
10	auth	0005_alter_user_last_login_null	2026-05-22 16:35:49.574577+00
11	auth	0006_require_contenttypes_0002	2026-05-22 16:35:49.576935+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 16:35:49.59886+00
13	auth	0008_alter_user_username_max_length	2026-05-22 16:35:49.613349+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 16:35:49.624423+00
15	auth	0010_alter_group_name_max_length	2026-05-22 16:35:49.638521+00
16	auth	0011_update_proxy_permissions	2026-05-22 16:35:49.648394+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 16:35:49.659567+00
18	axis_saas	0001_initial	2026-05-22 16:35:49.76278+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 16:35:49.770963+00
20	axis_saas	0003_alter_student_father_name	2026-05-22 16:35:49.780695+00
21	sessions	0001_initial	2026-05-22 16:35:49.791875+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: n; Owner: axis_admin
--

COPY n.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$tfkntvvKNe13pllmNf6SX8$KagP2ZBWud3FXGH3Gka9z3x4JDVN63jtmHgIFu6JPcY=	2026-05-18 17:45:15.130819+00	t	s			s@naja.com	t	t	2026-05-18 17:45:07.110505+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	3.00	2026-05-18 17:45:31.794953+00
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	sami	s	s	s	10	ss	2026-05-18	active	\N	\N	\N		\N	1001	3.00	2026-05-18 17:45:47.245117+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 17:45:31.799886+00	1	Class 10 - RS 3	1	[{"added": {}}]	1	1
2	2026-05-18 17:45:47.253584+00	1	sami - Reg: 1001 (10-ss)	1	[{"added": {}}]	4	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 17:45:06.642967+00
2	auth	0001_initial	2026-05-18 17:45:06.764824+00
3	admin	0001_initial	2026-05-18 17:45:06.794708+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 17:45:06.806631+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 17:45:06.820642+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 17:45:06.858806+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 17:45:06.869637+00
8	auth	0003_alter_user_email_max_length	2026-05-18 17:45:06.882442+00
9	auth	0004_alter_user_username_opts	2026-05-18 17:45:06.89174+00
10	auth	0005_alter_user_last_login_null	2026-05-18 17:45:06.904218+00
11	auth	0006_require_contenttypes_0002	2026-05-18 17:45:06.906384+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 17:45:06.91728+00
13	auth	0008_alter_user_username_max_length	2026-05-18 17:45:06.93231+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 17:45:06.9451+00
15	auth	0010_alter_group_name_max_length	2026-05-18 17:45:06.959462+00
16	auth	0011_update_proxy_permissions	2026-05-18 17:45:06.970229+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 17:45:06.988016+00
18	axis_saas	0001_initial	2026-05-18 17:45:07.026643+00
19	sessions	0001_initial	2026-05-18 17:45:07.03609+00
20	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:43.244537+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:43.264468+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: naja; Owner: axis_admin
--

COPY naja.django_session (session_key, session_data, expire_date) FROM stdin;
6bbe4sk7dyhtkpiblc7kp4ovpnq2y1oo	.eJxVjskOgjAURf-la9PQAWlduvcbmte-VyhqMVDcGP9diMRhe--5w4M5mEvn5olGl5AdmGC7X81DOFNeDewhtwMPQy5j8nxF-OZO_DQgXY4b-1fQwdQt6agU6sb7qEND0lCF2ohKSAmqtqilQBtjBcpIqdAEBB9BK7AW0e6b-vuqUIZc3BQ6uoIrw7K41Gfo4YNAKOlO7_mYckvjbUy5bJgT7PkCv7FT-Q:1wP22H:IDwOZz1-AZtrSKx6K3drfZq7Qj9yuLoy5L06OZFQsAU	2026-06-01 17:45:49.526756+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add school client	2	add_schoolclient
2	Can change school client	2	change_schoolclient
3	Can delete school client	2	delete_schoolclient
4	Can view school client	2	view_schoolclient
5	Can add school domain	3	add_schooldomain
6	Can change school domain	3	change_schooldomain
7	Can delete school domain	3	delete_schooldomain
8	Can view school domain	3	view_schooldomain
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add fee structure	1	add_feestructure
14	Can change fee structure	1	change_feestructure
15	Can delete fee structure	1	delete_feestructure
16	Can view fee structure	1	view_feestructure
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$AKPGXOm4fVl9dtcJN1mUGL$vCPiC6Mi68uRIKht5L1dR/Ku0SqSc8muYF6Ch9CPobM=	\N	t	admin			admin@axis.com	t	t	2026-05-19 07:54:34.606484+00
2	pbkdf2_sha256$1200000$a9Yt5KoFNcKiutHsGhe3PW$71bMy8WHdyhEX0z1mP76UJC2V+x4dhpZ/fbqMQ9X8/k=	2026-05-22 09:57:13.983851+00	t	sami				t	t	2026-05-19 08:05:51.524557+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
1	public	Public Master Node	2026-05-19	t	admin_pending	AxisFallback123!	
2	fafafa	fafafafa	2026-05-19	t	s	s	
3	ena	ena	2026-05-20	t	s	s	
4	safafa	sfafafa	2026-05-20	t	s	s	
5	bhattya	sami anjum bhatia	2026-05-20	t	sa	sa	
6	vavavavav	vavava	2026-05-20	t	a	a	
7	major	sasa	2026-05-20	t	s	s	
8	lundschol	major high schoool	2026-05-20	t	sami	sami	
9	sephir	phir se	2026-05-20	t	s	s	
10	bgng	birght	2026-05-20	t	s	s	
11	agvava	vavaac	2026-05-20	t	s	s	
12	sajni	sajni	2026-05-20	t	s	s	
13	lal	bhal	2026-05-20	t	s	s	
14	jhant	jhant k bal	2026-05-20	t	sas	sas	
15	ehsas	ehsab	2026-05-20	t	s	s	
16	hoho	oho	2026-05-20	t	s	s	
17	mgmg	mmgmg	2026-05-20	t	s	s	
18	ten	ten char	2026-05-20	t	s	s	
19	teeaa	teena	2026-05-20	t	g	g	
20	sks	kskksk	2026-05-20	t	mn	m	
21	bulla	akha	2026-05-20	t	s	s	
22	ahahahahaha	aithe rakh	2026-05-20	t	aa	aa	
23	allah	allah wale	2026-05-21	t	allah	allah	
24	sb	sb	2026-05-21	t	s	s	
25	sasss	sass	2026-05-21	t	s	s	
26	jht	jhut	2026-05-21	t	s	s	
27	sasasa	sassa	2026-05-21	t	s	s	
28	vv	vv	2026-05-21	t	s	s	
29	sami	sami anjum	2026-05-21	t	sa	sa	
30	bpf	bright future	2026-05-21	t	sami	sami	
31	bb	sssss	2026-05-21	t	s	s	
32	kk	kjk	2026-05-21	t	s	s	
33	f	fa	2026-05-22	t	s	s	
34	as	asasa	2026-05-22	t	s	s	
35	ba	sasas	2026-05-22	t	s	s	
36	b	b	2026-05-22	t	s	s	
37	mama	mma	2026-05-22	t	s	s	
38	ms	metrix	2026-05-22	t	s	s	
39	y	say	2026-05-22	t	s	s	
40	j	jhan	2026-05-22	t	s	s	
41	cs	cs	2026-05-22	t	s	s	
42	ac	ac	2026-05-22	t	s	s	
43	bh	bh	2026-05-22	t	s	s	
44	n	n	2026-05-22	t	s	s	
45	bas	bas	2026-05-22	t	s	s	
46	aaw	aaw	2026-05-22	t	s	s	
48	gav	gav	2026-05-22	t	s	s	
49	hahaaa	vahah	2026-05-22	t	s	s	
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
1	localhost	t	1
2	fafafa.localhost	t	2
3	ena.localhost	t	3
4	safafa.localhost	t	4
5	bhattya.localhost	t	5
6	vavavavav.localhost	t	6
7	major.localhost	t	7
8	lundschol.localhost	t	8
9	sephir.localhost	t	9
10	bgng.localhost	t	10
11	agvava.localhost	t	11
12	sajni.localhost	t	12
13	lal.localhost	t	13
14	jhant.localhost	t	14
15	ehsas.localhost	t	15
16	hoho.localhost	t	16
17	mgmg.localhost	t	17
18	ten.localhost	t	18
19	teeaa.localhost	t	19
20	sks.localhost	t	20
21	bulla.localhost	t	21
22	ahahahahaha.localhost	t	22
23	allah.localhost	t	23
24	sb.localhost	t	24
25	sasss.localhost	t	25
26	jht.localhost	t	26
27	sasasa.localhost	t	27
28	vv.localhost	t	28
29	sami.localhost	t	29
30	bpf.localhost	t	30
31	bb.localhost	t	31
32	kk.localhost	t	32
33	f.localhost	t	33
34	as.localhost	t	34
35	ba.localhost	t	35
36	b.localhost	t	36
37	mama.localhost	t	37
38	ms.localhost	t	38
39	y.localhost	t	39
40	j.localhost	t	40
41	cs.localhost	t	41
42	ac.localhost	t	42
43	bh.localhost	t	43
44	n.localhost	t	44
45	bas.localhost	t	45
46	aaw.localhost	t	46
47	gav.localhost	t	48
48	hahaaa.localhost	t	49
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	20.00	10	2026-05-20 11:17:20.399252+00	2026-05-20 11:28:26.54023+00
2	21	222.00	14	2026-05-21 08:04:23.599311+00	2026-05-21 09:16:06.486498+00
3	21	30.00	30	2026-05-21 10:38:47.281674+00	2026-05-21 12:08:39.90282+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-19 08:18:06.895152+00	2	mts	1	[{"added": {}}]	2	2
2	2026-05-19 08:39:56.774694+00	3	s	1	[{"added": {}}]	2	2
3	2026-05-19 09:06:06.896768+00	4	baba	1	[{"added": {}}]	2	2
4	2026-05-19 09:38:29.635257+00	5	sgagaga	1	[{"added": {}}]	2	2
5	2026-05-19 10:24:48.029002+00	6	vav	1	[{"added": {}}]	2	2
6	2026-05-19 10:28:48.970729+00	7	kafi	1	[{"added": {}}]	2	2
7	2026-05-19 10:30:50.237276+00	8	vava	1	[{"added": {}}]	2	2
8	2026-05-19 15:40:49.743284+00	2	sami	2	[{"changed": {"fields": ["password"]}}]	8	2
9	2026-05-19 17:27:40.870553+00	9	fsag	1	[{"added": {}}]	2	2
10	2026-05-19 17:29:32.697306+00	10	safca	1	[{"added": {}}]	2	2
11	2026-05-19 17:32:17.218727+00	11	gagas	1	[{"added": {}}]	2	2
12	2026-05-19 17:56:50.012093+00	2	fafafafa	1	[{"added": {}}]	2	2
13	2026-05-20 06:00:12.796366+00	3	ena	1	[{"added": {}}]	2	2
14	2026-05-20 07:47:37.469954+00	4	sfafafa	1	[{"added": {}}]	2	2
15	2026-05-20 07:52:03.752611+00	5	sami anjum bhatia	1	[{"added": {}}]	2	2
16	2026-05-20 08:01:52.367816+00	6	vavava	1	[{"added": {}}]	2	2
17	2026-05-20 08:06:47.927737+00	7	sasa	1	[{"added": {}}]	2	2
18	2026-05-20 08:13:51.074505+00	8	major high schoool	1	[{"added": {}}]	2	2
19	2026-05-20 08:22:49.055776+00	9	phir se	1	[{"added": {}}]	2	2
20	2026-05-20 08:23:57.854086+00	10	birght	1	[{"added": {}}]	2	2
21	2026-05-20 08:31:09.309684+00	11	vavaac	1	[{"added": {}}]	2	2
22	2026-05-20 08:39:01.280084+00	12	sajni	1	[{"added": {}}]	2	2
23	2026-05-20 08:43:19.255648+00	13	bhal	1	[{"added": {}}]	2	2
24	2026-05-20 08:50:23.938296+00	14	jhant k bal	1	[{"added": {}}]	2	2
25	2026-05-20 08:54:01.55454+00	15	ehsab	1	[{"added": {}}]	2	2
26	2026-05-20 08:59:13.527425+00	16	oho	1	[{"added": {}}]	2	2
27	2026-05-20 09:03:58.956781+00	17	mmgmg	1	[{"added": {}}]	2	2
28	2026-05-20 09:07:26.200414+00	18	ten char	1	[{"added": {}}]	2	2
29	2026-05-20 09:21:30.479009+00	19	teena	1	[{"added": {}}]	2	2
30	2026-05-20 09:29:00.45103+00	20	kskksk	1	[{"added": {}}]	2	2
31	2026-05-20 09:48:06.233221+00	21	akha	1	[{"added": {}}]	2	2
32	2026-05-20 10:51:14.768349+00	22	aithe rakh	1	[{"added": {}}]	2	2
33	2026-05-21 08:03:38.608526+00	23	allah wale	1	[{"added": {}}]	2	2
34	2026-05-21 09:40:35.691613+00	24	sb	1	[{"added": {}}]	2	2
35	2026-05-21 10:18:31.681735+00	25	sass	1	[{"added": {}}]	2	2
36	2026-05-21 10:20:53.056683+00	26	jhut	1	[{"added": {}}]	2	2
37	2026-05-21 10:32:00.418724+00	27	sassa	1	[{"added": {}}]	2	2
38	2026-05-21 10:36:06.608503+00	28	vv	1	[{"added": {}}]	2	2
39	2026-05-21 15:26:46.590657+00	29	sami anjum	1	[{"added": {}}]	2	2
40	2026-05-21 16:50:47.612746+00	30	bright future	1	[{"added": {}}]	2	2
41	2026-05-21 17:10:00.248187+00	31	sssss	1	[{"added": {}}]	2	2
42	2026-05-21 17:52:32.945718+00	32	kjk	1	[{"added": {}}]	2	2
43	2026-05-22 03:49:26.865584+00	33	fa	1	[{"added": {}}]	2	2
44	2026-05-22 04:39:05.276861+00	34	asasa	1	[{"added": {}}]	2	2
45	2026-05-22 04:55:06.032709+00	35	sasas	1	[{"added": {}}]	2	2
46	2026-05-22 05:43:20.738331+00	36	b	1	[{"added": {}}]	2	2
47	2026-05-22 07:16:08.780894+00	37	mma	1	[{"added": {}}]	2	2
48	2026-05-22 09:57:28.507692+00	38	metrix	1	[{"added": {}}]	2	2
49	2026-05-22 10:02:22.131223+00	39	say	1	[{"added": {}}]	2	2
50	2026-05-22 10:02:43.198778+00	39	say	2	[{"changed": {"fields": ["Admin password"]}}]	2	2
51	2026-05-22 10:19:17.699717+00	40	jhan	1	[{"added": {}}]	2	2
52	2026-05-22 10:49:28.770448+00	41	cs	1	[{"added": {}}]	2	2
53	2026-05-22 11:50:47.726854+00	42	ac	1	[{"added": {}}]	2	2
54	2026-05-22 16:30:54.778724+00	43	bh	1	[{"added": {}}]	2	2
55	2026-05-22 16:35:50.469111+00	44	n	1	[{"added": {}}]	2	2
56	2026-05-22 17:04:42.463453+00	45	bas	1	[{"added": {}}]	2	2
57	2026-05-22 17:10:19.697457+00	46	aaw	1	[{"added": {}}]	2	2
58	2026-05-22 17:17:06.055863+00	48	gav	1	[{"added": {}}]	2	2
59	2026-05-22 17:21:32.019896+00	49	vahah	1	[{"added": {}}]	2	2
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 07:34:00.71178+00
2	auth	0001_initial	2026-05-18 07:34:00.931918+00
3	admin	0001_initial	2026-05-18 07:34:01.042497+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 07:34:01.096597+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 07:34:01.149958+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 07:34:01.208471+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 07:34:01.25314+00
8	auth	0003_alter_user_email_max_length	2026-05-18 07:34:01.352655+00
9	auth	0004_alter_user_username_opts	2026-05-18 07:34:01.509508+00
10	auth	0005_alter_user_last_login_null	2026-05-18 07:34:01.553272+00
11	auth	0006_require_contenttypes_0002	2026-05-18 07:34:01.57398+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 07:34:01.626738+00
13	auth	0008_alter_user_username_max_length	2026-05-18 07:34:01.703403+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 07:34:01.739583+00
15	auth	0010_alter_group_name_max_length	2026-05-18 07:34:01.785767+00
16	auth	0011_update_proxy_permissions	2026-05-18 07:34:01.825779+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 07:34:01.871226+00
19	sessions	0001_initial	2026-05-18 07:34:02.040221+00
30	axis_saas	0001_initial	2026-05-19 17:48:00.902708+00
31	axis_saas	0002_student_b_form_number	2026-05-19 18:04:17.012471+00
32	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:43.786196+00
33	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:17:57.361452+00
34	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:19.18052+00
35	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:40.112265+00
36	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:14.960215+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: axis_admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
30qro92w215tkryp6dlg4gg5vozpu6sc	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSmlZhQnFivVAgBAqxir:1wPcgn:XWGHcTDCmtalJdhz3etu84eXYW6WZLmkJaurevXhAkk	2026-06-03 08:54:05.87621+00
fs1mh0vri1g6nwqlfc86v4g1nx3913my	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSmlZhQnFivVAgBAqxir:1wPcgv:ljU6WjNEP4erzneT7SlhrWR7lLxo1-Kjgp_oR8t_a0k	2026-06-03 08:54:13.946955+00
pbpznsr2zwzx8nglx369r83z8hdnjg6v	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSmVJZYlKqFJ5iXmpsKkagE73iHR:1wPLdr:wfbp688Xmuxgx773Cy1wDXo3o1jbUWkWP7-rARSztUo	2026-06-02 14:41:55.675054+00
00la21qy9ze32faerdg04hw957edtjv8	.eJxVjEEOwiAQRe_C2hA6Aygu3XsGMjCDVA1NSrsy3l2bdKHb_977LxVpXWpcu8xxZHVWoA6_W6L8kLYBvlO7TTpPbZnHpDdF77Tr68TyvOzu30GlXr-1yNF7LC4bI1gInLEuCEomj5wIyMAQQGRAWyRZREA-mcwhJypivXp_APAvOHs:1wPcll:dh9UNrnfwdfYgiGcoHeDsHKx2KRawnclh5DjHqQUxUs	2026-06-03 08:59:13.966904+00
md7pryttcm5tdzvjfgiwhjldh6xxnvnd	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSklpeelK6FJ5iXmpoKkMovSM0qUagF-pCKT:1wPclq:URpL6sa5DDOD39d6a7XUwiuPCEZ-BX74I2b5ak8zwVs	2026-06-03 08:59:18.794875+00
x3pbes0j2v44imnw6hk1levcj6brp55z	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSll5GfkK9UCACfsGEU:1wPclt:d6Y-OUMeAOZgzKqFQIon_2fKNzh_sc5eBJviKeUBE88	2026-06-03 08:59:21.205561+00
w514jvdbhtuqmp8rlrlt984ac24aeeuv	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSll5GfkK9UCACfsGEU:1wPcm0:broa-gE9mI9MlyeJ8EBUWOnRuYwhpWycBUVbaAGE8WA	2026-06-03 08:59:28.231005+00
w799n2k0agbn2z3u10zj0rf4l5olp79p	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSmVJYKgEpp0XmJuKlAyPTE9sVipFgCngCL9:1wPOIr:c3dREGym56AsP8A7ZW9JCvt4ShvK2rnZVYish2zhMrc	2026-06-02 17:32:25.941674+00
x4bu8od5ithot6gtgukb3vh8i3wdxjaz	.eJxdj0FOxDAMRe-SNaoySVsoS_acIXIcpw20zih1u0HcnZQZVTBb_-dn_y_lYJPJbSsVl4J6VUY9_Z15wE_iIwgfwGNuMLOU5JsDae7p2rznQPPbnf0nmGCd6jbRc9_b2KHWZCOYTrfdQJYQehs8GNDmMhiii20j-dZaY8OLxjCgh0htf0qFGFjcihMt4CTXi1V_3fyc8IQAJe10eyAmHqlcS2I5QXe0rIqcZwdhSfy7RiwJQai2lbLRA3G7WBUw7rDDo4BhoRoeEaD6_gF3MXjR:1wPcKh:n3i02KpLGk5XnINjO4umiJX9ok3wHvdZPthda1pz93o	2026-06-03 08:31:15.835476+00
6ikxqzs4khun0i7uu8heoo2sfg4gfgz3	.eJxVjEEOwiAQRe_C2hA6Aygu3XsGMjCDVA1NSrsy3l2bdKHb_977LxVpXWpcu8xxZHVWoA6_W6L8kLYBvlO7TTpPbZnHpDdF77Tr68TyvOzu30GlXr-1yNF7LC4bI1gInLEuCEomj5wIyMAQQGRAWyRZREA-mcwhJypivXp_APAvOHs:1wPcqN:V1A39FOL1gC-qy1JSRp8GJMGDGo9hgU53f2qla2IpVE	2026-06-03 09:03:59.409625+00
yisr00f7neh3cef5k9m0kjw7ftr9so88	.eJxVjEEOwiAQRe_C2hA6Aygu3XsGMjCDVA1NSrsy3l2bdKHb_977LxVpXWpcu8xxZHVWoA6_W6L8kLYBvlO7TTpPbZnHpDdF77Tr68TyvOzu30GlXr-1yNF7LC4bI1gInLEuCEomj5wIyMAQQGRAWyRZREA-mcwhJypivXp_APAvOHs:1wPctV:AVQDdovEm4aq1ZlDvhSm77z2x5mAreUJYS4Fp2RsNs4	2026-06-03 09:07:13.08575+00
6z5cyicrft0ymr4d31mjuunvxvuyq13l	.eJxdj0FygzAMRe_CusM4NtDSZfc5g0eW5eAW5Iwtuunk7jElw7TZ6r__JP00FlaZ7Foo2-ib90Y3L39nDvCLeAv8J_AltZhYcnTthrSPtLTn5Gn-eLD_BBOUqbaJXofBhB6VIhNA96rrRzKEMBjvQIPSp1ETnUwXyHXGaOPfFPoRHQTqhkMqxMBiC060gJVUN1b9dXVzxAMClPhN-wEh8oXyNUeWA7Tbl1WR0mzBL5F_a8QSEYTqt5JXeiL2jVWxSAnPdYaF9qi53QEd03b3:1wPMeO:EkxeOXL0yHnqiaGiniUND0ZnUCs0ZtPG5lfKlcZPUR0	2026-06-02 15:46:32.67751+00
322tefnmqwrsboyuvd8uhm5x2w8otqge	.eJxVjkEOgjAQRe_StSGlU1BcuvcMzXQ6hSoWQosb492FSIhu57___ryEwTl3Zk48meDEWShx-L1ZpDvHNXA3jO1Q0BDzFGyxIsWWpuI6OO4vG_sn6DB1S5v5WNfgK5KSwaOqpK4aBiaswVlUKFXZKOYStGerARS4kyTXkEXPut6lmSPGbBJ1_ECTh2Vx0Y-z7QPtEFIOT_4-4ENseRqnEPMOGiXeH0wmVkE:1wPcSI:a0F-0t2J_mJPebw_y0fG8T7C-zrM8BrHJL13wK8V1Xc	2026-06-03 08:39:06.046663+00
x9v5l9s0q5kxntq297atliaqlp8awiz0	.eJxVjkEOgjAQRe_StSGlU1BcuvcMzXQ6hSoWQosb492FSIhu57___ryEwTl3Zk48meDEWShx-L1ZpDvHNXA3jO1Q0BDzFGyxIsWWpuI6OO4vG_sn6DB1S5v5WNfgK5KSwaOqpK4aBiaswVlUKFXZKOYStGerARS4kyTXkEXPut6lmSPGbBJ1_ECTh2Vx0Y-z7QPtEFIOT_4-4ENseRqnEPMOGiXeH0wmVkE:1wPcWN:OqrJBtozX1t56qQgEEuAogjbLgcloO6LsB1ilce7jqU	2026-06-03 08:43:19.693368+00
lxapo45eohyxlbpegmzi0duiqil5fjgp	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSnlJOYo1QIAD1AX0A:1wPcch:hhC1BUos-ab3gPAlyUtfUWNg3eLqvAvXJphOvVHSjFg	2026-06-03 08:49:51.845031+00
uvvvuuf1295v9k2yk8hwmfvr0oxk80ne	.eJxdj0FOxDAMRe_SNaoySVsoS_ZzhshJfqaB1hmlLhvE3UmZUQUj7_yfn-2vxtImk91WFJtC89ro5ulvz5H_AO9BeCe-5NZnlpJcuyPtPV3bcw6Y3-7sP8FE61SngedhMLH3SsFE0r3q-hEGngYTHGlS-jRq4GS6CNcZo014UT6M3lFENxxSAROLXf2EhazkurHqr5ubkz8g8pI-cTsgJr6gXEtiOUC7f1kVOc-WwpL4dwwsyZOgfitlwwNx21gVkfZ6FDAtOMIaf_8AZLJ5Wg:1wPPOr:mIjSLLEPn7RDEfd2xZIksWZeN2g_NryOFnIEeezyzyo	2026-06-02 18:42:41.638556+00
91cexjxpbrolah27jus0t28bno8znlr5	.eJxVjkEOgjAQRe_StSGlU1BcuvcMzXQ6hSoWQosb492FSIhu57___ryEwTl3Zk48meDEWShx-L1ZpDvHNXA3jO1Q0BDzFGyxIsWWpuI6OO4vG_sn6DB1S5v5WNfgK5KSwaOqpK4aBiaswVlUKFXZKOYStGerARS4kyTXkEXPut6lmSPGbBJ1_ECTh2Vx0Y-z7QPtEFIOT_4-4ENseRqnEPMOGiXeH0wmVkE:1wPcdE:5MIwk1Uqd13ifvsqMbK-zr9dSWYn7FFsdWdeKp1pYNA	2026-06-03 08:50:24.614815+00
cetfckd5j5p6329n7fz6de3rq6e9v705	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSllZSTmlSjVAgBAqxis:1wPcdM:WtlegsY-quISNSL9l2kn8XsUyd_4_2KcgtfNInNx7To	2026-06-03 08:50:32.051918+00
y3v1i0oag5f2gnmu25gkxu70duiftplo	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSllZSTmlSjVAgBAqxis:1wPcgJ:4Sp14qHRO6v3NTUU6Z2S_iiWdPG_0qTN0YGnaKFhCZE	2026-06-03 08:53:35.121629+00
booiynio03r35fz931ltanqt9rx043sf	.eJxVjkEOgjAQRe_StSGlU1BcuvcMzXQ6hSoWQosb492FSIhu57___ryEwTl3Zk48meDEWShx-L1ZpDvHNXA3jO1Q0BDzFGyxIsWWpuI6OO4vG_sn6DB1S5v5WNfgK5KSwaOqpK4aBiaswVlUKFXZKOYStGerARS4kyTXkEXPut6lmSPGbBJ1_ECTh2Vx0Y-z7QPtEFIOT_4-4ENseRqnEPMOGiXeH0wmVkE:1wPcgk:qpOCtSxLroNAMTXH-610u0bnBCQd8ICD2o9jsvKPa08	2026-06-03 08:54:02.075115+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	auth	user
4	admin	logentry
5	sessions	session
6	axis_saas	schoolclient
7	axis_saas	schooldomain
8	contenttypes	contenttype
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	2	add_permission
2	Can change permission	2	change_permission
3	Can delete permission	2	delete_permission
4	Can view permission	2	view_permission
5	Can add group	1	add_group
6	Can change group	1	change_group
7	Can delete group	1	delete_group
8	Can view group	1	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add school client	6	add_schoolclient
22	Can change school client	6	change_schoolclient
23	Can delete school client	6	delete_schoolclient
24	Can view school client	6	view_schoolclient
25	Can add school domain	7	add_schooldomain
26	Can change school domain	7	change_schooldomain
27	Can delete school domain	7	delete_schooldomain
28	Can view school domain	7	view_schooldomain
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$EZvtXK6kubox6lY48boR7D$5tQHucs6B09j+Sv4DkrycC2D+a6XRHxSeA3aiG6t6RA=	\N	t	razaq			management@razaq.com	t	t	2026-05-18 08:05:46.648737+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_password, admin_username) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:05:46.119729+00
2	auth	0001_initial	2026-05-18 08:05:46.213478+00
3	admin	0001_initial	2026-05-18 08:05:46.247428+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:05:46.260636+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:05:46.277741+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:05:46.308071+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:05:46.322429+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:05:46.338498+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:05:46.349074+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:05:46.365467+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:05:46.368284+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:05:46.380075+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:05:46.39894+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:05:46.41451+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:05:46.443581+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:05:46.455483+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:05:46.470774+00
18	axis_saas	0001_initial	2026-05-18 08:05:46.506498+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 08:05:46.528455+00
20	axis_saas	0003_remove_schoolclient_admin_email_and_more	2026-05-18 08:05:46.547718+00
21	axis_saas	0004_schoolclient_admin_password_and_more	2026-05-18 08:05:46.55869+00
22	sessions	0001_initial	2026-05-18 08:05:46.572919+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: razaq; Owner: axis_admin
--

COPY razaq.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$1200000$vpExwuhvOkNud3fG0IhmAG$FEw7L54MDXxn38mBKB9FcMXHoICY1fkdVxXOwjB0XIE=	\N	t	man				f	t	2026-05-18 17:26:44+00
1	pbkdf2_sha256$1200000$YM2P9ZVWUw72easj9F29Vh$6vijG39yBfZOSsXX7z3h2+AiNUEWOX9zbWJp6XQwk4A=	2026-05-18 17:29:53.603542+00	t	razaq			razaq@razaqpublic.com	t	t	2026-05-18 17:18:27.850538+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	2	1
2	2	2
3	2	3
4	2	4
5	2	5
6	2	6
7	2	7
8	2	8
9	2	9
10	2	10
11	2	11
12	2	12
13	2	13
14	2	14
15	2	15
16	2	16
17	2	17
18	2	18
19	2	19
20	2	20
21	2	21
22	2	22
23	2	23
24	2	24
25	2	25
26	2	26
27	2	27
28	2	28
29	2	29
30	2	30
31	2	31
32	2	32
33	2	33
34	2	34
35	2	35
36	2	36
37	2	37
38	2	38
39	2	39
40	2	40
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	800.00	2026-05-18 17:24:24.452143+00
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	jhan singh	rocket singh	36502276332629	03069823235	10	A	2026-05-18	active	\N	\N				1001	800.00	2026-05-18 17:19:18.602795+00
2	sasa	s	s	s	1	A	2026-05-18	active	\N	\N	\N		\N	1002	0.00	2026-05-18 17:25:02.855441+00
3	s	s	s	s	10	B	2026-05-18	active	\N	\N	\N		\N	1003	800.00	2026-05-18 17:25:22.383773+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 17:19:18.617552+00	1	jhan singh - Reg: 1001 (10-A)	1	[{"added": {}}]	4	1
2	2026-05-18 17:19:32.105397+00	1	Class 10 - RS 700	1	[{"added": {}}]	1	1
3	2026-05-18 17:24:08.32449+00	1	Class 10 - RS 800	2	[{"changed": {"fields": ["Monthly Fee (RS)"]}}]	1	1
4	2026-05-18 17:24:16.512589+00	1	jhan singh - Reg: 1001 (10-A)	2	[{"changed": {"fields": ["Assigned Fee (RS)"]}}]	4	1
5	2026-05-18 17:24:24.459733+00	1	Class 10 - RS 800	2	[]	1	1
6	2026-05-18 17:25:02.880806+00	2	sasa - Reg: 1002 (1-A)	1	[{"added": {}}]	4	1
7	2026-05-18 17:25:22.389293+00	3	s - Reg: 1003 (10-B)	1	[{"added": {}}]	4	1
8	2026-05-18 17:26:44.855649+00	2	man	1	[{"added": {}}]	8	1
9	2026-05-18 17:27:04.780474+00	2	man	2	[{"changed": {"fields": ["Superuser status"]}}]	8	1
10	2026-05-18 17:28:09.296055+00	2	man	2	[{"changed": {"fields": ["password"]}}]	8	1
11	2026-05-18 17:28:18.531143+00	2	man	2	[{"changed": {"fields": ["User permissions"]}}]	8	1
12	2026-05-18 17:28:49.53452+00	2	man	2	[{"changed": {"fields": ["password"]}}]	8	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 17:18:27.191322+00
2	auth	0001_initial	2026-05-18 17:18:27.2995+00
3	admin	0001_initial	2026-05-18 17:18:27.34823+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 17:18:27.367653+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 17:18:27.397397+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 17:18:27.438588+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 17:18:27.469671+00
8	auth	0003_alter_user_email_max_length	2026-05-18 17:18:27.483673+00
9	auth	0004_alter_user_username_opts	2026-05-18 17:18:27.498817+00
10	auth	0005_alter_user_last_login_null	2026-05-18 17:18:27.515217+00
11	auth	0006_require_contenttypes_0002	2026-05-18 17:18:27.517781+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 17:18:27.52943+00
13	auth	0008_alter_user_username_max_length	2026-05-18 17:18:27.549069+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 17:18:27.563242+00
15	auth	0010_alter_group_name_max_length	2026-05-18 17:18:27.57973+00
16	auth	0011_update_proxy_permissions	2026-05-18 17:18:27.591009+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 17:18:27.604076+00
18	axis_saas	0001_initial	2026-05-18 17:18:27.682017+00
19	sessions	0001_initial	2026-05-18 17:18:27.737101+00
20	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:42.238156+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:42.253844+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: razaqpublic; Owner: axis_admin
--

COPY razaqpublic.django_session (session_key, session_data, expire_date) FROM stdin;
d1bplgbzk2y520rk17wmwsm44ipet660	.eJxVjsEOwiAMht-Fs1mEbQQ8evcZSIEy0MkmYx40vrssLupubf-vX_skCubs1TxhUsGSA6Fk9z_TYC4Yl8CeIXZDZYaYU9DVglRrOlWnwWJ_XNmNwMPky7apadOypmGOo7Cto6x0rFRayj1lVBgOXGhOW6NbKVBTJrkF4WrNpATzlWaMELOajMcrqDyUi0Wf4AG3cdZ9-JFgcrjj5wsXYodpTCHmLa0oeb0BGwpZHw:1wP1t1:F80Spji1GTjoNXmvXlyzTp9V0DBdkjVowK2v-vcPICc	2026-06-01 17:36:15.545473+00
hkpa9fb3f5hlcj2ujwzawqqjo2o7g95d	.eJxVjsEOwiAMht-Fs1mEbQQ8evcZSIEy0MkmYx40vrssLupubf-vX_skCubs1TxhUsGSA6Fk9z_TYC4Yl8CeIXZDZYaYU9DVglRrOlWnwWJ_XNmNwMPky7apadOypmGOo7Cto6x0rFRayj1lVBgOXGhOW6NbKVBTJrkF4WrNpATzlWaMELOajMcrqDyUi0Wf4AG3cdZ9-JFgcrjj5wsXYodpTCHmLa0oeb0BGwpZHw:1wP1cu:Z-_u4XsdOlnYVbHriqT5XjTGaa44ttPLf1ghTCFBucQ	2026-06-01 17:19:36.425758+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$it7y5kUQYTyjW4KX5uhOGX$HXGYQy4XjdsB/cKxaL5geVz+IRU0Gr2kCl0ntO4euo0=	\N	t	admin_pending			admin_pending@s.com	t	t	2026-05-18 18:02:05.261001+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 18:02:04.764536+00
2	auth	0001_initial	2026-05-18 18:02:04.845718+00
3	admin	0001_initial	2026-05-18 18:02:04.867986+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 18:02:04.886521+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 18:02:04.913779+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 18:02:04.952098+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 18:02:04.971522+00
8	auth	0003_alter_user_email_max_length	2026-05-18 18:02:04.986772+00
9	auth	0004_alter_user_username_opts	2026-05-18 18:02:05.000996+00
10	auth	0005_alter_user_last_login_null	2026-05-18 18:02:05.019195+00
11	auth	0006_require_contenttypes_0002	2026-05-18 18:02:05.027533+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 18:02:05.042823+00
13	auth	0008_alter_user_username_max_length	2026-05-18 18:02:05.0641+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 18:02:05.077034+00
15	auth	0010_alter_group_name_max_length	2026-05-18 18:02:05.091756+00
16	auth	0011_update_proxy_permissions	2026-05-18 18:02:05.10315+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 18:02:05.117414+00
18	axis_saas	0001_initial	2026-05-18 18:02:05.169267+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-18 18:02:05.180509+00
20	sessions	0001_initial	2026-05-18 18:02:05.191787+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:43.598902+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: s; Owner: axis_admin
--

COPY s.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.django_content_type (id, app_label, model) FROM stdin;
1	sessions	session
2	admin	logentry
3	contenttypes	contenttype
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	auth	group
7	auth	permission
8	auth	user
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add session	1	add_session
2	Can change session	1	change_session
3	Can delete session	1	delete_session
4	Can view session	1	view_session
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add content type	3	add_contenttype
10	Can change content type	3	change_contenttype
11	Can delete content type	3	delete_contenttype
12	Can view content type	3	view_contenttype
13	Can add school client	4	add_schoolclient
14	Can change school client	4	change_schoolclient
15	Can delete school client	4	delete_schoolclient
16	Can view school client	4	view_schoolclient
17	Can add school domain	5	add_schooldomain
18	Can change school domain	5	change_schooldomain
19	Can delete school domain	5	delete_schooldomain
20	Can view school domain	5	view_schooldomain
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$Vt8FM6QvjZxhAjRNtq0nQG$nfLZ+0gb7bAHKgPTroRdYtwT+oEOBQwW9IF/0494wuw=	\N	t	admin			admin@sa.com	t	t	2026-05-18 08:42:35.378924+00
2	pbkdf2_sha256$1200000$BzUjDpgOUL9nmIbxsccRwp$ujTiqUbYMgw06w/wFNhReSRmM9uclf/RfS8ANufAXmk=	2026-05-18 17:41:33.635522+00	t	sa			sa@sa.com	t	t	2026-05-18 17:41:25.703368+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_password, admin_username, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:42:34.93439+00
2	auth	0001_initial	2026-05-18 08:42:35.009341+00
3	admin	0001_initial	2026-05-18 08:42:35.033284+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:42:35.043612+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:42:35.056831+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:42:35.081642+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:42:35.101014+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:42:35.116739+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:42:35.127845+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:42:35.140722+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:42:35.142657+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:42:35.152243+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:42:35.168095+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:42:35.185327+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:42:35.200205+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:42:35.21313+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:42:35.226398+00
18	axis_saas	0001_initial	2026-05-18 08:42:35.252961+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 08:42:35.267886+00
20	axis_saas	0003_remove_schoolclient_admin_email_and_more	2026-05-18 08:42:35.283245+00
21	axis_saas	0004_schoolclient_admin_password_and_more	2026-05-18 08:42:35.292779+00
22	sessions	0001_initial	2026-05-18 08:42:35.302101+00
23	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:35:42.76207+00
24	axis_saas	0003_add_school_logo	2026-05-19 04:35:42.774336+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sa; Owner: axis_admin
--

COPY sa.django_session (session_key, session_data, expire_date) FROM stdin;
w3n6da3v9m5tv0gi2czytu08onrnk26v	.eJxVjc0OwiAQhN-Fs2kQhBaP3n0GsrtsW_yhplAvxne3VdPodeabbx7Cw1R6P2UefQxiL5TY_GYIdOa0FOEEqRsqGlIZI1YLUn3bXB2HwJfDl_0T9JD7eU0UWi1JKTTA0jqmBg0Zy-hY6SYYuYMmBIu6Nihda5XlLQZD5FqotVylhROk4jP1fAVfhvlx1mdYAaAS7_w5b2PqeLyNMZU35JV4vgDKUFMw:1wP1yE:iR3mqfHvVl14GSUC7x63xyidd4d393htA_SYru9mU8U	2026-06-01 17:41:38.231081+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$hkm9iAFdndpPlITgOBT7kd$KoM001kb6mBU29SNBvgRIDAGMw4yL8czckQeRDapQ20=	\N	t	s			s@safafa.com	t	t	2026-05-20 07:47:36.882943+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.452293+00	2026-05-21 16:56:30.452313+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 07:47:36.210056+00
2	auth	0001_initial	2026-05-20 07:47:36.404327+00
3	admin	0001_initial	2026-05-20 07:47:36.484772+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 07:47:36.496191+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 07:47:36.509199+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 07:47:36.536517+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 07:47:36.548646+00
8	auth	0003_alter_user_email_max_length	2026-05-20 07:47:36.562854+00
9	auth	0004_alter_user_username_opts	2026-05-20 07:47:36.57424+00
10	auth	0005_alter_user_last_login_null	2026-05-20 07:47:36.590974+00
11	auth	0006_require_contenttypes_0002	2026-05-20 07:47:36.59355+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 07:47:36.60409+00
13	auth	0008_alter_user_username_max_length	2026-05-20 07:47:36.624011+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 07:47:36.646839+00
15	auth	0010_alter_group_name_max_length	2026-05-20 07:47:36.661869+00
16	auth	0011_update_proxy_permissions	2026-05-20 07:47:36.677323+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 07:47:36.691288+00
18	axis_saas	0001_initial	2026-05-20 07:47:36.780033+00
19	axis_saas	0002_student_b_form_number	2026-05-20 07:47:36.789922+00
20	sessions	0001_initial	2026-05-20 07:47:36.803939+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:44.887635+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:17:58.712131+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:19.76421+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:41.42455+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:16.212893+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: safafa; Owner: axis_admin
--

COPY safafa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$DDGlAE6kJ5MHOG4M2MD8yZ$6KepLjicuWQ6xojSoupLotK7ZF1WAi3ARjz81P9yfP0=	\N	t	s			s@sagag.com	t	t	2026-05-19 09:38:28.983914+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 09:38:28.493656+00
2	auth	0001_initial	2026-05-19 09:38:28.572602+00
3	admin	0001_initial	2026-05-19 09:38:28.596987+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 09:38:28.612351+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 09:38:28.623321+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 09:38:28.648761+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 09:38:28.6719+00
8	auth	0003_alter_user_email_max_length	2026-05-19 09:38:28.688189+00
9	auth	0004_alter_user_username_opts	2026-05-19 09:38:28.701847+00
10	auth	0005_alter_user_last_login_null	2026-05-19 09:38:28.719094+00
11	auth	0006_require_contenttypes_0002	2026-05-19 09:38:28.721263+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 09:38:28.735341+00
13	auth	0008_alter_user_username_max_length	2026-05-19 09:38:28.759498+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 09:38:28.789258+00
15	auth	0010_alter_group_name_max_length	2026-05-19 09:38:28.806156+00
16	auth	0011_update_proxy_permissions	2026-05-19 09:38:28.817112+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 09:38:28.829087+00
18	axis_saas	0001_initial	2026-05-19 09:38:28.887288+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 09:38:28.896795+00
20	axis_saas	0003_add_school_logo	2026-05-19 09:38:28.903686+00
21	sessions	0001_initial	2026-05-19 09:38:28.912987+00
22	axis_saas	0004_add_student_bform	2026-05-19 10:28:01.217481+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sagag; Owner: axis_admin
--

COPY sagag.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$4Id4aP2HznZ6YHok3CN5oT$VRIf53ddlQGzqTlo8i+KcCzD6cP1ZI3coYssx7Ka3Kg=	\N	t	s			s@sajni.com	t	t	2026-05-20 08:39:00.653725+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.62918+00	2026-05-21 16:56:30.629227+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:39:00.174585+00
2	auth	0001_initial	2026-05-20 08:39:00.27185+00
3	admin	0001_initial	2026-05-20 08:39:00.297117+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:39:00.308611+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:39:00.323134+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:39:00.355501+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:39:00.369516+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:39:00.383621+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:39:00.395922+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:39:00.40915+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:39:00.411224+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:39:00.42361+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:39:00.439444+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:39:00.463404+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:39:00.478288+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:39:00.490314+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:39:00.504326+00
18	axis_saas	0001_initial	2026-05-20 08:39:00.546882+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:39:00.551673+00
20	sessions	0001_initial	2026-05-20 08:39:00.561714+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:47.042304+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:01.739784+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:21.153355+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:42.783683+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:17.680207+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sajni; Owner: axis_admin
--

COPY sajni.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$JDGf1XjJwQrByZKYvm8pM4$2lAwvOBqpw8BoeSiukOn+KbyzhO7h7jMv8ohPlpfUk0=	\N	t	sa			sa@sami.com	t	t	2026-05-21 15:26:46.016544+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	sami anjum	hazir khan	36502228223605	0305952325	10	A	2026-05-21	active	male	2010-01-01	okara cantt			1001	699.00	2026-05-21 15:28:34.269373+00
3	ss	sss	ss	sss	10	C	2026-05-21	active	male	0001-11-11	sfafa			1003	699.00	2026-05-21 15:30:19.983606+00
2	jahan	gha	333	333	9	C	2026-05-21	active	male	1111-11-11	111			1002	89.00	2026-05-21 15:30:01.405053+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
2	5	2026	699.00	699.00	2026-06-05	paid	\N	3
3	5	2026	89.00	89.00	2026-06-05	paid	\N	2
1	5	2026	699.00	699.00	2026-06-05	paid	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	699.00	2026-05-21 15:28:44.144859+00
2	9	89.00	2026-05-21 15:30:41.612587+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	699.00	2026-05-21	cash	full	RCPT-20260521-0001		admin	3
2	899.00	2026-05-21	cash	partial	RCPT-20260521-0002		admin	2
3	699.00	2026-05-21	cash	full	RCPT-20260521-0003		admin	1
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	2
2	2	3
3	3	1
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	2.00	15	2026-05-21 15:27:02.283364+00	2026-05-21 15:27:18.772348+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 15:26:45.175247+00
2	auth	0001_initial	2026-05-21 15:26:45.309758+00
3	admin	0001_initial	2026-05-21 15:26:45.33868+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 15:26:45.349201+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 15:26:45.371805+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 15:26:45.397319+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 15:26:45.410567+00
8	auth	0003_alter_user_email_max_length	2026-05-21 15:26:45.426272+00
9	auth	0004_alter_user_username_opts	2026-05-21 15:26:45.437619+00
10	auth	0005_alter_user_last_login_null	2026-05-21 15:26:45.451509+00
11	auth	0006_require_contenttypes_0002	2026-05-21 15:26:45.45368+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 15:26:45.4651+00
13	auth	0008_alter_user_username_max_length	2026-05-21 15:26:45.506284+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 15:26:45.527967+00
15	auth	0010_alter_group_name_max_length	2026-05-21 15:26:45.546942+00
16	auth	0011_update_proxy_permissions	2026-05-21 15:26:45.559678+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 15:26:45.575523+00
18	axis_saas	0001_initial	2026-05-21 15:26:45.624491+00
19	axis_saas	0002_student_b_form_number	2026-05-21 15:26:45.630312+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 15:26:45.722418+00
21	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 15:26:45.912403+00
22	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 15:26:45.934393+00
23	sessions	0001_initial	2026-05-21 15:26:45.945027+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:45.917424+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:21.289883+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sami; Owner: axis_admin
--

COPY sami.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$tRNVo9cSV36MGbsnscT0LN$d5MtP3LuKu59J0Uohh1TQ9TXR7TvydcE01V8mAJdP4A=	2026-05-18 18:03:12.955634+00	t	sa			sa@samya.com	t	t	2026-05-18 18:03:05.224231+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	1	0.10	2026-05-18 18:05:24.563078+00
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 18:05:24.567884+00	1	Class 1 - RS 0.1	1	[{"added": {}}]	1	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 18:03:04.75587+00
2	auth	0001_initial	2026-05-18 18:03:04.827159+00
3	admin	0001_initial	2026-05-18 18:03:04.863051+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 18:03:04.877168+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 18:03:04.889508+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 18:03:04.914011+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 18:03:04.928053+00
8	auth	0003_alter_user_email_max_length	2026-05-18 18:03:04.947453+00
9	auth	0004_alter_user_username_opts	2026-05-18 18:03:04.959359+00
10	auth	0005_alter_user_last_login_null	2026-05-18 18:03:04.973628+00
11	auth	0006_require_contenttypes_0002	2026-05-18 18:03:04.976108+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 18:03:04.991084+00
13	auth	0008_alter_user_username_max_length	2026-05-18 18:03:05.011086+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 18:03:05.027219+00
15	auth	0010_alter_group_name_max_length	2026-05-18 18:03:05.04325+00
16	auth	0011_update_proxy_permissions	2026-05-18 18:03:05.057121+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 18:03:05.069821+00
18	axis_saas	0001_initial	2026-05-18 18:03:05.114412+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-18 18:03:05.127149+00
20	sessions	0001_initial	2026-05-18 18:03:05.13802+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:43.755169+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: samya; Owner: axis_admin
--

COPY samya.django_session (session_key, session_data, expire_date) FROM stdin;
jv2sshwnvb0xgft134goop74j3z8q20t	.eJxVjcsOwiAURP-FtWlaKBRcuvcbyAUuLT7AFGpijP9uG2uj25kzZ55Ew1QGPWUcdXBkTxqy-80M2DPGpXAniH2qbIplDKZakGptc3VMDi-Hlf0TDJCHec0UNxa4p7VQXHS1QEQDtZGKSspahy0Kx3gjOiuBSssp8wa5d6plqmZmkxaMEIvOdsAr6JLmx1mf4fqAjQFbwh0__z7EHsfbGGL5crohrzdLVFSs:1wPAZU:2Y5dy1PWQnUPMK7VY8_8tBUDZWZR1c3KfMTzcgKcNAs	2026-06-02 02:52:40.204203+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$MtG9GGEtkV6ukaYwCtPdmU$09o843so3Qm8KWGMyrq78qD0YVPdb80EPsv7udpVi90=	\N	t	s			s@sargi.com	t	t	2026-05-19 06:57:17.015594+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.axis_saas_student (id, name, father_name, b_form_number, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 06:57:16.267664+00
2	auth	0001_initial	2026-05-19 06:57:16.431434+00
3	admin	0001_initial	2026-05-19 06:57:16.473157+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 06:57:16.486684+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 06:57:16.502029+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 06:57:16.539241+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 06:57:16.560347+00
8	auth	0003_alter_user_email_max_length	2026-05-19 06:57:16.575646+00
9	auth	0004_alter_user_username_opts	2026-05-19 06:57:16.588744+00
10	auth	0005_alter_user_last_login_null	2026-05-19 06:57:16.6341+00
11	auth	0006_require_contenttypes_0002	2026-05-19 06:57:16.642851+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 06:57:16.655073+00
13	auth	0008_alter_user_username_max_length	2026-05-19 06:57:16.674002+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 06:57:16.701637+00
15	auth	0010_alter_group_name_max_length	2026-05-19 06:57:16.727203+00
16	auth	0011_update_proxy_permissions	2026-05-19 06:57:16.751679+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 06:57:16.777016+00
18	axis_saas	0001_initial	2026-05-19 06:57:16.867454+00
19	sessions	0001_initial	2026-05-19 06:57:16.942167+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sargi; Owner: axis_admin
--

COPY sargi.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	schoolclient
2	axis_saas	schooldomain
3	axis_saas	student
4	admin	logentry
5	auth	group
6	auth	permission
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add school client	1	add_schoolclient
2	Can change school client	1	change_schoolclient
3	Can delete school client	1	delete_schoolclient
4	Can view school client	1	view_schoolclient
5	Can add student	3	add_student
6	Can change student	3	change_student
7	Can delete student	3	delete_student
8	Can view student	3	view_student
9	Can add school domain	2	add_schooldomain
10	Can change school domain	2	change_schooldomain
11	Can delete school domain	2	delete_schooldomain
12	Can view school domain	2	view_schooldomain
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	6	add_permission
18	Can change permission	6	change_permission
19	Can delete permission	6	delete_permission
20	Can view permission	6	view_permission
21	Can add group	5	add_group
22	Can change group	5	change_group
23	Can delete group	5	delete_group
24	Can view group	5	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$DDK6HTfhEr48y3wQBtudI9$Mt1o6BQ1q840z1pHWWF9F0kQ3AMjO7Rj+uEs4FjW58o=	2026-05-18 16:32:58.508674+00	t	sa			sa@sas.com	t	t	2026-05-18 14:04:27.814795+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, enrolled_on) FROM stdin;
1	sami	hazir khan	36502	9293939393	10	A	2026-05-18	active	\N	\N				TEMP_TOKEN	2026-05-18 14:05:02.717185+00
2	s	s	s	s	s	s	2026-05-18	active	\N	\N				1001	2026-05-18 14:18:30.269435+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-05-18 14:05:02.725865+00	1	sami - Reg: TEMP_TOKEN (10-A)	1	[{"added": {}}]	3	1
2	2026-05-18 14:18:30.278217+00	2	s - Reg: 1001 (s-s)	1	[{"added": {}}]	3	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 14:04:27.224642+00
2	auth	0001_initial	2026-05-18 14:04:27.328832+00
3	admin	0001_initial	2026-05-18 14:04:27.366033+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 14:04:27.375105+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 14:04:27.388442+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 14:04:27.416826+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 14:04:27.433074+00
8	auth	0003_alter_user_email_max_length	2026-05-18 14:04:27.461742+00
9	auth	0004_alter_user_username_opts	2026-05-18 14:04:27.483317+00
10	auth	0005_alter_user_last_login_null	2026-05-18 14:04:27.507491+00
11	auth	0006_require_contenttypes_0002	2026-05-18 14:04:27.510064+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 14:04:27.540922+00
13	auth	0008_alter_user_username_max_length	2026-05-18 14:04:27.577867+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 14:04:27.613475+00
15	auth	0010_alter_group_name_max_length	2026-05-18 14:04:27.643791+00
16	auth	0011_update_proxy_permissions	2026-05-18 14:04:27.663494+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 14:04:27.679754+00
18	axis_saas	0001_initial	2026-05-18 14:04:27.716124+00
19	sessions	0001_initial	2026-05-18 14:04:27.743421+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sas; Owner: axis_admin
--

COPY sas.django_session (session_key, session_data, expire_date) FROM stdin;
kpcwv1pwg10hgjmjyp7zqtm0amalhk1g	.eJxVjDsOgzAQRO_iOrLwB3udMj1nsNbrdUwSgYShinL3gESRdKN5b-YtIm5rjVvjJY5ZXIUSl98uIT15OkB-4HSfJc3TuoxJHoo8aZPDnPl1O92_g4qt7usCHNhyl53JgKg66iH1hYzRe7asASgEX7pkQu-88xYsOI1YXCYqSny-6dA36A:1wOzRp:N_ACcFTuK-4hrWkJw0CrzqSersl0gyMuMtnUHb_S-GQ	2026-06-01 15:00:01.883985+00
413d0s3twn68o8mgeeaow3lrqz0p86hw	.eJxVjDsOgzAQRO_iOrLwB3udMj1nsNbrdUwSgYShinL3gESRdKN5b-YtIm5rjVvjJY5ZXIUSl98uIT15OkB-4HSfJc3TuoxJHoo8aZPDnPl1O92_g4qt7usCHNhyl53JgKg66iH1hYzRe7asASgEX7pkQu-88xYsOI1YXCYqSny-6dA36A:1wP0tm:FNNN7elH5gRNg0KGYWQNQu-W4zOmcv1AcHjrEL1XOyg	2026-06-01 16:32:58.641435+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$nY6ERdXHj0c1G3y9swHnzT$ZDe9St0qUnpHWJLqM7iThsc+h6ZFIkClThsWq+APJlg=	\N	t	s			s@sasasa.com	t	t	2026-05-21 10:31:59.854074+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.950502+00	2026-05-21 16:56:30.950527+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 10:31:58.433325+00
2	auth	0001_initial	2026-05-21 10:31:58.53928+00
3	admin	0001_initial	2026-05-21 10:31:58.569727+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 10:31:58.580802+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 10:31:58.595241+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 10:31:58.624946+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 10:31:58.642699+00
8	auth	0003_alter_user_email_max_length	2026-05-21 10:31:58.667063+00
9	auth	0004_alter_user_username_opts	2026-05-21 10:31:58.683101+00
10	auth	0005_alter_user_last_login_null	2026-05-21 10:31:58.709206+00
11	auth	0006_require_contenttypes_0002	2026-05-21 10:31:58.71385+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 10:31:58.728802+00
13	auth	0008_alter_user_username_max_length	2026-05-21 10:31:58.763636+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 10:31:58.793049+00
15	auth	0010_alter_group_name_max_length	2026-05-21 10:31:58.851009+00
16	auth	0011_update_proxy_permissions	2026-05-21 10:31:58.862305+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 10:31:58.876476+00
18	axis_saas	0001_initial	2026-05-21 10:31:59.163678+00
19	axis_saas	0002_student_b_form_number	2026-05-21 10:31:59.171098+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 10:31:59.579145+00
21	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:31:59.746587+00
22	sessions	0001_initial	2026-05-21 10:31:59.758445+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:24.243049+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:45.554416+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:20.953167+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sasasa; Owner: axis_admin
--

COPY sasasa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$5b6whXJ2UK53SqE3YpklB7$4vcmPgrEoTikiROp3g1Z00L6dHvjnDb+/DShfyv0HKA=	\N	t	s			s@sasss.com	t	t	2026-05-21 10:18:31.061952+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.919672+00	2026-05-21 16:56:30.919699+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 10:18:30.081331+00
2	auth	0001_initial	2026-05-21 10:18:30.224129+00
3	admin	0001_initial	2026-05-21 10:18:30.259747+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 10:18:30.272728+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 10:18:30.288891+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 10:18:30.315138+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 10:18:30.364849+00
8	auth	0003_alter_user_email_max_length	2026-05-21 10:18:30.377872+00
9	auth	0004_alter_user_username_opts	2026-05-21 10:18:30.391553+00
10	auth	0005_alter_user_last_login_null	2026-05-21 10:18:30.404786+00
11	auth	0006_require_contenttypes_0002	2026-05-21 10:18:30.407285+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 10:18:30.418812+00
13	auth	0008_alter_user_username_max_length	2026-05-21 10:18:30.440559+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 10:18:30.466379+00
15	auth	0010_alter_group_name_max_length	2026-05-21 10:18:30.481228+00
16	auth	0011_update_proxy_permissions	2026-05-21 10:18:30.493381+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 10:18:30.511962+00
18	axis_saas	0001_initial	2026-05-21 10:18:30.59736+00
19	axis_saas	0002_student_b_form_number	2026-05-21 10:18:30.60993+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 10:18:30.720147+00
21	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:30.894067+00
22	sessions	0001_initial	2026-05-21 10:18:30.908578+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:23.728415+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:45.086143+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:20.619672+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sasss; Owner: axis_admin
--

COPY sasss.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$IQHHyLnHQpn2GZ7Xrg7pe7$YFICJDDy7LHajZmzXOajtZxI/owvkD66IzNuQVqLCN4=	\N	t	s			s@sb.com	t	t	2026-05-21 09:40:35.13231+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.898719+00	2026-05-21 16:56:30.898744+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 09:40:34.343632+00
2	auth	0001_initial	2026-05-21 09:40:34.5311+00
3	admin	0001_initial	2026-05-21 09:40:34.558207+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 09:40:34.571061+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 09:40:34.592346+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 09:40:34.61736+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 09:40:34.629697+00
8	auth	0003_alter_user_email_max_length	2026-05-21 09:40:34.643147+00
9	auth	0004_alter_user_username_opts	2026-05-21 09:40:34.655361+00
10	auth	0005_alter_user_last_login_null	2026-05-21 09:40:34.670172+00
11	auth	0006_require_contenttypes_0002	2026-05-21 09:40:34.672317+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 09:40:34.686644+00
13	auth	0008_alter_user_username_max_length	2026-05-21 09:40:34.708258+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 09:40:34.727308+00
15	auth	0010_alter_group_name_max_length	2026-05-21 09:40:34.770416+00
16	auth	0011_update_proxy_permissions	2026-05-21 09:40:34.784929+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 09:40:34.798708+00
18	axis_saas	0001_initial	2026-05-21 09:40:34.891075+00
19	axis_saas	0002_student_b_form_number	2026-05-21 09:40:34.903872+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 09:40:35.008091+00
21	sessions	0001_initial	2026-05-21 09:40:35.046775+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:06.944841+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:23.483456+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:44.903383+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:20.435133+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sb; Owner: axis_admin
--

COPY sb.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$na4EGrh9kTJLoBgpU5rxJe$r8HJcSKdEwBZML70cu0ilzhOSJ7GKiE3z0nCbiJdHuI=	\N	t	s			s@scaf.com	t	t	2026-05-19 17:29:32.103742+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 17:29:31.520998+00
2	auth	0001_initial	2026-05-19 17:29:31.627467+00
3	admin	0001_initial	2026-05-19 17:29:31.662426+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 17:29:31.686397+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 17:29:31.708558+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 17:29:31.741572+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 17:29:31.760024+00
8	auth	0003_alter_user_email_max_length	2026-05-19 17:29:31.775268+00
9	auth	0004_alter_user_username_opts	2026-05-19 17:29:31.785864+00
10	auth	0005_alter_user_last_login_null	2026-05-19 17:29:31.798184+00
11	auth	0006_require_contenttypes_0002	2026-05-19 17:29:31.800112+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 17:29:31.811203+00
13	auth	0008_alter_user_username_max_length	2026-05-19 17:29:31.833687+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 17:29:31.864694+00
15	auth	0010_alter_group_name_max_length	2026-05-19 17:29:31.878969+00
16	auth	0011_update_proxy_permissions	2026-05-19 17:29:31.890824+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 17:29:31.905217+00
18	axis_saas	0001_initial	2026-05-19 17:29:31.968863+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 17:29:31.9785+00
20	axis_saas	0003_add_school_logo	2026-05-19 17:29:31.989439+00
21	sessions	0001_initial	2026-05-19 17:29:32.006942+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: scaf; Owner: axis_admin
--

COPY scaf.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	auth	user
4	admin	logentry
5	axis_saas	schoolclient
6	axis_saas	schooldomain
7	contenttypes	contenttype
8	sessions	session
9	axis_saas	student
10	axis_saas	feestructure
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	2	add_permission
2	Can change permission	2	change_permission
3	Can delete permission	2	delete_permission
4	Can view permission	2	view_permission
5	Can add group	1	add_group
6	Can change group	1	change_group
7	Can delete group	1	delete_group
8	Can view group	1	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add school client	5	add_schoolclient
18	Can change school client	5	change_schoolclient
19	Can delete school client	5	delete_schoolclient
20	Can view school client	5	view_schoolclient
21	Can add school domain	6	add_schooldomain
22	Can change school domain	6	change_schooldomain
23	Can delete school domain	6	delete_schooldomain
24	Can view school domain	6	view_schooldomain
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
33	Can add student	9	add_student
34	Can change student	9	change_student
35	Can delete student	9	delete_student
36	Can view student	9	view_student
37	Can add fee structure	10	add_feestructure
38	Can change fee structure	10	change_feestructure
39	Can delete fee structure	10	delete_feestructure
40	Can view fee structure	10	view_feestructure
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$UbdDxE6SWQq1IY4QNeoqAm$C9RhpMV9//+RuzF/y7jWp5/iBxXD6gkxu1rZkx76i4o=	\N	t	school			management@schoolsystem.com	t	t	2026-05-18 08:22:24.68873+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_password, admin_username) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-18 08:22:24.027767+00
2	auth	0001_initial	2026-05-18 08:22:24.099935+00
3	admin	0001_initial	2026-05-18 08:22:24.132195+00
4	admin	0002_logentry_remove_auto_add	2026-05-18 08:22:24.144563+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-18 08:22:24.16048+00
6	contenttypes	0002_remove_content_type_name	2026-05-18 08:22:24.194514+00
7	auth	0002_alter_permission_name_max_length	2026-05-18 08:22:24.213144+00
8	auth	0003_alter_user_email_max_length	2026-05-18 08:22:24.231448+00
9	auth	0004_alter_user_username_opts	2026-05-18 08:22:24.248607+00
10	auth	0005_alter_user_last_login_null	2026-05-18 08:22:24.269161+00
11	auth	0006_require_contenttypes_0002	2026-05-18 08:22:24.286153+00
12	auth	0007_alter_validators_add_error_messages	2026-05-18 08:22:24.326978+00
13	auth	0008_alter_user_username_max_length	2026-05-18 08:22:24.363204+00
14	auth	0009_alter_user_last_name_max_length	2026-05-18 08:22:24.400611+00
15	auth	0010_alter_group_name_max_length	2026-05-18 08:22:24.450585+00
16	auth	0011_update_proxy_permissions	2026-05-18 08:22:24.477301+00
17	auth	0012_alter_user_first_name_max_length	2026-05-18 08:22:24.495485+00
18	axis_saas	0001_initial	2026-05-18 08:22:24.526708+00
19	axis_saas	0002_schoolclient_admin_email_schoolclient_admin_password_and_more	2026-05-18 08:22:24.545597+00
20	axis_saas	0003_remove_schoolclient_admin_email_and_more	2026-05-18 08:22:24.564369+00
21	axis_saas	0004_schoolclient_admin_password_and_more	2026-05-18 08:22:24.574802+00
22	sessions	0001_initial	2026-05-18 08:22:24.592038+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: schoolsystem; Owner: axis_admin
--

COPY schoolsystem.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$xLa3D4Z1mNC6rHONXDo6hz$GnrTrTHT7QReerD9ytjwJfMN0+q93T1W5WdHfd5HsRU=	\N	t	s			s@sephir.com	t	t	2026-05-20 08:22:48.492761+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.557307+00	2026-05-21 16:56:30.557339+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:22:47.888525+00
2	auth	0001_initial	2026-05-20 08:22:47.97416+00
3	admin	0001_initial	2026-05-20 08:22:48.004354+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:22:48.015468+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:22:48.034222+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:22:48.062382+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:22:48.076293+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:22:48.090644+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:22:48.101926+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:22:48.157854+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:22:48.161865+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:22:48.179459+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:22:48.224836+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:22:48.250117+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:22:48.283793+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:22:48.337838+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:22:48.355632+00
18	axis_saas	0001_initial	2026-05-20 08:22:48.403924+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:22:48.410305+00
20	sessions	0001_initial	2026-05-20 08:22:48.422316+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:46.2162+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:00.635699+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:20.610327+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:42.275182+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:17.16972+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sephir; Owner: axis_admin
--

COPY sephir.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$9DNFmuGaaY51l4QCvwCogy$n6Y2IOqPsy5zmy6JKx+gxt0uPWb8OI08Z99Laued234=	\N	t	s			s@sgg.com	t	t	2026-05-19 08:39:56.210895+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 08:39:55.751648+00
2	auth	0001_initial	2026-05-19 08:39:55.821816+00
3	admin	0001_initial	2026-05-19 08:39:55.844851+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 08:39:55.856258+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 08:39:55.868245+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 08:39:55.89338+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 08:39:55.90583+00
8	auth	0003_alter_user_email_max_length	2026-05-19 08:39:55.919068+00
9	auth	0004_alter_user_username_opts	2026-05-19 08:39:55.93033+00
10	auth	0005_alter_user_last_login_null	2026-05-19 08:39:55.943683+00
11	auth	0006_require_contenttypes_0002	2026-05-19 08:39:55.945661+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 08:39:55.957012+00
13	auth	0008_alter_user_username_max_length	2026-05-19 08:39:55.973788+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 08:39:55.986487+00
15	auth	0010_alter_group_name_max_length	2026-05-19 08:39:56.028324+00
16	auth	0011_update_proxy_permissions	2026-05-19 08:39:56.053449+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 08:39:56.065783+00
18	axis_saas	0001_initial	2026-05-19 08:39:56.120821+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 08:39:56.12811+00
20	axis_saas	0003_add_school_logo	2026-05-19 08:39:56.135016+00
21	sessions	0001_initial	2026-05-19 08:39:56.146367+00
22	axis_saas	0004_add_student_bform	2026-05-19 10:28:00.906638+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sgg; Owner: axis_admin
--

COPY sgg.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$ldP85NzDxxPhm9ZUq3uM9m$QP6OsFAula4Eye1AGHfIYI8rg7VeHyr80zBG/v92N9k=	\N	t	mn			mn@sks.com	t	t	2026-05-20 09:28:59.607743+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	og	go	10	23	4	A	2026-05-20	struck_off	female	1111-11-11	w		w	AX-SKS-2026-0001	1000.00	2026-05-20 09:29:36.029705+00
3	nena	nano	2	2	2	A	2026-05-20	graduated	female	0111-11-11	111		1	AX-SKS-2026-0003	1000.00	2026-05-20 09:56:38.564501+00
2	muhammad abdullah naqvi shah baloch alam	hazir khan baloch shah alam chandyo jamali	3650227332629	03059787326	8	C	2026-05-20	active	male	1111-11-11	okara cantt ka rihaishe he ye bacha		nhi he bhai	AX-SKS-2026-0002	1000.00	2026-05-20 09:46:17.224676+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	2
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	4	1000.00	2026-05-21 17:15:02.534381+00
2	2	1000.00	2026-05-21 17:15:02.565487+00
3	8	1000.00	2026-05-21 17:15:02.576325+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.786805+00	2026-05-21 16:56:30.786827+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 09:28:56.956289+00
2	auth	0001_initial	2026-05-20 09:28:57.227551+00
3	admin	0001_initial	2026-05-20 09:28:57.319126+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 09:28:57.366641+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 09:28:57.427797+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 09:28:57.6364+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 09:28:57.809965+00
8	auth	0003_alter_user_email_max_length	2026-05-20 09:28:58.063168+00
9	auth	0004_alter_user_username_opts	2026-05-20 09:28:58.139135+00
10	auth	0005_alter_user_last_login_null	2026-05-20 09:28:58.207338+00
11	auth	0006_require_contenttypes_0002	2026-05-20 09:28:58.226193+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 09:28:58.279318+00
13	auth	0008_alter_user_username_max_length	2026-05-20 09:28:58.367638+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 09:28:58.466561+00
15	auth	0010_alter_group_name_max_length	2026-05-20 09:28:58.544384+00
16	auth	0011_update_proxy_permissions	2026-05-20 09:28:58.614888+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 09:28:58.673441+00
18	axis_saas	0001_initial	2026-05-20 09:28:58.940198+00
19	axis_saas	0002_student_b_form_number	2026-05-20 09:28:58.968537+00
20	sessions	0001_initial	2026-05-20 09:28:59.019224+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:49.17327+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:05.336263+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:22.62226+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:44.162553+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:19.73718+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: sks; Owner: axis_admin
--

COPY sks.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$irRrqjd8VIkhGs6orLpEEv$afvsW26HU4J/0RUQRuHHlvOLWugyYO55ezHTUvg8IbA=	\N	t	s			s@systen.com	t	t	2026-05-19 04:10:42.24926+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 04:10:41.78028+00
2	auth	0001_initial	2026-05-19 04:10:41.855172+00
3	admin	0001_initial	2026-05-19 04:10:41.896154+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 04:10:41.909977+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 04:10:41.927111+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 04:10:41.959198+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 04:10:41.972466+00
8	auth	0003_alter_user_email_max_length	2026-05-19 04:10:41.985158+00
9	auth	0004_alter_user_username_opts	2026-05-19 04:10:41.999225+00
10	auth	0005_alter_user_last_login_null	2026-05-19 04:10:42.01251+00
11	auth	0006_require_contenttypes_0002	2026-05-19 04:10:42.014677+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 04:10:42.027004+00
13	auth	0008_alter_user_username_max_length	2026-05-19 04:10:42.046985+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 04:10:42.072428+00
15	auth	0010_alter_group_name_max_length	2026-05-19 04:10:42.08961+00
16	auth	0011_update_proxy_permissions	2026-05-19 04:10:42.101313+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 04:10:42.112987+00
18	axis_saas	0001_initial	2026-05-19 04:10:42.151614+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 04:10:42.163725+00
20	sessions	0001_initial	2026-05-19 04:10:42.175481+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:45.427627+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: systen; Owner: axis_admin
--

COPY systen.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$CGKFQjXOIcUaDRz8w1OxdQ$qBd3dbvFqOea54lLcQ1YjO7e34OzamP2Db3tQ1rIkuw=	\N	t	g			g@teeaa.com	t	t	2026-05-20 09:21:28.456451+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	g	ha	ha	ha	2	A	2026-05-20	active	male	1111-11-11	s		s	AX-TEEAA-2026-0001	1000.00	2026-05-20 09:27:12.090219+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	2	1000.00	2026-05-21 17:15:02.461457+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.765893+00	2026-05-21 16:56:30.765922+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 09:21:26.63853+00
2	auth	0001_initial	2026-05-20 09:21:26.906499+00
3	admin	0001_initial	2026-05-20 09:21:26.979945+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 09:21:27.018204+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 09:21:27.08491+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 09:21:27.204214+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 09:21:27.259145+00
8	auth	0003_alter_user_email_max_length	2026-05-20 09:21:27.314019+00
9	auth	0004_alter_user_username_opts	2026-05-20 09:21:27.367649+00
10	auth	0005_alter_user_last_login_null	2026-05-20 09:21:27.42262+00
11	auth	0006_require_contenttypes_0002	2026-05-20 09:21:27.431589+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 09:21:27.526926+00
13	auth	0008_alter_user_username_max_length	2026-05-20 09:21:27.670624+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 09:21:27.755335+00
15	auth	0010_alter_group_name_max_length	2026-05-20 09:21:27.832645+00
16	auth	0011_update_proxy_permissions	2026-05-20 09:21:27.873604+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 09:21:27.917587+00
18	axis_saas	0001_initial	2026-05-20 09:21:28.090252+00
19	axis_saas	0002_student_b_form_number	2026-05-20 09:21:28.107748+00
20	sessions	0001_initial	2026-05-20 09:21:28.154184+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:48.916838+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:04.872155+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:22.422811+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:43.980646+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:19.549562+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: teeaa; Owner: axis_admin
--

COPY teeaa.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$f0iQQFHyL6MWXIMEKMKZ7k$lapGtJMiGKjwnK3iHjJVALFa5M2qS4SujB6xLLY8Gi8=	\N	t	s			s@ten.com	t	t	2026-05-20 09:07:25.201213+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	gandasi	aha	36502	2	2	A	2026-05-20	active	other	1111-11-11	w		w	AX-TEN-2026-0001	1000.00	2026-05-20 09:09:22.222056+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	2	1000.00	2026-05-21 17:15:02.410158+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.752073+00	2026-05-21 16:56:30.752099+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 09:07:24.474291+00
2	auth	0001_initial	2026-05-20 09:07:24.569124+00
3	admin	0001_initial	2026-05-20 09:07:24.608157+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 09:07:24.63037+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 09:07:24.653417+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 09:07:24.718605+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 09:07:24.760479+00
8	auth	0003_alter_user_email_max_length	2026-05-20 09:07:24.791312+00
9	auth	0004_alter_user_username_opts	2026-05-20 09:07:24.823297+00
10	auth	0005_alter_user_last_login_null	2026-05-20 09:07:24.847485+00
11	auth	0006_require_contenttypes_0002	2026-05-20 09:07:24.854779+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 09:07:24.86911+00
13	auth	0008_alter_user_username_max_length	2026-05-20 09:07:24.899553+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 09:07:24.922136+00
15	auth	0010_alter_group_name_max_length	2026-05-20 09:07:24.963249+00
16	auth	0011_update_proxy_permissions	2026-05-20 09:07:24.981522+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 09:07:25.011066+00
18	axis_saas	0001_initial	2026-05-20 09:07:25.062096+00
19	axis_saas	0002_student_b_form_number	2026-05-20 09:07:25.067522+00
20	sessions	0001_initial	2026-05-20 09:07:25.094541+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:48.660449+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:18:04.468822+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:22.253064+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:43.810086+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:19.286327+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: ten; Owner: axis_admin
--

COPY ten.django_session (session_key, session_data, expire_date) FROM stdin;
jt5gn23izmjle7obwnp35icxs83d8di2	.eJyrVipOzsjPz4lPTMnNzItPLC3JSM0ryUxOLElNUbIqKSpN1UFVAeSk5iYqWSmVpOYp1QIAD44X3g:1wPcty:VOpDW_1FFjeUkRQgLC-IA09Vpa3TYCXL4dLR6emj_8c	2026-06-03 09:07:42.497847+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$pd4nacw7NIHQBK2NMuKWYb$ePaeWYvzL3j8Zk+7lIYcAimXXvBKr8RFeoqLeSJ7LMc=	2026-05-19 03:19:59.727703+00	t	a			a@uk.com	t	t	2026-05-19 03:19:51.59771+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 03:19:51.195591+00
2	auth	0001_initial	2026-05-19 03:19:51.266589+00
3	admin	0001_initial	2026-05-19 03:19:51.277307+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 03:19:51.289992+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 03:19:51.302177+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 03:19:51.32749+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 03:19:51.339009+00
8	auth	0003_alter_user_email_max_length	2026-05-19 03:19:51.350786+00
9	auth	0004_alter_user_username_opts	2026-05-19 03:19:51.362246+00
10	auth	0005_alter_user_last_login_null	2026-05-19 03:19:51.374932+00
11	auth	0006_require_contenttypes_0002	2026-05-19 03:19:51.377117+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 03:19:51.388647+00
13	auth	0008_alter_user_username_max_length	2026-05-19 03:19:51.403629+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 03:19:51.417015+00
15	auth	0010_alter_group_name_max_length	2026-05-19 03:19:51.430886+00
16	auth	0011_update_proxy_permissions	2026-05-19 03:19:51.452579+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 03:19:51.467966+00
18	axis_saas	0001_initial	2026-05-19 03:19:51.508931+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 03:19:51.516901+00
20	sessions	0001_initial	2026-05-19 03:19:51.528089+00
21	axis_saas	0003_add_school_logo	2026-05-19 04:35:44.952088+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: uk; Owner: axis_admin
--

COPY uk.django_session (session_key, session_data, expire_date) FROM stdin;
qxkl2auf45qmpnbtvnycee1hnxrihxpf	.eJxVjUEOwiAURO_C2pBCkVqX7j0D-Xw-BavUUOrGeHdbbRrdzrx582QGphLMNFI20bEjE2z3m1nAntJSuAukbuA4pJKj5QvC13bk58HR9bSyf4IAY5jXWglVVQBEHgG1U5XUXngpLDaCSLQaWomK9k2NypH0TmtvQR1kU_ta0yYtlCAVM2KgG5gyzI-zfuo3ALDEB33PfUwd5XuOqXwgI9jrDanyUw0:1wPB0n:v-oQtlpo5dXPI7p3CPW5GphQynWPCaiFqfH9x-WqlfU	2026-06-02 03:20:53.227907+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$eMq6jogKhIzB8mJFVUGFRH$HyovziUZtR3WuSt/1/LX8s+mnRAOXrnKWjyD0+NWwoQ=	2026-05-19 16:54:21.511602+00	t	s			s@vava.com	t	t	2026-05-19 10:30:49.418116+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on, b_form_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 10:30:48.8473+00
2	auth	0001_initial	2026-05-19 10:30:48.952176+00
3	admin	0001_initial	2026-05-19 10:30:48.979997+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 10:30:48.991099+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 10:30:49.005082+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 10:30:49.033458+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 10:30:49.048292+00
8	auth	0003_alter_user_email_max_length	2026-05-19 10:30:49.065292+00
9	auth	0004_alter_user_username_opts	2026-05-19 10:30:49.079592+00
10	auth	0005_alter_user_last_login_null	2026-05-19 10:30:49.095828+00
11	auth	0006_require_contenttypes_0002	2026-05-19 10:30:49.098381+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 10:30:49.130188+00
13	auth	0008_alter_user_username_max_length	2026-05-19 10:30:49.167879+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 10:30:49.189189+00
15	auth	0010_alter_group_name_max_length	2026-05-19 10:30:49.204872+00
16	auth	0011_update_proxy_permissions	2026-05-19 10:30:49.218227+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 10:30:49.233495+00
18	axis_saas	0001_initial	2026-05-19 10:30:49.288586+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 10:30:49.298676+00
20	axis_saas	0003_add_school_logo	2026-05-19 10:30:49.310664+00
21	axis_saas	0004_add_student_bform	2026-05-19 10:30:49.318229+00
22	sessions	0001_initial	2026-05-19 10:30:49.331023+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: vava; Owner: axis_admin
--

COPY vava.django_session (session_key, session_data, expire_date) FROM stdin;
etcbtn8i8jb1l34lkcn1gfthrk0s08hb	.eJxVjc0OwiAQhN-Fs2kKaKEevfsMZNndFvwB09JejO9uGxuj15lvvnkKB1MJbhp5cJHEUUix-8084JXTWtAFUp8rzKkM0VcrUm3tWJ0z8e20sX-CAGNY1l2tLGorDZha7pVpAOhgddMggCffalZWIqpGoUFsSdc1SKk9kDEtsfpKCydIxY0Y-A6u5OVx0c8wwxcBLHHmz30XU8_DY4ipbJiT4vUGrLhUDA:1wPNlr:MsdcseCypo6F2MXRj4VVCA2dlAbMD_7jyxr79wQZmB8	2026-06-02 16:58:19.278739+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$GmPswQ8TgnOdgRuBhBkpGy$Fnft6iRrBntj8ANPHf6UdAMNd/UwATG6cbPDtbo4yJg=	\N	t	s			s@vavava.com	t	t	2026-05-19 17:32:16.577432+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-19 17:32:16.089295+00
2	auth	0001_initial	2026-05-19 17:32:16.182503+00
3	admin	0001_initial	2026-05-19 17:32:16.207486+00
4	admin	0002_logentry_remove_auto_add	2026-05-19 17:32:16.220126+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-19 17:32:16.234412+00
6	contenttypes	0002_remove_content_type_name	2026-05-19 17:32:16.259664+00
7	auth	0002_alter_permission_name_max_length	2026-05-19 17:32:16.272052+00
8	auth	0003_alter_user_email_max_length	2026-05-19 17:32:16.283886+00
9	auth	0004_alter_user_username_opts	2026-05-19 17:32:16.295162+00
10	auth	0005_alter_user_last_login_null	2026-05-19 17:32:16.308133+00
11	auth	0006_require_contenttypes_0002	2026-05-19 17:32:16.310138+00
12	auth	0007_alter_validators_add_error_messages	2026-05-19 17:32:16.321119+00
13	auth	0008_alter_user_username_max_length	2026-05-19 17:32:16.337629+00
14	auth	0009_alter_user_last_name_max_length	2026-05-19 17:32:16.36517+00
15	auth	0010_alter_group_name_max_length	2026-05-19 17:32:16.379321+00
16	auth	0011_update_proxy_permissions	2026-05-19 17:32:16.392034+00
17	auth	0012_alter_user_first_name_max_length	2026-05-19 17:32:16.405728+00
18	axis_saas	0001_initial	2026-05-19 17:32:16.448197+00
19	axis_saas	0002_alter_schoolclient_name	2026-05-19 17:32:16.458122+00
20	axis_saas	0003_add_school_logo	2026-05-19 17:32:16.468227+00
21	sessions	0001_initial	2026-05-19 17:32:16.487522+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: vavava; Owner: axis_admin
--

COPY vavava.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feestructure
2	axis_saas	schoolclient
3	axis_saas	schooldomain
4	axis_saas	student
5	admin	logentry
6	auth	group
7	auth	permission
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	axis_saas	feerecord
12	axis_saas	paymenttransaction
13	axis_saas	schoolfeesettings
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	1	add_feestructure
2	Can change fee structure	1	change_feestructure
3	Can delete fee structure	1	delete_feestructure
4	Can view fee structure	1	view_feestructure
5	Can add school client	2	add_schoolclient
6	Can change school client	2	change_schoolclient
7	Can delete school client	2	delete_schoolclient
8	Can view school client	2	view_schoolclient
9	Can add student	4	add_student
10	Can change student	4	change_student
11	Can delete student	4	delete_student
12	Can view student	4	view_student
13	Can add school domain	3	add_schooldomain
14	Can change school domain	3	change_schooldomain
15	Can delete school domain	3	delete_schooldomain
16	Can view school domain	3	view_schooldomain
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	7	add_permission
22	Can change permission	7	change_permission
23	Can delete permission	7	delete_permission
24	Can view permission	7	view_permission
25	Can add group	6	add_group
26	Can change group	6	change_group
27	Can delete group	6	delete_group
28	Can view group	6	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add fee record	11	add_feerecord
42	Can change fee record	11	change_feerecord
43	Can delete fee record	11	delete_feerecord
44	Can view fee record	11	view_feerecord
45	Can add payment transaction	12	add_paymenttransaction
46	Can change payment transaction	12	change_paymenttransaction
47	Can delete payment transaction	12	delete_paymenttransaction
48	Can view payment transaction	12	view_paymenttransaction
49	Can add school fee settings	13	add_schoolfeesettings
50	Can change school fee settings	13	change_schoolfeesettings
51	Can delete school fee settings	13	delete_schoolfeesettings
52	Can view school fee settings	13	view_schoolfeesettings
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$BFrTiSawLWAjDHgo847ZKS$as+EH8fKIRxG5DB6vQiw8Jl8ExKVIEUdxd8Tn0xB31A=	\N	t	a			a@vavavavav.com	t	t	2026-05-20 08:01:51.770989+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
2	ss	ss	ss	ss	10	A	2026-05-20	active	female	1111-11-11	s		s	AX-VAVAVAVAV-2026-0002	1000.00	2026-05-20 08:02:56.62426+00
3	fafafa	saafafa	36502228586852	333333333	1	A	2026-05-20	active	male	1111-11-11	w		w	AX-VAVAVAVAV-2026-0003	1000.00	2026-05-20 08:03:30.787177+00
1	sg	sg	sg	sg	sg	sg	2026-05-20	active	\N	\N	sg		sg	AX-VAVAVAVAV-2026-0001	1000.00	2026-05-20 08:02:25.802585+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
1	5	2026	1000.00	0.00	2026-06-06	pending	\N	2
2	5	2026	1000.00	0.00	2026-06-06	pending	\N	3
3	5	2026	1000.00	0.00	2026-06-06	pending	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	1000.00	2026-05-21 17:15:02.241954+00
2	1	1000.00	2026-05-21 17:15:02.277185+00
3	sg	1000.00	2026-05-21 17:15:02.288083+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	0.00	15	2026-05-21 16:56:30.518148+00	2026-05-21 16:56:30.518172+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-20 08:01:51.091562+00
2	auth	0001_initial	2026-05-20 08:01:51.280842+00
3	admin	0001_initial	2026-05-20 08:01:51.329042+00
4	admin	0002_logentry_remove_auto_add	2026-05-20 08:01:51.346386+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-20 08:01:51.367295+00
6	contenttypes	0002_remove_content_type_name	2026-05-20 08:01:51.410704+00
7	auth	0002_alter_permission_name_max_length	2026-05-20 08:01:51.42426+00
8	auth	0003_alter_user_email_max_length	2026-05-20 08:01:51.437404+00
9	auth	0004_alter_user_username_opts	2026-05-20 08:01:51.447901+00
10	auth	0005_alter_user_last_login_null	2026-05-20 08:01:51.46593+00
11	auth	0006_require_contenttypes_0002	2026-05-20 08:01:51.468228+00
12	auth	0007_alter_validators_add_error_messages	2026-05-20 08:01:51.47913+00
13	auth	0008_alter_user_username_max_length	2026-05-20 08:01:51.497442+00
14	auth	0009_alter_user_last_name_max_length	2026-05-20 08:01:51.510109+00
15	auth	0010_alter_group_name_max_length	2026-05-20 08:01:51.524453+00
16	auth	0011_update_proxy_permissions	2026-05-20 08:01:51.53558+00
17	auth	0012_alter_user_first_name_max_length	2026-05-20 08:01:51.548193+00
18	axis_saas	0001_initial	2026-05-20 08:01:51.602947+00
19	axis_saas	0002_student_b_form_number	2026-05-20 08:01:51.61008+00
20	sessions	0001_initial	2026-05-20 08:01:51.621135+00
21	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-20 10:22:45.424199+00
22	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:17:59.494805+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:20.112054+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:41.755525+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:16.561768+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: vavavavav; Owner: axis_admin
--

COPY vavavavav.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee structure	2	add_feestructure
2	Can change fee structure	2	change_feestructure
3	Can delete fee structure	2	delete_feestructure
4	Can view fee structure	2	view_feestructure
5	Can add school client	4	add_schoolclient
6	Can change school client	4	change_schoolclient
7	Can delete school client	4	delete_schoolclient
8	Can view school client	4	view_schoolclient
9	Can add student	7	add_student
10	Can change student	7	change_student
11	Can delete student	7	delete_student
12	Can view student	7	view_student
13	Can add school domain	5	add_schooldomain
14	Can change school domain	5	change_schooldomain
15	Can delete school domain	5	delete_schooldomain
16	Can view school domain	5	view_schooldomain
17	Can add fee record	1	add_feerecord
18	Can change fee record	1	change_feerecord
19	Can delete fee record	1	delete_feerecord
20	Can view fee record	1	view_feerecord
21	Can add payment transaction	3	add_paymenttransaction
22	Can change payment transaction	3	change_paymenttransaction
23	Can delete payment transaction	3	delete_paymenttransaction
24	Can view payment transaction	3	view_paymenttransaction
25	Can add school fee settings	6	add_schoolfeesettings
26	Can change school fee settings	6	change_schoolfeesettings
27	Can delete school fee settings	6	delete_schoolfeesettings
28	Can view school fee settings	6	view_schoolfeesettings
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$59qn7bPB09JNRKCKEdJ3v6$UC6QmVbaW590dcOTU8lQwiIThX7k4p8iCat3r74DqV8=	\N	t	s			s@vv.com	t	t	2026-05-21 10:36:05.975473+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
1	samjh me ai	hn g	3050055505	030303030	10	C	2026-05-21	active	male	2009-01-01	okara cantt		okakrakrkark	1001	790.00	2026-05-21 10:42:23.632681+00
2	beta	baba	3650227332629	03059686748	10	C	2026-05-21	active	male	1111-11-11	ss		s	1002	790.00	2026-05-21 15:10:11.910363+00
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
2	5	2026	790.00	0.00	2026-06-03	pending	\N	2
1	5	2026	800.00	800.00	2026-06-02	paid	\N	1
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
1	10	790.00	2026-05-21 15:11:53.722267+00
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
1	333.00	2026-05-21	cash	full	RCPT-20260521-0001		admin	1
2	420.00	2026-05-21	cash	full	RCPT-20260521-0002		admin	1
3	47.00	2026-05-21	cash	full	RCPT-20260521-0003		admin	1
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
1	1	1
2	2	1
3	3	1
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.axis_saas_schoolfeesettings (id, fee_generation_day, late_fee_penalty, due_date_offset, created_at, updated_at) FROM stdin;
1	1	20.00	12	2026-05-21 12:14:29.731714+00	2026-05-21 14:00:06.475191+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-21 10:36:04.894172+00
2	auth	0001_initial	2026-05-21 10:36:05.063573+00
3	admin	0001_initial	2026-05-21 10:36:05.100656+00
4	admin	0002_logentry_remove_auto_add	2026-05-21 10:36:05.113324+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-21 10:36:05.126958+00
6	contenttypes	0002_remove_content_type_name	2026-05-21 10:36:05.154774+00
7	auth	0002_alter_permission_name_max_length	2026-05-21 10:36:05.174025+00
8	auth	0003_alter_user_email_max_length	2026-05-21 10:36:05.193302+00
9	auth	0004_alter_user_username_opts	2026-05-21 10:36:05.212712+00
10	auth	0005_alter_user_last_login_null	2026-05-21 10:36:05.231368+00
11	auth	0006_require_contenttypes_0002	2026-05-21 10:36:05.233482+00
12	auth	0007_alter_validators_add_error_messages	2026-05-21 10:36:05.250744+00
13	auth	0008_alter_user_username_max_length	2026-05-21 10:36:05.295462+00
14	auth	0009_alter_user_last_name_max_length	2026-05-21 10:36:05.359813+00
15	auth	0010_alter_group_name_max_length	2026-05-21 10:36:05.389307+00
16	auth	0011_update_proxy_permissions	2026-05-21 10:36:05.418331+00
17	auth	0012_alter_user_first_name_max_length	2026-05-21 10:36:05.44057+00
18	axis_saas	0001_initial	2026-05-21 10:36:05.544559+00
19	axis_saas	0002_student_b_form_number	2026-05-21 10:36:05.560842+00
20	axis_saas	0003_remove_student_b_form_number_feerecord_and_more	2026-05-21 10:36:05.641865+00
21	axis_saas	0004_remove_feerecord_created_at_and_more	2026-05-21 10:36:05.85528+00
22	sessions	0001_initial	2026-05-21 10:36:05.868847+00
23	axis_saas	0005_remove_schoolfeesettings_tenant	2026-05-21 12:14:24.765999+00
24	axis_saas	0002_alter_student_father_name	2026-05-22 06:24:45.737933+00
25	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:21.121796+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: vv; Owner: axis_admin
--

COPY vv.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.django_content_type (id, app_label, model) FROM stdin;
1	axis_saas	feerecord
2	axis_saas	feestructure
3	axis_saas	paymenttransaction
4	axis_saas	schoolclient
5	axis_saas	schooldomain
6	axis_saas	schoolfeesettings
7	axis_saas	student
8	admin	logentry
9	auth	group
10	auth	permission
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add fee record	1	add_feerecord
2	Can change fee record	1	change_feerecord
3	Can delete fee record	1	delete_feerecord
4	Can view fee record	1	view_feerecord
5	Can add fee structure	2	add_feestructure
6	Can change fee structure	2	change_feestructure
7	Can delete fee structure	2	delete_feestructure
8	Can view fee structure	2	view_feestructure
9	Can add school client	4	add_schoolclient
10	Can change school client	4	change_schoolclient
11	Can delete school client	4	delete_schoolclient
12	Can view school client	4	view_schoolclient
13	Can add school fee settings	6	add_schoolfeesettings
14	Can change school fee settings	6	change_schoolfeesettings
15	Can delete school fee settings	6	delete_schoolfeesettings
16	Can view school fee settings	6	view_schoolfeesettings
17	Can add student	7	add_student
18	Can change student	7	change_student
19	Can delete student	7	delete_student
20	Can view student	7	view_student
21	Can add school domain	5	add_schooldomain
22	Can change school domain	5	change_schooldomain
23	Can delete school domain	5	delete_schooldomain
24	Can view school domain	5	view_schooldomain
25	Can add payment transaction	3	add_paymenttransaction
26	Can change payment transaction	3	change_paymenttransaction
27	Can delete payment transaction	3	delete_paymenttransaction
28	Can view payment transaction	3	view_paymenttransaction
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	10	add_permission
34	Can change permission	10	change_permission
35	Can delete permission	10	delete_permission
36	Can view permission	10	view_permission
37	Can add group	9	add_group
38	Can change group	9	change_group
39	Can delete group	9	delete_group
40	Can view group	9	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$7Czu1OCB34gK3FY08KiE93$Ke3zSFoT2wIB7M/Ry7rrewIz3LTZXxE75gpC20gqjGA=	\N	t	s			s@y.com	t	t	2026-05-22 10:02:21.56609+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_student; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_student (id, name, father_name, father_cnic, parent_mobile, grade, section, admission_date, status, gender, date_of_birth, address, photo, notes, roll_number, custom_fee, enrolled_on) FROM stdin;
\.


--
-- Data for Name: axis_saas_feerecord; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_feerecord (id, month, year, amount, paid_amount, due_date, status, remarks, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_feestructure; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_feestructure (id, grade, monthly_fee, updated_at) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_paymenttransaction (id, amount, payment_date, payment_mode, payment_type, receipt_number, remarks, created_by, student_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_paymenttransaction_fee_records; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_paymenttransaction_fee_records (id, paymenttransaction_id, feerecord_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolclient; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_schoolclient (id, schema_name, name, created_on, is_active, admin_username, admin_password, school_logo) FROM stdin;
\.


--
-- Data for Name: axis_saas_schooldomain; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_schooldomain (id, domain, is_primary, tenant_id) FROM stdin;
\.


--
-- Data for Name: axis_saas_schoolfeesettings; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.axis_saas_schoolfeesettings (id, fee_generation_day, due_date_offset, late_fee_penalty, created_at, updated_at) FROM stdin;
1	1	15	0.00	2026-05-22 10:03:09.302846+00	2026-05-22 10:03:09.302876+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-05-22 10:02:21.065471+00
2	auth	0001_initial	2026-05-22 10:02:21.143177+00
3	admin	0001_initial	2026-05-22 10:02:21.166949+00
4	admin	0002_logentry_remove_auto_add	2026-05-22 10:02:21.179056+00
5	admin	0003_logentry_add_action_flag_choices	2026-05-22 10:02:21.192384+00
6	contenttypes	0002_remove_content_type_name	2026-05-22 10:02:21.219583+00
7	auth	0002_alter_permission_name_max_length	2026-05-22 10:02:21.232784+00
8	auth	0003_alter_user_email_max_length	2026-05-22 10:02:21.247819+00
9	auth	0004_alter_user_username_opts	2026-05-22 10:02:21.262826+00
10	auth	0005_alter_user_last_login_null	2026-05-22 10:02:21.278232+00
11	auth	0006_require_contenttypes_0002	2026-05-22 10:02:21.281042+00
12	auth	0007_alter_validators_add_error_messages	2026-05-22 10:02:21.294098+00
13	auth	0008_alter_user_username_max_length	2026-05-22 10:02:21.311755+00
14	auth	0009_alter_user_last_name_max_length	2026-05-22 10:02:21.325435+00
15	auth	0010_alter_group_name_max_length	2026-05-22 10:02:21.341043+00
16	auth	0011_update_proxy_permissions	2026-05-22 10:02:21.353062+00
17	auth	0012_alter_user_first_name_max_length	2026-05-22 10:02:21.367951+00
18	axis_saas	0001_initial	2026-05-22 10:02:21.470457+00
19	axis_saas	0002_alter_student_father_name	2026-05-22 10:02:21.478366+00
20	sessions	0001_initial	2026-05-22 10:02:21.489144+00
21	axis_saas	0003_alter_student_father_name	2026-05-22 10:17:23.044121+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: y; Owner: axis_admin
--

COPY y.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: a; Owner: axis_admin
--

SELECT pg_catalog.setval('a.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.axis_saas_feestructure_id_seq', 3, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.axis_saas_student_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.django_admin_log_id_seq', 7, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: aa; Owner: axis_admin
--

SELECT pg_catalog.setval('aa.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: aaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaa.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: aaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('aaaa.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: aaw; Owner: axis_admin
--

SELECT pg_catalog.setval('aaw.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ac; Owner: axis_admin
--

SELECT pg_catalog.setval('ac.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: afv; Owner: axis_admin
--

SELECT pg_catalog.setval('afv.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: agaaba; Owner: axis_admin
--

SELECT pg_catalog.setval('agaaba.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: agvava; Owner: axis_admin
--

SELECT pg_catalog.setval('agvava.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_feerecord_id_seq', 2, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_paymenttransaction_fee_records_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_paymenttransaction_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_schoolfeesettings_id_seq', 2, true);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ahahahahaha; Owner: axis_admin
--

SELECT pg_catalog.setval('ahahahahaha.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_feerecord_id_seq', 2, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_paymenttransaction_fee_records_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_paymenttransaction_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_schoolfeesettings_id_seq', 5, true);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: allah; Owner: axis_admin
--

SELECT pg_catalog.setval('allah.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: aps; Owner: axis_admin
--

SELECT pg_catalog.setval('aps.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_feerecord_id_seq', 5, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_feestructure_id_seq', 5, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_paymenttransaction_fee_records_id_seq', 2, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_paymenttransaction_id_seq', 2, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".axis_saas_student_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: as; Owner: axis_admin
--

SELECT pg_catalog.setval('"as".django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: asaga; Owner: axis_admin
--

SELECT pg_catalog.setval('asaga.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_feerecord_id_seq', 4, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_feestructure_id_seq', 6, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_paymenttransaction_fee_records_id_seq', 7, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_paymenttransaction_id_seq', 7, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.axis_saas_student_id_seq', 4, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: b; Owner: axis_admin
--

SELECT pg_catalog.setval('b.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_feerecord_id_seq', 5, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_feestructure_id_seq', 4, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_paymenttransaction_fee_records_id_seq', 4, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_paymenttransaction_id_seq', 4, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.axis_saas_student_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ba; Owner: axis_admin
--

SELECT pg_catalog.setval('ba.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: baba; Owner: axis_admin
--

SELECT pg_catalog.setval('baba.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bas; Owner: axis_admin
--

SELECT pg_catalog.setval('bas.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_feerecord_id_seq', 2, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_feestructure_id_seq', 3, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_paymenttransaction_fee_records_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_paymenttransaction_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.axis_saas_student_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bb; Owner: axis_admin
--

SELECT pg_catalog.setval('bb.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bgng; Owner: axis_admin
--

SELECT pg_catalog.setval('bgng.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bh; Owner: axis_admin
--

SELECT pg_catalog.setval('bh.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bhattya; Owner: axis_admin
--

SELECT pg_catalog.setval('bhattya.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_feerecord_id_seq', 3, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_feestructure_id_seq', 2, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.axis_saas_student_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bpf; Owner: axis_admin
--

SELECT pg_catalog.setval('bpf.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_feerecord_id_seq', 1, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: bulla; Owner: axis_admin
--

SELECT pg_catalog.setval('bulla.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: cs; Owner: axis_admin
--

SELECT pg_catalog.setval('cs.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ehsas; Owner: axis_admin
--

SELECT pg_catalog.setval('ehsas.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ena; Owner: axis_admin
--

SELECT pg_catalog.setval('ena.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_feerecord_id_seq', 5, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_feestructure_id_seq', 4, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_paymenttransaction_fee_records_id_seq', 3, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_paymenttransaction_id_seq', 3, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.axis_saas_student_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: f; Owner: axis_admin
--

SELECT pg_catalog.setval('f.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: fa; Owner: axis_admin
--

SELECT pg_catalog.setval('fa.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: fafafa; Owner: axis_admin
--

SELECT pg_catalog.setval('fafafa.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: faga; Owner: axis_admin
--

SELECT pg_catalog.setval('faga.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: fasg; Owner: axis_admin
--

SELECT pg_catalog.setval('fasg.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ga; Owner: axis_admin
--

SELECT pg_catalog.setval('ga.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: gag; Owner: axis_admin
--

SELECT pg_catalog.setval('gag.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: gaga; Owner: axis_admin
--

SELECT pg_catalog.setval('gaga.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: gagaad; Owner: axis_admin
--

SELECT pg_catalog.setval('gagaad.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: gagas; Owner: axis_admin
--

SELECT pg_catalog.setval('gagas.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: gav; Owner: axis_admin
--

SELECT pg_catalog.setval('gav.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ha; Owner: axis_admin
--

SELECT pg_catalog.setval('ha.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: haha; Owner: axis_admin
--

SELECT pg_catalog.setval('haha.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: hahaaa; Owner: axis_admin
--

SELECT pg_catalog.setval('hahaaa.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: hapt; Owner: axis_admin
--

SELECT pg_catalog.setval('hapt.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: hg; Owner: axis_admin
--

SELECT pg_catalog.setval('hg.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: hoho; Owner: axis_admin
--

SELECT pg_catalog.setval('hoho.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ifi; Owner: axis_admin
--

SELECT pg_catalog.setval('ifi.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: imas; Owner: axis_admin
--

SELECT pg_catalog.setval('imas.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: j; Owner: axis_admin
--

SELECT pg_catalog.setval('j.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: jaat; Owner: axis_admin
--

SELECT pg_catalog.setval('jaat.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: jekoo; Owner: axis_admin
--

SELECT pg_catalog.setval('jekoo.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: jhan; Owner: axis_admin
--

SELECT pg_catalog.setval('jhan.django_migrations_id_seq', 20, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: jhant; Owner: axis_admin
--

SELECT pg_catalog.setval('jhant.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: jho; Owner: axis_admin
--

SELECT pg_catalog.setval('jho.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: jht; Owner: axis_admin
--

SELECT pg_catalog.setval('jht.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: k; Owner: axis_admin
--

SELECT pg_catalog.setval('k.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: khang; Owner: axis_admin
--

SELECT pg_catalog.setval('khang.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: khud; Owner: axis_admin
--

SELECT pg_catalog.setval('khud.django_migrations_id_seq', 20, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_feerecord_id_seq', 6, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_feestructure_id_seq', 5, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_paymenttransaction_fee_records_id_seq', 4, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_paymenttransaction_id_seq', 4, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.axis_saas_student_id_seq', 6, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: kk; Owner: axis_admin
--

SELECT pg_catalog.setval('kk.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: lahore; Owner: axis_admin
--

SELECT pg_catalog.setval('lahore.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: lal; Owner: axis_admin
--

SELECT pg_catalog.setval('lal.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: lundschol; Owner: axis_admin
--

SELECT pg_catalog.setval('lundschol.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_feerecord_id_seq', 1, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: major; Owner: axis_admin
--

SELECT pg_catalog.setval('major.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_feerecord_id_seq', 2, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_feestructure_id_seq', 2, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_paymenttransaction_fee_records_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_paymenttransaction_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.axis_saas_student_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: mama; Owner: axis_admin
--

SELECT pg_catalog.setval('mama.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: mgmg; Owner: axis_admin
--

SELECT pg_catalog.setval('mgmg.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_feerecord_id_seq', 1, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ms; Owner: axis_admin
--

SELECT pg_catalog.setval('ms.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: mts; Owner: axis_admin
--

SELECT pg_catalog.setval('mts.django_migrations_id_seq', 24, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: mtsf; Owner: axis_admin
--

SELECT pg_catalog.setval('mtsf.django_migrations_id_seq', 26, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: mtss; Owner: axis_admin
--

SELECT pg_catalog.setval('mtss.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: n; Owner: axis_admin
--

SELECT pg_catalog.setval('n.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: naja; Owner: axis_admin
--

SELECT pg_catalog.setval('naja.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_schoolclient_id_seq', 49, true);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_schooldomain_id_seq', 48, true);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.axis_saas_schoolfeesettings_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 59, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: axis_admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: razaq; Owner: axis_admin
--

SELECT pg_catalog.setval('razaq.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.auth_user_user_permissions_id_seq', 40, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.axis_saas_student_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.django_admin_log_id_seq', 12, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: razaqpublic; Owner: axis_admin
--

SELECT pg_catalog.setval('razaqpublic.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: s; Owner: axis_admin
--

SELECT pg_catalog.setval('s.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sa; Owner: axis_admin
--

SELECT pg_catalog.setval('sa.django_migrations_id_seq', 24, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: safafa; Owner: axis_admin
--

SELECT pg_catalog.setval('safafa.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sagag; Owner: axis_admin
--

SELECT pg_catalog.setval('sagag.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sajni; Owner: axis_admin
--

SELECT pg_catalog.setval('sajni.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_feerecord_id_seq', 3, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_feestructure_id_seq', 2, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_paymenttransaction_fee_records_id_seq', 3, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_paymenttransaction_id_seq', 3, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.axis_saas_student_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sami; Owner: axis_admin
--

SELECT pg_catalog.setval('sami.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: samya; Owner: axis_admin
--

SELECT pg_catalog.setval('samya.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sargi; Owner: axis_admin
--

SELECT pg_catalog.setval('sargi.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.axis_saas_student_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sas; Owner: axis_admin
--

SELECT pg_catalog.setval('sas.django_migrations_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sasasa; Owner: axis_admin
--

SELECT pg_catalog.setval('sasasa.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sasss; Owner: axis_admin
--

SELECT pg_catalog.setval('sasss.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sb; Owner: axis_admin
--

SELECT pg_catalog.setval('sb.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: scaf; Owner: axis_admin
--

SELECT pg_catalog.setval('scaf.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: schoolsystem; Owner: axis_admin
--

SELECT pg_catalog.setval('schoolsystem.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sephir; Owner: axis_admin
--

SELECT pg_catalog.setval('sephir.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sgg; Owner: axis_admin
--

SELECT pg_catalog.setval('sgg.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_feerecord_id_seq', 1, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_feestructure_id_seq', 3, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.axis_saas_student_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: sks; Owner: axis_admin
--

SELECT pg_catalog.setval('sks.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: systen; Owner: axis_admin
--

SELECT pg_catalog.setval('systen.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_feerecord_id_seq', 1, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: teeaa; Owner: axis_admin
--

SELECT pg_catalog.setval('teeaa.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_feerecord_id_seq', 1, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.axis_saas_student_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: ten; Owner: axis_admin
--

SELECT pg_catalog.setval('ten.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.axis_saas_student_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: uk; Owner: axis_admin
--

SELECT pg_catalog.setval('uk.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: vava; Owner: axis_admin
--

SELECT pg_catalog.setval('vava.django_migrations_id_seq', 22, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: vavava; Owner: axis_admin
--

SELECT pg_catalog.setval('vavava.django_migrations_id_seq', 21, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_feerecord_id_seq', 3, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_feestructure_id_seq', 3, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.axis_saas_student_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: vavavavav; Owner: axis_admin
--

SELECT pg_catalog.setval('vavavavav.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_feerecord_id_seq', 2, true);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_feestructure_id_seq', 1, true);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_paymenttransaction_fee_records_id_seq', 3, true);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_paymenttransaction_id_seq', 3, true);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_schoolfeesettings_id_seq', 2, true);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.axis_saas_student_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: vv; Owner: axis_admin
--

SELECT pg_catalog.setval('vv.django_migrations_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: axis_saas_feerecord_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_feerecord_id_seq', 1, false);


--
-- Name: axis_saas_feestructure_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_feestructure_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_fee_records_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_paymenttransaction_fee_records_id_seq', 1, false);


--
-- Name: axis_saas_paymenttransaction_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_paymenttransaction_id_seq', 1, false);


--
-- Name: axis_saas_schoolclient_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_schoolclient_id_seq', 1, false);


--
-- Name: axis_saas_schooldomain_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_schooldomain_id_seq', 1, false);


--
-- Name: axis_saas_schoolfeesettings_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_schoolfeesettings_id_seq', 1, false);


--
-- Name: axis_saas_student_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.axis_saas_student_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: y; Owner: axis_admin
--

SELECT pg_catalog.setval('y.django_migrations_id_seq', 21, true);


--
-- PostgreSQL database dump complete
--

\unrestrict jm7Zv8TnRSEuWhVLwf4uiEo9ltb3Bk8sKxQlcuOxKiXShRGRoS3eG3tiwwIRRtq

