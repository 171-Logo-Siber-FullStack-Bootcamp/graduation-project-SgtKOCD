PGDMP             	            z            Products    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16438    Products    DATABASE     g   CREATE DATABASE "Products" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "Products";
                postgres    false            ?            1259    16452 
   categories    TABLE     ?   CREATE TABLE public.categories (
    id integer NOT NULL,
    categoryname character varying(50),
    categoryimage character varying(500)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    16451    categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    210            ?           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    209            ?            1259    16461    products    TABLE     ?   CREATE TABLE public.products (
    id integer NOT NULL,
    productname text NOT NULL,
    price double precision NOT NULL,
    description text NOT NULL,
    category_id integer,
    productimages character varying(500)
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    16460    products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    212            ?           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    211            a           2604    16474    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            b           2604    16475    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16452 
   categories 
   TABLE DATA           E   COPY public.categories (id, categoryname, categoryimage) FROM stdin;
    public          postgres    false    210          ?          0    16461    products 
   TABLE DATA           c   COPY public.products (id, productname, price, description, category_id, productimages) FROM stdin;
    public          postgres    false    212   p       ?           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    209                        0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    211            d           2606    16459    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    210            f           2606    16468    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    212            g           2606    16469 "   products products_category_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public          postgres    false    212    210    3172            ?   J  x?}??r?0???)? ?[?&ͭ???Kf2?a???$L??? ???s?b?}??o??Fb???????/?OӔ??Gݒ??DZ?K5>Y?P>Zi??<Y?3?Q???LcK?????նJ?l?ʓ[?=}?8?@?&??e?<?Y??;?
?E?H???????E?x?????N?.t??Y?k蛹??	<(4iza??\\???*?C??????θ ???[????.? 21?l??&_?`>?`?	t?????\b??????3jH?jb?:??>??G??LoX?v?5Ԅ?|)i5?r?>???Y?.?{Η?g?m͖??3???{??1??b??2o?????L6??ch?qg7h???2?6?jl^??3??챰?Jc??`!????P+?(??&??i?x8bGd盘??;????\J?|?-?t?|3^a??c?A???b?p38??7zEl?cb?D??"-DZT??ݪJ?{c7?_>?h??܀a?	???)p??????\??yK]?a1???j???2I&?kc?YߒT? V]ja??Y<Z?O???{???l?9Ρ?g?ы??1?tC??j????n?      ?   w
  x??Y]s?6}F~?ҝ1M??Di?b?i?MRO?????L$!p?!???{ Jr?6}
3}?#F??=??s?%?5?:?З???	I0?Z?Z??'?ъՎ?$e-W?Rf??8?????m???rKk??l(?????ι??=M???u?;??Ί?BIn?w?qHj?>5??Ԭ?i???4[?\??3Z?}?x#L?ޮ??????}?"o?j?[Q?Cɶ????6,????_Q#??ѝP-7?ٿ]Q????ds???䆍?4?-}?4?<?I?=????;ѐ?b?$wZX| n?)SN????9Q?+????+T?2/ݬP7???)zc؞?l?/ɋJQ??1?M{?Ϫ?????:*??{?"?\9PmڔU?p?+?}??N?$??????5???u?M?@??Qj),(j??t?0???A?`??????Ŗ?vZ??????h+??G
?????????@C?`?*??Q>??I9k????c?wz?1?04l[?ɽ?ى:??]%\?i???q??.???Z{ 0$??u|o??????2?<K?<?D???L?J򖍊c?~f?Q?A??ȫ?C???I?b???I~???T?ӆ?P??>Ҏ3????9???VG??9??@<???:v0b?????jJ????K嘜~54?%?ḧ́"?X"??Rw??A?Z(0?p?Z??ޢ?_?_?E?@R?p?wZ?A?V??_?b???i8).@?????0?Q??Z?_ ?:Ͳ?b]?.??Y?'?????6?,?r?m?	E?????{??4d??x??R??n?PLr?|2vV?? k?·???ڙ/Vh????3??/_???Bp?=?Ñspf	?
?J}? 5??U?X???s?cK??K?v􆙊?Q???Ֆl????'5??у4?c%????n|yI~?Et?h????`B?0]"Hͤ -??~Ҹr?^4?gj4jn?K?K????lW???Kg??Xχq????hV4????3?S??	?6?ue@w?ˌ???򞉐W?????N/Αin`%???ȏ?.?Ka?<S?&???????5p?2=P{ޛ8<??????@˔?~{?.ɫS?M?12????S?vjo?%= >=|U?Y??ˏ?8t??? ?Pg?i?H?????٠?"P?????;???(????HKr???\?*O??#y??q?"u???p??A???uEf??T?i?	?ٗ?ЬR?]??=??	B?JF?D?Ĳ?????dAk??[N???????$?!"???!m?!?QS{}?q?!+;??G????????:??Ý????"?7?%y??}-?/?:?	)??7fB褽>?>j??Zev???1?o6%y??#??I?O?5m?H]?#??}Cx??????h???;??8[?!??C]X?kH~?i?S??i????o???Z?Ĕ???l??,?ؚ??2?%?j;?????,???/`E???X?M#"?S??Ӭ?8??M????~???h?MXEn??ۏ?d?|????/???aO?"?????eY?wBπ?<?A?0P1?3?YQ???1a"????ƹQ#?`k??7?9?pj?.??dS???7#%
?????A???y????fpR??!o?k???g??r?\???`3/F???????????u?:?c?Պ?`阐???{???K4?.fXs??s#ݒ???n??I?rIިO??̊???M???4??py?Wf?o?????????y???)?#?!?p?*Z?f|\燎q?HZ^pbū0?}??'&Ǌ׿?V??z7???_C`???\?(?'q?Lejm??L?Y=~?xbٞ??h?V????(o??P???h?7??`?9n4?`??ڇc???G.C??K?̚??f????C?Ͼ]f?5x???X????\???y_AG???:6?q?H?`?˿?=o?OR?????#?g??yQ#?0^?p???Q?i7??`?!ě?m?kHo%???ެ?J`C?N?$??w?V`kh???[XP?y?????v?!/|??p&?sۋ$\K?d?M???X\??A FH{??A5}??8|,??ko??L??:ω??5Lq?wF??Txr^@?M????T??*??bJ?xO?pQ^?s??W?ϋ?ܘ???c@??~??W??I?*a?q@p??d?t?b?3V`?]尐?;azfx?l?"X???qII%,?{?Sq??L??`??	s?????e??c??`^H ??=pk??'?????s??X8??? @?qF?????Q?p?8??l?3b??w?[??W?#ԓm?@??(qx??G]???????a:?U-?A ??Ps?,O??K??????2+?>z???:`V7c???<|:Z??f??!?1??i???!??j??/_?+?????????TDg?1l?'?Y????|"?N(w?????=l?????1??????D?e???N?N-?г?%.,G?d???0	???T1U?I???
?%?;??y?_-???Mk0?f?????????
?>???0o2?$y?M?󢞖??L񇠰???O?a??/??L?3?????"???AS?iI???G`?}vxrr?s??\8?`El??+??bK^??+?'!?C??E??}5h7?B????f????@GK????i???????L ?{??ٳ??'\|     