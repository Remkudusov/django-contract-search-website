PGDMP     1    
                y            TMPK    13.2    13.2 ?    ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    19745    TMPK    DATABASE     c   CREATE DATABASE "TMPK" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "TMPK";
                rem_dev    false            ?            1259    19777 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    19775    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    19787    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    19785    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    19769    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    19767    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    19795 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    19805    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    19803    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    19793    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    19813    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    19811 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    19916    contracts_address    TABLE     ?   CREATE TABLE public.contracts_address (
    id bigint NOT NULL,
    city character varying(100) NOT NULL,
    street character varying(100) NOT NULL,
    home integer NOT NULL,
    flat integer NOT NULL
);
 %   DROP TABLE public.contracts_address;
       public         heap    postgres    false            ?            1259    19914    contracts_address_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contracts_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.contracts_address_id_seq;
       public          postgres    false    220            ?           0    0    contracts_address_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.contracts_address_id_seq OWNED BY public.contracts_address.id;
          public          postgres    false    219            ?            1259    19922    contracts_contract    TABLE     <  CREATE TABLE public.contracts_contract (
    number character varying(10) NOT NULL,
    surname character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    patronymic character varying(50) NOT NULL,
    individual boolean NOT NULL,
    address_id bigint,
    rate_id bigint,
    status_id bigint
);
 &   DROP TABLE public.contracts_contract;
       public         heap    postgres    false            ?            1259    19956    contracts_money_admission    TABLE     ?   CREATE TABLE public.contracts_money_admission (
    id bigint NOT NULL,
    sum double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    contract_id character varying(10)
);
 -   DROP TABLE public.contracts_money_admission;
       public         heap    postgres    false            ?            1259    19954     contracts_money_admission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contracts_money_admission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.contracts_money_admission_id_seq;
       public          postgres    false    229            ?           0    0     contracts_money_admission_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.contracts_money_admission_id_seq OWNED BY public.contracts_money_admission.id;
          public          postgres    false    228            ?            1259    19929    contracts_rate    TABLE     ?   CREATE TABLE public.contracts_rate (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    price double precision NOT NULL,
    begin_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.contracts_rate;
       public         heap    postgres    false            ?            1259    19948    contracts_rate_accruals    TABLE     ?   CREATE TABLE public.contracts_rate_accruals (
    id bigint NOT NULL,
    sum double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    rate_id bigint
);
 +   DROP TABLE public.contracts_rate_accruals;
       public         heap    postgres    false            ?            1259    19946    contracts_rate_accruals_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contracts_rate_accruals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.contracts_rate_accruals_id_seq;
       public          postgres    false    227            ?           0    0    contracts_rate_accruals_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.contracts_rate_accruals_id_seq OWNED BY public.contracts_rate_accruals.id;
          public          postgres    false    226            ?            1259    19927    contracts_rate_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.contracts_rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.contracts_rate_id_seq;
       public          postgres    false    223            ?           0    0    contracts_rate_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.contracts_rate_id_seq OWNED BY public.contracts_rate.id;
          public          postgres    false    222            ?            1259    19937    contracts_status    TABLE     ?   CREATE TABLE public.contracts_status (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500) NOT NULL
);
 $   DROP TABLE public.contracts_status;
       public         heap    postgres    false            ?            1259    19935    contracts_status_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contracts_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contracts_status_id_seq;
       public          postgres    false    225            ?           0    0    contracts_status_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contracts_status_id_seq OWNED BY public.contracts_status.id;
          public          postgres    false    224            ?            1259    19873    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    19871    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    19759    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    19757    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    19748    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    19746    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    19904    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?           2604    19780    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    19790    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    19772    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?           2604    19798    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?           2604    19808    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    19816    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    19919    contracts_address id    DEFAULT     |   ALTER TABLE ONLY public.contracts_address ALTER COLUMN id SET DEFAULT nextval('public.contracts_address_id_seq'::regclass);
 C   ALTER TABLE public.contracts_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    19959    contracts_money_admission id    DEFAULT     ?   ALTER TABLE ONLY public.contracts_money_admission ALTER COLUMN id SET DEFAULT nextval('public.contracts_money_admission_id_seq'::regclass);
 K   ALTER TABLE public.contracts_money_admission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            ?           2604    19932    contracts_rate id    DEFAULT     v   ALTER TABLE ONLY public.contracts_rate ALTER COLUMN id SET DEFAULT nextval('public.contracts_rate_id_seq'::regclass);
 @   ALTER TABLE public.contracts_rate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    19951    contracts_rate_accruals id    DEFAULT     ?   ALTER TABLE ONLY public.contracts_rate_accruals ALTER COLUMN id SET DEFAULT nextval('public.contracts_rate_accruals_id_seq'::regclass);
 I   ALTER TABLE public.contracts_rate_accruals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            ?           2604    19940    contracts_status id    DEFAULT     z   ALTER TABLE ONLY public.contracts_status ALTER COLUMN id SET DEFAULT nextval('public.contracts_status_id_seq'::regclass);
 B   ALTER TABLE public.contracts_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ?           2604    19876    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ~           2604    19762    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            }           2604    19751    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            e          0    19777 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   K?       g          0    19787    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   h?       c          0    19769    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ??       i          0    19795 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   |?       k          0    19805    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   =?       m          0    19813    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   Z?       r          0    19916    contracts_address 
   TABLE DATA           I   COPY public.contracts_address (id, city, street, home, flat) FROM stdin;
    public          postgres    false    220   w?       s          0    19922    contracts_contract 
   TABLE DATA           {   COPY public.contracts_contract (number, surname, name, patronymic, individual, address_id, rate_id, status_id) FROM stdin;
    public          postgres    false    221   ??       {          0    19956    contracts_money_admission 
   TABLE DATA           O   COPY public.contracts_money_admission (id, sum, date, contract_id) FROM stdin;
    public          postgres    false    229   ??       u          0    19929    contracts_rate 
   TABLE DATA           O   COPY public.contracts_rate (id, name, price, begin_date, end_date) FROM stdin;
    public          postgres    false    223   =?       y          0    19948    contracts_rate_accruals 
   TABLE DATA           I   COPY public.contracts_rate_accruals (id, sum, date, rate_id) FROM stdin;
    public          postgres    false    227   ??       w          0    19937    contracts_status 
   TABLE DATA           A   COPY public.contracts_status (id, name, description) FROM stdin;
    public          postgres    false    225   ?       o          0    19873    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ??       a          0    19759    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ??       _          0    19748    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   }?       p          0    19904    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   Q?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    204            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    210            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    contracts_address_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contracts_address_id_seq', 3, true);
          public          postgres    false    219            ?           0    0     contracts_money_admission_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.contracts_money_admission_id_seq', 10, true);
          public          postgres    false    228            ?           0    0    contracts_rate_accruals_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.contracts_rate_accruals_id_seq', 2, true);
          public          postgres    false    226            ?           0    0    contracts_rate_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.contracts_rate_id_seq', 3, true);
          public          postgres    false    222            ?           0    0    contracts_status_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contracts_status_id_seq', 2, true);
          public          postgres    false    224            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 23, true);
          public          postgres    false    216            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    200            ?           2606    19902    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    19829 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    19792 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    19782    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    19820 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    19774 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    19810 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    19844 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    19800    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    19818 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    19858 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    19896     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    19921 (   contracts_address contracts_address_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.contracts_address
    ADD CONSTRAINT contracts_address_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.contracts_address DROP CONSTRAINT contracts_address_pkey;
       public            postgres    false    220            ?           2606    19926 *   contracts_contract contracts_contract_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contracts_contract
    ADD CONSTRAINT contracts_contract_pkey PRIMARY KEY (number);
 T   ALTER TABLE ONLY public.contracts_contract DROP CONSTRAINT contracts_contract_pkey;
       public            postgres    false    221            ?           2606    19961 8   contracts_money_admission contracts_money_admission_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.contracts_money_admission
    ADD CONSTRAINT contracts_money_admission_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.contracts_money_admission DROP CONSTRAINT contracts_money_admission_pkey;
       public            postgres    false    229            ?           2606    19953 4   contracts_rate_accruals contracts_rate_accruals_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.contracts_rate_accruals
    ADD CONSTRAINT contracts_rate_accruals_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.contracts_rate_accruals DROP CONSTRAINT contracts_rate_accruals_pkey;
       public            postgres    false    227            ?           2606    19934 "   contracts_rate contracts_rate_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.contracts_rate
    ADD CONSTRAINT contracts_rate_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.contracts_rate DROP CONSTRAINT contracts_rate_pkey;
       public            postgres    false    223            ?           2606    19945 &   contracts_status contracts_status_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contracts_status
    ADD CONSTRAINT contracts_status_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contracts_status DROP CONSTRAINT contracts_status_pkey;
       public            postgres    false    225            ?           2606    19882 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    19766 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    19764 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    19756 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    19911 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           1259    19903    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    19840 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    19841 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    19826 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    19856 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    19855 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    19870 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    19869 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    19897     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    19978 &   contracts_contract_address_id_d6d98458    INDEX     k   CREATE INDEX contracts_contract_address_id_d6d98458 ON public.contracts_contract USING btree (address_id);
 :   DROP INDEX public.contracts_contract_address_id_d6d98458;
       public            postgres    false    221            ?           1259    19977 '   contracts_contract_number_c16b99fb_like    INDEX     |   CREATE INDEX contracts_contract_number_c16b99fb_like ON public.contracts_contract USING btree (number varchar_pattern_ops);
 ;   DROP INDEX public.contracts_contract_number_c16b99fb_like;
       public            postgres    false    221            ?           1259    19992 #   contracts_contract_rate_id_56456fa2    INDEX     e   CREATE INDEX contracts_contract_rate_id_56456fa2 ON public.contracts_contract USING btree (rate_id);
 7   DROP INDEX public.contracts_contract_rate_id_56456fa2;
       public            postgres    false    221            ?           1259    19993 %   contracts_contract_status_id_2c562291    INDEX     i   CREATE INDEX contracts_contract_status_id_2c562291 ON public.contracts_contract USING btree (status_id);
 9   DROP INDEX public.contracts_contract_status_id_2c562291;
       public            postgres    false    221            ?           1259    19990 .   contracts_money_admission_contract_id_0f6dfe78    INDEX     {   CREATE INDEX contracts_money_admission_contract_id_0f6dfe78 ON public.contracts_money_admission USING btree (contract_id);
 B   DROP INDEX public.contracts_money_admission_contract_id_0f6dfe78;
       public            postgres    false    229            ?           1259    19991 3   contracts_money_admission_contract_id_0f6dfe78_like    INDEX     ?   CREATE INDEX contracts_money_admission_contract_id_0f6dfe78_like ON public.contracts_money_admission USING btree (contract_id varchar_pattern_ops);
 G   DROP INDEX public.contracts_money_admission_contract_id_0f6dfe78_like;
       public            postgres    false    229            ?           1259    19984 (   contracts_rate_accruals_rate_id_0be9dc3f    INDEX     o   CREATE INDEX contracts_rate_accruals_rate_id_0be9dc3f ON public.contracts_rate_accruals USING btree (rate_id);
 <   DROP INDEX public.contracts_rate_accruals_rate_id_0be9dc3f;
       public            postgres    false    227            ?           1259    19893 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    19894 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    19913 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    19912 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            ?           2606    19835 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2966            ?           2606    19830 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    207    2971            ?           2606    19821 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    205    2961            ?           2606    19850 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    2971    207            ?           2606    19845 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2979    213    211            ?           2606    19864 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    205    215    2966            ?           2606    19859 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    2979    211            ?           2606    19972 Q   contracts_contract contracts_contract_address_id_d6d98458_fk_contracts_address_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contracts_contract
    ADD CONSTRAINT contracts_contract_address_id_d6d98458_fk_contracts_address_id FOREIGN KEY (address_id) REFERENCES public.contracts_address(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.contracts_contract DROP CONSTRAINT contracts_contract_address_id_d6d98458_fk_contracts_address_id;
       public          postgres    false    220    3004    221            ?           2606    19962 K   contracts_contract contracts_contract_rate_id_56456fa2_fk_contracts_rate_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contracts_contract
    ADD CONSTRAINT contracts_contract_rate_id_56456fa2_fk_contracts_rate_id FOREIGN KEY (rate_id) REFERENCES public.contracts_rate(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.contracts_contract DROP CONSTRAINT contracts_contract_rate_id_56456fa2_fk_contracts_rate_id;
       public          postgres    false    221    223    3012            ?           2606    19967 O   contracts_contract contracts_contract_status_id_2c562291_fk_contracts_status_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contracts_contract
    ADD CONSTRAINT contracts_contract_status_id_2c562291_fk_contracts_status_id FOREIGN KEY (status_id) REFERENCES public.contracts_status(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.contracts_contract DROP CONSTRAINT contracts_contract_status_id_2c562291_fk_contracts_status_id;
       public          postgres    false    3014    225    221            ?           2606    19985 P   contracts_money_admission contracts_money_admi_contract_id_0f6dfe78_fk_contracts    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contracts_money_admission
    ADD CONSTRAINT contracts_money_admi_contract_id_0f6dfe78_fk_contracts FOREIGN KEY (contract_id) REFERENCES public.contracts_contract(number) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.contracts_money_admission DROP CONSTRAINT contracts_money_admi_contract_id_0f6dfe78_fk_contracts;
       public          postgres    false    229    3008    221            ?           2606    19979 U   contracts_rate_accruals contracts_rate_accruals_rate_id_0be9dc3f_fk_contracts_rate_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contracts_rate_accruals
    ADD CONSTRAINT contracts_rate_accruals_rate_id_0be9dc3f_fk_contracts_rate_id FOREIGN KEY (rate_id) REFERENCES public.contracts_rate(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.contracts_rate_accruals DROP CONSTRAINT contracts_rate_accruals_rate_id_0be9dc3f_fk_contracts_rate_id;
       public          postgres    false    227    223    3012            ?           2606    19883 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    2961            ?           2606    19888 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    211    217    2979            e      x?????? ? ?      g      x?????? ? ?      c   ?  x?m?[n?0E??U??*???ۨ!b??R???????g??G$<>#<?8???E{???Z?>?O?̲>/kZڒ?????^Q??`E???}?`,1X?{?
[???Ï??i??)I?? ?;???b!(?+*??$??8?S? =[??r?>??8??!?R?????d0O~45	?????|?????? px|6????yL'wC?????fO(??NR$?!??Fze<?$_?X3?IW?.YO>N?@?X?R??x&L??1?%Ld?!?J'}??K??+[??3???|3???h3DF	i?dǶ攦?.m??G
J?3?.?%@1??z??? #?i??MCV룭Tڱ????EDڱM??MN??0Of??)7????8#[l@?d3??&R??3314 ???s?u???ΥIE[??ըqI???oK??{=??@Ց?R???????%???????Y???Sxӄwy?S?ƛ>??K??X?t?;?=_??.|~[      i   ?   x?E??
?@ ??St?-??}k??XA? ?G????Jf?O????\?᤼??.U
???ߟ?????]?`???!?ö?????V/?W٩?LKY??t4? ???,?t;&??? ?8(
GA?+??!/?L
B~?yוyO?"?z3EW_???8**?H?~?L-????3?      k      x?????? ? ?      m      x?????? ? ?      r   o   x?]ͽ	?0??2????8???? ???+?@,3û??????{?Y??v???		?#"荃??<?%kaEz_A???-?"?**JA?}?R?a?9eP?I?ʍ1-MP?      s   ?   x?UN;
?@?w??Ʒ\?b??=?6V?6
&??!H!ќaލ|Ke??̛??c??$;?Z?9ň?.?S??Y???[""?;h??l?>?????Ps?????81????#????C??oТ??Z?&???'??yMm^????????jR      {   ?   x?}?;?@?z}???d??z?B??'?????gl	
Ff???6? ??ꃗ'???Ww'?u)??͕|p&on?5?P\ٝ??J????þnm?W???\???;?k?Kzr?8?^??x??"N?      u   {   x?3??0??ދM?^l??H6q?p???*[ ???1T?M???m??.l???7]?qa????r???L7?n????XM?5uPhÅ?v_?C?łd???qqq ??gB      y   5   x?3?44?4202?50?52U04?20?2??60?4?2Ja???d??b???? q^
?      w   ?   x???M
?0???)ƽz?F+???!??6?
on䋸(?%??7ߛ?7-??]-<Z???'?&Z!????!봤?b?Xh??	)sh?R?Z?^??X򮑄?(o=M?̡<?????????[҈??=?؄~df??~??~??r?{??Q??1???,??1?	?4?      o     x???Mo?0???+??6VI??(݊?wَ?P??tX ????l?"[??< E??Ƃ???n?6:?NZ??	???۱;???ïas\???????????&?_^_6?l)?Hl00?Q??d?]H"#?.?\???8?_RH?FBC ??\҅?X???ҡ?`@Y??]:Tsd?0p??r_w}?Wn?'ʗG?tE(^rk%???HiI???pN\?PR?f 	???w???????T?Ĵ3?z??<?9??]?%?#?8U	]k?C??ϻ?q?%??ҷK???-y?V?%??[??m*c???U?2?Ƞ?}xڴ??????????ed#??N}????v?s???O???n{e?vD?????pgXC??8?e?J`H9E ?m]\ߌ????e,x?)\E???OʪZ??ꪦ??e??ao?D@GT??TQ?_?t?';?>???U??M??,????Ӎj?:jK4?~h?B}???n??Do ?	?7??U??Y?V? ???L      a   ?   x?]?K
?0DמÔ:?ߥ?#?@bI^??u??ћ$yG?2E7???IA?(?ǭ,ˤ:???NFIy?u????B?VkVV?v??)om=[@(?֝?T?g??W????Q#?
??R=? ??ju???ȥ???_?>?(UM      _   ?  x????n? E?????U#f???oY	???H?q1???/P?????d???pfTG73?p??\1?@????
?????????????Kx{??uC??ҧ???#ZBJq???]?g???>???;?O?m?$db?+?_1??1X7??^w????1?d	"?P??^?YTZQ??6?Z?"???????j2~???*Jy5?O՛??_m??XT??_Q?_fжHik?(m??[Jz?r???HF$?????e?zɼ?'[???K???s?B?h?}?????U?vҐ?N?:??Zʇ??I???|???j0???;}????ٴ?@???y?@R???S(?y?A^P?VT??2=??9?oUT0??)*2j???|3?w?4Hu?e?oO?j???j??uS?f???UA??X?N??????????r??~???^I!F("?m?1!??w????w?      p     x???n?@  г|E?f??R??lR҄???"????????????Z??B??cl?T?K_s?? ?t6?6CX?????͒?-?45?8????z???A?????].&j??B~??-n??J?|?j????k?ςL?????.???*X??t?&)?????V??V}K??}?+?9??Ŗa????l???4???lؐPc??????"m???!?Itv???
?????ѵ?Cџ?j`??g (E?D?5??,a?~?? ???^?     