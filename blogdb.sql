PGDMP     1                    x            blogdb    9.6.17    9.6.17     U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            X           1262    16393    blogdb    DATABASE     �   CREATE DATABASE blogdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE blogdb;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Y           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            Z           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16394    migration_versions    TABLE     �   CREATE TABLE public.migration_versions (
    version character varying(14) NOT NULL,
    executed_at timestamp(0) without time zone NOT NULL
);
 &   DROP TABLE public.migration_versions;
       public         postgres    false    3            [           0    0 %   COLUMN migration_versions.executed_at    COMMENT     [   COMMENT ON COLUMN public.migration_versions.executed_at IS '(DC2Type:datetime_immutable)';
            public       postgres    false    185            �            1259    16401    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    email character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public."user";
       public         postgres    false    3            �            1259    16399    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    3            P          0    16394    migration_versions 
   TABLE DATA               B   COPY public.migration_versions (version, executed_at) FROM stdin;
    public       postgres    false    185   �       R          0    16401    user 
   TABLE DATA               B   COPY public."user" (id, email, roles, password, name) FROM stdin;
    public       postgres    false    187          \           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 5, true);
            public       postgres    false    186            �           2606    16398 *   migration_versions migration_versions_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.migration_versions
    ADD CONSTRAINT migration_versions_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY public.migration_versions DROP CONSTRAINT migration_versions_pkey;
       public         postgres    false    185    185            �           2606    16408    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    187    187            �           1259    16409    uniq_8d93d649e7927c74    INDEX     P   CREATE UNIQUE INDEX uniq_8d93d649e7927c74 ON public."user" USING btree (email);
 )   DROP INDEX public.uniq_8d93d649e7927c74;
       public         postgres    false    187            P   =   x�]ʱ� E�:�"=lD<�ϑT�'�$ç�����l��g�"L�t)��U����>G�      R     x����n�0  �3<��M#K�����*Պd[�
���3P!<�O�-{��H,�y�|��̥�Y������>%��SYh<wS���D�>A��	G�������e��vU�̙#ʤaK����s�9
��lf8�k�-k�h��OJL���[�ֿ�ĭP$�j�&�Dl斞 6���0t=E�j�2,g�d�f�:t����ӡ�Ik�L���8��V�CxL��qwh��QQ����Jo����x�a�֥����&�)"H����cY� �x�     