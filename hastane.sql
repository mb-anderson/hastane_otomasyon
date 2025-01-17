PGDMP     6    #                z            hastane    13.8    13.8     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32830    hastane    DATABASE     d   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hastane;
                postgres    false            �            1259    32886    kullanicilar    TABLE     �  CREATE TABLE public.kullanicilar (
    id integer NOT NULL,
    sifre character varying(255) NOT NULL,
    adi character varying(100) NOT NULL,
    soyadi character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    durum boolean DEFAULT true NOT NULL,
    tckimlik character varying(11),
    cinsiyet character varying(10),
    dogum_tarihi date,
    dogum_yeri character varying(50),
    adres character varying(255),
    randevu_alabilir boolean,
    onceligi_var boolean,
    rol character varying(50),
    brans character varying(100),
    akademik_unvan character varying(255),
    calistigi_kurum character varying(255),
    calistigi_poliklinik character varying(100),
    maas double precision,
    sicilno character varying(6)
);
     DROP TABLE public.kullanicilar;
       public         heap    postgres    false            �            1259    32884    kullanicilar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kullanicilar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.kullanicilar_id_seq;
       public          postgres    false    201            �           0    0    kullanicilar_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.kullanicilar_id_seq OWNED BY public.kullanicilar.id;
          public          postgres    false    200            �            1259    32909 
   randevular    TABLE       CREATE TABLE public.randevular (
    id integer NOT NULL,
    hasta integer NOT NULL,
    doktor integer NOT NULL,
    note character varying(255),
    recete character varying(255),
    tarih date,
    saat character varying(5),
    dakika character varying(2),
    geldimi boolean
);
    DROP TABLE public.randevular;
       public         heap    postgres    false            �            1259    32907    randevular_id_seq    SEQUENCE     �   CREATE SEQUENCE public.randevular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.randevular_id_seq;
       public          postgres    false    203            �           0    0    randevular_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.randevular_id_seq OWNED BY public.randevular.id;
          public          postgres    false    202            *           2604    32889    kullanicilar id    DEFAULT     r   ALTER TABLE ONLY public.kullanicilar ALTER COLUMN id SET DEFAULT nextval('public.kullanicilar_id_seq'::regclass);
 >   ALTER TABLE public.kullanicilar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ,           2604    32912    randevular id    DEFAULT     n   ALTER TABLE ONLY public.randevular ALTER COLUMN id SET DEFAULT nextval('public.randevular_id_seq'::regclass);
 <   ALTER TABLE public.randevular ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    32886    kullanicilar 
   TABLE DATA           �   COPY public.kullanicilar (id, sifre, adi, soyadi, email, durum, tckimlik, cinsiyet, dogum_tarihi, dogum_yeri, adres, randevu_alabilir, onceligi_var, rol, brans, akademik_unvan, calistigi_kurum, calistigi_poliklinik, maas, sicilno) FROM stdin;
    public          postgres    false    201   #       �          0    32909 
   randevular 
   TABLE DATA           c   COPY public.randevular (id, hasta, doktor, note, recete, tarih, saat, dakika, geldimi) FROM stdin;
    public          postgres    false    203   �       �           0    0    kullanicilar_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.kullanicilar_id_seq', 2, true);
          public          postgres    false    200            �           0    0    randevular_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.randevular_id_seq', 1, false);
          public          postgres    false    202            .           2606    32895    kullanicilar kullanicilar_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.kullanicilar
    ADD CONSTRAINT kullanicilar_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.kullanicilar DROP CONSTRAINT kullanicilar_pkey;
       public            postgres    false    201            0           2606    32917    randevular randevular_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.randevular
    ADD CONSTRAINT randevular_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.randevular DROP CONSTRAINT randevular_pkey;
       public            postgres    false    203            �   U  x��Q]N1~�=XҖ]�acB�D�O�L���[�-$��U����$���M�1���v�~�|�p�`Y��Kf������F����U�:�.l��Eq �`~�}`���8��?�R��"�0ݖ�r�6���Fj���r�;�3ʜ/�Y�,��#�C@R��d�.�{��G��k�&�!��0�c)�>,�0t{IsB�9�jE"���R0!B&C.�ϾTNSG�*9,��K�',���a�`��6`i;\[�SS�n����7�F���Y���s���u�+�B��`LJeK��ߘ��D5�C��ε�)tv�61̛D��R�I�)|�X�!U�DU9�<�ܼ�;l:�       �   L   x�}�1
�P�9��Ҧ���M� �?ZG!C��,8�2:�ܲ����I�����%>R6iS �N�`�+J�YDnX��     