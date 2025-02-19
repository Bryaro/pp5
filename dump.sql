--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)

-- Started on 2025-02-19 07:42:25 UTC

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
-- TOC entry 15 (class 3079 OID 17161)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4468 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 19 (class 3079 OID 17702)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4469 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 8 (class 3079 OID 16671)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4470 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 17 (class 3079 OID 17599)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4471 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4472 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 14 (class 3079 OID 17152)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4473 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 20 (class 3079 OID 18325)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4474 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 18 (class 3079 OID 17686)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4475 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 7 (class 3079 OID 16660)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4476 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 13 (class 3079 OID 17025)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4477 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16903)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4478 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 4 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4479 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 22 (class 3079 OID 18337)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4480 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- TOC entry 11 (class 3079 OID 16824)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4481 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 10 (class 3079 OID 16787)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4482 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 16 (class 3079 OID 17597)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4483 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 5 (class 3079 OID 16629)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4484 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 6 (class 3079 OID 16639)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4485 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 21 (class 3079 OID 18330)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4486 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 9 (class 3079 OID 16776)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4487 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 3 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4488 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 60793086)
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 60793089)
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.account_emailaddress ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 60793091)
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 60793094)
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.account_emailconfirmation ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 60793096)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 60793099)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 60793101)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 60793104)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 60793106)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 60793109)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 60793111)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
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


--
-- TOC entry 237 (class 1259 OID 60793117)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 60793120)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 60793122)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 60793124)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 60793127)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 60793129)
-- Name: blog_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blog_category (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 60793135)
-- Name: blog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.blog_category ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.blog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 60793137)
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blog_comment (
    id bigint NOT NULL,
    body text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    user_id integer,
    post_id bigint NOT NULL
);


--
-- TOC entry 245 (class 1259 OID 60793143)
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.blog_comment ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.blog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 60793145)
-- Name: blog_post; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    body text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    image character varying(100),
    author_id integer NOT NULL
);


--
-- TOC entry 247 (class 1259 OID 60793151)
-- Name: blog_post_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blog_post_categories (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    category_id bigint NOT NULL
);


--
-- TOC entry 248 (class 1259 OID 60793154)
-- Name: blog_post_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.blog_post_categories ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.blog_post_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 249 (class 1259 OID 60793156)
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.blog_post ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 250 (class 1259 OID 60793158)
-- Name: checkout_order; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.checkout_order (
    id bigint NOT NULL,
    order_number character varying(32) NOT NULL,
    full_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    phone_number character varying(20) NOT NULL,
    country character varying(200),
    postcode character varying(20),
    town_or_city character varying(40) NOT NULL,
    street_address1 character varying(80) NOT NULL,
    street_address2 character varying(80),
    county character varying(80),
    date timestamp with time zone NOT NULL,
    delivery_cost numeric(6,2) NOT NULL,
    order_total numeric(10,2) NOT NULL,
    grand_total numeric(10,2) NOT NULL,
    original_cart text NOT NULL,
    stripe_pid character varying(254) NOT NULL,
    user_id integer
);


--
-- TOC entry 251 (class 1259 OID 60793164)
-- Name: checkout_order_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.checkout_order ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.checkout_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 252 (class 1259 OID 60793166)
-- Name: checkout_orderlineitem; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.checkout_orderlineitem (
    id bigint NOT NULL,
    product_size character varying(2),
    quantity integer NOT NULL,
    lineitem_total numeric(6,2) NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL
);


--
-- TOC entry 253 (class 1259 OID 60793169)
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.checkout_orderlineitem ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.checkout_orderlineitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 254 (class 1259 OID 60793171)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
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


--
-- TOC entry 255 (class 1259 OID 60793178)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 256 (class 1259 OID 60793180)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- TOC entry 257 (class 1259 OID 60793183)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 258 (class 1259 OID 60793185)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- TOC entry 259 (class 1259 OID 60793191)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 260 (class 1259 OID 60793193)
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- TOC entry 261 (class 1259 OID 60793199)
-- Name: django_site; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- TOC entry 262 (class 1259 OID 60793202)
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_site ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 263 (class 1259 OID 60793204)
-- Name: newsletter_subscriber; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.newsletter_subscriber (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    date_added timestamp with time zone NOT NULL
);


--
-- TOC entry 264 (class 1259 OID 60793207)
-- Name: newsletter_subscriber_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.newsletter_subscriber ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.newsletter_subscriber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 265 (class 1259 OID 60793209)
-- Name: products_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_category (
    id bigint NOT NULL,
    name character varying(254) NOT NULL,
    frontend_name character varying(254)
);


--
-- TOC entry 266 (class 1259 OID 60793215)
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.products_category ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.products_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 267 (class 1259 OID 60793217)
-- Name: products_product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    sku character varying(254),
    name character varying(254) NOT NULL,
    description text NOT NULL,
    price numeric(6,2) NOT NULL,
    rating numeric(6,2),
    image character varying(100),
    category_id bigint,
    sold boolean NOT NULL
);


--
-- TOC entry 268 (class 1259 OID 60793223)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.products_product ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 269 (class 1259 OID 60793225)
-- Name: products_productimage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_productimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    product_id bigint NOT NULL
);


--
-- TOC entry 270 (class 1259 OID 60793228)
-- Name: products_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.products_productimage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.products_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 271 (class 1259 OID 60793230)
-- Name: reviews_review; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reviews_review (
    id bigint NOT NULL,
    rating integer NOT NULL,
    comment text NOT NULL,
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    product_id bigint NOT NULL,
    user_id integer NOT NULL
);


--
-- TOC entry 272 (class 1259 OID 60793236)
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.reviews_review ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.reviews_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 273 (class 1259 OID 60793238)
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(200) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data jsonb NOT NULL,
    user_id integer NOT NULL
);


--
-- TOC entry 274 (class 1259 OID 60793244)
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 275 (class 1259 OID 60793246)
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL,
    provider_id character varying(200) NOT NULL,
    settings jsonb NOT NULL
);


--
-- TOC entry 276 (class 1259 OID 60793252)
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 277 (class 1259 OID 60793254)
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


--
-- TOC entry 278 (class 1259 OID 60793257)
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 279 (class 1259 OID 60793259)
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer
);


--
-- TOC entry 280 (class 1259 OID 60793265)
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4408 (class 0 OID 60793086)
-- Dependencies: 226
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	bryarosman.bo@gmail.com	t	t	1
9	bryar_osman@hotmail.com	t	t	9
11	brra86@gmail.com	t	t	10
12	goodlivingab@gmail.com	t	t	11
\.


--
-- TOC entry 4410 (class 0 OID 60793091)
-- Dependencies: 228
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- TOC entry 4412 (class 0 OID 60793096)
-- Dependencies: 230
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 4414 (class 0 OID 60793101)
-- Dependencies: 232
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4416 (class 0 OID 60793106)
-- Dependencies: 234
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
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
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add email address	8	add_emailaddress
30	Can change email address	8	change_emailaddress
31	Can delete email address	8	delete_emailaddress
32	Can view email address	8	view_emailaddress
33	Can add email confirmation	9	add_emailconfirmation
34	Can change email confirmation	9	change_emailconfirmation
35	Can delete email confirmation	9	delete_emailconfirmation
36	Can view email confirmation	9	view_emailconfirmation
37	Can add social account	10	add_socialaccount
38	Can change social account	10	change_socialaccount
39	Can delete social account	10	delete_socialaccount
40	Can view social account	10	view_socialaccount
41	Can add social application	11	add_socialapp
42	Can change social application	11	change_socialapp
43	Can delete social application	11	delete_socialapp
44	Can view social application	11	view_socialapp
45	Can add social application token	12	add_socialtoken
46	Can change social application token	12	change_socialtoken
47	Can delete social application token	12	delete_socialtoken
48	Can view social application token	12	view_socialtoken
49	Can add category	13	add_category
50	Can change category	13	change_category
51	Can delete category	13	delete_category
52	Can view category	13	view_category
53	Can add product	14	add_product
54	Can change product	14	change_product
55	Can delete product	14	delete_product
56	Can view product	14	view_product
57	Can add order	15	add_order
58	Can change order	15	change_order
59	Can delete order	15	delete_order
60	Can view order	15	view_order
61	Can add order line item	16	add_orderlineitem
62	Can change order line item	16	change_orderlineitem
63	Can delete order line item	16	delete_orderlineitem
64	Can view order line item	16	view_orderlineitem
65	Can add review	17	add_review
66	Can change review	17	change_review
67	Can delete review	17	delete_review
68	Can view review	17	view_review
69	Can add post	18	add_post
70	Can change post	18	change_post
71	Can delete post	18	delete_post
72	Can view post	18	view_post
73	Can add category	19	add_category
74	Can change category	19	change_category
75	Can delete category	19	delete_category
76	Can view category	19	view_category
77	Can add comment	20	add_comment
78	Can change comment	20	change_comment
79	Can delete comment	20	delete_comment
80	Can view comment	20	view_comment
81	Can add subscriber	21	add_subscriber
82	Can change subscriber	21	change_subscriber
83	Can delete subscriber	21	delete_subscriber
84	Can view subscriber	21	view_subscriber
85	Can add product image	22	add_productimage
86	Can change product image	22	change_productimage
87	Can delete product image	22	delete_productimage
88	Can view product image	22	view_productimage
\.


--
-- TOC entry 4418 (class 0 OID 60793111)
-- Dependencies: 236
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
10	pbkdf2_sha256$870000$hFjew7OuJvbLe4ThzZkgEm$cv8axKoUn4u49AKOq09omGn6Eswm3QhERlYupPRIrgs=	2024-12-09 23:10:38.89508+00	f	Tester1			brra86@gmail.com	f	t	2024-11-22 20:58:35.849888+00
9	pbkdf2_sha256$720000$sy0Ynw5FJrehu6LgYhe3hq$cK4/3TmRZfx6qZmOOhqBBSTY4gJ2NBTFowHLQCJTql4=	2024-12-21 23:33:48.52052+00	t	bryar_osman@hotmail.com			bryar_osman@hotmail.com	t	t	2024-10-20 08:11:46.006225+00
11	pbkdf2_sha256$720000$AgfNAZsj8VnUnvGD3306tQ$aRR0qrG36NdHxghlBvq9wy+bglxvsM6JOLKh7d8G0t0=	2025-01-04 15:10:52.760745+00	f	Saga			goodlivingab@gmail.com	f	t	2024-12-23 12:41:13.944381+00
1	pbkdf2_sha256$720000$qFZHIgCjNp1zgxSYGqNdh4$4QjWO4KPp7wIxN18CkhGqMQbWXPxBJGT4I1niyIRpKI=	2025-02-16 21:12:46.99512+00	t	bryar			bryarosman.bo@gmail.com	t	t	2024-02-26 19:57:30.057246+00
\.


--
-- TOC entry 4419 (class 0 OID 60793117)
-- Dependencies: 237
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 4422 (class 0 OID 60793124)
-- Dependencies: 240
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4424 (class 0 OID 60793129)
-- Dependencies: 242
-- Data for Name: blog_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blog_category (id, name, description) FROM stdin;
1	Instructions	such as battery change, strap change, installments etc
2	News	
3	Others	
\.


--
-- TOC entry 4426 (class 0 OID 60793137)
-- Dependencies: 244
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blog_comment (id, body, created_on, user_id, post_id) FROM stdin;
\.


--
-- TOC entry 4428 (class 0 OID 60793145)
-- Dependencies: 246
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blog_post (id, title, body, created_on, last_modified, image, author_id) FROM stdin;
1	Battery Replacement Guide for Cosmos Watches Sweden	Battery Replacement Guide for Cosmos Watches Sweden\r\n\r\nTools Required:\r\n- A new battery (ensure compatibility with your Cosmos watch model)\r\n- Precision screwdriver set\r\n- Soft cloth or watch pad to protect your watch surface\r\n- Tweezers for handling small components (optional)\r\n- Magnifying glass for better visibility (optional)\r\n\r\nStep-by-Step Instructions:\r\n\r\n1. Prepare Your Workspace: Select a clean, well-lit area and lay down a soft cloth or watch pad to protect your Cosmos watch during the battery change process.\r\n\r\n2. Identifying the Back Type: Cosmos Watches Sweden designs often feature elegant, minimalistic backs that might be snap-off or screw-off types.\r\n   - Snap-off Backs: Use a thin tool to gently pry open the back. Insert it into the designated notch or along the edge, applying gentle pressure to open.\r\n   - Screw-off Backs: Utilize the appropriate size screwdriver from your set to remove any screws. For models with a twist-off back without visible screws, apply a rubber ball or watch case opener for grip and rotate counterclockwise.\r\n\r\n3. Battery Replacement: With the back open, locate the battery. Take note of its orientation before carefully removing it. Some models may have a securing clip or screw — remove this using your precision tools if necessary. Lift out the old battery, handling it with tweezers if preferred.\r\n\r\n4. Inserting the New Battery: Place the new battery into position as the old one was oriented. If your watch includes a battery securing mechanism, replace this to ensure the battery is held firmly.\r\n\r\n5. Closing the Watch: \r\n   - Snap-off Backs: Align the back cover and press down evenly until you hear it click securely into place.\r\n   - Screw-off Backs: Position the back cover correctly and reapply screws or twist the cover back on securely, ensuring the seal for water resistance is intact.\r\n\r\n6. Functionality Check: Set the time on your watch to ensure it's working correctly with the new battery. If the watch does not start, recheck the battery placement and ensure it’s properly installed.\r\n\r\n7. Old Battery Disposal: Dispose of the old battery responsibly by recycling it or following local regulations for battery disposal.\r\n\r\nTips for Cosmos Watch Owners:\r\n- Handle your watch and its components gently to avoid any accidental damage.\r\n- If you’re hesitant or encounter difficulties at any point, we recommend seeking professional assistance from a watch repair store or jeweler.\r\n\r\nDisclaimer: These instructions are provided for general guidance. Performing a battery replacement on your Cosmos Watch Sweden model is done at your own risk. For model-specific instructions or if unsure, please consult a professional or our customer service.\r\n\r\n---\r\nCosmos Team	2024-03-04 08:48:46.861766+00	2024-03-04 08:48:46.86178+00		1
\.


--
-- TOC entry 4429 (class 0 OID 60793151)
-- Dependencies: 247
-- Data for Name: blog_post_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blog_post_categories (id, post_id, category_id) FROM stdin;
\.


--
-- TOC entry 4432 (class 0 OID 60793158)
-- Dependencies: 250
-- Data for Name: checkout_order; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.checkout_order (id, order_number, full_name, email, phone_number, country, postcode, town_or_city, street_address1, street_address2, county, date, delivery_cost, order_total, grand_total, original_cart, stripe_pid, user_id) FROM stdin;
2	B7CA0AF657E24D54B5AE014201DEA3D1	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 12:51:33.694251+00	0.00	1200.00	1200.00	{"1": 1}	pi_3Op8rjDOlxm2qvmQ2zCEywPV	\N
3	32FBB8EC5829475E94F1944CC734E6FC	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 13:00:53.690804+00	0.00	1200.00	1200.00	{"1": 1}	pi_3Op9DzDOlxm2qvmQ0VvWOEHO	\N
4	39E7D2B058A443DE80FD811465FF4728	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 14:28:45.827846+00	0.00	399.00	399.00	{"14": 1}	pi_3OpAazDOlxm2qvmQ13EYQ5Wp	\N
6	0214622DC88342DE9C40BF448C725C08	brra	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 18:29:49.505523+00	0.00	2400.00	2400.00	{"1": 2}	pi_3OpEMDDOlxm2qvmQ2yqVpRmg	\N
7	8581EA290B3247459D17D445A62B8632	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 18:30:48.321561+00	0.00	1200.00	1200.00	{"1": 1}	pi_3OpENBDOlxm2qvmQ2nnUBkVg	\N
8	F6B188E1101942F9B682940775911B94	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 18:32:00.663471+00	0.00	290.00	290.00	{"15": 1}	pi_3OpEOMDOlxm2qvmQ0j8kDgMw	\N
21	D8BB9C61C09D405DB5BC0DFF5E3F856F	Bryar Osman	vegansofswe@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 14:08:40.417888+00	0.00	1250.00	1250.00	{"8": 1, "11": 1}	pi_3Ot9WdDOlxm2qvmQ02dBuWKJ	\N
10	4BE52E7546F640379F85E9FB17C9A876	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 20:27:19.895213+00	0.00	1250.00	1250.00	{"8": 1}	pi_3OpGC3DOlxm2qvmQ0ZSfmmth	\N
13	710777D9EF29438398CB5EA795A4D6C6	good	goodlivingab@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 08:49:10.645168+00	0.00	0.00	0.00	{"11": 5}	pi_3OpoFLDOlxm2qvmQ0c2LMWx1	\N
14	724B52B8889B419580DE89132127326C	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 08:50:20.002737+00	0.00	3600.00	3600.00	{"1": 3}	pi_3OpoGVDOlxm2qvmQ1WMTqnJ9	\N
15	A34A78AD32A145F1AE2E9E80E850ADD7	Bryar Osman	goodlivingab@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 11:40:38.178797+00	0.00	1250.00	1250.00	{"8": 1}	pi_3OpqvRDOlxm2qvmQ24AE0knI	\N
16	9A8D3C5B0FD645C7A5B9739E0D0161CE	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 11:50:16.598793+00	0.00	1200.00	1200.00	{"1": 1}	pi_3Opr4TDOlxm2qvmQ2xF0z1S9	\N
17	617FC061896042679AE7044E011E1C4B	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 11:51:30.526722+00	0.00	2400.00	2400.00	{"1": 2}	pi_3Opr5uDOlxm2qvmQ1g17CbJs	\N
18	4A8D25EB1E6A483E8F4747881ECBBF66	Bryar Osman	goodlivingab@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 12:35:12.159208+00	0.00	2900.00	2900.00	{"9": 2}	pi_3OprmEDOlxm2qvmQ2op4DRD6	\N
12	9BEE09460ADB46C4A5CD5D90E17C8461	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-02 08:29:12.924796+00	0.00	0.00	0.00	{"11": 1}	pi_3OpnwCDOlxm2qvmQ1Qa2weE8	\N
25	8EC2A99173494ADE96B218088F0F2268	Bryar Osman	vegansofswe@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:47:31.189812+00	0.00	0.00	0.00	{"12": 1}	pi_3OtDsUDOlxm2qvmQ0b3DC8PN	\N
23	8FF39CA55D474BBAAB0D1C7B0209A774	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:23:27.907431+00	0.00	1300.00	1300.00	{"6": 1}	pi_3OtDV7DOlxm2qvmQ19Dk5kEq	\N
27	C3503D4E4FD64B95853EE37598D209A5	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:54:46.628326+00	0.00	1500.00	1500.00	{"2": 1}	pi_3OtDzWDOlxm2qvmQ28354TZE	\N
39	0D04B47D8A74479CBE2D756796D5EC36	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-20 10:27:04.985407+00	0.00	0.00	0.00	{"3": 1}	pi_3OwMM4DOlxm2qvmQ0EYS5qgD	\N
19	F89DF1A1FFEC4E80A45BB5AC56BD7746	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 13:52:51.839126+00	0.00	2600.00	2600.00	{"3": 1, "6": 2}	pi_3Ot9HGDOlxm2qvmQ1YQL8o4V	\N
5	FF1927C5F21E4F3888975BB93C4E11E4	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 18:27:54.615916+00	0.00	0.00	0.00	{"3": 1}	pi_3OpEKRDOlxm2qvmQ2uSswj6p	\N
1	C9F673FA8FF243C0995B5EB3B4253934	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-27 19:26:16.166476+00	0.00	0.00	0.00	{"3": 1}	pi_3OoWHuDOlxm2qvmQ1d7gJ9bV	\N
46	2FFD2F82F4CB45BDA8AC17C6652A295D	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-23 12:11:26.918022+00	0.00	0.00	0.00	{"4": 1}	pi_3OxT7GDOlxm2qvmQ2BBdfgRa	\N
73	F58C1046F5F148A5B8F76AAF39D05134	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 16:55:20.305161+00	0.00	0.00	0.00	{"3": 1}	pi_3PrNEvDOlxm2qvmQ2xf4yiOM	\N
56	DF34F5AB99EF4B15B36069C6F6A346EC	bryar	bryarosman.bo@gmail.com	00088	SE	1213	stockhom	laxholmen	80	Stockholm	2024-03-28 10:37:43.719123+00	0.00	1500.00	1500.00	{"2": 1}	pi_3OzGKVDOlxm2qvmQ0NzI0KUM	\N
60	E8FA86851DF2409582C9D86C68DFACE3	dfxgfcgnvhm	karili4622@acname.com	hfgjh	ZM	\N	fcghv	gfghjh	\N	\N	2024-04-13 22:07:04.892154+00	0.00	3000.00	3000.00	{"2": 2}	pi_3P5EifDOlxm2qvmQ0wPCYQW1	\N
55	05C49313E7584644A2393E8946825A14	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-26 14:53:42.838703+00	0.00	0.00	0.00	{"4": 1}	pi_3OybNPDOlxm2qvmQ0CmUb4Q2	\N
50	8E2739490D3F45D490CA13423F4E5FD4	Bryar Osman	vegansofswe@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-24 14:58:47.740332+00	0.00	0.00	0.00	{"4": 1}	pi_3OxsVKDOlxm2qvmQ1m63KQru	\N
32	ACB5FAA7392E4265AA6F2198AB533861	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:58:55.823673+00	0.00	0.00	0.00	{"4": 2}	pi_3OtE3VDOlxm2qvmQ2Mpijh6o	\N
31	83D083918BA64EEF9355CC88CF22C458	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:58:12.447089+00	0.00	0.00	0.00	{"4": 2}	pi_3OtE2tDOlxm2qvmQ0HfZwJwj	\N
30	36DA2D985C844190B8A941B06A036381	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:57:15.792646+00	0.00	0.00	0.00	{"4": 3}	pi_3OtE1zDOlxm2qvmQ0lrAIbal	\N
29	568DEE1D3BDD485B88A6F9CE7C689D99	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:56:21.553753+00	0.00	0.00	0.00	{"4": 1}	pi_3OtE17DOlxm2qvmQ0kj4hEVv	\N
28	64BB98F731C94FADB444E6F5277ACA82	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:55:43.999021+00	0.00	0.00	0.00	{"4": 1}	pi_3OtE0MDOlxm2qvmQ1LIP5g3c	\N
26	9BD66E9505D943F6924DBBF07AEF7DEE	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:53:39.397308+00	0.00	0.00	0.00	{"4": 1}	pi_3OtDyRDOlxm2qvmQ0CRuO5Te	\N
24	4B3825EC27E84047967317FA2E46CCD4	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 18:27:10.167543+00	0.00	0.00	0.00	{"4": 1}	pi_3OtDYSDOlxm2qvmQ1vznUguQ	\N
22	5D197D93AB91493D8074F77E0769B395	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 15:54:54.402531+00	0.00	1200.00	1200.00	{"4": 1}	pi_3OtBBHDOlxm2qvmQ2mFUUqh4	\N
20	3ECF024E0CE44D829731C0AE5F0B0032	Bryar Osman	vegansofswe@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-11 14:04:44.359633+00	0.00	0.00	0.00	{"4": 1}	pi_3Ot9SZDOlxm2qvmQ00mtaZiO	\N
11	7EED76F6BE8A4F8680701558BDD5FF15	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 21:17:05.591697+00	0.00	0.00	0.00	{"4": 1, "16": 1}	pi_3OpGyHDOlxm2qvmQ13ggywQW	\N
9	1E5A0DB98881448D813DCEB53A55D729	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-02-29 19:10:46.005957+00	0.00	0.00	0.00	{"4": 1}	pi_3OpEzzDOlxm2qvmQ2SCAdgwN	\N
54	7A678156C3994BD1878413798E332625	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-03-26 14:51:24.089322+00	0.00	0.00	0.00	{"12": 1}	pi_3OybL9DOlxm2qvmQ0e6ZhhO3	\N
69	221924C1FE714908B820DEE159E1F043	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 14:58:44.579122+00	0.00	1250.00	1250.00	{"8": 1}	pi_3PrLPlDOlxm2qvmQ2pFmk9oA	\N
70	5AD45EE3343B438F892C9D483228AF00	Bryar Osman	goodlivingab@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 14:59:50.109999+00	0.00	290.00	290.00	{"15": 1}	pi_3PrLR4DOlxm2qvmQ1dLatHov	\N
71	F3F9E2DD39DF488CBF266515731A25DF	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 15:20:23.700027+00	0.00	1500.00	1500.00	{"2": 1}	pi_3PrLktDOlxm2qvmQ1flb83wS	\N
72	D6459864535C4C38978D58CE1BF667E1	Bryar Osman	goodlivingab@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 15:46:37.225615+00	0.00	1450.00	1450.00	{"9": 1}	pi_3PrMAJDOlxm2qvmQ0rbsfh9p	\N
74	388F6511AEDE4C749881DEF156D97C9E	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 17:42:57.969199+00	0.00	1300.00	1300.00	{"6": 1}	pi_3PrNyrDOlxm2qvmQ0UhFq0eJ	\N
77	6491EFEC92B7482C9A3029FB1A301E9A	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-24 17:49:23.290834+00	0.00	1250.00	1250.00	{"8": 1}	pi_3PrO5EDOlxm2qvmQ1P3EfYpo	\N
79	1FAD4DDF53B24D66917CC5047DE15DBB	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-03 05:57:48.605668+00	0.00	10.00	10.00	{"14": 1}	pi_3Q5i1dDOlxm2qvmQ2XiOrToo	\N
80	074664E2B50340C0BB6EE2EF13239900	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-03 05:59:03.52004+00	0.00	10.00	10.00	{"14": 1}	pi_3Q5i3rDOlxm2qvmQ1BkL1mOa	\N
65	77A0DFD747844B8495F6218408CD0ACC	Bryar Osman	bryarosman.bo@gmail.com	+46760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-15 13:15:58.071842+00	0.00	0.00	0.00	{"3": 1}	pi_3Po3WjDOlxm2qvmQ1Sljl9MN	\N
82	F9A282BF34CD4C038FE78F676223669C	Bryar Osman	bryarosman.bo@gmail.com	+46760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-14 04:54:12.415548+00	0.00	5.00	5.00	{"14": 1}	pi_3Q9gHWDOlxm2qvmQ1cBbKHtI	\N
83	914010FB108E42599710C4A8518EBB00	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-20 07:46:37.617089+00	0.00	1400.00	1400.00	{"5": 1}	pi_3QBtqHDOlxm2qvmQ2XEK3mom	\N
84	0E7FDA51E6B745B19F8E5A9D65FB824F	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-20 08:12:58.619674+00	0.00	1400.00	1400.00	{"5": 1}	pi_3QBuFhDOlxm2qvmQ2tvlLwdf	\N
85	C7846AE7BA4C43738A8EAD61EAE3547C	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	9	Stockholm	2024-10-20 11:21:54.647797+00	0.00	580.00	580.00	{"15": 2}	pi_3QBx7ODOlxm2qvmQ1QhXn54m	\N
86	21670A8F8EEF4CBABD78CC87D04162DC	Bryar Osman	bryarosman.bo@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-20 13:21:22.978668+00	0.00	6.00	6.00	{"14": 1}	pi_3QBz3wDOlxm2qvmQ2AQklmjW	\N
87	C2B514C8AEAE4A64ADCB38EFDFA26104	Bryar Osman	brra86@gmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken	80	Stockholm	2024-12-01 18:44:08.080522+00	0.00	1150.00	1150.00	{"10": 1}	pi_3QRI7PDOlxm2qvmQ0FvZRgf7	\N
81	83C2BBCCD2824B958157F14EAA251E24	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-10-12 07:02:00.945586+00	0.00	0.00	0.00	{"13": 1}	pi_3Q8zKODOlxm2qvmQ1Tc1R00L	\N
64	4D6972C0FA574DB084DD4CABB676D6AD	Bryar Osman	bryar_osman@hotmail.com	+46760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-08-15 13:06:03.589542+00	0.00	0.00	0.00	{"13": 1}	pi_3Po3N1DOlxm2qvmQ0yiyP4Tz	\N
90	D819A615982D4EAAA77A13B80909BDE3	Brhhh	brra86@gmail.com	00000	SE	\N	Stockhom	Bla	\N	\N	2024-12-01 19:58:10.837073+00	0.00	0.00	0.00	{"11": 1}	pi_3QRJG4DOlxm2qvmQ1zdzz3cs	\N
89	B4130F4F3FE54EEF912EF846EB03C63F	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-12-01 19:47:45.739746+00	0.00	0.00	0.00	{"11": 1}	pi_3QRJ6xDOlxm2qvmQ2FfzALDI	\N
88	3689D62735DC482FAB19052A85D87B79	Bryar Osman	bryar_osman@hotmail.com	0760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-12-01 19:47:42.701055+00	0.00	0.00	0.00	{"11": 1}	pi_3QRJ6xDOlxm2qvmQ2FfzALDI	\N
91	C9AF50369C1C4762B417A83F91925493	Bryar Osman	bryar_osman@hotmail.com	+46760950894	SE	12742	Skärholmen	Laxholmsbacken 80	\N	\N	2024-12-08 09:09:47.100849+00	0.00	0.00	0.00	{"57": 1}	pi_3QTgU1DOlxm2qvmQ02UzLqRk	\N
\.


--
-- TOC entry 4434 (class 0 OID 60793166)
-- Dependencies: 252
-- Data for Name: checkout_orderlineitem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.checkout_orderlineitem (id, product_size, quantity, lineitem_total, order_id, product_id) FROM stdin;
2	\N	1	1200.00	2	1
3	\N	1	1200.00	3	1
4	\N	1	399.00	4	14
6	\N	2	2400.00	6	1
7	\N	1	1200.00	7	1
8	\N	1	290.00	8	15
10	\N	1	1250.00	10	8
15	\N	3	3600.00	14	1
16	\N	1	1250.00	15	8
17	\N	1	1200.00	16	1
18	\N	2	2400.00	17	1
19	\N	2	2900.00	18	9
21	\N	2	2600.00	19	6
23	\N	1	1250.00	21	8
26	\N	1	1200.00	22	1
27	\N	1	1300.00	23	6
31	\N	1	1500.00	27	2
42	\N	1	1500.00	56	2
43	\N	2	3000.00	60	2
46	\N	1	1250.00	69	8
47	\N	1	290.00	70	15
48	\N	1	1500.00	71	2
49	\N	1	1450.00	72	9
51	\N	1	1300.00	74	6
52	\N	1	1250.00	77	8
53	\N	1	10.00	79	14
54	\N	1	10.00	80	14
56	\N	1	5.00	82	14
57	\N	1	1400.00	83	5
58	\N	1	1400.00	84	5
59	\N	2	580.00	85	15
60	\N	1	6.00	86	14
61	\N	1	1150.00	87	10
\.


--
-- TOC entry 4436 (class 0 OID 60793171)
-- Dependencies: 254
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-02-27 16:57:22.070688+00	1	bryarosman.bo@gmail.com	2	[{"changed": {"fields": ["Verified", "Primary"]}}]	8	1
2	2024-02-27 17:38:58.84157+00	10	solar	2	[{"changed": {"fields": ["Name"]}}]	13	1
3	2024-02-27 17:39:08.942401+00	9	bigbang	2	[{"changed": {"fields": ["Name"]}}]	13	1
4	2024-02-27 17:39:58.006871+00	16	test	2	[{"changed": {"fields": ["Price"]}}]	14	1
5	2024-02-27 18:52:13.095779+00	3	vegansofswe@gmail.com	3		8	1
6	2024-02-27 18:52:13.141385+00	2	goodlivingab@gmail.com	3		8	1
7	2024-02-27 18:53:20.128156+00	2	good	3		4	1
8	2024-02-27 18:53:20.175997+00	3	vega	3		4	1
9	2024-03-04 08:45:38.807972+00	1	Inst	1	[{"added": {}}]	19	1
10	2024-03-04 08:47:20.240698+00	1	Instruction for battery change	2	[{"changed": {"fields": ["Name", "Description"]}}]	19	1
11	2024-03-04 08:48:25.579694+00	1	Instructions	2	[{"changed": {"fields": ["Name", "Description"]}}]	19	1
12	2024-03-04 08:50:03.286057+00	4	Amanj	2	[{"changed": {"fields": ["Username"]}}]	4	1
13	2024-03-11 16:05:59.196186+00	22	5D197D93AB91493D8074F77E0769B395	2	[{"added": {"name": "order line item", "object": "SKU CW0001BIG on order 5D197D93AB91493D8074F77E0769B395"}}]	15	1
14	2024-03-18 15:08:51.186362+00	2	News	1	[{"added": {}}]	19	1
15	2024-03-18 15:09:03.540209+00	3	Others	1	[{"added": {}}]	19	1
16	2024-03-28 11:03:04.342843+00	2	test	3		18	1
17	2024-03-29 04:07:10.993481+00	4	Comment test by bryar	3		20	1
18	2024-03-29 04:08:08.001874+00	1	Comment Thanks a lot for the information. It was very help by Amanj	3		20	1
19	2024-08-24 15:05:08.231547+00	1	www.cosmos-sweden.com	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	7	1
20	2024-08-24 17:45:38.979929+00	18	aaa	3		14	1
21	2024-08-24 17:46:36.641366+00	8	karili	3		4	1
22	2024-08-24 17:46:52.962898+00	5	mattbodden@googlemail.com	3		4	1
23	2024-08-24 17:51:10.084282+00	4	Amanj	3		4	1
24	2024-08-24 17:51:10.129523+00	7	vega	3		4	1
25	2024-12-05 20:24:54.165516+00	25	testing	2	[{"changed": {"fields": ["Image"]}}]	14	9
26	2024-12-05 23:00:30.038027+00	28	T	1	[{"added": {}}]	14	1
27	2024-12-06 21:38:22.692493+00	3	test	3		18	9
28	2024-12-07 06:05:14.768085+00	10	brra86@gmail.com	3		8	9
29	2024-12-09 19:38:56.361829+00	3	Venus	3		14	1
30	2024-12-21 12:19:05.963531+00	90	CV	1	[{"added": {}}]	14	1
31	2024-12-21 12:20:03.387852+00	90	CV	3		14	1
\.


--
-- TOC entry 4438 (class 0 OID 60793180)
-- Dependencies: 256
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site
8	account	emailaddress
9	account	emailconfirmation
10	socialaccount	socialaccount
11	socialaccount	socialapp
12	socialaccount	socialtoken
13	products	category
14	products	product
15	checkout	order
16	checkout	orderlineitem
17	reviews	review
18	blog	post
19	blog	category
20	blog	comment
21	newsletter	subscriber
22	products	productimage
\.


--
-- TOC entry 4440 (class 0 OID 60793185)
-- Dependencies: 258
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-02-26 19:55:58.086375+00
2	auth	0001_initial	2024-02-26 19:55:59.235855+00
3	account	0001_initial	2024-02-26 19:55:59.650343+00
4	account	0002_email_max_length	2024-02-26 19:55:59.766353+00
5	account	0003_alter_emailaddress_create_unique_verified_email	2024-02-26 19:55:59.950167+00
6	account	0004_alter_emailaddress_drop_unique_email	2024-02-26 19:56:00.217018+00
7	account	0005_emailaddress_idx_upper_email	2024-02-26 19:56:00.374629+00
8	account	0003_auto_20240222_1303	2024-02-26 19:56:00.907597+00
9	account	0006_merge_20240224_0725	2024-02-26 19:56:00.976693+00
10	account	0007_alter_emailaddress_id_alter_emailconfirmation_id	2024-02-26 19:56:01.580729+00
11	admin	0001_initial	2024-02-26 19:56:01.925998+00
12	admin	0002_logentry_remove_auto_add	2024-02-26 19:56:01.968686+00
13	admin	0003_logentry_add_action_flag_choices	2024-02-26 19:56:02.075862+00
14	contenttypes	0002_remove_content_type_name	2024-02-26 19:56:02.28255+00
15	auth	0002_alter_permission_name_max_length	2024-02-26 19:56:02.420066+00
16	auth	0003_alter_user_email_max_length	2024-02-26 19:56:02.556799+00
17	auth	0004_alter_user_username_opts	2024-02-26 19:56:02.630319+00
18	auth	0005_alter_user_last_login_null	2024-02-26 19:56:02.855502+00
19	auth	0006_require_contenttypes_0002	2024-02-26 19:56:02.922083+00
20	auth	0007_alter_validators_add_error_messages	2024-02-26 19:56:03.034294+00
21	auth	0008_alter_user_username_max_length	2024-02-26 19:56:03.211514+00
22	auth	0009_alter_user_last_name_max_length	2024-02-26 19:56:03.347455+00
23	auth	0010_alter_group_name_max_length	2024-02-26 19:56:03.489584+00
24	auth	0011_update_proxy_permissions	2024-02-26 19:56:03.562117+00
25	auth	0012_alter_user_first_name_max_length	2024-02-26 19:56:03.729924+00
26	products	0001_initial	2024-02-26 19:56:04.025775+00
27	products	0002_category_frontend_name	2024-02-26 19:56:04.132644+00
28	products	0003_alter_category_options	2024-02-26 19:56:04.202073+00
29	checkout	0001_initial	2024-02-26 19:56:04.606727+00
30	checkout	0002_order_original_cart_order_stripe_pid	2024-02-26 19:56:04.811398+00
31	checkout	0003_alter_order_country	2024-02-26 19:56:05.019026+00
32	checkout	0004_alter_order_country	2024-02-26 19:56:05.166615+00
33	checkout	0005_alter_order_country	2024-02-26 19:56:05.236296+00
34	sessions	0001_initial	2024-02-26 19:56:05.520723+00
35	sites	0001_initial	2024-02-26 19:56:05.628739+00
36	sites	0002_alter_domain_unique	2024-02-26 19:56:05.803167+00
37	socialaccount	0001_initial	2024-02-26 19:56:06.60437+00
38	socialaccount	0002_token_max_lengths	2024-02-26 19:56:06.790253+00
39	socialaccount	0003_extra_data_default_dict	2024-02-26 19:56:06.863626+00
40	socialaccount	0004_app_provider_id_settings	2024-02-26 19:56:07.173364+00
41	socialaccount	0005_socialtoken_nullable_app	2024-02-26 19:56:07.446512+00
42	socialaccount	0006_alter_socialaccount_extra_data	2024-02-26 19:56:07.610586+00
43	socialaccount	0004_auto_20240222_1303	2024-02-26 19:56:08.66601+00
44	socialaccount	0007_merge_20240224_0724	2024-02-26 19:56:08.736342+00
45	socialaccount	0008_alter_socialaccount_id_alter_socialapp_id_and_more	2024-02-26 19:56:09.845291+00
49	blog	0001_initial	2024-03-04 08:44:23.97673+00
50	checkout	0006_order_user	2024-03-11 18:41:00.010774+00
51	newsletter	0001_initial	2024-03-14 05:40:13.789111+00
52	checkout	0007_alter_order_country	2024-11-28 22:44:24.92496+00
53	products	0004_alter_product_image_productimage	2024-11-28 22:44:25.333422+00
54	products	0005_alter_productimage_image	2024-12-06 23:10:43.896075+00
55	products	0006_alter_product_description	2024-12-06 23:10:43.940762+00
56	account	0006_emailaddress_lower	2024-12-07 08:02:02.838349+00
57	account	0007_emailaddress_idx_email	2024-12-07 08:02:03.144168+00
58	account	0008_emailaddress_unique_primary_email_fixup	2024-12-07 08:02:03.324162+00
59	account	0009_emailaddress_unique_primary_email	2024-12-07 08:02:03.503604+00
60	products	0007_alter_product_description	2024-12-07 08:02:03.589655+00
61	products	0006_product_sold_out	2024-12-20 17:27:05.008076+00
62	checkout	0008_alter_order_country	2024-12-21 21:27:23.135117+00
63	reviews	0001_initial	2024-12-21 21:34:23.589933+00
64	reviews	0002_review_temp_field	2024-12-21 21:34:23.756337+00
65	reviews	0003_remove_review_temp_field	2024-12-21 21:34:23.922842+00
66	products	0006_product_sold	2024-12-21 22:10:31.830919+00
\.


--
-- TOC entry 4442 (class 0 OID 60793193)
-- Dependencies: 260
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5nb61hk93oee5kt9zcmqieobtesdi9bx	.eJxlkMFOxDAMRP_F5ypymyZueuTOFyBUOWlKC2yySlLBarX_TgN7WXGzPOMnz1yBnYt7KBPvZfWhbI7LFsN08mWNc4bx5Qp_M4xw5py_YpqhAS4wtoRGGkVDKwxK7Ek3sGefAp_84bbpwglurw38wqcqTVvltPCws-w-fKjC_M7hLQoXQ0mbFdUi7moWz3H2n0937wNg5bwe150eqEenpSZCq3tcSC6KFosKFeFg2BokxoE0tp6Uc8zaLORl3_VkdI31vw0_Tw9hO9HqblBaHi9kn3Nty3-ft3SBEW8_RtBtCg:1rgRvi:Hprw4uAkhbPkSFbXgvXecA44AEQs_DVik8ZO9qatY9k	2024-03-16 16:09:42.164627+00
xs942dap27kpcju8bfemyun3av2wfjbn	.eJxlUMtuwyAQ_Jc9W9YSGxZ87D1fUFXWgnHttoEIsNooyr_XtLmkva12HpqZK7BzcQtl5K0sPpTVcVljGE--LHHKMDxf4feGAc6c82dMEzTABQZBaDpjRCdaJbVB6hvYsk-BT35n23ThBLeXBn7MxwqNa_UR8PCz7N59qMD0xuE1ti6GklbbVkp7R3N7jJP_eLpzHwwWzsuuPihNPTrVKSK0qseZulnSbFGiJNSG7R6SUZNC4Uk6x6zMTL7rDz0ZVWv9X8NP45-yRkit1Z4g-5zrWP7rvKYLDHj7BuAybNs:1rgSnj:tVo4jeX1hko3QLOibvln1r1eeNngsWvAprLkMgdGo-Y	2024-03-16 17:05:31.91715+00
abihwrkqii1qirn60adoa9gs2142fkhe	eyJjYXJ0Ijp7IjIiOjF9fQ:1t2RAj:vLUTMwkLWPO1YudWhY7_CM8rt-qIOjb6OOfbdZUXVbI	2024-11-03 08:20:21.551054+00
9jjjb7wy27bovmwtynpwy3jnk8i7vblj	.eJxtkE1OxDAMhe_idVWl-XPaJfs5AUKVk6a0wCSjJBWMqrk7KcxmEBvL8nv-ZL8dHKUCww4cBt6ArPXWADkXt1BG2sriQ1kdlTWG8ezLEqcMw_MOvz0McKGcP2OaoK5VUoddJwTjom-V4L0SqoEt-xTo7KvbpisluL008AMfD2lcD04HDzNL7t2HQ5jeKLzG1sVQ0mrbw9Le1dye4uQ_nu7eB8BCeanbXBuUzGmhEZnVks0oZoWzZYopZKYn2zMkZlCzzqNyjkj3M3ohucRew79p-Gn886wxzEhZL8g-5yMs_3VZ0xUGdvsG7bNx8w:1roZAd:-kNDBtQV9AGWlYpFfWh-X036KZU3-bE8C3n2QCcfgag	2024-04-08 01:30:39.966573+00
9efa9o725s5trmj6j2t9wie2a6z04f8n	eyJjYXJ0Ijp7IjEzIjoxfX0:1t2TTA:7SHr2dtbxWPWXumDJR-9_yOaFdabt46ZC1jzaMr1OEA	2024-11-03 10:47:32.04998+00
bv8vl4icsx3z7d9c4qaeu76lsi8sebjb	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ1bGZjLThmODEwMDU0MmZmM2NlODIwMzY4YmMwNWQ3MzgxZmRiIn0:1rmgGW:Qf2TiAAvXslsn6m8MfLcY8zScVsqjUSN9Xnf4akJ34Q	2024-04-02 20:40:56.272309+00
82ahls3h9i5ty4oguu8tyqrp2eoan91o	.eJxlkE1ugzAQhe8ya4QGjD3AsvucoKqssTGFtrEj2yiJoty9uM0m7W4070f63g3Y2rD5rHnLi_N5tZzX4PXR5SVMCcbXG_zeMMKJUzqHOEEFnGFsCIdOSinaWvREQlAFW3LR89HtbhOvHOH-VsFPuS6SXktPA08_w_bT-SJMH-zfQ22Dz3E1dbHUDzXVhzC5r5eH96lg4bTs6Vb11KFVQhGhUR3OJGZJs0GJkrAf2AxIjD0pbBxJa5nVMJMTXdvRoArW_zXcpP_AKqka2e6wOrmUylruclrjFUa8fwNFfW0B:1rghTQ:PCsWE9VCDseCWQL5ikyXDEtvKSduMwvX7ADSNhlfdok	2024-03-17 08:45:32.68499+00
jqjhxthxjz25tqq5n3n91s36fil6p4s9	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ1bWNuLTg5YjUyM2UzZGU4OTUzZDU1YTJhZTQxMzhlZTgxOTcyIn0:1rmgZl:h1il9n6wotJfOwA21pozHFo_uX7pZd1lJ4T6UDWOKME	2024-04-02 21:00:49.903003+00
xavjl5sa9srtdwe1unylfxtt6qi90oap	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ1bW1kLTdjNzk3NGM4YjQxM2UyMmRlNzhhZGYxZTk4ZDg1Zjc4In0:1rmgf9:rnin1bI2dhxYNWFBHyUv20AJwXUGqQUCpfm_bC6hrvE	2024-04-02 21:06:23.011682+00
y18dpvdi8rb48zha1zvsbjsioeuit5e8	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ1bjE3LTBhYTMwZDQ1MWEyZWE2MDY4ZDRjOTQ4YmNmZDA3YzEyIn0:1rmgnu:natqFv83E1QWcC3RIAyqvJn1CySPnB0s66P-U2fVU2Y	2024-04-02 21:15:26.068138+00
27ok8qtnigrvwuw8paqlt3k3cutpal90	.eJxlkMFuhDAMRP_FZ4QcSOKFY-_9gqpCJphC201WSWi7Qvx7od3LtjfLM_NkzwrsXFh87njJk_g8O85z8N1Z8hSGBO3TCr8ztHDhlD5DHKAAztAqwgatqm1Toq5RG1PAkiR6Psvu7uOVI2zPBfzAu0Pq5oOj4G7Xs3sTfwjDK_uXULrgc5z78rCUNzWVj2GQ94eb9w4wcZr2dGVPpNHZ2hJhbzWOVI-Gxh4NGsJTw32DxHgii0rIOMdsm5Gk1pWmxh5v_W9Dhu7PszUqo6jaT0iS0tGWfF3meIUWC0j8Id3sxwBtjosU4Dju8RVUtUO27Rv01ndn:1rf3DV:Ly24GQre9AIUrt82m3K-JHL5hGSNJ6iGY96-qt8QnqE	2024-03-12 19:34:17.735508+00
v432emqh0j8twslrhtrrx4p1yabbcwnf	.eJxlkMFOwzAQRP9lz1G0SWyvnSP3fgFC0dpxSIDale0Iqqr_Tg29FG6rndmnnbkAOxf3UCbey-pD2RyXLYbp6Msa5wzj8wV-ZxjhxDl_xjRDA1xg7AiNlEJh30ppBq37BvbsU-Cjv7ltOnOC60sDP_CpStNWOR087Cy7dx-qML9xeI2ti6GkzbbV0t7V3B7i7D-e7t4HwMp5vV33SpNApwZFhFYJXGhYJC0WJUpCbdgaJEZNCjtP0jlmZRbyg-gFGVVj_W_Dz9OfsLqT2AtxeyH7nGtb_uu0pTOMeP0GRHhs9w:1rh7FK:6OXKeWS6fx2rOO1tuqH7F-cQXSsjsQb34BdxvFYl69c	2024-03-18 12:16:42.816675+00
82otfr07mmyfsnl39wds4i812s70exad	.eJxlkMFugzAQRP9lzwgZsL2GY-_5gqpCa7MU2saObKMkivLvxW0uaW-rndmnnbkBORc2n0fa8sI-r47yGvx45LyEKcHweoPfGQY4UUrnECeogDIMDTaNlB0arKURyqgKtsTR05F3s41XinB_q-CHPRZpXAumgaedJffJvgjTB_n3ULvgc1xtXSz1Q031IUz89fLwPgEWSst-3WqDUjjdaURhtRQzdrPC2QolFArTk-0FkjCoRcOonCPS_YzcyVZir0uq_2XwNP7JirpFI3F_IXFKpSy-nNZ4hUHcvwH1lGzW:1rp2i3:tS87swi3aqPt-O2pBsaxQsFh-AH-CLgh-dI_JWp3dg4	2024-04-09 09:03:07.764173+00
d1a6qioagbpe2kuts50vnw9b80wvtjl6	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ1bjhjLWZjOWIxNjBiOTE4OGRhYmI4OGU4NzEyNzk3YTFhOGI5In0:1rmgs6:qsnJK1wtYwDh-eAbwt5oiBt90FyVyLDc6fWIn8dFKuc	2024-04-02 21:19:46.0961+00
kpu0vzngaq0g58pdnimp53eyu4bu5zzj	eyJjYXJ0Ijp7fX0:1rfS5I:k0zYyiUyIjf4HB82OgChv3nbNhCxYXYeTGxFvrTPcLM	2024-03-13 22:07:28.409899+00
q5s3qxwkn950hzgfj55e9hgw642ieptb	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ2aXVtLWRhNDI4NWUzNjIyZWIzYWU3YWZiODFhZGYwYzIyODg3In0:1rmrWz:5AdHsUEkc4hj01WhHxA4YxhACZMLimDltLqcc6qlOns	2024-04-03 08:42:41.951477+00
d0ee4zos3u3bneyfn2tyt8lftp8vd0a1	.eJxlkMFOwzAQRP9lz1G0cWKvnSP3fgFC0dpxSIDale0Iqqr_Tg29FG6rndmnnbkAOxf3UCbey-pD2RyXLYbp6Msa5wzj8wV-ZxjhxDl_xjRDA1xg7AiN6JVWpkUtqO9kA3v2KfDR39w2nTnB9aWBH_hUpWmrnA4edpbduw9VmN84vMbWxVDSZttqae9qbg9x9h9Pd-8DYOW83q6F0jSgU70iQqsGXKhfJC0WJUpCbdgaJEZNCjtP0jlmZRby_SAGMqrG-t-Gn6c_YXuJQgtxeyH7nGtb_uu0pTOMeP0GQ8Js_w:1rfmab:p6dVoWIJfvlJhOtnoV5OB11-vpsoQaRrMhntzLGKfzI	2024-03-14 20:01:09.352146+00
mfp99jnx33y4hc1wcte6eb95u3a8oo58	eyJjYXJ0Ijp7IjEiOjF9fQ:1rifzH:h2LSWpp0_8x_Y_0xhRKHAmLIkzEuuGeYwLBNCIkbFDE	2024-03-22 19:34:35.293188+00
ynxwm8jcm8mdi7bssv4lj8h9pq7jwl2z	eyJjYXJ0Ijp7IjE0IjoxfX0:1rpUtn:DFqumgvVkpA7NeMGqnrsj4w2Ej5kRpGqAKxoK7qTUPk	2024-04-10 15:09:07.416369+00
3nwuhxfxjw4rifa9ety2n24cfgvxsp2k	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ2eXRmLTJlNzVmMTRiM2Y4YzY0ZTFkOGIwN2Q2M2ExZjg5NGI4In0:1rmwud:TeAXs2CcK1LD4RMyvruncEU995C12FjAFazNafFQ5PQ	2024-04-03 14:27:27.736304+00
82f3jh2bo9k7cfxb1e0axporihgrtifi	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzRtdWtpLTM3NTg5NWRjMWI1Nzg0NTg5ZWEwNTRjZWE4YzlkYzA0In0:1rq3g9:A7OwTfp4zN_XUdynr2svJb9KpYT3gj1Eqbl5usDMzVo	2024-04-12 04:17:21.831837+00
avdxbw6ja945pzt54in2olkmtnfcutk4	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ2ejU5LTczNWRjNDViY2U5MmQ1OTI0YTFiZjEzMzNlNGE0MGFjIn0:1rmx1b:uYu3CBwL2K2pfTANkH0XBdmH7jDHBuyH4l5b3zchsd4	2024-04-03 14:34:39.852973+00
6uubvnvkxo6ewl2jvse6z7q7me9tvu81	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ2emdlLTM0MDIxYmJlZDZhNGQ0YjgwMDdiOWE4NmZlMDk0YTY3In0:1rmx81:oSmsfwwq2qEdpcQYmBo-CJMz6D3tW-ppCA9A9heQ4_E	2024-04-03 14:41:17.179736+00
6o8cqof2b14jw5pcz78c9zouuyj7est9	eyJjYXJ0Ijp7IjQiOjJ9fQ:1rucSB:WUD_AjeBfP2accUbrWpgERXc-gtweogxWCeY_gbb4LQ	2024-04-24 18:13:47.204373+00
alf7wxxc6p9oanzby22lwjnvslmq4q5v	.eJxtkMFuhDAMRP_FZxQZEmLCsfd-QVUhJ4RC201WSVC7Qvx7od3LSr1ZnpknezZwnAr0GzTQ13sF7FxcQxl4LbMPZXFclhiGiy9zHDP0Lxv8zdDDlXP-immEI3YwakIjJWrZCK2U7DpVwZp9Cnzxh9umGyfYXyv4hQ-nNCwnp4aHnWX34cMpjO8c3qJwMZS0WHFaxF3N4jmO_vPp7n0AzJznI93ojhQ6LTURWq1wIjm1NFlssSXsDFuDxNiRxtpT6xyzNhN5qRpFRsO_bfhxeHhWCkRDqpbHCdnnfLblv69LukGP-w_hS3EY:1rgAyv:BJgNKjiTG9xTwmp_v-kAzIPMr4cqjXplL_cqSxJvTJE	2024-03-15 22:03:53.05405+00
aw64zsakqatbplintn94vlw26krtk9b1	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ2emtkLTIwMTkyNDY5Nzk1YmQ5ZTc2NmE5NWRhYjlhM2FlNDNkIn0:1rmxAJ:j4WkH1jkyLtU7JzJhmumZQZjYRlH2Ero_Kz4AHMMcPw	2024-04-03 14:43:39.71729+00
qoqrkehm8m0upppipa3uprtan3k9hin0	eyJfcGFzc3dvcmRfcmVzZXRfa2V5IjoiYzQ3YjI2LTJiYmY0YTIwZjQ2ODk0Mzc0YTU4NzIzNzg0NmI3NTQ3In0:1rn12c:qdZ2mVQoEd2e-LLhHPI5UjxTGf6ISbZ_RpwJSf-cJWE	2024-04-03 18:51:58.938673+00
lgpfkhb51q6f0d4o6iacgqh5hzt1ak4b	.eJx9UMtuhCAU_RfWhqCogKum-35B05gLXEdahYlgH5nMvxetaadJ093Nedxzci4EjAmrT_0rLm5waHucwU2k8-s0Fd_sGnEhHWnIDwRrGtEnZyC54PsZ0xhsJN3jhXzdWX-GGN_CYjdbIl0pSsZrJZSiqq7buiBHGJkhJR2sRX93CuE07Tg1Yc7OLdvDjP_Krk8F2SvtVXtnj7Y3mAbzgn4j7DP4U8g-nxan6SahBxvpQ7A43R_aXw9GiGN2C11JpvggaikMMOQCVQstb4S2rFSWKxiU5EowDQNjmlmWoQZ12QJiM_y9YV7-ZiLJGK2UkpVscoWIMW4b4_vZLR-kY9dPnTaUYA:1rkS76:llxY1KzeTrby7a7vobZZ6_aYLuiFD7TQ51YjItq-SzM	2024-03-27 17:10:00.301377+00
9u7ogvvrw3xpynu68pfpprq3y2kwibgm	eyJjYXJ0Ijp7fX0:1tPUFK:SI7ToucrNEzJAc-9k00UtjLh8PGep53ZVskf1OEbOVQ	2025-01-05 22:16:22.452604+00
2rfgdcwaga91h0tbevtzz1por0aswe3a	.eJxlkMFugzAQRP9lzwjZgL2YY-_5gqpCa7MU2saObKMkivLvxW0uaW-rndmnnbkBORc2n0fa8sI-r47yGvx45LyEKcHweoPfGQY4UUrnECeogDIMEqVsdYONqRuFqFQFW-Lo6ci72cYrRbi_VfDDHos0rgUj4WlnyX2yL8L0Qf491C74HFdbF0v9UFN9CBN_vTy8T4CF0rJfN7rHTjjdakRhdSdmbGeFsxVKKBS9IWsEkuhRC8monCPSZkZuu6ZDo0uq_2XwNP7JqqQ2UvT7C4lTKmXx5bTGKwzi_g3w2GzE:1rohcf:G0CEZONvUpv1YMUdKhf_yKV36VR2ccthqwKk7F-Pv1w	2024-04-08 10:32:09.518138+00
8k71r0ogkt0cf8oc11elxi8fghz6vcii	eyJjYXJ0Ijp7IjYiOjEsIjE0IjoxfX0:1tP8zi:gwuPLQeI7tzIHbrr7yZ9cddiaQ7__HgmzULT6w_qG_M	2025-01-04 23:34:50.792991+00
2ev63dfi4vlrymzl802m7cz7kvsi96nf	.eJxlkMFOwzAQRP9lz1G0bmxvnCP3fgFC0dpxSIDale0Iqqr_Tgy9FG6rndmnnbkCOxe3UEbeyuJDWR2XNYbx5MsSpwzD8xV-ZxjgzDl_xjRBA1xgECSElBKlbtFIo6iBLfsU-OR3s00XTnB7aeCHPVZpXCtGwMPOsnv3oQrTG4fX2LoYSlptWy3tXc3tMU7-4-nufQAsnJf9-qB7kuh0p4nQaokzdbOi2aJCRdgbtgaJsSeNwpNyjlmbmXwnD5KMrqn-l-Gn8U_WThmhpNpfyD7nWpb_Oq_pAgPevgHr7Gy7:1rp2mE:1FuJYjNNmUuX14p5-jL-b97mxbEvxFFEN7tWjuWlrng	2024-04-09 09:07:26.36009+00
8lzvbfxenmzpnc4r70t11ghph77f7jb9	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJiIn0:1tPhkJ:_soYYXShn-w-e7dsRTBKXon_mOhB5I6AHHAH8rdgxrU	2025-01-06 12:41:15.749148+00
wb7dlahltiew42ir0ty2b4t50x61gxi5	eyJjYXJ0Ijp7IjkiOjF9fQ:1tU5gf:wMvzFowUs1N2zAsmnC1qDzxrmT9HoKkSmmouCQuUZpg	2025-01-18 15:03:37.595868+00
w1fa5iisuasfabf6oossfwb5v9kvannf	.eJxlkE1uhDAMhe_iNUIOzQ9h17lGVUUmWIJ2CCMS1FaIuzeZskGVN5bf56dn70DeL1tIjrY0ckiTpzQtwc2cxmWI0L3t8NdDBw-K8WtZB6iAEnTCCKFbhS3WRms0poIt8hpo5gzTTOEDjvcKnt6uSG4qNhIus578J4ci0P1exvWZqX4ypxzr10vC27l1sRopjtmnb4T1lhHRSquVEkZR73NJNKRQmMajaoxF8UJSa91ImREeWDK3Suty3_-38OAuV4saM2uNzBEix1jext-Paf2BDivwtGZ6B9HkneP4BWtWdZc:1rq3Xp:GhouD57jX72qlQDyRDXdN1iawZWw9SVdjpRLMTUpwpw	2024-04-12 04:08:45.996959+00
uxv6dd4hat524xaqfa3ivu4hzc84qs7n	eyJjYXJ0Ijp7IjEzIjoxfX0:1t2SRV:pXxIgkmdscoF_Ba6NhDIbdovBflPqIOZx9R0HNWAebo	2024-11-03 09:41:45.481984+00
u8yh0ma6svg1pwwknpwro7zsqxgnp1r2	.eJxVjDsOwjAQBe_iGlmbxN61Kek5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqzGMTpd_McHqnuIN653poMra7L7OWuyIN2eW0xPS-H-3dQuJdvPaIhBQEnJAKPCjJNWVP2oEETGMveAjEYQhgS6RCY0WZKkxoVWRTvD6URNmc:1rvlXK:H0AYoU15rZsYJoUQvpSHp0brjAY-ZAdx7IbKJ78PoQ8	2024-04-27 22:07:50.191351+00
kjgm6yptfh9u6jhwb20uahg03gttinfn	.eJxlkEtuwzAMRO_CtWHQP9HysvucoCgMSqZrt40USDKSIMjda7XZpN0RnOEDZ27A1vrNpZG3tIhLq-W0ejceJS1-ijC83uB3hgFOHOPZhwkK4ARDRVVTd6pHLAm1UnVbwBYlOD7K7jbhygHubwX8wMcsjWvmVPC0M2w_xWVh-mD37kvrXQqrKbOlfKixPPhJvl4e3ifAwnHZr2vVU4tWNYoIjWpxpmbuaDbYYUfYazYaibEnhZVQZy2z0jNJ09YtaZVj_W9DpvFPWN0T1dX-QZQYc1lyOa3hCgPevwHPCWy_:1rweMC:Z8Mx2ABpTlW5_XdB18x6u3oksyCafWqTnaekqvmdzEk	2024-04-30 08:40:00.989042+00
8l8688512oeoeh2ri4bi70kpw1elew7r	.eJxlkMFuhDAMRP_FZ4QcAjHh2Pt-QVUhJ4RC201WSVC7QvvvJe1etr1ZnueRZ3Zga8Pm88hbXpzPq-W8Bj-eXV7ClGB43uF3hgEunNJniBNUwBkGQUL2mkhg3ZLQfdNVsCUXPZ_dQZt45Qi3lwp-zMcijWvxEfCwM2zfnS_C9Mb-NdQ2-BxXUxekvqupPoXJfTzd2QeDhdNyXDeqpxatkooIjWpxJjl3NBvssCPsNRuNxNiTQuGos5ZZ6ZmcbJuWtCqx_rfhpvFPWJKqOfIeLySXUmnLfV3WeIUBK7AcD3oHCUNzu30DyaxxNw:1rzL7C:X6bbmUvMaMVGQEsU-UI2GSeKzjA80bKRX5lVEUO_Vgs	2024-05-07 18:43:38.117111+00
su0uh33uqhxd3281fb4g7gk13798suyo	eyJjYXJ0Ijp7IjExIjoxfX0:1sSAZ6:KZmno2pCIu4yg_XaJcCeBsKS6Z7TVM8YPXk05hASqRs	2024-07-26 07:19:36.503721+00
g6tb8i1t62w03m20ej2p9yii73b7a4to	eyJjYXJ0Ijp7IjEzIjoxLCIxMSI6MX19:1t2U8d:aJ1qrnq8vBRtj-WRNRed-EtBYgCR0rgm9C_WrMm3-gM	2024-11-03 11:30:23.215883+00
o6zu7am4ihj17xasm2itqueoel6n7v59	eyJjYXJ0Ijp7IjciOjF9fQ:1t2Uxw:ilgyZoszHYPwCh2JjPb2aTv_R9x87N_Od032UmeOhv4	2024-11-03 12:23:24.50587+00
avxrvw0po1ylrtt2d6o0gpex8ixaxj16	eyJjYXJ0Ijp7IjEzIjoxfX0:1t2Uyp:41HBSdTQ1h5SZo4C0-TSEFpdoBiRHHjEjZxbhTkvw4M	2024-11-03 12:24:19.351051+00
4pbbcaij9e0aj1nlrvqlvz2yp2r2cxrb	eyJjYXJ0Ijp7IjciOjF9fQ:1t2V10:NBWUM1Qfx1m6fRWe6hjFfcmdiEYC28XvT0x5H7stVpE	2024-11-03 12:26:34.559249+00
0encxdxa33fbrbe0930g5hdp5su5jxbi	.eJx9UctOwzAQ_BefS-RnNukJ-A2ErLW9JhFNXMUOUFX9d2IohyLEzZqdmd0Zn1nGN7LjHBPbl2WlHbNHzPk9LcEulKnYVzqxPfMun7S-k1qZHiCC9NFFQoEtOABDznAUbc92DL1P61wsrmWguYwey5hmO1EZUshs_3Rm3-_N9WdVlRW2FyAVSADeNor3oDq9YzTheNiobjnhkvKEc-PS_UtFG5-mTblmWmac6B_S5XnLVQ-ylWzHuluwG8yhf6W5DvBwqHBzDdJ8ca7j3DzcxHq8qm6sBszD5hM1gpat9kbK2HVadMoIGTSHQE5BHzse0HMnVB8xKEldNK53vcLWCB3g7y4p2F9VtYaDULCdkCnn2jV9HMdl-zV--QQPV59f:1seaKd:iMtMbhOu98ERN9mxNspGlrbEYkiCHQUZW8WXaxplFuk	2024-08-29 13:15:59.562401+00
lx5iyhkbpn8g3d5j65puv7ftk94voovt	.eJx9UctuhDAM_JecKUoC5MGp7W9UVWQcp6AFsiKh7Wq1_17Ybg9bVb1Z45mxPT4zd4SUPuLi3UKJsjvQibUMg0paPUjNG661VKACisqSpyYIMoCyQS85KxggxnXODtbc05wHhDzE2U2U--gTa1_O7LveXH9G7bLMWqGlrYXkypZVpRtRF4wmGMaN2S0nWGKaYC67-Pi2oyXGaROuiZYZJvqHdHkt2HUft5PdsI8W7A7rAA807w0Yxx0ub3eUV86tncqnu6ueb6o7qx5Sv_nYLljFuUeNWpCVhkOwsuNovFTY8Rp9VVsujeKmNgGIamOE1g2RAgj4d5Tk3a-klFLGWL2tkCilPWr6PA7L9jResATv5IY5RNbmZaXLF2JQn4Y:1t2Vs7:eumgcTdzku0HIxVGR_zVtUAywbJ2hr1TaLLINBbW3Zs	2024-11-03 13:21:27.248096+00
haylacpew32hgjnnadvlvsj57q5wj56j	eyJjYXJ0Ijp7IjExIjoxfX0:1tHowH:uepsOnLAEI_W78_qaU2dJ0L-w6-rJpIkoA1THmB2jiQ	2024-12-15 18:45:01.978047+00
vk2kvu8l9cfefw65kg19phz5xzkuuj23	.eJx9kM1OxDAMhN_F56pq2qRJe0LceQKEKuePBrbJKkkFq6rvTgJ72Qs3a-abseUDFMYM8wGEwEzOBlCpsPu84J5X47NTmF3wy2byGnSC-fWAvxlmuGJKXyFqKLFSQvgwdFxwwdqh59M4NWA2dJdCynjDuIS0oX9aQ65qq8JWgnsy0eNm_oHOtwZ-71kqvLi6eoIHTaL6NL4a-gP9eyg5n6OTbUXau5val6DN5fnOPhSsmNaS7hnVHCXVYiBIrRbWCtMJNupeIS8asd1kNdXYW8HVYAkbGeWjoFKxjslamkxK9WXm--riDebu_AFQ2nfv:1tHoxd:O_h4w1m7l4xab_sMjL2-LQzeNJdkMZpofDGmgDvM0ig	2024-12-15 18:46:25.679622+00
hbtz1w88zlqrb8v9m7kvqtyq81vd9kzx	eyJjYXJ0Ijp7IjExIjoxfX0:1tHoyZ:jiQgu6GjTa4EvtVN98A2M7dEEl5IPErh_nndnSbv97g	2024-12-15 18:47:23.443373+00
eepiank34l0jgz6i7cjwfpadf3e2lkik	eyJjYXJ0Ijp7IjExIjoxfX0:1tHptR:g7tQeH-YHr6hSu7hYAW-0vo5Q_oemk9K_HvVrWOlipk	2024-12-15 19:46:09.269073+00
ptvojuro0ca4ss7u41w8usuzf5qj95k9	eyJjYXJ0Ijp7IjE0IjoxfX0:1szWPM:stwrRAvA4Ah5h5szjw14iLRLH9W-Z9Ya91qIrSrpkS0	2024-10-26 07:19:24.481008+00
2b9hwkidij3oqzp4a7nbry6n7m710wxe	eyJzYXZlX2luZm8iOmZhbHNlfQ:1tHq5B:4YwEbIlzRWtpRhzxQJ-lWeVbQpJFdY15k0yt4XG6cqk	2024-12-15 19:58:17.165783+00
oybcoxxm7011epnram7mch6fkcxoijgn	eyJjYXJ0Ijp7IjExIjoxfX0:1tHq5o:hH1P48XPHY3t6CfK7iNBK4wBSYmPzWBrgNCvNhm09ng	2024-12-15 19:58:56.6893+00
ovr1so4hwmydsne9udnndwifm86dd58p	.eJx9kE1uhDAMhe_iNUIhZEjCqu01qgoZYwrqkIwSUDtC3L1kyoZW6s56_p5_3gpI5Bc3N7jMA7t5JJxH75qJ58F3EerXFX5qqOGGMX760EEGOENd6FKaUiht84sojFYyA55wvO5oG-4YfJzQ5a1_ek9qTn7anUvk4HDif6DtLYPHQU2CmzHtLuCktUgf7FIDr9ck58cj-YM52jF_Pr31crhOowaMwz7Htr2thOhIky7YSiOwt7IVZDpZUSsUdaWyQppKGGV6ZFbGFFpfmCvEnlIof7PkrvkVlVaVleV-QeQYU9T8dRvDHWqRAWHY4RVkuVu27Rv3RYoH:1tGnK4:4-65lsD3BwXkMSBAQKV9pzjUF4zISGDBJRL6qbSvVcM	2024-12-12 22:49:20.170292+00
v4fi7qi61dq47295wua38nw0rtu2dos9	.eJx9kM1OhTAQhd9l1qQptNDCSn0NY8i0HYQI7Q2F6A3h3aVXNmjibnLmO_NzNkBrw-qXFtelJ78MFpch-HaipQ8uQvO6wU8NDdwwxs8wO8gAF2hyJQotuCwFK7nIdZ4BTTiMB2nmO84hTuiZCU_vSWU2TIdxjTR7nOgfaH_L4HFPm-B2SKtzuGgG7Qf51MBxTDI7_2AP5mxH9nz56uV0XUb1GPtjTm26uuLcWWVVTnWhOXZ1YbjVrqis4dI6IWte6IprqTskklrnSpVEFWJnUyZ_oyTX_kpKSSW4OC6IFGNKmr5uw3yHhmdgcT7gDdTh2Pdv_B6JiQ:1tGnk4:3X2Gw3GwXfMhA945UJq1zvs915fSaZ0W0ToMJbzrmyI	2024-12-12 23:16:12.251508+00
3nlo4g4lx5xrl0au8d8l3x9wq5pg7ou1	eyJjYXJ0Ijp7IjExIjoxfX0:1tHq8v:dxeG0NRSisb9tUtA_gMiOFUDlJLzYlFb6QRD27Nssj4	2024-12-15 20:02:09.277301+00
9i1iafpsqpam9g02zw4mlyg4sgkg648n	eyJjYXJ0Ijp7fX0:1tGntt:aVluJ_f8gdxV8-mgrEbvTHwe-9cnUpEVhFiQ5RkouVU	2024-12-12 23:26:21.564398+00
1889jqcv0tlv6uawve712b98t0yk76s2	eyJjYXJ0Ijp7IjExIjoxfX0:1tIvvr:n667Ia-n-Vz_fXW9u0yBXRrdALJJVXoiIb2TExiLZuY	2024-12-18 20:25:11.493435+00
5seusqslik8sr7pxuw0rajz4esn0gtwh	eyJjYXJ0Ijp7IjExIjoxfX0:1tIvxZ:JAN9MW_eK6oKhdv5_6Fjv1IDUDaMpcoSYIjl4Bs1plg	2024-12-18 20:26:57.432418+00
cbshbrnzorwd6mr218uqwj7w4cgslch1	.eJx9UEFuhDAM_IvPKIKEEODU9htVhZzElKiQrEjQ7mq1fy_ZcuFSn6yZ8djjB6AxYfNpwC1N5JMzmFzww0JpCjZC__mAvx56uGCM17BaKAAT9JUSQu5VC8a7uhS8AFrQzbtSr3dcQ1zQMx3evjPKTFj2wS3S6nGhf0TPrwJe9wxZPLi8uoITptH8kM8EznOG2ZGDvTQHHdn7KdXHMXWymjBOu884km4517wWmiwKriqrOq66lmi0JCTZUVWyk0ajagU1DZZGaalqFGVT6mwaKcb8PLpd3HqHvnz-Ag2qd8E:1tJozH:YcEpAFXDPlmybfPzqvN0cuCvvGP9xXsjk2CoNY_wMj8	2024-12-21 07:12:23.540815+00
leu9e5sem3dy2d1m42ieamptcvhdt749	eyJjYXJ0Ijp7IjMiOjF9fQ:1tJz5u:ooGwRXTpZV_bAHXiYLYSLh5uO8GzG3MBQ07i9Cz61Lo	2024-12-21 17:59:54.603738+00
5vavhif34vmr4i8to3y7bq5hfb7d1r4r	.eJx9UM1ugzAMfhefUUQSQoDTtteYJuQkZqBBUpGgtqr67iMdFy67Wd-f_fkBaG3YfOpxSyP5NFlMU_D9QmkMLkL3-YC_GTq4YIzXsDooABN0XEtZcSGUZo2UjS5FAbTgNO9Ss95xDXFBz0x4-84os2HZnVuk1eNC_4ieXwW8DuqzuJ_ybg4nzKD9IZ8JnOcMs6MIe2kOOrL3U62Pw3WKGjGOe84wkGmEMKKShhxKobnTrdBtQzQ4korcoLlqlTWoG0l1jaXVRukKZVmXJodGijF_j26Xab1DVz5_AWBVd_Y:1tJDiE:nuT4YBIG33EFHxd7aHymG_FCm15szfSlSUfQscmXFAc	2024-12-19 15:24:18.078846+00
zm40nh18vy53vrclg7xd5efya5przv9r	.eJx9UEFuhDAM_IvPCEECSeDU9htVhZzEFNQlWSVB7Qrx95ItFy69WeOZsWc2QGP86tKAa5rIpdlgmr0bFkqTtxH69w3-ZujhjjF--2ChAEzQ15Jz3ikhZMlk1SjFC6AF59tB1eGBwccFXan9y2dGS-OXQ7lGCg4X-oe0fxTwfGjI5GHOt2u4YBrNF7m8wNstw-UZpHxyznUsXy-x3k7VxWrCOB0-40haMaZZwzVZ5EzWVnZMdopotMRbsqOs2641GqXiJARWRupWNsgrUelsGinG3B793OfwgL4qwGA4qtqAiaOwff8FGN18bA:1tJJR5:McID8sxvXCCjYIA9r1xKGiTgEPhyyAavNlcKGi08Nec	2024-12-19 21:30:59.274866+00
3v62qykjc2jblqvu1j8okjknll2jeu3i	eyJjYXJ0Ijp7IjEiOjF9fQ:1tK386:l2kFKtFo5VGtOi8ZWaoDGN69T3E3mG2Kp7SDt8J5pyE	2024-12-21 22:18:26.44462+00
d6o0b26tt9d1zg2zvk3ianyl8vbp0dwi	eyJjYXJ0Ijp7IjExIjoxfX0:1tJLFR:8xc09XVerqG2cHXpmonp8-ZBu2rJzx8zD6wJ9nRhGVM	2024-12-19 23:27:05.756176+00
0cdt95owo9ps8gids8w9b5088l2dhfhs	.eJx9UM1ugzAMfhefURQSIMBp22tME3ISM9BIUpGgtqr67iMdFy67Wd-f_fkBaEzYfBpwSxP5NBtMc_CDozQFG6H_fMDfDD1cMMZrWC0UgAn6UklZC9G0nEkuS9VUBZDDedmler3jGqJDz3R4-84oM8Htzi3S6tHRP6LnVwGvg4YsHua8u4QTptH8kM8ELkuG2VGEvTQHHdn7qdbH4TpFTRinPWccSbdCaFFJTRalUKVVnVBdSzRakjXZUZV1VxuNqpXUNMiN0rWqUPKG6xwaKcb8Pbpd5vUOPX_-Alred_E:1tJgRE:WGBwU54uL6WMhN6Yn2hKG12QlRg-IoKeWHfhE2pRacY	2024-12-20 22:04:40.544571+00
i5f1rqsh17geh8f7len8mq6nddg5e81j	.eJx9UEtuhDAMvYvXKMoHCLBqe42qQk5iCupARklQO0LcvWTKhk131vvZzxtYDAm6DQR0Yi8ArfXrknpc00hLmiymyS_9TGn0LkL3vsHfDB3cMcZvHxwctiNDaKVqoTUvWVuJkgtZAM043Q6pCQ8MPs64MONfPjPKrJ8P5xopLDjTP6L9o4DnQX0W91PeLeCCGbRftGQCb7cMs7MIe2pOOrLXS62303WJGjGOR84wkGmkNLJUhhwqqYXTrdRtQzQ4UhW5QYuqraxB3Siqa-RWm0qXqHjNTQ6NFGP-Hv3cp_CAju-_Qn98HQ:1tK59t:zGIIHmw88PxX7vYVhM1i65giaNj9rZQPfL1e7Ix2wbk	2024-12-22 00:28:25.303064+00
hmo92hejxaxjh4xzftc9wvrtcltm15oo	eyJjYXJ0Ijp7IjEiOjF9fQ:1tK5a3:6PMCN2xZrwYYCOQzJrIb0cylH9-cbVueOID9VbF_Ocw	2024-12-22 00:55:27.73872+00
48uj2ccqafmis2qr3797wqj4kq4ewnjc	eyJjYXJ0Ijp7IjkiOjF9fQ:1tK5y8:CNB4ZXVb9n-pEcyqrxqWkUNri0fq7vvo7Vsb7loNCSQ	2024-12-22 01:20:20.449746+00
v91s5m5kw2yb928jqok0bbpis6mxp08v	.eJx9UEFuhDAM_IvPCCWEYODU7TeqCplgCiokqyS0XSH-Xthy2arqzRrPjMezQqAPbkbbO6h7mgInYMhHqFeQEupsS4CMcYuNDS1xYBtHQ3F0tpk5Dq4LUL-s8DNDDVcK4dP5DnbZbiJRqSKTRZ6lqsylrDABnmmcdmrrb-RdmMmmrXt6O9DUuHlXLoG9pZn_IW2vCdwDNQe5GY_bEh6wlsw722NB03TA6flIeuec65BeHt56PlUPVgOFYffRVDFWqI1WqpTYcyUkdpRjVgjVslatYkEKsc8rFGiUMliKvCzaQhjZFfBnl9w1v6pCoTVWeo8QOISja_66jv4Gtdi-ASVlj08:1tK6BO:YFkD83GOvny5kTfzOgEHcJH95XDTIUD-gZxdH1G7HjE	2024-12-22 01:34:02.746089+00
vtnahbk16igt1zfu1y1dw316uw2efrqa	.eJylUMtuwyAQ_BfOrgXm6Zza_kZVIViW2kpsR0DUR5R_L7TpIVKlHnqDmZ2Z3TkTe3Q5v24p2IQZi93jO9kRmNbZf9wBHYUKHrQLGIU0SMMAbhgj9SNVDElHHMB2Wot1pzLhWmZwZd5Wu2CZtpDJ7ulMvt_V9SeqyQrZMc25lExp3msmqOAdwcXNhzrpU3JG3b-0bw_bUhWnjGl1C_7GXro_U_Qw9qOhRpl_xDx3xGbMuV2Ib8c51a5oxdrxtint3DZglNyA3sEe18a4w6HB_bW1_mvmSuf-4abDx6vqxmpyeao-IsY4gOKSKjQeNWPA6BhEAMNHbiITHEAZYJIKqaNTSjMIgXkphzAEX03BpdrOmTBeO7pcPgEjWKov:1tJo1M:Z5Xb5LMMVtVSlUwpvk_FNeNz8Vy1RnBWFdiaFqsi1eg	2024-12-21 06:10:28.223395+00
ufoztagzmwwnzvl31elccwd5m2mbf0i3	.eJx9kMFuwyAQRP9lz5aFbbCJT1Xu_YKqQgssNW0MEeC2UZR_r2lzyaW31cyb2dVeAY2JWygKt7JQKN5g8TGolcoSbYb55Qp_M8xwxpy_YrLQABaYu2kYhDx0A2snzkfBxgZoRX_aUZ0umFTMK4anJZaqtiaue3LLlAKu9A90e23g9yBVYeXr7gM8aBrNB4Vq2HcMb3HPhZK8bivS3t3cPkdLp-OdfShYMC97uhfcTqi5lUOH3FnpnCQmxWh7g9OudY4dnOUWeycnM7hOjIJPo-TaCCZ0Lc2Uc_0ZfZ99usDMGsj4ScoHF2EuaaPbD3Feedk:1tKDIW:20vSHqtwdnsq-DqFSNv8MNtD2uPch0B6ndcvOpPDYT0	2024-12-22 09:09:52.110648+00
hk5x19vgaxr4xzcp5hdke06i6e5bfdc4	.eJx9UEFuhDAM_IvPKAobkhBObb9RVchJTEGFZEWC2tVq_16y5cKlJ1sz47HHd0Dn4hZyj1seKeTJYZ5i6BfKY_QJuvc7_PXQwRVT-o6rhwowQ1drIZTUl1YzzS-CG1UBLTjNu9SuN1xjWjAwG18-C8pcXPbJLdEacKF_RI-PCp4H9UXcT2V3DSfMovuiUAic5wKzIwh7ag46sddTrLdj6mQ1Yhp3HzN43vKmlY0ShhuBpKyyorF79TXp1jokiQUkHLQ3kivppOYC5aCkLaaJUirfo5_rtN6g449fR1F30Q:1tKFSJ:uPXPR6op5FeoOhHTF3pjMOKXzmH8aAUexyQGaA-u05s	2024-12-22 11:28:07.938805+00
u7p2dpyoo28ujlw1hkdrkr6zv495ivm8	eyJjYXJ0Ijp7IjExIjoxfX0:1tKI1r:qOttUUJGqW_TuGLRebU3jTQrlUI-3M-8wv1Wi_FQ2i8	2024-12-22 14:12:59.564848+00
b4wkse3rqxxvbdyc2wmk6dajsoe95rzx	.eJx9UEFuhDAM_IvPCCUNSYBTt9-oKuQEU1AhWSVB7Qrx95ItFy492ZoZj-3ZAK31q0sdrmkklyaLafKuWyiNvo_Qvm_w10MLd4zx24ceCsAELddCKPlSC1VqzTjnBdCC03woTXhg8HFBVxr_-pnR0vrlGFwjBYcL_SPaPwp43tNlcTfl1RwumEH7RS4TOM8ZLs8_yqfmpGN5u3z1dk5drEaM4-HTDD2rWVXLSomGNQJJGWVEZY7ac9K1sUgSM0g46L6RTEkrNRMoByVNNo0UYw6Pfu5TeEDLCrAYjqS2ff8FpDB63g:1tKOta:SRyBiuXoESltZwr9rAtvfImPhbEcxJTzHf7l9-A9EYM	2024-12-22 21:32:54.131557+00
kl1wgpisp96ga7o6qqba23papei4yjy4	eyJjYXJ0Ijp7IjMiOjF9fQ:1tKQwJ:3DA9X5pgQX9eLXCRot-v8f6Tbi7U8s6RnXizSMBUI3s	2024-12-22 23:43:51.593043+00
1ugopzf9yrbh80qkkt0wpdmqaevqf01h	eyJjYXJ0Ijp7IjMiOjF9fQ:1tKQxt:zzUrnzxQTuAG15QXyqqykUao5ddXq7-HyN4UBxRgTlM	2024-12-22 23:45:29.0931+00
ji3p3u80bzyg0q1adtpigbhjyemmr2wc	eyJjYXJ0Ijp7IjMiOjF9fQ:1tKQzH:yHNc0y3ZgSIAs5oXa8Nw7VDepc-h9IWuEmbEDvVdrh8	2024-12-22 23:46:55.536857+00
9f8lxw8g5yl2rh9p1dnwzx5q9sy2ti2y	eyJjYXJ0Ijp7IjYiOjF9fQ:1tKcat:tkQRBFm8p8cR7-KiTb7lI9HuVXWs_4jzjxmAzUD6N9U	2024-12-23 12:10:31.09295+00
f56fp7h6hfz051q7o9in289qal5eipfq	eyJjYXJ0Ijp7IjkiOjF9fQ:1tKcdy:1rf_o923qMAEi5AK4M_qBoE2VWYR2p1qm1d0hvEJxjk	2024-12-23 12:13:42.962645+00
inv339fx7g5nm6i0o4khq5ihsbad6y2s	.eJx9kNFuhCAQRf9lng0BQVGf2v5G05gRZqvpChvAtBvjv1e2PtQ06Ru5c2a4966AxvjFpR6XNJJLk8E0edfPlEZvI3SvK_y8oYMbxvjpg4UCMEEntJS6KWXZspZXLa8LoBmn604O4Y7BxxkdG_zTe1aZ8fO-uEQKDmf6B9reCnj46TPcT_lrASdtQPNBLg_wes0yO3KwB3OMI3s-pXo5tk6nRoxjNjNoo1ojK6m5loZzNTRWGeLNnu1SColWSaE0VVaW5qKp4aq2RpC2NZaa507-Vkm2_92U5EzUvG6l2i1EijFXTV-3Kdyh4wUYDDu9bts3qr2IQA:1tKmjN:i1Y0GMPfl6PHHxKsOyusWmWMZq4v3IBnnUxNe6BQt9M	2024-12-23 22:59:57.916578+00
d29040n4omda4fe16gl41b294ogryhq7	.eJx9kNFuhCAQRf9lno0BQVGf2v5G05gRZqvpChvAtBvjvxe2vtgmfSHkzrlw526AWrvVxgHXOJGNs8Y4OzssFCdnAvSvG_zcoYcbhvDpvIECMELPlRBKibaWJe84Y7wAWnC-JnL0d_QuLGjL0T29Z7XUbknGNZC3uNA_0P5WwCPPkOFhzl9zOGkj6g-yeYDXa5bLY4_ywRzjUD6ftno5XKenJgxTDjMqLTstaqGYEpoxObZGamJtx-pLxQUaKbhUVBtR6YuilsnGaE7KNFgpljv5WyWZ4VdTktdCSJUiBAohV01ft9nfoWcFaPSJ3kDx5CmgSee-fwMDsIpj:1tL4MC:jSmxBdRWAHBCuRx4qkfu-5zBXk4GRC1jHVyVk3tlLWw	2024-12-24 17:49:12.35753+00
xis137oxfetiuysbyudu1awjvd7tart1	.eJxtUEtuhDAMvYvXCCWEfIZVp9eoKmScUFAhjJKgtkLcvWTKBqk72-_jZ29AGBI0G3Boqr0AJFpWn1pc0-B8GgnTuPh2dmlYbITmbYO_Ghp4YIxfS7BwyA4ProXQRhphSsW0rpkqwM04Tge1CwGNevnIbUnLfEjW6ILH2f2H7u8FPCO0mdWOeRtncBl2SJ_OZwSnKY_LM3v55JxwLO-XS15P1cVqwDgcPnXf9xUpIZlypnOac-LsZmtLRtyE6XktiJQhLlktdY9KaU7W8k7Kyla2y6bRxZgf5r4fY_iBhu2_dWx1eQ:1tKmti:vPw0fcM16BsQdnVvywdK6T8jq4yVMRbC5bfF_zjJy9E	2024-12-23 23:10:38.98055+00
yb6spb2lnwdxmsps6jalxc06ibk2lai8	eyJjYXJ0Ijp7fX0:1tP8yD:I0IzCiLk7wUG0uh-0ptvz56CnKzQiOkm_cg3-uBe0aE	2025-01-04 23:33:17.10164+00
s04anidarljxnua5ty36rm7b3f2rs4ds	.eJxlUEFuhDAM_IvPKMKEkIRj7z31WFXIOGGh3U1WJKitVvv3knYvqBfL8oxHM3MDYo5byANtefYhL0x5iWG4-DxHl6B_vcHfDj1cKaXPuDqogDL0qGVrldbYCatqZbSuYEt-DXTxO_uFTgT3twp-tYeCDEuRQYTDcST-8KEg7p3CKQqOIa_LKApFPNAknqPz56cH9yAwU5r375Z904yeDU9WG8eTHsd2Hw1qwzhphU7qjo007GSNiLKhzmq0tpFsJiqx_rfh3XAIqwUapbC2u4XkUypt-a_rsn5DX99_AKN_bhs:1tPhkz:WlwURpEOpVbE5WTo2UX1ip1yDiwC34YNNwp1crAgWjk	2025-01-06 12:41:57.186728+00
lc2he3p76ypke2n4ha8t6m16h6drke93	.eJx9UMtugzAQ_Jc9I8sGY2NOTX-jitD60WIV7AgbpVGUfy-mXLj0tprH7sw-AY2Ja8gDrnl0IXuD2ccwzC6P0SboP57wN0MPN0zpHhcLFWCGnsmGN4JJQUlLFVdCVuBm9NMm1csDl5hmDETHt6-CEhPnzbkmtwSc3T-i17WCPdBQxIMvtxmcMI3m24VC4DQVmBxFyK456EQup1rvh-u0asQ0bnustSg_Ka2Rc60t1x1FZTvGrRGtU4WgWnSqsW0juGK0Zo2qqbMtE1KwPV9yKZXvuZ-bXx7Q09cvNgh2jg:1tNCim:IUJ8MJN__-PPDR5au9bJR7JbRpgTmocSyYowbfoSKvY	2024-12-30 15:09:20.756271+00
0p7m8fv0wh5fpxdvnww4pa4kbh7c8gd4	.eJx9kM1OhTAQhd9l1oQUCqVlpb6GMWQ6LUKE9oZC9Ibw7rZXNmjibnLmm59zdkAiv7m1w20drFtHwnX0rpvtOngToH3d4aeGFm4YwqdfDGSAK7RFwyslaslkXtRCqLLOwM44ThHVyx0XH2Z0ufZP70nNyc9xcgt2cTjbf6DjLYPHQ12CuzHdLuCiaaQP61IDpynJ-WkkfzBnO-TPF1sv59Rl1YBhiHtYj9RX0qDlWlQ6euOGqYLrsmoUSU4lqVIbXgssOLeSpKixKcnIhnqm-xTK3yyt6X5FxVXDmIgfBBtCitp-3cblDi3LgHCJ8A4C2vI4vgGWCIoG:1tU5dr:rXhP-twQR2XqeS5PVSwB-Bfm4MkkEaxHAniihbUF-sA	2025-01-18 15:00:43.853457+00
gg1i3yrj38ghtkrciifjlig8fqxb8oze	.eJx9kMFugzAQRP9lzwgZYwfMqcq9X1BVaL02xW2wI9uojRD_XpPmkktvq9k3M6vdgDBmGDY4wdDsFSBRWH0ecc2z9dkRZhf8uNg8B5NgeNvgb4YBrpjSd4gGiq1kNF0rOiUYZ3UnFZe8r8Au6C4F1fGGcQxpQf8yh3yoNYWlONdko8fF_gPt7xXcDxoPeHRHt4InTSN9WX8szCf6j1B8Pken6wOpH9tUvwZjL-cH-xQwY5qLm-nTNAkuiDQq0RqmiJFp2WQ4tqxvqWk4k6RVIwzrZYMklVSdYN0kS8s9NNmUjp_Zn6uLNxjY_gtLbHfC:1tP1Aj:1VyML-_LP_iIRITBkV1gMncilONRZAuQV9eJfCFhsZw	2025-01-04 15:13:41.134936+00
nl3n109krx6d56hrhkoyt73g9ymxhzu1	eyJjYXJ0Ijp7IjcyIjoxfX0:1tUCBu:30IQ5wj5ky4A2clnC7xqqnTDDAdEflapiP51PcKW6lA	2025-01-18 22:00:18.313408+00
cm4l8gethw3bz4mu5lpvaxp4wk4ogj5a	eyJjYXJ0Ijp7IjYiOjF9fQ:1tVIIe:OQVrG2TbpppmFHxXH3ExMVmcofmD3xj6-KlyMwllJvU	2025-01-21 22:43:48.323324+00
jo8vc7kddv45e5i87stnj496wcc9dwkb	eyJjYXJ0Ijp7IjkiOjF9fQ:1tYLjH:-7tRZG43v_KC3b4bhoWq5l6c1qGa8veMJzPEBNzKECQ	2025-01-30 08:59:55.618538+00
k5wafbq60bf9xxwj27ijjtqg1n5anr59	.eJx9kN1OhDAQhd9lrklTaEsLV-prGNNMfxAitBtaopvNvrt05QZNvJucOfNzvhugtXELWeOWRx_yZDFPMejF5zG6BP3rDX5q6OGCKX3G1UEFmKGvJVOUMikk4UK0DVUV-AWnebea9YprTAsGYuLTe1GJjcs-uSW_Blz8P6b7WwWPh3Qx66ncruGkGbQfPpQGznORyRGEPDxHO5HnU6yXY-q0asQ07nvogHbgyqFnpuVGMs4c7WpmGi47q5htbNcYx0SLNWNeWdUKlI11StqBmqFA-cvSO_0LVdspwdmOSiefUmHtvy7TeoWe3r8BEBeF_g:1tcUAf:wEtIf-H9Dyrw4tjnPwokFR63z7yYVdzZNg8-va0m4uE	2025-02-10 18:49:17.699829+00
6jwqqxi9d6g60twkugefj8nup254hm7i	.eJx9UEFuhDAM_IvPKEpINgFO3X6jqpDjhIK6JKsE1K4Qfy9suSBVvVnjmfF4FiBMEzQLCGjEWgASxTlMLc5T78M0EE5DDO3opz66DM3bAr8zNHDHnL9icrDJNg9hZG0Ul1ozXVdSC1WAH3G4bVSbHphiHjEwG18-dpRRHDflnH0KOPp_SOt7Ac9A7U5uh_22gBNmkT592Bd4u-0wOx5hT86xzux6euv1UJ2sesz95sM7pE5VDr20WlkjlXS8FtKWytRUSSqpLq2TF41CSl9RpS9oSnKVoY7bDv7s0rv2VJVhXHFRl1uC7HPeq_bf9yE9oOHrDz64ifE:1tjlwV:oMwnlOVtYMbOnqQd6M7lsWztqYJf8PeUkucdXCCknQw	2025-03-02 21:12:47.083026+00
eoobmckhpoht8wuorvgj2hrv3gisb7cw	eyJjYXJ0Ijp7IjkiOjF9fQ:1tPUfy:wNN10w7upoBcmhuFJKeaZQ--qmTsE7pZqFvQuElP8ZU	2025-01-05 22:43:54.910724+00
awqj6gnsv4pr0peu6a4pd2poevwa3f3q	eyJjYXJ0Ijp7IjYiOjF9fQ:1tPhMC:_1vi_6FQ43IB_H4lGlJwTu8otc3OBLB0NL17280lpTs	2025-01-06 12:16:20.637583+00
dz2ki7vmlu6utqn096p9wu1bkc1fwiuj	eyJjYXJ0Ijp7IjYiOjF9fQ:1tPlEm:ORGlngE2CjzARVqUzn1k3MyS5rdQ6BbbVpxr7mkcZrc	2025-01-06 16:24:56.799689+00
ajidluf6shkacimgl0pzy0g7rjoq6egf	.eJx9UMFOhTAQ_Jc9EwIUaMtJ_Q1jmu22CBHaFwrRF8K_2z65YIy3zezM7M7sQLis0O1HBkjkN7cq3NbBunUkXEfv1GzXwZsA3esOPzN0cMMQPv1iIMqivOSslg2vmcxr1khW8gzsjOMUqXq54-LDjC7X_uk9oTn5OSq3YBeHs_2HdLxl8HhIJbIa0-0SLphG-rAuLXCaEpyfQfIH51yH_PkS6-VUXawGDEP0KXqkvhYGLdNtrWM2ZgpZMl3VXJJgVJGstGFNiyVjVpBoG-QVGcGpL3QPf3ZpjfpVFW-FkCJWpYINIXVtv27jcoeuOL4BWm6JbA:1tTofk:zSxLmvij0UtDWmyFDw6nc37MWbA5zBt4rzQzmh9kGzg	2025-01-17 20:53:32.232608+00
mamg5t7spqra6y65gl67om86ifuxtojs	.eJx9kMFuxCAMRP_F5yiCBZqQU9V7v6CqImNIQ7uBFRC1qyj_XrLdy156s8ZvZixvQJgKDBv0MPC9ASSKaygjrmV2oXjC4mMYF1fmaDMMbxv8zTDABXP-jslCtdUM3gnZCd4r3Qqtey0acAv6cyVNumIaY14wPM-xHGpLcanGNbsUcHH_QPt7A7d7xgMe_VGt4UEzSF8uHAv7ieEjVl8oyZv2QNr7Nrev0brzy519CJgxz9XNzNM0yZMkMqilsEwTIyvYZE8oWC-I8xNTZDSXlvWKIymtdCdZN6nacgvNLufjZe7n4tMVBrb_Ag0Vd6I:1tOl07:JHl7h4Uvz-suWKxiSljqr1gQD5suZayD5SMX2-i91D4	2025-01-03 21:57:39.746544+00
z13mtnq6z84wxdpca8jli2nxm8cfhrmt	eyJjYXJ0Ijp7IjY5IjoxfX0:1tPVWG:xici5X63PguwCw9gmRhfhPELf-RIA51w-Y_kq7b-QcU	2025-01-05 23:37:56.916192+00
ug879ny7wnv7guspb528mmqd7ulkienx	eyJjYXJ0Ijp7IjYiOjEsIjkiOjF9fQ:1tPnp9:9aLKlBaLtH4JiuTnVlrQGNiSV5GxBt5_3tVSfY4t-3k	2025-01-06 19:10:39.749783+00
\.


--
-- TOC entry 4443 (class 0 OID 60793199)
-- Dependencies: 261
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_site (id, domain, name) FROM stdin;
1	www.cosmos-sweden.com	cosmos-sweden
\.


--
-- TOC entry 4445 (class 0 OID 60793204)
-- Dependencies: 263
-- Data for Name: newsletter_subscriber; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.newsletter_subscriber (id, email, date_added) FROM stdin;
1	vegansofswe@gmail.com	2024-03-14 05:40:33.698592+00
\.


--
-- TOC entry 4447 (class 0 OID 60793209)
-- Dependencies: 265
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_category (id, name, frontend_name) FROM stdin;
1	watches	Watches
2	accessories	Accessories
3	clearance	Clearance
4	deals	Deals
8	new_arrivals	New Arrivals
11	luna	Luna
10	solar	Solar System
9	bigbang	Big Bang
\.


--
-- TOC entry 4449 (class 0 OID 60793217)
-- Dependencies: 267
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_product (id, sku, name, description, price, rating, image, category_id, sold) FROM stdin;
6	CW0006URA	Uranus	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Gray quick-release genuine leather strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 45 g  \r\n- **Materials:** Stainless steel, sapphire glass, genuine leather  \r\n- **Style:** Universal design suitable for everyone	1399.00	4.60	Uranus.jpg	10	f
8	CW0008NEP	Neptune	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Gray quick-release genuine leather strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 45 g  \r\n- **Materials:** Stainless steel, sapphire glass, genuine leather  \r\n- **Style:** Universal design suitable for everyone	1399.00	5.00	Neptune.jpg	10	t
10	CW0010MER	Mercury	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Quick-release stainless steel mesh strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 85 g  \r\n- **Materials:** Stainless steel, sapphire glass  \r\n- **Style:** Universal design suitable for everyone	1399.00	5.00	product_images/Mercury_front.jpg	10	f
1	CW0001BIG	Hypernova	### **Key Features**\r\n- **Dial Diameter:** 38 mm  \r\n- **Case Design:** Black case adorned with colored crystals on the dial  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Black mesh strap  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Comes with Box**  \r\n- **Tool Kit for Strap Adjustment**  \r\n- **Materials:** Stainless steel, sapphire glass  \r\n- **Style:** Universal design suitable for everyone	1499.00	4.00	bigbang.jpg	9	f
126	\N	Luna Deimos	### **Key Features**\r\n- **Dial Diameter:** 32 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Quick-release stainless steel mesh strap (14 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n- **Crystal Accents:** Yes  \r\n\r\n### **Additional Information**\r\n- **Dimensions:** 32 mm  \r\n- **Net Weight:** 65 g  \r\n- **Materials:** Stainless steel, sapphire glass, crystal accents  \r\n- **Style:** Sleek and feminine design suitable for all occasions  \r\n- **Package Includes:** Adjustment tool  \r\n\r\nCrafted to captivate attention with its elegant design, this watch blends timeless style with enduring quality.	1399.00	\N	product_images/deimos.jpg	11	t
72	SLR-RG-MRS-40	Mars	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Quick-release stainless steel mesh strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 85 g  \r\n- **Materials:** Stainless steel, sapphire glass  \r\n- **Style:** Universal design suitable for everyone	1399.00	5.00	product_images/Mars.jpg	10	f
5	CW0005SAT	Saturn	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Gray quick-release genuine leather strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 45 g  \r\n- **Materials:** Stainless steel, sapphire glass, genuine leather  \r\n- **Style:** Universal design suitable for everyone	1399.00	5.00	Saturn_.jpg	10	f
124	\N	Luna Astro	### **Key Features**\r\n- **Dial Diameter:** 32 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Quick-release stainless steel mesh strap (14 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n- **Crystal Accents:** Yes  \r\n\r\n### **Additional Information**\r\n- **Dimensions:** 32 mm  \r\n- **Net Weight:** 65 g  \r\n- **Materials:** Stainless steel, sapphire glass, crystal accents  \r\n- **Style:** Sleek and feminine design suitable for all occasions  \r\n- **Package Includes:** Adjustment tool  \r\n\r\nCrafted to captivate attention with its elegant design, this watch blends timeless style with enduring quality.	1399.00	\N	product_images/luna_astro.jpg	11	t
9	CW0009JUP	Jupiter	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Gray quick-release genuine leather strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 45 g  \r\n- **Materials:** Stainless steel, sapphire glass, genuine leather  \r\n- **Style:** Universal design suitable for everyone	1399.00	5.00	Jupiter.png	10	f
14	CW0014BRAC	Pyramid Edge Cuff	### **Key Features**\r\n- **Color:** Stainless Steel Silver  \r\n- **Material:** 316L Stainless Steel  \r\n- **Dimensions:**  \r\n  - **Length:** 60 mm (2.36 inches)  \r\n  - **Width:** 45 mm (1.77 inches)  \r\n  - **Thickness:** 2 mm (0.07 inches)  \r\n\r\n### **Features**\r\n- **Rustproof:** Designed to resist corrosion and maintain its luster  \r\n- **Durable:** Built with premium materials for long-lasting use  \r\n- **Packaging:** Presented in our elegant, minimal Cosmos packaging  \r\n\r\nA refined accessory combining sleek design and exceptional durability, perfect for any setting.	799.00	5.00	product_images/Untitled_design_33.jpg	2	f
2	CW0002SUP	Supernova	### **Key Features**\r\n- **Dial Diameter:** 32 mm  \r\n- **Case Design:** Black case adorned with colored crystals on the dial  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Black mesh strap  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Comes with Box**  \r\n- **Tool Kit for Strap Adjustment**  \r\n- **Materials:** Stainless steel, sapphire glass  \r\n- **Style:** Universal design suitable for everyone	1499.00	5.00	supernova.jpg	9	f
15	CW0015CARD	Card Vault	### **Key Features**\r\n- **Material:** Aluminum Alloy  \r\n- **Weight:** 60 g  \r\n- **Dimensions:** 96 mm x 65 mm x 10 mm  \r\n- **Capacity:** Holds 4-6 plastic cards or up to 10 thin cards  \r\n- **Colors Available:** Black, Silver, Rose  \r\n- **Availability:** Limited stock! This is for sale as we are not producing more.  \r\n\r\n### **Additional Information**\r\n- **Style:** Minimalist brushed metal design  \r\n- **Technology:** Built-in anti-theft protection to keep your essentials safe  \r\n\r\nOriginal Price: 499 SEK\r\n\r\n**Now: 299 SEK**\r\n\r\nA sleek, unisex card holder designed for practicality and security, ensuring your cards stay organized and protected in style. Don't miss out—grab yours before they're gone!	299.00	5.00	slidecard.jpg	3	t
71	SLR-RG-VNS-40	Venus	### **Key Features**\r\n- **Dial Diameter:** 40 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Quick-release stainless steel mesh strap (20 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n\r\n\r\n### **Additional Information**\r\n- **Dimensions:** 40 mm  \r\n- **Net Weight:** 85 g  \r\n- **Materials:** Stainless steel, sapphire glass  \r\n- **Style:** Universal design suitable for everyone	1399.00	4.00	product_images/Venus.png	10	f
125	\N	Luna Phobos	### **Key Features**\r\n- **Dial Diameter:** 32 mm  \r\n- **Case Thickness:** 7 mm  \r\n- **Movement:** Japan  \r\n- **Material:** Stainless Steel 316L  \r\n- **Glass:** Sapphire  \r\n- **Strap:** Quick-release stainless steel mesh strap (14 mm width)  \r\n- **Water Resistance:** 3 ATM  \r\n- **Crystal Accents:** Yes  \r\n\r\n### **Additional Information**\r\n- **Dimensions:** 32 mm  \r\n- **Net Weight:** 65 g  \r\n- **Materials:** Stainless steel, sapphire glass, crystal accents  \r\n- **Style:** Sleek and feminine design suitable for all occasions  \r\n- **Package Includes:** Adjustment tool  \r\n\r\nCrafted to captivate attention with its elegant design, this watch blends timeless style with enduring quality.	1399.00	\N	product_images/phobos.jpg	11	t
69	CSW-dEssor-SL-2025	d’Essor – Coming Soon	### **Key Features**\r\n- **Design:** The epitome of timeless craftsmanship and elegance  \r\n- **Durability:** Built to last with precision engineering and premium materials  \r\n- **Launch Date:** Early 2025  \r\n- **Exclusivity:** Limited collection, crafted for those who appreciate true sophistication  \r\n- **Anticipation:** Reserve your moment—stay tuned  \r\n\r\n\r\n### **Additional Information**\r\n- **Purpose:** Redefining elegance through unmatched design  \r\n- **Craftsmanship:** A harmonious blend of innovation and tradition  \r\n- **Mystique:** For the visionaries who dare to embrace the extraordinary  \r\n- **Longevity:** Designed to withstand the test of time and trends	1999.00	\N	product_images/dEssor.jpg	8	f
\.


--
-- TOC entry 4451 (class 0 OID 60793225)
-- Dependencies: 269
-- Data for Name: products_productimage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_productimage (id, image, product_id) FROM stdin;
40	product_images/1GS_7319_00027.jpg	1
41	product_images/Hypernova-back.jpg	1
42	product_images/738687583.jpg	1
85	product_images/Untitled_design_44.png	124
86	product_images/Untitled_design_30.jpg	124
87	product_images/phobos-opened-strap-back.jpg	125
88	product_images/Untitled_design_31.jpg	125
89	product_images/Untitled_design_43.png	126
90	product_images/Untitled_design_34.jpg	126
71	product_images/Pyramid_Edge_Cuff.jpg	14
48	product_images/dEssor.jpg	69
49	product_images/Jupiter_back.jpg	9
51	product_images/Uranus_Rear.jpg	6
52	product_images/Saturn_back.jpg	5
53	product_images/mercury_diagonal.jpg	10
54	product_images/Supernova-opened-strap-back.jpg	2
55	product_images/738676640.jpg	2
56	product_images/738676541.jpg	2
58	product_images/Neptune_back.jpg	8
50	product_images/neptune_diagonal.jpg	8
59	product_images/Cosmos_Slide_Card_Holder.jpg	15
61	product_images/Marsback.jpg	72
\.


--
-- TOC entry 4453 (class 0 OID 60793230)
-- Dependencies: 271
-- Data for Name: reviews_review; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reviews_review (id, rating, comment, image, created_at, product_id, user_id) FROM stdin;
1	5	Supernova är såå snygg 🤩 Älskar hur enkel och stilren den är, passar verkligen till allt!! ✨👌 Ett måste! 😍 Plus snabb leverans, såå nöjd! 🙌	review_images/IMG_5280.jpeg	2024-12-23 12:53:08.201414+00	2	11
\.


--
-- TOC entry 4455 (class 0 OID 60793238)
-- Dependencies: 273
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- TOC entry 4457 (class 0 OID 60793246)
-- Dependencies: 275
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
\.


--
-- TOC entry 4459 (class 0 OID 60793254)
-- Dependencies: 277
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- TOC entry 4461 (class 0 OID 60793259)
-- Dependencies: 279
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- TOC entry 4489 (class 0 OID 0)
-- Dependencies: 227
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 12, true);


--
-- TOC entry 4490 (class 0 OID 0)
-- Dependencies: 229
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- TOC entry 4491 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 4492 (class 0 OID 0)
-- Dependencies: 233
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 4493 (class 0 OID 0)
-- Dependencies: 235
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);


--
-- TOC entry 4494 (class 0 OID 0)
-- Dependencies: 238
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 4495 (class 0 OID 0)
-- Dependencies: 239
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);


--
-- TOC entry 4496 (class 0 OID 0)
-- Dependencies: 241
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 4497 (class 0 OID 0)
-- Dependencies: 243
-- Name: blog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.blog_category_id_seq', 3, true);


--
-- TOC entry 4498 (class 0 OID 0)
-- Dependencies: 245
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 4, true);


--
-- TOC entry 4499 (class 0 OID 0)
-- Dependencies: 248
-- Name: blog_post_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.blog_post_categories_id_seq', 1, false);


--
-- TOC entry 4500 (class 0 OID 0)
-- Dependencies: 249
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 3, true);


--
-- TOC entry 4501 (class 0 OID 0)
-- Dependencies: 251
-- Name: checkout_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.checkout_order_id_seq', 91, true);


--
-- TOC entry 4502 (class 0 OID 0)
-- Dependencies: 253
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.checkout_orderlineitem_id_seq', 65, true);


--
-- TOC entry 4503 (class 0 OID 0)
-- Dependencies: 255
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 31, true);


--
-- TOC entry 4504 (class 0 OID 0)
-- Dependencies: 257
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- TOC entry 4505 (class 0 OID 0)
-- Dependencies: 259
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 66, true);


--
-- TOC entry 4506 (class 0 OID 0)
-- Dependencies: 262
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- TOC entry 4507 (class 0 OID 0)
-- Dependencies: 264
-- Name: newsletter_subscriber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.newsletter_subscriber_id_seq', 1, true);


--
-- TOC entry 4508 (class 0 OID 0)
-- Dependencies: 266
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_category_id_seq', 11, true);


--
-- TOC entry 4509 (class 0 OID 0)
-- Dependencies: 268
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_product_id_seq', 133, true);


--
-- TOC entry 4510 (class 0 OID 0)
-- Dependencies: 270
-- Name: products_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_productimage_id_seq', 96, true);


--
-- TOC entry 4511 (class 0 OID 0)
-- Dependencies: 272
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 3, true);


--
-- TOC entry 4512 (class 0 OID 0)
-- Dependencies: 274
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- TOC entry 4513 (class 0 OID 0)
-- Dependencies: 276
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- TOC entry 4514 (class 0 OID 0)
-- Dependencies: 278
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- TOC entry 4515 (class 0 OID 0)
-- Dependencies: 280
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- TOC entry 4127 (class 2606 OID 60793268)
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- TOC entry 4130 (class 2606 OID 60793270)
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_email_987c8728_uniq UNIQUE (user_id, email);


--
-- TOC entry 4136 (class 2606 OID 60793272)
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- TOC entry 4138 (class 2606 OID 60793274)
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- TOC entry 4141 (class 2606 OID 60793276)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 4146 (class 2606 OID 60793278)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 4149 (class 2606 OID 60793280)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4143 (class 2606 OID 60793282)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 4152 (class 2606 OID 60793284)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 4154 (class 2606 OID 60793286)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 4162 (class 2606 OID 60793288)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 4165 (class 2606 OID 60793290)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 4156 (class 2606 OID 60793292)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 4168 (class 2606 OID 60793294)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4171 (class 2606 OID 60793296)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 4159 (class 2606 OID 60793298)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 4173 (class 2606 OID 60793300)
-- Name: blog_category blog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_pkey PRIMARY KEY (id);


--
-- TOC entry 4175 (class 2606 OID 60793302)
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- TOC entry 4183 (class 2606 OID 60793304)
-- Name: blog_post_categories blog_post_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4186 (class 2606 OID 60793306)
-- Name: blog_post_categories blog_post_categories_post_id_category_id_ed4f1727_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_post_id_category_id_ed4f1727_uniq UNIQUE (post_id, category_id);


--
-- TOC entry 4180 (class 2606 OID 60793308)
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- TOC entry 4188 (class 2606 OID 60793310)
-- Name: checkout_order checkout_order_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.checkout_order
    ADD CONSTRAINT checkout_order_pkey PRIMARY KEY (id);


--
-- TOC entry 4192 (class 2606 OID 60793312)
-- Name: checkout_orderlineitem checkout_orderlineitem_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineitem_pkey PRIMARY KEY (id);


--
-- TOC entry 4196 (class 2606 OID 60793314)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 4199 (class 2606 OID 60793316)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 4201 (class 2606 OID 60793318)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4203 (class 2606 OID 60793320)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4206 (class 2606 OID 60793322)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 4210 (class 2606 OID 60793324)
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- TOC entry 4212 (class 2606 OID 60793326)
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 4215 (class 2606 OID 60793328)
-- Name: newsletter_subscriber newsletter_subscriber_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.newsletter_subscriber
    ADD CONSTRAINT newsletter_subscriber_email_key UNIQUE (email);


--
-- TOC entry 4217 (class 2606 OID 60793330)
-- Name: newsletter_subscriber newsletter_subscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.newsletter_subscriber
    ADD CONSTRAINT newsletter_subscriber_pkey PRIMARY KEY (id);


--
-- TOC entry 4219 (class 2606 OID 60793332)
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (id);


--
-- TOC entry 4222 (class 2606 OID 60793334)
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- TOC entry 4224 (class 2606 OID 60793336)
-- Name: products_productimage products_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimage_pkey PRIMARY KEY (id);


--
-- TOC entry 4227 (class 2606 OID 60793338)
-- Name: reviews_review reviews_review_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_pkey PRIMARY KEY (id);


--
-- TOC entry 4231 (class 2606 OID 60793340)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- TOC entry 4233 (class 2606 OID 60793342)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- TOC entry 4238 (class 2606 OID 60793344)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- TOC entry 4236 (class 2606 OID 60793346)
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- TOC entry 4240 (class 2606 OID 60793348)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- TOC entry 4246 (class 2606 OID 60793350)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- TOC entry 4248 (class 2606 OID 60793352)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 4124 (class 1259 OID 60793353)
-- Name: account_emailaddress_email_03be32b2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX account_emailaddress_email_03be32b2 ON public.account_emailaddress USING btree (email);


--
-- TOC entry 4125 (class 1259 OID 60793354)
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- TOC entry 4128 (class 1259 OID 60793355)
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- TOC entry 4133 (class 1259 OID 60793356)
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- TOC entry 4134 (class 1259 OID 60793357)
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- TOC entry 4139 (class 1259 OID 60793358)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 4144 (class 1259 OID 60793359)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 4147 (class 1259 OID 60793360)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 4150 (class 1259 OID 60793361)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 4160 (class 1259 OID 60793362)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 4163 (class 1259 OID 60793363)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 4166 (class 1259 OID 60793364)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 4169 (class 1259 OID 60793365)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 4157 (class 1259 OID 60793366)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 4176 (class 1259 OID 60793367)
-- Name: blog_comment_post_id_580e96ef; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);


--
-- TOC entry 4177 (class 1259 OID 60793368)
-- Name: blog_comment_user_id_59a54155; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX blog_comment_user_id_59a54155 ON public.blog_comment USING btree (user_id);


--
-- TOC entry 4178 (class 1259 OID 60793369)
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- TOC entry 4181 (class 1259 OID 60793370)
-- Name: blog_post_categories_category_id_2211dae5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX blog_post_categories_category_id_2211dae5 ON public.blog_post_categories USING btree (category_id);


--
-- TOC entry 4184 (class 1259 OID 60793371)
-- Name: blog_post_categories_post_id_c34e7be1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX blog_post_categories_post_id_c34e7be1 ON public.blog_post_categories USING btree (post_id);


--
-- TOC entry 4189 (class 1259 OID 60793372)
-- Name: checkout_order_user_id_6420a551; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX checkout_order_user_id_6420a551 ON public.checkout_order USING btree (user_id);


--
-- TOC entry 4190 (class 1259 OID 60793373)
-- Name: checkout_orderlineitem_order_id_b4cfbe6b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX checkout_orderlineitem_order_id_b4cfbe6b ON public.checkout_orderlineitem USING btree (order_id);


--
-- TOC entry 4193 (class 1259 OID 60793374)
-- Name: checkout_orderlineitem_product_id_739c699d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX checkout_orderlineitem_product_id_739c699d ON public.checkout_orderlineitem USING btree (product_id);


--
-- TOC entry 4194 (class 1259 OID 60793375)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 4197 (class 1259 OID 60793376)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 4204 (class 1259 OID 60793377)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 4207 (class 1259 OID 60793378)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 4208 (class 1259 OID 60793379)
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- TOC entry 4213 (class 1259 OID 60793380)
-- Name: newsletter_subscriber_email_1c46b5e3_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX newsletter_subscriber_email_1c46b5e3_like ON public.newsletter_subscriber USING btree (email varchar_pattern_ops);


--
-- TOC entry 4220 (class 1259 OID 60793381)
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_product_category_id_9b594869 ON public.products_product USING btree (category_id);


--
-- TOC entry 4225 (class 1259 OID 60793382)
-- Name: products_productimage_product_id_e747596a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_productimage_product_id_e747596a ON public.products_productimage USING btree (product_id);


--
-- TOC entry 4228 (class 1259 OID 60793383)
-- Name: reviews_review_product_id_ce2fa4c6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reviews_review_product_id_ce2fa4c6 ON public.reviews_review USING btree (product_id);


--
-- TOC entry 4229 (class 1259 OID 60793384)
-- Name: reviews_review_user_id_875caff2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reviews_review_user_id_875caff2 ON public.reviews_review USING btree (user_id);


--
-- TOC entry 4234 (class 1259 OID 60793385)
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- TOC entry 4241 (class 1259 OID 60793386)
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- TOC entry 4242 (class 1259 OID 60793387)
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- TOC entry 4243 (class 1259 OID 60793388)
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- TOC entry 4244 (class 1259 OID 60793389)
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- TOC entry 4131 (class 1259 OID 60793390)
-- Name: unique_primary_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_primary_email ON public.account_emailaddress USING btree (user_id, "primary") WHERE "primary";


--
-- TOC entry 4132 (class 1259 OID 60793391)
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_verified_email ON public.account_emailaddress USING btree (email) WHERE verified;


--
-- TOC entry 4249 (class 2606 OID 60793392)
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4250 (class 2606 OID 60793397)
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4251 (class 2606 OID 60793402)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4252 (class 2606 OID 60793407)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4253 (class 2606 OID 60793412)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4254 (class 2606 OID 60793417)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4255 (class 2606 OID 60793422)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4256 (class 2606 OID 60793427)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4257 (class 2606 OID 60793432)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4258 (class 2606 OID 60793437)
-- Name: blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4259 (class 2606 OID 60793442)
-- Name: blog_comment blog_comment_user_id_59a54155_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4260 (class 2606 OID 60793447)
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4261 (class 2606 OID 60793452)
-- Name: blog_post_categories blog_post_categories_category_id_2211dae5_fk_blog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_category_id_2211dae5_fk_blog_category_id FOREIGN KEY (category_id) REFERENCES public.blog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4262 (class 2606 OID 60793457)
-- Name: blog_post_categories blog_post_categories_post_id_c34e7be1_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_post_id_c34e7be1_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4263 (class 2606 OID 60793462)
-- Name: checkout_order checkout_order_user_id_6420a551_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.checkout_order
    ADD CONSTRAINT checkout_order_user_id_6420a551_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4264 (class 2606 OID 60793467)
-- Name: checkout_orderlineitem checkout_orderlineit_product_id_739c699d_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineit_product_id_739c699d_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4265 (class 2606 OID 60793472)
-- Name: checkout_orderlineitem checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id FOREIGN KEY (order_id) REFERENCES public.checkout_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4266 (class 2606 OID 60793477)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4267 (class 2606 OID 60793482)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4268 (class 2606 OID 60793487)
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_category_id_9b594869_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4269 (class 2606 OID 60793492)
-- Name: products_productimage products_productimag_product_id_e747596a_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimag_product_id_e747596a_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4270 (class 2606 OID 60793497)
-- Name: reviews_review reviews_review_product_id_ce2fa4c6_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_product_id_ce2fa4c6_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4271 (class 2606 OID 60793502)
-- Name: reviews_review reviews_review_user_id_875caff2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_user_id_875caff2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4273 (class 2606 OID 60793507)
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4272 (class 2606 OID 60793512)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4274 (class 2606 OID 60793517)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_socialapp_id_97fb6e7d_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_socialapp_id_97fb6e7d_fk FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4275 (class 2606 OID 60793522)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_account_id_951f210e_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4276 (class 2606 OID 60793527)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_636a42d7_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2025-02-19 07:42:34 UTC

--
-- PostgreSQL database dump complete
--

