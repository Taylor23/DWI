PGDMP                         z         	   dbclinica    10.20    10.20     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?
           1262    24582 	   dbclinica    DATABASE     ?   CREATE DATABASE dbclinica WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE dbclinica;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    24596    citas    TABLE     ?   CREATE TABLE public.citas (
    codigo integer NOT NULL,
    fecha date,
    servicio character varying(80),
    dni_paciente integer,
    cod_doctor integer
);
    DROP TABLE public.citas;
       public         postgres    false    3            ?            1259    24591    doctores    TABLE     ?   CREATE TABLE public.doctores (
    codigo integer NOT NULL,
    dni integer,
    nombres character varying(40),
    apellidos character varying(40),
    edad integer,
    genero character varying(20)
);
    DROP TABLE public.doctores;
       public         postgres    false    3            ?            1259    24586 	   pacientes    TABLE     ?   CREATE TABLE public.pacientes (
    dni integer NOT NULL,
    nombres character varying(40),
    apellidos character varying(40),
    edad integer
);
    DROP TABLE public.pacientes;
       public         postgres    false    3            ?
          0    24596    citas 
   TABLE DATA               R   COPY public.citas (codigo, fecha, servicio, dni_paciente, cod_doctor) FROM stdin;
    public       postgres    false    198   ?       ?
          0    24591    doctores 
   TABLE DATA               Q   COPY public.doctores (codigo, dni, nombres, apellidos, edad, genero) FROM stdin;
    public       postgres    false    197   i       ?
          0    24586 	   pacientes 
   TABLE DATA               B   COPY public.pacientes (dni, nombres, apellidos, edad) FROM stdin;
    public       postgres    false    196          y
           2606    24600    citas citas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.citas
    ADD CONSTRAINT citas_pkey PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.citas DROP CONSTRAINT citas_pkey;
       public         postgres    false    198            w
           2606    24595    doctores doctores_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.doctores
    ADD CONSTRAINT doctores_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.doctores DROP CONSTRAINT doctores_pkey;
       public         postgres    false    197            u
           2606    24590    pacientes pacientes_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (dni);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public         postgres    false    196            ?
   s   x?E?1?0@??>E/`dG5if??#t??Y?E-?'?????;G?$
7?????Z?%????~	3{+?Xh?j???o?r?{|??(^ϩ???{?-??l??at??lD??/?      ?
   ?   x?E?1?0???+?ĤI???? :?v9???"I]??Mqp{??x/??6??e??YÉN???K?7?鳰de?v7}?C?K??Gy?p?o??eEA???̢?????Yca????a?????Nӓ6p?]x??k?A)??\14      ?
   ?   x??1?0???>?O?J?e?T*@?3?E?Dc?4Ko????????iw?j??Opxjt??????m1?2tq?0)?'Wz5In??E	]?~?Q??٭??"?E?[c??}.-JC? ????B??y??
?D? .J     