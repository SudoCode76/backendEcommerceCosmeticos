PGDMP  '                
    |            ecommerceCosmeticos    17.2    17.2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    ecommerceCosmeticos    DATABASE     �   CREATE DATABASE "ecommerceCosmeticos" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 %   DROP DATABASE "ecommerceCosmeticos";
                     postgres    false            �            1259    16593    admin_permissions    TABLE     �  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.admin_permissions;
       public         heap r       postgres    false            �            1259    16592    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public               postgres    false    252            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public               postgres    false    251            ,           1259    16864    admin_permissions_role_lnk    TABLE     �   CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 .   DROP TABLE public.admin_permissions_role_lnk;
       public         heap r       postgres    false            +           1259    16863 !   admin_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.admin_permissions_role_lnk_id_seq;
       public               postgres    false    300            �           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;
          public               postgres    false    299                        1259    16617    admin_roles    TABLE     �  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_roles;
       public         heap r       postgres    false            �            1259    16616    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public               postgres    false    256            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public               postgres    false    255            �            1259    16605    admin_users    TABLE     �  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_users;
       public         heap r       postgres    false            �            1259    16604    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public               postgres    false    254            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public               postgres    false    253            .           1259    16876    admin_users_roles_lnk    TABLE     �   CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);
 )   DROP TABLE public.admin_users_roles_lnk;
       public         heap r       postgres    false            -           1259    16875    admin_users_roles_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.admin_users_roles_lnk_id_seq;
       public               postgres    false    302            �           0    0    admin_users_roles_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;
          public               postgres    false    301            �            1259    16543 
   categorias    TABLE     �  CREATE TABLE public.categorias (
    id integer NOT NULL,
    document_id character varying(255),
    categoria_nombre character varying(255),
    descripcion_categoria text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.categorias;
       public         heap r       postgres    false            �            1259    16542    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public               postgres    false    244            �           0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public               postgres    false    243            4           1259    17404    ciudads    TABLE     s  CREATE TABLE public.ciudads (
    id integer NOT NULL,
    document_id character varying(255),
    nombre_ciudad character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.ciudads;
       public         heap r       postgres    false            3           1259    17403    ciudads_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ciudads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ciudads_id_seq;
       public               postgres    false    308            �           0    0    ciudads_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ciudads_id_seq OWNED BY public.ciudads.id;
          public               postgres    false    307                       1259    16711    components_shared_media    TABLE     I   CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);
 +   DROP TABLE public.components_shared_media;
       public         heap r       postgres    false                       1259    16710    components_shared_media_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_shared_media_id_seq;
       public               postgres    false    274            �           0    0    components_shared_media_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;
          public               postgres    false    273                       1259    16702    components_shared_quotes    TABLE     {   CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);
 ,   DROP TABLE public.components_shared_quotes;
       public         heap r       postgres    false                       1259    16701    components_shared_quotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_shared_quotes_id_seq;
       public               postgres    false    272            �           0    0    components_shared_quotes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;
          public               postgres    false    271                       1259    16693    components_shared_rich_texts    TABLE     ]   CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);
 0   DROP TABLE public.components_shared_rich_texts;
       public         heap r       postgres    false                       1259    16692 #   components_shared_rich_texts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_shared_rich_texts_id_seq;
       public               postgres    false    270            �           0    0 #   components_shared_rich_texts_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;
          public               postgres    false    269                       1259    16684    components_shared_seos    TABLE     �   CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 *   DROP TABLE public.components_shared_seos;
       public         heap r       postgres    false                       1259    16683    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public               postgres    false    268            �           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public               postgres    false    267            
           1259    16677    components_shared_sliders    TABLE     K   CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);
 -   DROP TABLE public.components_shared_sliders;
       public         heap r       postgres    false            	           1259    16676     components_shared_sliders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_shared_sliders_id_seq;
       public               postgres    false    266            �           0    0     components_shared_sliders_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;
          public               postgres    false    265            �            1259    16413    files    TABLE       CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.files;
       public         heap r       postgres    false                       1259    16758    files_folder_lnk    TABLE     �   CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);
 $   DROP TABLE public.files_folder_lnk;
       public         heap r       postgres    false                       1259    16757    files_folder_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.files_folder_lnk_id_seq;
       public               postgres    false    284            �           0    0    files_folder_lnk_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;
          public               postgres    false    283            �            1259    16412    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public               postgres    false    224            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public               postgres    false    223                       1259    16746    files_related_mph    TABLE     �   CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 %   DROP TABLE public.files_related_mph;
       public         heap r       postgres    false                       1259    16745    files_related_mph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.files_related_mph_id_seq;
       public               postgres    false    282            �           0    0    files_related_mph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;
          public               postgres    false    281            �            1259    16569    globals    TABLE     �  CREATE TABLE public.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.globals;
       public         heap r       postgres    false            �            1259    16555    globals_cmps    TABLE     �   CREATE TABLE public.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
     DROP TABLE public.globals_cmps;
       public         heap r       postgres    false            �            1259    16554    globals_cmps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.globals_cmps_id_seq;
       public               postgres    false    246            �           0    0    globals_cmps_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.globals_cmps_id_seq OWNED BY public.globals_cmps.id;
          public               postgres    false    245            �            1259    16568    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public               postgres    false    248            �           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public               postgres    false    247            �            1259    16447    i18n_locale    TABLE     �  CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.i18n_locale;
       public         heap r       postgres    false            �            1259    16446    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public               postgres    false    228            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public               postgres    false    227            �            1259    16581 	   productos    TABLE       CREATE TABLE public.productos (
    id integer NOT NULL,
    document_id character varying(255),
    producto_nombre character varying(255),
    slug character varying(255),
    descripcion text,
    active boolean,
    precio numeric(10,2),
    is_featured boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    categoria_id integer
);
    DROP TABLE public.productos;
       public         heap r       postgres    false            6           1259    17595    productos_categoria_lnk    TABLE     |   CREATE TABLE public.productos_categoria_lnk (
    id integer NOT NULL,
    producto_id integer,
    categoria_id integer
);
 +   DROP TABLE public.productos_categoria_lnk;
       public         heap r       postgres    false            5           1259    17594    productos_categoria_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_categoria_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.productos_categoria_lnk_id_seq;
       public               postgres    false    310            �           0    0    productos_categoria_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.productos_categoria_lnk_id_seq OWNED BY public.productos_categoria_lnk.id;
          public               postgres    false    309            �            1259    16580    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public               postgres    false    250            �           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public               postgres    false    249                       1259    16641    strapi_api_token_permissions    TABLE     �  CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap r       postgres    false                       1259    16640 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public               postgres    false    260            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public               postgres    false    259            0           1259    16889 &   strapi_api_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);
 :   DROP TABLE public.strapi_api_token_permissions_token_lnk;
       public         heap r       postgres    false            /           1259    16888 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq;
       public               postgres    false    304            �           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;
          public               postgres    false    303                       1259    16629    strapi_api_tokens    TABLE     Y  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap r       postgres    false                       1259    16628    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public               postgres    false    258            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public               postgres    false    257                       1259    16718    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap r       postgres    false                       1259    16717 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public               postgres    false    276            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public               postgres    false    275            �            1259    16404    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap r       postgres    false            �            1259    16403    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public               postgres    false    222            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public               postgres    false    221                       1259    16736    strapi_history_versions    TABLE     ]  CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);
 +   DROP TABLE public.strapi_history_versions;
       public         heap r       postgres    false                       1259    16735    strapi_history_versions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_history_versions_id_seq;
       public               postgres    false    280            �           0    0    strapi_history_versions_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;
          public               postgres    false    279            �            1259    16390    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap r       postgres    false            �            1259    16389    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public               postgres    false    218            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public               postgres    false    217            �            1259    16397    strapi_migrations_internal    TABLE     �   CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 .   DROP TABLE public.strapi_migrations_internal;
       public         heap r       postgres    false            �            1259    16396 !   strapi_migrations_internal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_migrations_internal_id_seq;
       public               postgres    false    220            �           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;
          public               postgres    false    219            �            1259    16471    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap r       postgres    false            �            1259    16470    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public               postgres    false    232            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public               postgres    false    231                        1259    16782 "   strapi_release_actions_release_lnk    TABLE     �   CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);
 6   DROP TABLE public.strapi_release_actions_release_lnk;
       public         heap r       postgres    false                       1259    16781 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.strapi_release_actions_release_lnk_id_seq;
       public               postgres    false    288            �           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;
          public               postgres    false    287            �            1259    16459    strapi_releases    TABLE       CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 #   DROP TABLE public.strapi_releases;
       public         heap r       postgres    false            �            1259    16458    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public               postgres    false    230            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public               postgres    false    229                       1259    16665 !   strapi_transfer_token_permissions    TABLE     �  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap r       postgres    false                       1259    16664 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public               postgres    false    264            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public               postgres    false    263            2           1259    16901 +   strapi_transfer_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);
 ?   DROP TABLE public.strapi_transfer_token_permissions_token_lnk;
       public         heap r       postgres    false            1           1259    16900 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq;
       public               postgres    false    306            �           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;
          public               postgres    false    305                       1259    16653    strapi_transfer_tokens    TABLE     =  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap r       postgres    false                       1259    16652    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public               postgres    false    262            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public               postgres    false    261                       1259    16727    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap r       postgres    false                       1259    16726    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public               postgres    false    278            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public               postgres    false    277            �            1259    16483    strapi_workflows    TABLE     �  CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.strapi_workflows;
       public         heap r       postgres    false            �            1259    16482    strapi_workflows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.strapi_workflows_id_seq;
       public               postgres    false    234            �           0    0    strapi_workflows_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;
          public               postgres    false    233            "           1259    16794 .   strapi_workflows_stage_required_to_publish_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);
 B   DROP TABLE public.strapi_workflows_stage_required_to_publish_lnk;
       public         heap r       postgres    false            !           1259    16793 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq;
       public               postgres    false    290            �           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;
          public               postgres    false    289            �            1259    16495    strapi_workflows_stages    TABLE     �  CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 +   DROP TABLE public.strapi_workflows_stages;
       public         heap r       postgres    false            �            1259    16494    strapi_workflows_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_workflows_stages_id_seq;
       public               postgres    false    236            �           0    0    strapi_workflows_stages_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;
          public               postgres    false    235            &           1259    16817 '   strapi_workflows_stages_permissions_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);
 ;   DROP TABLE public.strapi_workflows_stages_permissions_lnk;
       public         heap r       postgres    false            %           1259    16816 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq;
       public               postgres    false    294            �           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;
          public               postgres    false    293            $           1259    16805 $   strapi_workflows_stages_workflow_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);
 8   DROP TABLE public.strapi_workflows_stages_workflow_lnk;
       public         heap r       postgres    false            #           1259    16804 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq;
       public               postgres    false    292            �           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;
          public               postgres    false    291            �            1259    16507    up_permissions    TABLE     s  CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.up_permissions;
       public         heap r       postgres    false            �            1259    16506    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public               postgres    false    238            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public               postgres    false    237            (           1259    16829    up_permissions_role_lnk    TABLE     �   CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 +   DROP TABLE public.up_permissions_role_lnk;
       public         heap r       postgres    false            '           1259    16828    up_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.up_permissions_role_lnk_id_seq;
       public               postgres    false    296            �           0    0    up_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;
          public               postgres    false    295            �            1259    16519    up_roles    TABLE     �  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_roles;
       public         heap r       postgres    false            �            1259    16518    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public               postgres    false    240            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public               postgres    false    239            �            1259    16531    up_users    TABLE     g  CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_users;
       public         heap r       postgres    false            �            1259    16530    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public               postgres    false    242            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public               postgres    false    241            *           1259    16841    up_users_role_lnk    TABLE     �   CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);
 %   DROP TABLE public.up_users_role_lnk;
       public         heap r       postgres    false            )           1259    16840    up_users_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.up_users_role_lnk_id_seq;
       public               postgres    false    298            �           0    0    up_users_role_lnk_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;
          public               postgres    false    297            �            1259    16431    upload_folders    TABLE     �  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.upload_folders;
       public         heap r       postgres    false            �            1259    16430    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public               postgres    false    226            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public               postgres    false    225                       1259    16770    upload_folders_parent_lnk    TABLE     �   CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);
 -   DROP TABLE public.upload_folders_parent_lnk;
       public         heap r       postgres    false                       1259    16769     upload_folders_parent_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.upload_folders_parent_lnk_id_seq;
       public               postgres    false    286            �           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;
          public               postgres    false    285            N           2604    16596    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    251    252    252            f           2604    16867    admin_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);
 L   ALTER TABLE public.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    299    300    300            P           2604    16620    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    256    255    256            O           2604    16608    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    253    254    254            g           2604    16879    admin_users_roles_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);
 G   ALTER TABLE public.admin_users_roles_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    301    302    302            J           2604    16546    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    244    243    244            j           2604    17407 
   ciudads id    DEFAULT     h   ALTER TABLE ONLY public.ciudads ALTER COLUMN id SET DEFAULT nextval('public.ciudads_id_seq'::regclass);
 9   ALTER TABLE public.ciudads ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    308    307    308            Y           2604    16714    components_shared_media id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);
 I   ALTER TABLE public.components_shared_media ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    273    274    274            X           2604    16705    components_shared_quotes id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);
 J   ALTER TABLE public.components_shared_quotes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    271    272    272            W           2604    16696    components_shared_rich_texts id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);
 N   ALTER TABLE public.components_shared_rich_texts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    270    269    270            V           2604    16687    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    267    268    268            U           2604    16680    components_shared_sliders id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);
 K   ALTER TABLE public.components_shared_sliders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    265    266    266            @           2604    16416    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            ^           2604    16761    files_folder_lnk id    DEFAULT     z   ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);
 B   ALTER TABLE public.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    283    284    284            ]           2604    16749    files_related_mph id    DEFAULT     |   ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);
 C   ALTER TABLE public.files_related_mph ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    281    282    282            L           2604    16572 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    247    248    248            K           2604    16558    globals_cmps id    DEFAULT     r   ALTER TABLE ONLY public.globals_cmps ALTER COLUMN id SET DEFAULT nextval('public.globals_cmps_id_seq'::regclass);
 >   ALTER TABLE public.globals_cmps ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    245    246    246            B           2604    16450    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228            M           2604    16584    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    250    249    250            k           2604    17598    productos_categoria_lnk id    DEFAULT     �   ALTER TABLE ONLY public.productos_categoria_lnk ALTER COLUMN id SET DEFAULT nextval('public.productos_categoria_lnk_id_seq'::regclass);
 I   ALTER TABLE public.productos_categoria_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    309    310    310            R           2604    16644    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    260    259    260            h           2604    16892 )   strapi_api_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);
 X   ALTER TABLE public.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    304    303    304            Q           2604    16632    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    258    257    258            Z           2604    16721    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    275    276    276            ?           2604    16407    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            \           2604    16739    strapi_history_versions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);
 I   ALTER TABLE public.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    279    280    280            =           2604    16393    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            >           2604    16400    strapi_migrations_internal id    DEFAULT     �   ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);
 L   ALTER TABLE public.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            D           2604    16474    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    231    232            `           2604    16785 %   strapi_release_actions_release_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);
 T   ALTER TABLE public.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    287    288    288            C           2604    16462    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            T           2604    16668 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    263    264    264            i           2604    16904 .   strapi_transfer_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);
 ]   ALTER TABLE public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    306    305    306            S           2604    16656    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    261    262    262            [           2604    16730    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    277    278    278            E           2604    16486    strapi_workflows id    DEFAULT     z   ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);
 B   ALTER TABLE public.strapi_workflows ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233    234            a           2604    16797 1   strapi_workflows_stage_required_to_publish_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);
 `   ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    290    289    290            F           2604    16498    strapi_workflows_stages id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);
 I   ALTER TABLE public.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    236    236            c           2604    16820 *   strapi_workflows_stages_permissions_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);
 Y   ALTER TABLE public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    294    293    294            b           2604    16808 '   strapi_workflows_stages_workflow_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);
 V   ALTER TABLE public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    292    291    292            G           2604    16510    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    238    237    238            d           2604    16832    up_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);
 I   ALTER TABLE public.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    296    295    296            H           2604    16522    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    239    240            I           2604    16534    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    242    241    242            e           2604    16844    up_users_role_lnk id    DEFAULT     |   ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);
 C   ALTER TABLE public.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    298    297    298            A           2604    16434    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            _           2604    16773    upload_folders_parent_lnk id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);
 K   ALTER TABLE public.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    285    286    286            X          0    16593    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    252   ��      �          0    16864    admin_permissions_role_lnk 
   TABLE DATA           `   COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public               postgres    false    300   V      \          0    16617    admin_roles 
   TABLE DATA           �   COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    256   �      Z          0    16605    admin_users 
   TABLE DATA             COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    254   �	      �          0    16876    admin_users_roles_lnk 
   TABLE DATA           Y   COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
    public               postgres    false    302   �
      P          0    16543 
   categorias 
   TABLE DATA           �   COPY public.categorias (id, document_id, categoria_nombre, descripcion_categoria, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    244   �
      �          0    17404    ciudads 
   TABLE DATA           �   COPY public.ciudads (id, document_id, nombre_ciudad, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    308   �      n          0    16711    components_shared_media 
   TABLE DATA           5   COPY public.components_shared_media (id) FROM stdin;
    public               postgres    false    274   �      l          0    16702    components_shared_quotes 
   TABLE DATA           C   COPY public.components_shared_quotes (id, title, body) FROM stdin;
    public               postgres    false    272   �      j          0    16693    components_shared_rich_texts 
   TABLE DATA           @   COPY public.components_shared_rich_texts (id, body) FROM stdin;
    public               postgres    false    270   �      h          0    16684    components_shared_seos 
   TABLE DATA           R   COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
    public               postgres    false    268   �      f          0    16677    components_shared_sliders 
   TABLE DATA           7   COPY public.components_shared_sliders (id) FROM stdin;
    public               postgres    false    266   �      <          0    16413    files 
   TABLE DATA             COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    224         x          0    16758    files_folder_lnk 
   TABLE DATA           L   COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
    public               postgres    false    284   �      v          0    16746    files_related_mph 
   TABLE DATA           b   COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public               postgres    false    282         T          0    16569    globals 
   TABLE DATA           �   COPY public.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    248   �      R          0    16555    globals_cmps 
   TABLE DATA           ]   COPY public.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    public               postgres    false    246   �      @          0    16447    i18n_locale 
   TABLE DATA           �   COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    228         V          0    16581 	   productos 
   TABLE DATA           �   COPY public.productos (id, document_id, producto_nombre, slug, descripcion, active, precio, is_featured, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, categoria_id) FROM stdin;
    public               postgres    false    250   n      �          0    17595    productos_categoria_lnk 
   TABLE DATA           P   COPY public.productos_categoria_lnk (id, producto_id, categoria_id) FROM stdin;
    public               postgres    false    310   �      `          0    16641    strapi_api_token_permissions 
   TABLE DATA           �   COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    260   �      �          0    16889 &   strapi_api_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
    public               postgres    false    304   �      ^          0    16629    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    258         p          0    16718    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public               postgres    false    276   3      :          0    16404    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public               postgres    false    222   �=      t          0    16736    strapi_history_versions 
   TABLE DATA           �   COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
    public               postgres    false    280   XJ      6          0    16390    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public               postgres    false    218   uJ      8          0    16397    strapi_migrations_internal 
   TABLE DATA           F   COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
    public               postgres    false    220   �J      D          0    16471    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public               postgres    false    232   VK      |          0    16782 "   strapi_release_actions_release_lnk 
   TABLE DATA           s   COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
    public               postgres    false    288   sK      B          0    16459    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    230   �K      d          0    16665 !   strapi_transfer_token_permissions 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    264   �K      �          0    16901 +   strapi_transfer_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
    public               postgres    false    306   �K      b          0    16653    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    262   �K      r          0    16727    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public               postgres    false    278   L      F          0    16483    strapi_workflows 
   TABLE DATA           �   COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    234   !L      ~          0    16794 .   strapi_workflows_stage_required_to_publish_lnk 
   TABLE DATA           l   COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
    public               postgres    false    290   >L      H          0    16495    strapi_workflows_stages 
   TABLE DATA           �   COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    236   [L      �          0    16817 '   strapi_workflows_stages_permissions_lnk 
   TABLE DATA           w   COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
    public               postgres    false    294   xL      �          0    16805 $   strapi_workflows_stages_workflow_lnk 
   TABLE DATA           v   COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
    public               postgres    false    292   �L      J          0    16507    up_permissions 
   TABLE DATA           �   COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    238   �L      �          0    16829    up_permissions_role_lnk 
   TABLE DATA           ]   COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public               postgres    false    296   O      L          0    16519    up_roles 
   TABLE DATA           �   COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    240   eO      N          0    16531    up_users 
   TABLE DATA           �   COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    242   $P      �          0    16841    up_users_role_lnk 
   TABLE DATA           K   COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
    public               postgres    false    298   AP      >          0    16431    upload_folders 
   TABLE DATA           �   COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               postgres    false    226   ^P      z          0    16770    upload_folders_parent_lnk 
   TABLE DATA           ]   COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
    public               postgres    false    286   �P      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 218, true);
          public               postgres    false    251            �           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 218, true);
          public               postgres    false    299            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public               postgres    false    255            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public               postgres    false    253            �           0    0    admin_users_roles_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);
          public               postgres    false    301            �           0    0    categorias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categorias_id_seq', 14, true);
          public               postgres    false    243            �           0    0    ciudads_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ciudads_id_seq', 4, true);
          public               postgres    false    307            �           0    0    components_shared_media_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_shared_media_id_seq', 1, false);
          public               postgres    false    273            �           0    0    components_shared_quotes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 1, false);
          public               postgres    false    271            �           0    0 #   components_shared_rich_texts_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 1, false);
          public               postgres    false    269            �           0    0    components_shared_seos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);
          public               postgres    false    267            �           0    0     components_shared_sliders_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 1, false);
          public               postgres    false    265            �           0    0    files_folder_lnk_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 2, true);
          public               postgres    false    283            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 10, true);
          public               postgres    false    223            �           0    0    files_related_mph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.files_related_mph_id_seq', 76, true);
          public               postgres    false    281            �           0    0    globals_cmps_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.globals_cmps_id_seq', 1, false);
          public               postgres    false    245            �           0    0    globals_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.globals_id_seq', 1, false);
          public               postgres    false    247            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public               postgres    false    227            �           0    0    productos_categoria_lnk_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.productos_categoria_lnk_id_seq', 15, true);
          public               postgres    false    309            �           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 32, true);
          public               postgres    false    249            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public               postgres    false    259            �           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);
          public               postgres    false    303            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public               postgres    false    257            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 36, true);
          public               postgres    false    275            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 31, true);
          public               postgres    false    221            �           0    0    strapi_history_versions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);
          public               postgres    false    279            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public               postgres    false    217            �           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);
          public               postgres    false    219            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public               postgres    false    231            �           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);
          public               postgres    false    287            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public               postgres    false    229            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public               postgres    false    263            �           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);
          public               postgres    false    305            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public               postgres    false    261            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public               postgres    false    277            �           0    0    strapi_workflows_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);
          public               postgres    false    233            �           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);
          public               postgres    false    289            �           0    0    strapi_workflows_stages_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);
          public               postgres    false    235            �           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);
          public               postgres    false    293            �           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);
          public               postgres    false    291            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 15, true);
          public               postgres    false    237            �           0    0    up_permissions_role_lnk_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 15, true);
          public               postgres    false    295            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public               postgres    false    239            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public               postgres    false    241            �           0    0    up_users_role_lnk_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);
          public               postgres    false    297            �           0    0    upload_folders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.upload_folders_id_seq', 2, true);
          public               postgres    false    225            �           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, true);
          public               postgres    false    285            �           2606    16600 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public                 postgres    false    252            8           2606    16869 :   admin_permissions_role_lnk admin_permissions_role_lnk_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_pkey;
       public                 postgres    false    300            :           2606    16873 8   admin_permissions_role_lnk admin_permissions_role_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_uq;
       public                 postgres    false    300    300            �           2606    16624    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public                 postgres    false    256            �           2606    16612    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public                 postgres    false    254            @           2606    16881 0   admin_users_roles_lnk admin_users_roles_lnk_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_pkey;
       public                 postgres    false    302            B           2606    16885 .   admin_users_roles_lnk admin_users_roles_lnk_uq 
   CONSTRAINT     u   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_uq;
       public                 postgres    false    302    302            �           2606    16550    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public                 postgres    false    244            T           2606    17411    ciudads ciudads_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ciudads
    ADD CONSTRAINT ciudads_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ciudads DROP CONSTRAINT ciudads_pkey;
       public                 postgres    false    308            �           2606    16716 4   components_shared_media components_shared_media_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_shared_media DROP CONSTRAINT components_shared_media_pkey;
       public                 postgres    false    274            �           2606    16709 6   components_shared_quotes components_shared_quotes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_shared_quotes DROP CONSTRAINT components_shared_quotes_pkey;
       public                 postgres    false    272            �           2606    16700 >   components_shared_rich_texts components_shared_rich_texts_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_shared_rich_texts DROP CONSTRAINT components_shared_rich_texts_pkey;
       public                 postgres    false    270            �           2606    16691 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public                 postgres    false    268            �           2606    16682 8   components_shared_sliders components_shared_sliders_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_shared_sliders DROP CONSTRAINT components_shared_sliders_pkey;
       public                 postgres    false    266                       2606    16763 &   files_folder_lnk files_folder_lnk_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_pkey;
       public                 postgres    false    284                       2606    16767 $   files_folder_lnk files_folder_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_uq;
       public                 postgres    false    284    284            u           2606    16420    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public                 postgres    false    224            �           2606    16753 (   files_related_mph files_related_mph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_pkey;
       public                 postgres    false    282            �           2606    16562    globals_cmps globals_cmps_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.globals_cmps DROP CONSTRAINT globals_cmps_pkey;
       public                 postgres    false    246            �           2606    16576    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public                 postgres    false    248            �           2606    16567    globals_cmps globals_uq 
   CONSTRAINT     v   ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);
 A   ALTER TABLE ONLY public.globals_cmps DROP CONSTRAINT globals_uq;
       public                 postgres    false    246    246    246    246            �           2606    16454    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public                 postgres    false    228            Y           2606    17600 4   productos_categoria_lnk productos_categoria_lnk_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.productos_categoria_lnk
    ADD CONSTRAINT productos_categoria_lnk_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.productos_categoria_lnk DROP CONSTRAINT productos_categoria_lnk_pkey;
       public                 postgres    false    310            [           2606    17604 2   productos_categoria_lnk productos_categoria_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.productos_categoria_lnk
    ADD CONSTRAINT productos_categoria_lnk_uq UNIQUE (producto_id, categoria_id);
 \   ALTER TABLE ONLY public.productos_categoria_lnk DROP CONSTRAINT productos_categoria_lnk_uq;
       public                 postgres    false    310    310            �           2606    16588    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public                 postgres    false    250            �           2606    16648 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public                 postgres    false    260            G           2606    16894 R   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_pkey;
       public                 postgres    false    304            I           2606    16898 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_uq;
       public                 postgres    false    304    304            �           2606    16636 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public                 postgres    false    258            �           2606    16725 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public                 postgres    false    276            q           2606    16411 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public                 postgres    false    222            �           2606    16743 4   strapi_history_versions strapi_history_versions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_pkey;
       public                 postgres    false    280            o           2606    16402 :   strapi_migrations_internal strapi_migrations_internal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_migrations_internal DROP CONSTRAINT strapi_migrations_internal_pkey;
       public                 postgres    false    220            m           2606    16395 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public                 postgres    false    218            �           2606    16478 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public                 postgres    false    232                       2606    16787 J   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_pkey;
       public                 postgres    false    288                       2606    16791 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_uq;
       public                 postgres    false    288    288            �           2606    16466 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public                 postgres    false    230            �           2606    16672 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public                 postgres    false    264            N           2606    16906 \   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey;
       public                 postgres    false    306            P           2606    16910 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq;
       public                 postgres    false    306    306            �           2606    16660 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public                 postgres    false    262            �           2606    16734 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public                 postgres    false    278            �           2606    16490 &   strapi_workflows strapi_workflows_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_pkey;
       public                 postgres    false    234                       2606    16799 b   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey;
       public                 postgres    false    290                       2606    16803 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq;
       public                 postgres    false    290    290            #           2606    16822 T   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey;
       public                 postgres    false    294            %           2606    16826 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_uq;
       public                 postgres    false    294    294            �           2606    16502 4   strapi_workflows_stages strapi_workflows_stages_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_pkey;
       public                 postgres    false    236                       2606    16810 N   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey;
       public                 postgres    false    292                       2606    16814 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_uq;
       public                 postgres    false    292    292            �           2606    16514 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public                 postgres    false    238            *           2606    16834 4   up_permissions_role_lnk up_permissions_role_lnk_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_pkey;
       public                 postgres    false    296            ,           2606    16838 2   up_permissions_role_lnk up_permissions_role_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_uq;
       public                 postgres    false    296    296            �           2606    16526    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public                 postgres    false    240            �           2606    16538    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public                 postgres    false    242            1           2606    16846 (   up_users_role_lnk up_users_role_lnk_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_pkey;
       public                 postgres    false    298            3           2606    16850 &   up_users_role_lnk up_users_role_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_uq;
       public                 postgres    false    298    298                       2606    16775 8   upload_folders_parent_lnk upload_folders_parent_lnk_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_pkey;
       public                 postgres    false    286            
           2606    16779 6   upload_folders_parent_lnk upload_folders_parent_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_uq;
       public                 postgres    false    286    286            �           2606    16440 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public                 postgres    false    226            �           2606    16442 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public                 postgres    false    226            �           2606    16438 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public                 postgres    false    226            �           1259    16602 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public                 postgres    false    252            �           1259    16601    admin_permissions_documents_idx    INDEX     z   CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);
 3   DROP INDEX public.admin_permissions_documents_idx;
       public                 postgres    false    252    252    252            4           1259    16870    admin_permissions_role_lnk_fk    INDEX     m   CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);
 1   DROP INDEX public.admin_permissions_role_lnk_fk;
       public                 postgres    false    300            5           1259    16871    admin_permissions_role_lnk_ifk    INDEX     h   CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);
 2   DROP INDEX public.admin_permissions_role_lnk_ifk;
       public                 postgres    false    300            6           1259    16874    admin_permissions_role_lnk_oifk    INDEX     p   CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);
 3   DROP INDEX public.admin_permissions_role_lnk_oifk;
       public                 postgres    false    300            �           1259    16603 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public                 postgres    false    252            �           1259    16626    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public                 postgres    false    256            �           1259    16625    admin_roles_documents_idx    INDEX     n   CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_roles_documents_idx;
       public                 postgres    false    256    256    256            �           1259    16627    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public                 postgres    false    256            �           1259    16614    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public                 postgres    false    254            �           1259    16613    admin_users_documents_idx    INDEX     n   CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_users_documents_idx;
       public                 postgres    false    254    254    254            ;           1259    16882    admin_users_roles_lnk_fk    INDEX     ]   CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);
 ,   DROP INDEX public.admin_users_roles_lnk_fk;
       public                 postgres    false    302            <           1259    16883    admin_users_roles_lnk_ifk    INDEX     ^   CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);
 -   DROP INDEX public.admin_users_roles_lnk_ifk;
       public                 postgres    false    302            =           1259    16886    admin_users_roles_lnk_ofk    INDEX     _   CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);
 -   DROP INDEX public.admin_users_roles_lnk_ofk;
       public                 postgres    false    302            >           1259    16887    admin_users_roles_lnk_oifk    INDEX     `   CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);
 .   DROP INDEX public.admin_users_roles_lnk_oifk;
       public                 postgres    false    302            �           1259    16615    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public                 postgres    false    254            �           1259    16552    categorias_created_by_id_fk    INDEX     [   CREATE INDEX categorias_created_by_id_fk ON public.categorias USING btree (created_by_id);
 /   DROP INDEX public.categorias_created_by_id_fk;
       public                 postgres    false    244            �           1259    16551    categorias_documents_idx    INDEX     l   CREATE INDEX categorias_documents_idx ON public.categorias USING btree (document_id, locale, published_at);
 ,   DROP INDEX public.categorias_documents_idx;
       public                 postgres    false    244    244    244            �           1259    16553    categorias_updated_by_id_fk    INDEX     [   CREATE INDEX categorias_updated_by_id_fk ON public.categorias USING btree (updated_by_id);
 /   DROP INDEX public.categorias_updated_by_id_fk;
       public                 postgres    false    244            Q           1259    17413    ciudads_created_by_id_fk    INDEX     U   CREATE INDEX ciudads_created_by_id_fk ON public.ciudads USING btree (created_by_id);
 ,   DROP INDEX public.ciudads_created_by_id_fk;
       public                 postgres    false    308            R           1259    17412    ciudads_documents_idx    INDEX     f   CREATE INDEX ciudads_documents_idx ON public.ciudads USING btree (document_id, locale, published_at);
 )   DROP INDEX public.ciudads_documents_idx;
       public                 postgres    false    308    308    308            U           1259    17414    ciudads_updated_by_id_fk    INDEX     U   CREATE INDEX ciudads_updated_by_id_fk ON public.ciudads USING btree (updated_by_id);
 ,   DROP INDEX public.ciudads_updated_by_id_fk;
       public                 postgres    false    308            r           1259    16428    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public                 postgres    false    224            s           1259    16427    files_documents_idx    INDEX     b   CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);
 '   DROP INDEX public.files_documents_idx;
       public                 postgres    false    224    224    224            �           1259    16764    files_folder_lnk_fk    INDEX     S   CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);
 '   DROP INDEX public.files_folder_lnk_fk;
       public                 postgres    false    284            �           1259    16765    files_folder_lnk_ifk    INDEX     V   CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);
 (   DROP INDEX public.files_folder_lnk_ifk;
       public                 postgres    false    284            �           1259    16768    files_folder_lnk_oifk    INDEX     V   CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);
 )   DROP INDEX public.files_folder_lnk_oifk;
       public                 postgres    false    284            �           1259    16754    files_related_mph_fk    INDEX     U   CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);
 (   DROP INDEX public.files_related_mph_fk;
       public                 postgres    false    282            �           1259    16756    files_related_mph_idix    INDEX     Z   CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);
 *   DROP INDEX public.files_related_mph_idix;
       public                 postgres    false    282            �           1259    16755    files_related_mph_oidx    INDEX     W   CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");
 *   DROP INDEX public.files_related_mph_oidx;
       public                 postgres    false    282            v           1259    16429    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public                 postgres    false    224            �           1259    16564    globals_component_type_idx    INDEX     ]   CREATE INDEX globals_component_type_idx ON public.globals_cmps USING btree (component_type);
 .   DROP INDEX public.globals_component_type_idx;
       public                 postgres    false    246            �           1259    16578    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public                 postgres    false    248            �           1259    16577    globals_documents_idx    INDEX     f   CREATE INDEX globals_documents_idx ON public.globals USING btree (document_id, locale, published_at);
 )   DROP INDEX public.globals_documents_idx;
       public                 postgres    false    248    248    248            �           1259    16565    globals_entity_fk    INDEX     O   CREATE INDEX globals_entity_fk ON public.globals_cmps USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public                 postgres    false    246            �           1259    16563    globals_field_idx    INDEX     K   CREATE INDEX globals_field_idx ON public.globals_cmps USING btree (field);
 %   DROP INDEX public.globals_field_idx;
       public                 postgres    false    246            �           1259    16579    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public                 postgres    false    248            �           1259    16456    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public                 postgres    false    228            �           1259    16455    i18n_locale_documents_idx    INDEX     n   CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);
 -   DROP INDEX public.i18n_locale_documents_idx;
       public                 postgres    false    228    228    228            �           1259    16457    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public                 postgres    false    228            V           1259    17601    productos_categoria_lnk_fk    INDEX     e   CREATE INDEX productos_categoria_lnk_fk ON public.productos_categoria_lnk USING btree (producto_id);
 .   DROP INDEX public.productos_categoria_lnk_fk;
       public                 postgres    false    310            W           1259    17602    productos_categoria_lnk_ifk    INDEX     g   CREATE INDEX productos_categoria_lnk_ifk ON public.productos_categoria_lnk USING btree (categoria_id);
 /   DROP INDEX public.productos_categoria_lnk_ifk;
       public                 postgres    false    310            �           1259    16590    productos_created_by_id_fk    INDEX     Y   CREATE INDEX productos_created_by_id_fk ON public.productos USING btree (created_by_id);
 .   DROP INDEX public.productos_created_by_id_fk;
       public                 postgres    false    250            �           1259    16589    productos_documents_idx    INDEX     j   CREATE INDEX productos_documents_idx ON public.productos USING btree (document_id, locale, published_at);
 +   DROP INDEX public.productos_documents_idx;
       public                 postgres    false    250    250    250            �           1259    16591    productos_updated_by_id_fk    INDEX     Y   CREATE INDEX productos_updated_by_id_fk ON public.productos USING btree (updated_by_id);
 .   DROP INDEX public.productos_updated_by_id_fk;
       public                 postgres    false    250            �           1259    16650 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public                 postgres    false    260            �           1259    16649 *   strapi_api_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);
 >   DROP INDEX public.strapi_api_token_permissions_documents_idx;
       public                 postgres    false    260    260    260            C           1259    16895 )   strapi_api_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);
 =   DROP INDEX public.strapi_api_token_permissions_token_lnk_fk;
       public                 postgres    false    304            D           1259    16896 *   strapi_api_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);
 >   DROP INDEX public.strapi_api_token_permissions_token_lnk_ifk;
       public                 postgres    false    304            E           1259    16899 +   strapi_api_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);
 ?   DROP INDEX public.strapi_api_token_permissions_token_lnk_oifk;
       public                 postgres    false    304            �           1259    16651 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public                 postgres    false    260            �           1259    16638 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public                 postgres    false    258            �           1259    16637    strapi_api_tokens_documents_idx    INDEX     z   CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);
 3   DROP INDEX public.strapi_api_tokens_documents_idx;
       public                 postgres    false    258    258    258            �           1259    16639 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public                 postgres    false    258            �           1259    16744 (   strapi_history_versions_created_by_id_fk    INDEX     u   CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);
 <   DROP INDEX public.strapi_history_versions_created_by_id_fk;
       public                 postgres    false    280            �           1259    16480 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public                 postgres    false    232            �           1259    16479 $   strapi_release_actions_documents_idx    INDEX     �   CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_release_actions_documents_idx;
       public                 postgres    false    232    232    232                       1259    16788 %   strapi_release_actions_release_lnk_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);
 9   DROP INDEX public.strapi_release_actions_release_lnk_fk;
       public                 postgres    false    288                       1259    16789 &   strapi_release_actions_release_lnk_ifk    INDEX     {   CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);
 :   DROP INDEX public.strapi_release_actions_release_lnk_ifk;
       public                 postgres    false    288                       1259    16792 '   strapi_release_actions_release_lnk_oifk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);
 ;   DROP INDEX public.strapi_release_actions_release_lnk_oifk;
       public                 postgres    false    288            �           1259    16481 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public                 postgres    false    232            �           1259    16468     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public                 postgres    false    230            �           1259    16467    strapi_releases_documents_idx    INDEX     v   CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);
 1   DROP INDEX public.strapi_releases_documents_idx;
       public                 postgres    false    230    230    230            �           1259    16469     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public                 postgres    false    230            �           1259    16674 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public                 postgres    false    264            �           1259    16673 /   strapi_transfer_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);
 C   DROP INDEX public.strapi_transfer_token_permissions_documents_idx;
       public                 postgres    false    264    264    264            J           1259    16907 .   strapi_transfer_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);
 B   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_fk;
       public                 postgres    false    306            K           1259    16908 /   strapi_transfer_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);
 C   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_ifk;
       public                 postgres    false    306            L           1259    16911 0   strapi_transfer_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_oifk;
       public                 postgres    false    306            �           1259    16675 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public                 postgres    false    264            �           1259    16662 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public                 postgres    false    262            �           1259    16661 $   strapi_transfer_tokens_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_transfer_tokens_documents_idx;
       public                 postgres    false    262    262    262            �           1259    16663 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public                 postgres    false    262            �           1259    16492 !   strapi_workflows_created_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);
 5   DROP INDEX public.strapi_workflows_created_by_id_fk;
       public                 postgres    false    234            �           1259    16491    strapi_workflows_documents_idx    INDEX     x   CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);
 2   DROP INDEX public.strapi_workflows_documents_idx;
       public                 postgres    false    234    234    234                       1259    16800 1   strapi_workflows_stage_required_to_publish_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);
 E   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_fk;
       public                 postgres    false    290                       1259    16801 2   strapi_workflows_stage_required_to_publish_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);
 F   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_ifk;
       public                 postgres    false    290            �           1259    16504 (   strapi_workflows_stages_created_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);
 <   DROP INDEX public.strapi_workflows_stages_created_by_id_fk;
       public                 postgres    false    236            �           1259    16503 %   strapi_workflows_stages_documents_idx    INDEX     �   CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);
 9   DROP INDEX public.strapi_workflows_stages_documents_idx;
       public                 postgres    false    236    236    236                       1259    16823 *   strapi_workflows_stages_permissions_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);
 >   DROP INDEX public.strapi_workflows_stages_permissions_lnk_fk;
       public                 postgres    false    294                        1259    16824 +   strapi_workflows_stages_permissions_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ifk;
       public                 postgres    false    294            !           1259    16827 +   strapi_workflows_stages_permissions_lnk_ofk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ofk;
       public                 postgres    false    294            �           1259    16505 (   strapi_workflows_stages_updated_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);
 <   DROP INDEX public.strapi_workflows_stages_updated_by_id_fk;
       public                 postgres    false    236                       1259    16811 '   strapi_workflows_stages_workflow_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);
 ;   DROP INDEX public.strapi_workflows_stages_workflow_lnk_fk;
       public                 postgres    false    292                       1259    16812 (   strapi_workflows_stages_workflow_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);
 <   DROP INDEX public.strapi_workflows_stages_workflow_lnk_ifk;
       public                 postgres    false    292                       1259    16815 )   strapi_workflows_stages_workflow_lnk_oifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);
 =   DROP INDEX public.strapi_workflows_stages_workflow_lnk_oifk;
       public                 postgres    false    292            �           1259    16493 !   strapi_workflows_updated_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);
 5   DROP INDEX public.strapi_workflows_updated_by_id_fk;
       public                 postgres    false    234            �           1259    16516    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public                 postgres    false    238            �           1259    16515    up_permissions_documents_idx    INDEX     t   CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);
 0   DROP INDEX public.up_permissions_documents_idx;
       public                 postgres    false    238    238    238            &           1259    16835    up_permissions_role_lnk_fk    INDEX     g   CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);
 .   DROP INDEX public.up_permissions_role_lnk_fk;
       public                 postgres    false    296            '           1259    16836    up_permissions_role_lnk_ifk    INDEX     b   CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);
 /   DROP INDEX public.up_permissions_role_lnk_ifk;
       public                 postgres    false    296            (           1259    16839    up_permissions_role_lnk_oifk    INDEX     j   CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);
 0   DROP INDEX public.up_permissions_role_lnk_oifk;
       public                 postgres    false    296            �           1259    16517    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public                 postgres    false    238            �           1259    16528    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public                 postgres    false    240            �           1259    16527    up_roles_documents_idx    INDEX     h   CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_roles_documents_idx;
       public                 postgres    false    240    240    240            �           1259    16529    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public                 postgres    false    240            �           1259    16540    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public                 postgres    false    242            �           1259    16539    up_users_documents_idx    INDEX     h   CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_users_documents_idx;
       public                 postgres    false    242    242    242            -           1259    16847    up_users_role_lnk_fk    INDEX     U   CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);
 (   DROP INDEX public.up_users_role_lnk_fk;
       public                 postgres    false    298            .           1259    16848    up_users_role_lnk_ifk    INDEX     V   CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);
 )   DROP INDEX public.up_users_role_lnk_ifk;
       public                 postgres    false    298            /           1259    16851    up_users_role_lnk_oifk    INDEX     X   CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);
 *   DROP INDEX public.up_users_role_lnk_oifk;
       public                 postgres    false    298            �           1259    16541    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public                 postgres    false    242            w           1259    16422    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public                 postgres    false    224            x           1259    16426    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public                 postgres    false    224            y           1259    16421    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public                 postgres    false    224            z           1259    16424    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public                 postgres    false    224            {           1259    16425    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public                 postgres    false    224            |           1259    16423    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public                 postgres    false    224            }           1259    16444    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public                 postgres    false    226            ~           1259    16443    upload_folders_documents_idx    INDEX     t   CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);
 0   DROP INDEX public.upload_folders_documents_idx;
       public                 postgres    false    226    226    226                       1259    16776    upload_folders_parent_lnk_fk    INDEX     g   CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);
 0   DROP INDEX public.upload_folders_parent_lnk_fk;
       public                 postgres    false    286                       1259    16777    upload_folders_parent_lnk_ifk    INDEX     l   CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);
 1   DROP INDEX public.upload_folders_parent_lnk_ifk;
       public                 postgres    false    286                       1259    16780    upload_folders_parent_lnk_oifk    INDEX     j   CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);
 2   DROP INDEX public.upload_folders_parent_lnk_oifk;
       public                 postgres    false    286            �           1259    16445    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public                 postgres    false    226            x           2606    17047 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public               postgres    false    5068    252    254            �           2606    17217 8   admin_permissions_role_lnk admin_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_fk;
       public               postgres    false    5063    252    300            �           2606    17222 9   admin_permissions_role_lnk admin_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_ifk;
       public               postgres    false    300    5073    256            y           2606    17052 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public               postgres    false    5068    252    254            |           2606    17067 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public               postgres    false    5068    256    254            }           2606    17072 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public               postgres    false    5068    256    254            z           2606    17057 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public               postgres    false    5068    254    254            �           2606    17227 .   admin_users_roles_lnk admin_users_roles_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_fk;
       public               postgres    false    254    302    5068            �           2606    17232 /   admin_users_roles_lnk admin_users_roles_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_ifk;
       public               postgres    false    302    256    5073            {           2606    17062 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public               postgres    false    5068    254    254            p           2606    17012 &   categorias categorias_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_created_by_id_fk;
       public               postgres    false    244    5068    254            q           2606    17017 &   categorias categorias_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_updated_by_id_fk;
       public               postgres    false    244    5068    254            �           2606    17415     ciudads ciudads_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ciudads
    ADD CONSTRAINT ciudads_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.ciudads DROP CONSTRAINT ciudads_created_by_id_fk;
       public               postgres    false    308    5068    254            �           2606    17420     ciudads ciudads_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ciudads
    ADD CONSTRAINT ciudads_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.ciudads DROP CONSTRAINT ciudads_updated_by_id_fk;
       public               postgres    false    5068    254    308            \           2606    16912    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public               postgres    false    254    5068    224            �           2606    17127 $   files_folder_lnk files_folder_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_fk;
       public               postgres    false    284    4981    224            �           2606    17132 %   files_folder_lnk files_folder_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_ifk;
       public               postgres    false    226    284    4996            �           2606    17122 &   files_related_mph files_related_mph_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_fk;
       public               postgres    false    282    4981    224            ]           2606    16917    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public               postgres    false    5068    224    254            s           2606    17027     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public               postgres    false    248    5068    254            r           2606    17022    globals_cmps globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.globals_cmps DROP CONSTRAINT globals_entity_fk;
       public               postgres    false    246    5053    248            t           2606    17032     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public               postgres    false    5068    248    254            `           2606    16932 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public               postgres    false    228    254    5068            a           2606    16937 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public               postgres    false    228    5068    254            u           2606    17562 %   productos productos_categoria_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categorias(id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_categoria_id_fkey;
       public               postgres    false    5041    244    250            �           2606    17605 2   productos_categoria_lnk productos_categoria_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos_categoria_lnk
    ADD CONSTRAINT productos_categoria_lnk_fk FOREIGN KEY (producto_id) REFERENCES public.productos(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.productos_categoria_lnk DROP CONSTRAINT productos_categoria_lnk_fk;
       public               postgres    false    250    5058    310            �           2606    17610 3   productos_categoria_lnk productos_categoria_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos_categoria_lnk
    ADD CONSTRAINT productos_categoria_lnk_ifk FOREIGN KEY (categoria_id) REFERENCES public.categorias(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.productos_categoria_lnk DROP CONSTRAINT productos_categoria_lnk_ifk;
       public               postgres    false    244    5041    310            v           2606    17037 $   productos productos_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_created_by_id_fk;
       public               postgres    false    5068    250    254            w           2606    17042 $   productos productos_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_updated_by_id_fk;
       public               postgres    false    254    250    5068            �           2606    17087 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public               postgres    false    5068    260    254            �           2606    17237 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_fk;
       public               postgres    false    5083    260    304            �           2606    17242 Q   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_ifk;
       public               postgres    false    304    5078    258            �           2606    17092 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public               postgres    false    260    254    5068            ~           2606    17077 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public               postgres    false    254    258    5068                       2606    17082 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public               postgres    false    258    254    5068            �           2606    17117 @   strapi_history_versions strapi_history_versions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_created_by_id_fk;
       public               postgres    false    5068    280    254            d           2606    16952 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public               postgres    false    232    5068    254            �           2606    17147 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_fk;
       public               postgres    false    288    5011    232            �           2606    17152 I   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_ifk;
       public               postgres    false    288    5006    230            e           2606    16957 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public               postgres    false    232    254    5068            b           2606    16942 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public               postgres    false    254    230    5068            c           2606    16947 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public               postgres    false    230    5068    254            �           2606    17107 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public               postgres    false    5068    264    254            �           2606    17247 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk;
       public               postgres    false    264    306    5093            �           2606    17252 [   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk;
       public               postgres    false    306    5088    262            �           2606    17112 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public               postgres    false    5068    254    264            �           2606    17097 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public               postgres    false    254    262    5068            �           2606    17102 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public               postgres    false    262    254    5068            f           2606    16962 2   strapi_workflows strapi_workflows_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_created_by_id_fk;
       public               postgres    false    254    5068    234            �           2606    17157 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk;
       public               postgres    false    290    234    5016            �           2606    17162 a   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk;
       public               postgres    false    290    236    5021            h           2606    16972 @   strapi_workflows_stages strapi_workflows_stages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_created_by_id_fk;
       public               postgres    false    5068    236    254            �           2606    17177 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_fk;
       public               postgres    false    294    236    5021            �           2606    17182 S   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk;
       public               postgres    false    252    5063    294            i           2606    16977 @   strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_updated_by_id_fk;
       public               postgres    false    236    254    5068            �           2606    17167 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_fk;
       public               postgres    false    292    236    5021            �           2606    17172 M   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk;
       public               postgres    false    292    234    5016            g           2606    16967 2   strapi_workflows strapi_workflows_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_updated_by_id_fk;
       public               postgres    false    5068    234    254            j           2606    16982 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public               postgres    false    5068    254    238            �           2606    17187 2   up_permissions_role_lnk up_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_fk;
       public               postgres    false    5026    238    296            �           2606    17192 3   up_permissions_role_lnk up_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_ifk;
       public               postgres    false    5031    240    296            k           2606    16987 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public               postgres    false    238    5068    254            l           2606    16992 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public               postgres    false    240    5068    254            m           2606    16997 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public               postgres    false    240    5068    254            n           2606    17002 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public               postgres    false    242    5068    254            �           2606    17197 &   up_users_role_lnk up_users_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_fk;
       public               postgres    false    5036    242    298            �           2606    17202 '   up_users_role_lnk up_users_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_ifk;
       public               postgres    false    5031    240    298            o           2606    17007 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public               postgres    false    242    5068    254            ^           2606    16922 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public               postgres    false    254    226    5068            �           2606    17137 6   upload_folders_parent_lnk upload_folders_parent_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_fk;
       public               postgres    false    4996    226    286            �           2606    17142 7   upload_folders_parent_lnk upload_folders_parent_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_ifk;
       public               postgres    false    226    286    4996            _           2606    16927 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public               postgres    false    5068    254    226            X      x�ݜߏ�8�ǟ=�(�7ۘ���J�et��o��`�����������=��N�iHvw��"��ow�|\.���>@�V2
���=i�@'T�TY:e�~��u;�v|߰�b� �N�a{��F��O�:����M��>���x�K�2����}�"���t����w�0|����ӧ�>�f{璘���4�۾��?�_�� D�!|�?��(���ћz��˯�~
�qR�hi �ÎI�Pݷ�z{���)S~��z�F���<9gNn���(7�ϿZ`��J�șU��	��#���x���ʔlo��7u���e�	]�fk��l����Y�o�l�X��;�n�/�Ǡ,h�H���PyFs�U�bts�?��`r[1X��oM����P��~�-|�`�˾�C<�q����-�b��tNk�цu�����$�!�8�_LP�zpm�P�ӊ����>�	%��?vo�;�F7$1Ay����6_ݬ\O��؟M�	0����!�NLos�-�bHf��ow��,��O/N�=�̉�CG@�[(�2M�ZNii���oCw6UҔ_����+��H�ѮQo{.�6Z,Y.�}�˾A=��D߉1(,�ބ�	c��G�mX�'���!N��� gq4��=3�H]�%i����� Y��ox���w�,�]-�n�2��ֲ�2v�l��ea��I1�������3�e9hi�:^��Lb`�93F���A噡}�J�]ͨƺ�a3Ζ�6"��C�o�oPy�ʣ�� �a]�@�|�����PM��)�S����T$x������T+���چ2ގe4��7��[�+���O֙���`N
<�Rwy�$�Q���g~aC�����X�<I�������c虔}�I\�t�&v#�):"mC��ՏPb�0����L�͈��E#�#�[�����2k�����	gig�n� uj��B�#���X��P��0����LߍH�0$Щ5̛�J���5�����6��m}�IjW8O��M�-��U��Q�G(Yo���N�3F��6��d�	&0Ի�Y�/�b��y��}I*C+����HB�� �PZ~o�7������a+i¸�,�X���φ�^�
�R�{}�q3�L�ǁ���PlY���Ʊ.���ߨpn�y�ĉ��a����yS�/"j�1t}�����=	���c��u����9�,��D,������%י�BE K�9Us���*P·z����o��<�j?����i9�?O�ʧi�^1>J���� �?����f�m²�f�a:��~��G��?��c�xK\ڤ�n���af]ݖ)-'u{���,B�M��b WD�J���r^3�'EvQ�#�ȍ��2����; �X����h)J6���[��q�{�=+#s8n��੏b��d�P��t��r���?�wP
*��'1����(e�6��v�����+��:���4ƦM�$o��B�7�]bO�r��'�`�c=�JD%3]Y�D�}ħ;-��11���i��͛#l��e𤴿%�b+Rԯ����z3������ 6k��o�_�2�y�<o�CÞ���E��w�Ҽ�����qS��N���B`
<����5��q�҂)D������q��6C`-�R$hV�4m�+:6J���ҏ�p��;��[� øE��t72H����,�[�Gh����Y�'�n1
;�!�]FBG��Fj��(4wv���"�_����� tT;MD��Ui?ty�Z�_���#�s|6{\��Ͷ-�K[9�c̻��)�Zx�n�n�r9?<�}��@W�E*D�y�Θh�G9��|���yl���l� ��S�%Uk����3���.�ů�={n|��;05YA2钉�&��VC7�[oOĞ[W~���~�5r�T]TX4��P��}h��ñ��{6y��:�w�dB�rm�IE6h�@�)/G�o��k���sS04+����[�0�m��ӯ��Ϣ;�w�pD7�w��illL��i�����ؗBy�Ò$[!�7Ʃf$���(]��L���ȶP���t��mIƞKg�A�|���렮G2�8V+�w��VJ�-�+�W�~y�A��0��Z���M�T�O����\7�n7�ȩآ�x���O�6U)J�5YӺ���o !9W��';�O�T�!�~�hO�)G,RtBq��`e��õ��ÖT��o��P�E�w"�q�'�=�[ƣ�5��}�K$4x\?��;�L��CiH�����bҏ���r�OO=� �~\�1X�M��*�B�r�]n����ϙ�SQлFj��eV�e������(|����;WT�j�Q�	j8+�ܭ���Z.��(|����8 e�H��<����2��2u��¹n�U�xs��;SYƌ�]�m!N[:Y�e*���w/ ����>�@��VTtP�-K�U��u�PR��N%!m?l%,S��"��k9�w�,���-��)`�0����\��L���}'�by��*Y�x��]zQ44�]
��T�Lߙ0�y����6�T�D}3qWo��B�&O�>�w&���)Q�x�̐�d�͎;���SO�zx�<a�D���mq�q���f�/�Z�q}�yzg�NGA��\�ܰ�ɭ�-��m`�ߤ��q�[ g�~B	�tՐ0�v���[�o.x8�~n},�~��G?����M�xnɱ(�u�hf
Si�]%޶������x�̓��a�X5��晐j��m�nI���W�yGD<3}�,@@?�C-g�Tm&{[�1�0(/��?[������Z(����m��,�٥�x���uK��&��$+�=���"�U�|�(�2<Z����4�y�ύ"JQZ!t���{�`�l�%���nEŠ�̅IIgeY��#RZ�o�WsOs�L���0R^9�]��0Z����'|������4�+�x�Sf�H��i*4L��93ߎw5�������1/M���E�E�z��cg����Y�~M�6�ˆ�$^'���5˖��6��.s�9��Ϋ�����!�R���˸��M-k�SB�R�9�r���Ypz� ��;)7ؠ:!��*��
�����%�e�>nО�;+�˫yZG�F���A�[����/H5l�Ÿ�4�Z�z��g�����<��F��)�����&�U`��^Oy��g��C�h݂MC�r]"��9�kH��5�x�g��;Md:W��FUS�p����m�~As�}<�3��'	@�u��@Q����S3A&�๺sQO08�w� �p^���* �K4ԩ�>�<��ˮC=��D�aBP���Nwx�%^LH'�F��a���,�}G��Bp����q2Ua���N���$��8�wL�b�"�aծ��k���0W=&�}���?= ƨ\'�U���tJ�O0��7����;�(]���h��C\4<s�c��q|;�w�-�����1Ŵ�h[XSe��(=&	Oƙ��P`&��"T���a"��ک�0=&�I��;L2;�hMcHf'%q>��/;�V����Im�:����gNN�"��W�LD�e�42T��zM ]���sw�L? A '�gc��A�*�bI� ]�g�gk��PD��p��E֭�
�b�Y� �WC�Ü��l���\�ʨ�����d}���6*D+�KX�s�3�����h�ai:ٙ8s��]�X�>����<�#����à��	E���p���T����>!m�]%�x;}N���� ��V3��X,��1�V/�5O�|���X1�\��0�k��SU�ao歮�kXkr1|��"O��ꯞ�DAe�h�gciI$�OM1/���P�y<�_�`�X[+g�H��	�8q���um�g�y��,� ؒ�S�V#+�r��*q����z��t�� �"�C�
ċr8e���]���G.��J�~|Զ'r�L)�uZl�K�{���h��]�^�3e'�W��n�X�롁Ũ�6�������铀�%僀�3&�ȸt��V�,ӘnM#{��{�ȍ�9��$`x|� �QbT��+Sn��ڪ�]�L�燑�fOwA����Q�l�?=��A�;�$����.�ǰ���I��.�e�Q��	#:�N� t   �X��G�o��0p 4��lL�.�2O���������xL���Z�"e##//�����>�	qr[?o�$�ո��B�x+�/<��;�W�Ix[A�ۇ�~����s2�      �   k  x��ۑc!D���l]"��?�=�0R��ѫ��X�Z��ӎ͹u�pUg��9[7.���p�^<Χ���M�2#���OߛK�#}un���y�i@��#��V�Hc�*'Ҥ�4,�(�֧ʴE|�����D���Zp
�h�i�҂r�Z�`]-k���"�����6�$�����0�!����P"��$��p�"��,�;_�(�u'K7�.P+=�$�3�J��/���T�"�|�׶I�N���c�lUG�*�u����D�Z�[/X���m���R3����v���>Ѧ-���M[�fpL[W}�M[��h��S�h�����5m�.����.��+�֥?���{⚶K�⚶�Ύkھ�L�i{t'�i�龸��O�ŘvR�1���a�M;[��v��ĘvJS1���t�i9���h��i�i^�i��}�L�ԣy���C:���c�L��w���^zϴj��gZ]�ϴBϴzzhѴF���h^#��7]ñF�l��y�Mm�����w8P��\o��ٛ�����8н�"� to���)u��(x�Kԋ�_�����A�~"�RPc$��*�Z?������<,?u\=�r~����S��keM8�!P�'�I�������h      \     x���=o�0@g�+���c�еK�,W|�0�g7�__�V�vH�H7�=/�ɹ8W׶�u��w�2_�=/�-���Y8�A���S��Яg�`]3�Q0��� �B�-E��6-g�X�4�Ӣ��j/�~]ee^�̏�q�B��|�^���5;�Zn̼�ś�n���W����'��k��#���{��4�nd����u��3�g!���#D
e&��ƹ:�<e�Jn6d���G�+�?!��p���+���3�����|̒$�4��,      Z   �   x�����0  ��+X�} (���D�q3,��Z�4|�!�L.��#@�����WR5��X1�zy����$񄒍4�4��%O�������y��h�#���1<}.C�:e4^޺�����7ᝊ,X3�;��܃b�Ա	�)]`�3���l�_w�g�A~M=`      �      x�3�4�@�=... �      P     x��͎�6�Ϟ��l�vb;�b�E���q.�L'�Ȓ#��&o�c=���[ʉ�1�K�$�D�?�O2�u�WKܯ�}�ׇ�Sa1���^*k�~3�a�0�XiX��ʃe�gT
��Ѭ���7����	&@�j�g�h�����y�L̾GG����)a�E�@O`+p���va!��`!A�{ǄEr�(2��:�M�r�݃���2#����:��kBi���'iʒd���	����=��<��?D�>���7`_졽!΢C	yW�+�~�mdW��X��}��E�H�Bs�㉨�pF���s�e�B�g�L����P�@�k)����ނ�V��tR�`��@ɍ=���t(���T#��̼�BȗX��8)�Cq���D6��)�	e83���YRͳb����{����7���C{>��Q��C�-��2�������E?ZX�\���Էg%*��6 ��(\��?	7��=5(X�K����q��5�ؓ`���-�<;Ԯ��npks��UJ�WqY;��<�ꦚ��A��e>"�It�x������a7˗�����T��ڹ�ޛ�S؞�~l��X;�1�6�y�{*�P��?gkHQ�0U����7\�R^�pRah������l�����̛��	1z�#�~�~�̓"�f�{Iv~S����%��^\)�����L��W+1��z)�ծ�ѯ�C
����?K�ynf:��W(΍�$/
zA�n�:�(�����)]Ct��k�0An��u��{B%�LZX'ih��UfDR���m���d?ÿ1�a9�	ė�4N�����=f�Ȟ%���v��ؾ,�-����ݮ������>^�K���׀k��q�4v�|²`��T%�N�;��u������%= f?h��[�AX�����NOmZR	��};L������� �Q�>hy��!��!��|/z'�u�;�8d_�{�Z�r�!LL�V��O�)�n��r>M�"���������О]��9~zz���ҫ      �   �   x�����0�vi ˻�k�"��� A����Ԑƒ�����f��~�6�罜�(C��bx�K�3��"��Ёt��%s����,K|�����r��b�]���ӵ�k�[�7[��<��ױ���$��_������rk�b&8��tc�      n      x������ � �      l      x������ � �      j      x������ � �      h      x������ � �      f      x������ � �      <   �  x��[ێ�8}V���`��]R��d7�2�3��Z�m�e�֥o�|�|�;?��/m�&Q�����*���ȪS��=��,�p��P:�j|�>pu罫�X�9x��D�p2y�?�>^H���U9Uizu~������J]�\Յm���gi���z!(W#�划�A�� ���X�cۯC܊N�����T���d�djٺ5@C+3S��$����U&O�as��}/�2�,���V1��������X�r�3��B�qRO]̰�t�C�|�!�Gp�G���%Ķ%|�o	�
�%�q=d*qZ����p��m��A\�B!o�4
�b�(�#��w���Q��O� ޳yZ�b�a�G*��\{�㷄 �n(���f�����|��x�C0C"}(SL����%bC/�e���!?�L151!5�����r=�$2D�Ĝ� ��{�h���;���4�������[�FB���v��Nʷ��Bg�1���P��a��G'�A'��d�ß��$�����Hg�#�����
�}���-�vF�Έ�91� ½h'�t�Z�+�����n_E:�=��x�n�r�8W��JX��z�d�`�`V�qUe#ޙ���
dG�vT�U�r�c���]\#�am��Y����N:DN��l���9.��
3����#��^�q��'X�5Da�%!�3
�����b���6���H�1_� ��"H��ݾ
#̻��J��ţ���5��{��y�KkcǁN�\����]��)0�:U����L�9��T՝�i#b�2�c	��T`��[�1Y@�Ἣ�4M:��}d�HEVZ��HE.�Ę��I�?϶S�}�Y�뽯j��<�!�W+�0��hp<�u�vf��g���2>�Cޤ�e���ik]{�q��̾;�L����xp�2q��y(|[�]�x�@�HGX������^?F�@��G�p���������&��C4�g��2н��y�����:���^.�z��U}T�o�߾�h CҳЧAHرB�-��}T�o��
)���[z��O�s�����q��~��d눗l�}��7y����J .ڷJ�R�w� ���.��~��߀��fO�@U��~{4n���w�*�	O��I͑?�U0��P|_����Ǘ��mBͽа����YE,�p�t�1Z|P���
�q~���"��q���j�6���L�]�G��������{����u�C@����I ̛���qۇd���߳D��g�q�1�ݾ���7�w�I�?��Y=�I9����S2����ü ?����b�,��t��>�%��jD�o�y��E�,s#]n���jc;m�J�j��壟c��gH��$�M�ȇ�?y�z�Q����<�(8�O���K�Y��U.��K����3����FD.���6Rk��Z��#����b��̇���Z��!D��Gh����._�Rj�|i��L��sM'J�)D����HR~��]��w� ��i�ء���'ғ���c��"v&j�ي��Ve�E��E�� ��-�^/�P���o��V'�A3};��ľy�z�u�5�5�P_/��2�#��i�:��ʘ���W�|�{��!�Yt��S�Z�J2�.
�U��G��t�U��Vi56�/���'UՅJ�?u�x�!�����b������Z@6Z�fM"�NO8Yc���1��(W��(W��ܠ���҂l4�RP������M������E�҄���ja,�"��V�����4��� �$�;E���n"�"J��y��Ʒ\�n]�b���̒�r�
C�g�]T;/
�&jv�D{ש����z�������W��I5խ�Q���S�I\�Je��qzd����PS�&���<ʧ:{Rş �(�TQj�30ˣ*3��[ɜ���ؖ�?*��%7���%��5���*{�KI�%u&-,��%AV8��H?甮I�L�hM��+*��d�X~t�?Q_ԩ��9!_ڭC��-�<X �2�,|Q�^f�>���.�x;Ò��}j2�9v �
��&��}��W���<�{�?W�y#2�F!b��T����zB���/���;��oT�q X<��o����'�ԇa���r��+�V�	�p��eB��6���"���*W����?튿��7��]��y@�?��`<p�� &��ٱD���oPE�G�;�W;�3|�����N��      x      x�3�4�4�4�2��4�1z\\\ ��      v   �   x���1�0��9�7��D�D��kt��<���ۑ���N�\�e��Z��D[���Vօ�%�=F�dmP;�6R��Im��iك8f�nZ��0zO���8��w������ce2�]� כ�܆Y��l���DÅ6Ƥ��fo8$���?;��3��      T      x������ � �      R      x������ � �      @   W   x�3���),-)5�0��K-ϵ4N5N14ɲ��t�K��,�P�H���L��4202�54�52R00�26�21�364#Qܜ3���b���� ���      V     x�핽n�0�g�)ϑ �Ö4��mP4k��D�L(Q&)7��d쐡�#��z�GI���N�aH�/~w�+"�����6UM���H�t~W 9���Ӫ�����/\�yiǤ@�'E����ڝk�VqZ:��[N�Xp�T��m�O5���
��]-e�Og���7�nK��� ����F����r�����
.1��`��
3�Rm���+r��;�h�k�%����Y��0c�1/�i��I�'������y��$�'IDn��^n�F�ꬨ7�mV��<�je��i^��u�=����ϕ2���嘔.�["���
��z�}���ܴ��<FhC���zq���o82=�V�V�R�4�C�R`��λ�rcq���`�Ѡ����+2Y*�q�'9��0z�1���{�1LO���=��F��Eϋ~�>IdSr�s�e�KP�8��Φʒ�`J\1dCg�
���+�7_y����땻XOb=�����ê��1b�_J̥T�V�VU��~w8���̀�O�b���x���Ƅ���p�� ���m.N��4�|���ƢE���n�{�������1Kޮl��&o!;���l��'� 8#�\mtV�ռ��6EEe������W�Ņ1�)����� �b�wnB���B����ً���`_[�殏giؠ���@{�؋�C�gq�������s5CW�/��^Tp�E\�P��JH� ��y�	c��O� ͣ�O�7���?a?f��`7�h4�V|�r      �   ;   x�ʱ�0��Tc�ؽ�������,<�Aml�t%�4"O�ߢz��M��$�@�	I      `      x������ � �      �      x������ � �      ^      x������ � �      p      x��]�r����<�Ο-��l'qT9�U���7Y�%ۛ�r\��(N4�af�R����5���I���1/�I��c
�Fht�i �<��˼�U٢�ϒ2�D5�{�_.�ͫ.��������9=]̋*�F��@�6�m����5�XW�E���m�@GC\�E��Ҡ�N�j�7�6��}��h8K��E��lx:,�34IE����n���u�j�s�����@m�%mBY�3�(�[�/�,���*p�q�`���w�"m�#%	Hv����d�p"N�I��U�X�	�y�+-:J6g��o	�O�5z��h!6�"!8���a>M86�"+�m&o�B,��
�>�MQ~9��`P���pRճ�m EV;�*���h4.iȤ���DF�g+;�j�_��V�4=k��o5-6o4=o��o���X#�!8ct}���:G7�a���lj�����s��+�é$�
�cP��
��\m�OANx��/�2� {�?��6�Jn���D5JZ���ھ�\�W>��Q�B�K��37�]f^U�+�+q"��37�U��I^7�K��fWo�]�N��6���@r[-d�>07�{<�!���#�����t������Hf �/�񨫮���i��^~�Lu2���^�c>�A7��XU� ���ު�X�1ծ�dk��g��-t�(�H$�x�C`�ax������__���x��&F~�U��M�=��H�䍦�`��I�&9��~�̗J'�+Yb���j^�Ʀ��v#5ϓ�kT��A͈��:/t>���RrC���KJ�([.v�� ;K}�[���Jp�e^V�^�&���9A�S�����AE֖7>��z����V��m"���>#]�+�t%$�S|cCG[T�U�:�����G���	�NAUǌɠ�JՋ6�r��j�am�`g�v��s����l}��l���>w�m}��J3��e1m	��jc`ۃj��\��k·�������"G\�1�Fqs&B�mІk]���
�7�l ;5��
�](�A�\��˅?��0�5O|1�l�X�b@�L�e��UvK����+@�V���!d-�����
0�>����5K�C0�	o� y)-p��֌h�������~&�s����k��:O��-���8nЗ����5�B���)f�\i�C��Z�#'�C��Z[�f���ވ�*�MJ�[�se��lCR$�;u�^:yдu2����1����c.Ӫ(5��:�ȎG^N*R��2�(����/�V'�Q%�<ܷ<�8#�{�\��fu2i������T����uWR��,H�;w�����b���9� �Zn�:�X���_k�V��#�3yl驳^��9�)0�A BwZ�_ϋ縻�4�.�E�{VP�y����������J�;�הH�3�泤��c��k[����]�n�@ܫϜb�O%�8Ma�Z���pV����?��G�
�R�ƻ�5ݠm���C;I�5��5��]J�3��k̵�{j��,/F�%�<1�Π�}s�C�N!�Cs�ȟ3m�*��Z�}m����8�"ր'ٌ�w��*<�t�q�����VȜm{`���Gs�	y0��eP���L��[>|�9���V��awQ6���:��V���ox؞U�bVvvs��1E:5���)�DAg>|S�����Xe%��voL������ӲTH;��P�&h��i�(
�����53NZ�\��G����Z��G��AthY/
��A�=����4D��n��G��$\㲨.��|G��i��M�v�2T�/&���f�&
�����ǟ�F��kD���'r�s��;�vU�(U��H�
�AK�)[1������JҖA��ľ�@��(��r�5��	&��w�A�[��
.�͒��7�{����V&R~�k,���EGo?=����3�2����^y"<��F�"<�L
���وI�}�������FM�M�7"�N/�/�����ԳԆ�~}9uY���Y:��Y3��N���1<��ӹ�gB����qԍ�)��L��8H�D:0g4��$Br ���`�˓���s� Qt��BS���k`��u�y��bz"ʺ��S��Y����8Ks@v����[���\��RKcvG9y*�V���$�A�v�'�
Ѩ�:�ŎG�ټ�A����t�xYl��,�n�#���b�P�S3$�0U�3̾����J�9���yB2 ؈�(Z�P��L)�˷��<�#�Kt�H���� ���s>{(�l���7��ߐgs�.�h,ld��0���C٣���J!'w�U��EU�eDh�	���P��:x$%����L�jG5���h��$�9Yfɓ��b�k�7U}5)��f$~�	�,��3W����3C�o������u)���Q��<}'����o��9g똒q���(�Hk�s�Ur 1�F7 Ɛ��R��')q�#��O�� ������Z��u�f�Vi�4W��F1:>��P�l��X�V��Z�6�۾=��1�@������|9|�����E�%�8�``����d��T�kd��]T��::���'�>���2&*�D��Ή�p�9rTA�,o�e4�@Wb��4I�r���Z�3@t�&l�	����(�xe��}�L�۪�˘��rn��G
3�BX��j�,����L����m�2����k��>/�se+mCx�SքQ������Q�F{�z5�A�"CU�p�ꮎ�ޓ�N�)?-4�d�{��s� ��A���_�z���=$T$'޹e�ċ��+��9)�/�X9���W����E���򕎖-�[��j��N�Jfۜp[��CDO=�5z��{���i��9��2�ć)J�-�C1hށ_�Ć0���X5l,�U�{�l��bڪ�UC�oJ,/Vt�y#?���ꋁ�� �J'k8Kr�8��F��U�x�_g�in�Z�I^<x��[��o8�w���~w�z�B"Ӂ�#(�R٭��!gq֧�+�R,���#&>@L�G�011[{wwB�\��(��zt�g�Յ����(��	-kD���n�r� �|��E�CD����,�秧)�˪Γ��E��R�b��zNSu��Uֵ�3��jw���f8��ΐ���f5�::�:�4�����7�H,,nKI^���˧�����SU/g<X�W�&Ͱ��sP����(�l�X��a>�q�f�f*�#Yd9��1��2�d:5�A�KE�Q��{(>����� ]π����5��hf_ӭ�Ww�Y����)�0�N�|�%و���Y�U�$��4�FV3d����gϷ%%��g�W�pD3��ޘ9m���ڴn�K�ii�]3F`}�v�J�[Ë.x�w6�#����ɨȥ�Y�Q��Q���OQZ���$/р��7~����X6�MޢW���M��<�>�nߘ�0���S�8��J),�J�5��fh��˖o�6�~4{�����u�A�=���'���=��g���f/*��Saw�@1��S��u�-Ҷ�+y|�R��I�f��RՈ5�j��*M��xlT��`W��T�x�o�l�kK��Z��uB~^B�g�z�	��,����A�4����tmaE`��[K$8�t�O�n) EQ�
D��bm�H4 a��މ"^K��uthZ���ޛ]�ۻ��G�����c�7I����a��7��U"��Nw������L��+<cm�8��N��vm=z>*�(`]����&���!���"����r�϶?z)��a�I��C#�������0F����7~�DWU�����~**{�kh��M����|���"	K�/.ݠ�Iqk��f(�i�7;���'�C��eN���7g^v�d�3�,�ԕ�����0	�'�_�G���������P�s�Օ��?Q�ЁG��ݔ�qS�\��@6?Zjg��9����Ӈ8��!X�`�E!�/�u��n��0E5��v\+t�Z���^�qJ�d�S�)��0�׺�H x  ^��f�����j��Y7#�ް��.v=��ѩ�N�^95�{��j'�<��<���<�OgŢ���j�� ��N���Vx.`L��V��<0��Zmci�{}��VO�c췲�\�Ww�շJ�X2����W��Fv\���ɢ(��4E�.eѴՌ<^�ջ��$�K���n�4��K�C�7+�0�K�ϨH)?�>�/_�b��n��1�	͆�#}�<Q��"��E�n<1s��{��Ut���6�~�QaC5�G�'��+DPAA��z&�
 ܓ�%'L��4y��%����'��㾐J��}tp�s�x�;
Ԅ*��N��zX}��]��#����%�&cm��2t9αD�^4�wZEI���p�QFS�H鹶0Y��lHok���'�jt��?�M��R������I���Ha���OktBa�C���\Gs}_̵/�7���{�I�ڠߝԗ�j>e߬��^����>���y�r�e���
/?�m����to`���n��gi{����Ȭ���λ�������_��<`32�c<��0��$��\����T<�V����T�դ�n����௡�D��Ţ�R��$/ZT�)��P1o�?��'٣4�A��ۈ���ci'������>�C��[������b(��!�&��v�H.VfC��l�L���̈�8)I@�c,G�lR4���)ŬBGi�����h~Ӣ��٘?`f �ekV|�ʵ\Ŵ�9_�*�TݰK�[P�>s��p���rd4�75ʵX��+��[[ΰB�g�5�m��e�U%�%*Lw���[�U��{�i�+�7܇.s�}P�]���s[-Z�"���+5��?�� њ�J���wG2�#Ƴ>}�3A�6�2����>����g��6{hb��a�I��wPx�Q����@����Bai��]���P7����BXS��
�2Z�h����Z܏!�2<�
�L�Xl�v�O[��-�
��Hȋql3g��P���X����mc���S^d2)n�>���{�"��2/��U�{1��qd1�]v���T�{��Z$,إ�2؎�ˍ��L�	�Ba`��
}@��t��6$uV�[�LFEV6;��F����|�"�@�� �B�J4쥨�Ѫ��@��D��(���fוh�۵жuI܅ٳ]��W�L8��F<��to*X�jxV~;ڞ��P� �� �[%���E{�|"7�����!U�TR�?��l�T�t�xm%��2���I�S���4#T_�EP	7��a�Qգ�>w�y��j��U���iW��Y�4����D�mӽ�M�˺_��rs��H��s��up<��4�V��̶��-�car -C�ɭ{7V>�+�[?K�W����Bt�ѐW�(��r�Iz_�����~�d����J=FFFSM��T;�������d��l�t}(��k����h�0�&.����U��1&h�I��Q���(���wy[@�ߑ�U��֔]�Z�XۺZW�{Y \��~XbX-�m�/�N�i?�� f^%�#=F�5`(�� ��M��lr��:ck�nI�C\��j磣����:p%�E�d#�O�CVT�>�ĝ��CWj�p[�m���@�ˉ 1D��}�����5���E�i�R�6n�9�zL���s�{q�5��
��ea��3�>��V �2oG_���b%���`	�R�mv�o�B!Z�qw&�h|��7�1u%�?ho]�R����P���RuG>.���U��G$p �0�Y�~Kx�%[y�E��bE����"'|��|!:�u�e�8���Ub#�>�]�Rŵ�Ȗ��
e�=��#"Kp	�,8�ޖ�ld^TI6��	�(d/P�<i�/siN�c����5�� qHsv�� [���Ӽ�j��[��#ƕ���9^{���#�Ec~<�rIq0^͈Gp�ѽGR�s�2�lp����^��� L$�������|�zW��ݸ?�7�(�2�7��SK����v_�_�����l,E1�}� ��^��P��)P޻9ro�� fه#XHc������s���ǘx�3�hl��8g��Ʈ�����u�-Ҷ�A��h�y����N��� ��,�[Go��@*�z��4�;����|�zp��`S�����r�E��6��ߞj��^D4'��᤽�y�����o�Tr�̷J~��� <�����c�FX�vď?��h�Bۺ���}�͈ԅ+;#���kR�ԳS�V�����4��x�H��v�5`�;$��h�d,�jm�<�d�$�������ב��۵��m���}X%�X�8�y!U��gv�B|]`����2'o�fzza
�	�?\��d^L���D��A7�e��Y�� �C��������r�9�*�5�R������aW���$����5�hyD*hs�;����j �Ij\�����~���M��7�w��y�daۋ����#�I����	�j�����Q�u��7.���r�%��tv�1ϱWz��]V�{	H>A�<���"�s#̍0wo��j6����5N�j:�F劢@�}��c׻7���X6b�u�lċ/F��bċ/~�ؙ�-�F�#��^�z��=}���,����ԗEu�#�OPt��-z#D8k'(Q6�#���GwĽ"V��<�Ѣ�
�"i�� ҫ����,jp��r��!0�W�����l 8��;e�y&�Jײ�*)�9	[����*���a��ѵ��|��]�1&�XgL�5n����cc����=�g���$�Km��α��U��0}j4Jnv��n^7�d�TMp��Gb���3d�j~���U�����M[��������%FA-fC��1���\���[�$"�IU��Mʣ�xa����r}Ev7�T6q�Z��Y\$����`��%�關ʗ"��J	TD�X�"�ӏ�~�袪�ND�q��"�ц	j K�UuY ���Y�Ȳ��v��P�f	6M��MӘ Nqڱ1�Ӻj�I�pr��Yu�lȊ���f��JF�ho�E�HٌN����>�:�)�ui��'�8�<�����v�Z] �W6~�L��h�Sc����8�:;|J&Y�"/��%*6d�f�2 +���&K>�c�R�e�Z4����,�RK�A���*b��ۑ�s�V3�e�_�^Ϥ�8C!ŦF�0�O����0
=
���M������c�xc�5B;��9 b�ԁI�;�x�f�1��zXp��zBdH��U�#qƩ�Oב������n#Ő�j�9��zSW׸�����b�|9��?�V�_K=rc#Zc#	?VO`��!=�ݏ�̨E3�w�FF�#1:�m�҅؊��������3�)%C�o����q�������|�W�;	Q�X#M����焕����(�<�n��/h0��B6h�I;�.������uF��U]���1Ђ�������Z��0�pjV���?��nHɿ�J�r�W@�IUF��Wm5�#��sʩb�������?�����u�A�~���_���wӤ�jF$m(��0p]��O�'����t�R@�r��ҴZ���`L�9�s:c�����}}r�LL�kDƜ�c�N�p�5�)P�'+-��j�{Af���/���FS���C:K�^?���̕�ؽ��:)SD^�[���9Z��"B5]��A���f��\T���{X)�d�{�N�#j��2���z�����v�R�l� tUܾ�"�-(�'_?<�+�����K�/��{��c��Ǐ}���>:1[Z���"}�v��h&����7Cۼ+\O��N��Q�z8�'���S�O`��駑1n�3�m2��x�������	�N��������I$�\�������wu      :   �  x��]˒�6]�_��ZIYm���]��bjR�ĳ�q� ���� ��N��|� � .Ք��c���x�{�HBow���p��1�����M��xs�9���vCmފC�"�IK8�{8rB�ONZV�q����Φv{�y��ϡ@b��gێ�Fq�9���Uwǡš׃V���\k�IˎB`�[+Br}���q��~Vѣn|�g���-qG��|,��{��S>@
`1�gQ�9<��Tz��v1���wEmѵ�09��Ϫ�Nk�v��p�b�S��yg81�Q�����JV��b�Ο�}������f^��7�s�\ٴtr3Q-�$�qEǬ`�3��7�<������J����}��f^����!���;�LL�6��3\����ma<"��jǠ���L�?@|�s��G��$� m�(��&��'ع�qd��ID��pF�;�6�b4��b'�i v�3��T�J|��<������f��8�!�F���'�}$^���6�3�H���z�I�U�W����3�.eL��o%��S���B�o�l����r�hdf�kF3�2��i��:��2�5�ğ[��4h�XY�|u�%���*��ɗo:-v�՚��a�+
	Ywi!��Zc�i�bcNw��cm��"�!�h+�V­�J8��Ni�E�kL�dVW#��R�]���Q+�k�F�z��V��l�_�&
�	�B���TȤ|�к&㘒�Y탔�Y�r�69�����\±�f$ƾ� ��G<f�la3��� �&ϦG%EY�|��`&�(�`���.�d�u����#]:"���#lD��B�E���%�d=zD~�/{JE�6u��ËOZ��F�>�KzY
@�+�2^p�. ݚ]������hC��h��J���Z+zd��� R��0�x9���wQ�� +��A���Dm�����_:!�΄����f���6����m��{�W�u����w�*��/�\���X����h���]��a�����h�XL4�hedm"37"���?��Zh��*�� �v-L���s�f �P�E�Z��E���I>7h=�gD��b�F��a��SXr8}���]Hr`���Ŭa��t����m���fFW���+GԑU�MfG5T���a*C�md���M�%�?�-�	'��}��hri�2��t���y~����o��h��jZ��WM{����Q��!��2�oL)u�*�:�i|W=UF'��#VG�����ѧ{q�q�a��%��*$��M+$=�4(^MWk6�B���?+,�_&�v�/]���s��%k�Vi�r�a��od/��
�o��??���o/������Yhz��>f�F��h��{�����g�ih�-�ih���P��@��Z�i���9v��h�FZ_�۞�i�M{� �#��.��U�6�]��zU��K�M�
��I�a �3�����M��ӌ%D2�B�6` �S�5݁��"��"��Ⱦ�`�
�V���~_�3�f��醊d*��F��cf�m����2N�"�o���)*,���]�wy�p_N`O���G��36+�Y�@V���G���L`�G u����>��U|���"ơ7�}o�:>k��ON"|$�9Q�|rB���������y���c����_����oL��sF����o�qu���;C��6�[۹п�йV�:^�:槵&��yx�A�U1�#xk�3߭!>vW�����i��kS�+9Y
�.f�y��ϔx��	I$�ۋ6�'�BT�=9���/�����FW��X�W2c2�I/(T�2_B176�Z��(V��|]�|�?&(f��^* Y���b%���Y�]@�fu�J�]�ۅ�]����f6W�ٌ^�wW�wL��{�A���b75(67��v+nV�.q�dq�s�	%/{2?9־)j
i�0~����Nՙ3���C��de��e�'*"��I��:]{�=_j�Ĕ���_rf��KO�^�Ĵ, \�^���O̹�����N�#�c�j˽1��G� � H3���Ox��a�^��G�N{�ȃ��?�sf H
B|z��'�p��(mp�I.<q�gpkf�w���R���쐙�� /����;=�1�� ����{�gH/b�	x��N��|�U8�9<��RL!������֢�N|v�r-��Vqw�W'4{��)�feg���S�M�V�S�+8S<���!���*5!�k��R+�7TO����Ok � �%�HՖ$�ɹ�t1f���xNlA�y9�%.�R���4Rx!d�7�:9�-I];C��������]_q_<:SAn�͓�����-T�!��ָAD������d�Po0<qA�J�E!2/�v� X��Nz���K�l�3}���7�C����m�@���T2�����ў��F�j�D�j��H��� �W�0/`���0��>}b�舅C|�I��S'�f��Fb(�V�� ���JX��Y�y�2���m3�p� ??��/M��'��2���ꨫ�@`t��7��i����H�f��Oq	��Cu�:i�6�R��F���H2929�=�QltNa(��\��.�$�ƻ���M�l��dT%���c8N���r�U��]�Ә������ܶ��d��Bͱ^��>y�ǒ�J�v�[+q��9]�U�uU�	J���wo�[ͷ&��xMއ�s�`z{���W�%��w1�W� �O\rG����"k{$&��R5�#
c��A�Sy!E�cGaz�o8���!�N"�r�5�|逐�^�u_$:@#��c�������Ja�U_q���H%e��`+�M������ ���t�k�����W��I�����ƪ?4ٯ���'��= ������ľ~Vn�?v@k��3�ժU����g�K�:�l����ל�#r�yy;��5�Be�1XWo�0qD��y��a�}?�r��җMs�����+C�p�*��V����OU=@��ں�,?���2^���t�͉ރ����G=ݙ9�3[�:>�vQ0�k�"vL��ϓG�c �8�4�(����j̀������6���9�!*}v7e$�L�7��v9�R������a������_�8�~���͛�w?�v?޼�a��~ws�{������������ww����ݛ��w�on?����޹�ow�����ׯ����e      t      x������ � �      6      x������ � �      8   �   x�m�K� ��q�*��mxV�Z� \[
h��K�u��L�?9|�#f�f#�b�/O�`Hq��u57s`���uL(���06K9+=rq�+1�6����%�o-ز}6i�'��5���~u
���|Y�2��R�O���������
�������`S�y�z�5����UKI� >��Z�      D      x������ � �      |      x������ � �      B      x������ � �      d      x������ � �      �      x������ � �      b      x������ � �      r      x������ � �      F      x������ � �      ~      x������ � �      H      x������ � �      �      x������ � �      �      x������ � �      J   A  x���ێ�  �k�)�����6�m� {��rP�y�N�mg�mg2�LB�/����ЉL�vai}]G�1�&&:i�*,�-ϓpZ.��fI�%� ��<C���S�VW$OHFn�_>��3[w����e\o�0	Y�����'u�L'��eY�k�$��2V��mϖ���nؑ��US��z��7
xc��&��q������8�s��U�5F����ԍ��L��߇"-���{^��ɉN.^�;���T�W���8k��ۑ��4��5��L�ִ�i�O��q0���ջn��S���U�K��;������������W� >8����R2���l�����
��̕X755���s]/x������6SpԊ�0�HYgxm�R����$�jr�	��ɯE+�yJi��i�ȳ��ɄA�n�n�}ʳZ�K��F<���M�z�7��4�y+m<�Zj�$?���@T��i���'�A�f;�m%Q��;ZK���7Ļ2�� �Q�Cd�m��Q
���i���Eg�d�y�[%���B$���9?S2�IsD<�^*�j<��F�˔������5/��p�
�vQj      �   R   x�%���@Cѳ]L��LzI�u�@z\��zh���}1cb��4n�� �Ϩ��*������Pw�
�ˋJ���E�Q      L   �   x���M
�0�����!yFM��.=�5���}��ӷ �tQ����	�4��YUE��w���N49zl�Ŷ*�hr2u�{���zmgc)���P3#?� 
Pγ(�d�$����yM ĩ�r�k@���C�-���o�Uo�d�u��*ԇK*��D�<���-s�`}      N      x������ � �      �      x������ � �      >   �   x��ͽ�0@���)xJ�m���q���R($���%>�nN�g��ה��Ol�~Q�8k�]��.������"�BĐ("���ro�C(ό�Y���Q5�]me�m�i�/�5��Lݙ'�v���#�I�w�߿䌱/]19T      z      x�3�4�4�4����� ��     