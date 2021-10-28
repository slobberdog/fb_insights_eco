PGDMP     /                	    y         	   githubeco    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    65536 	   githubeco    DATABASE     n   CREATE DATABASE githubeco WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE githubeco;
                postgres    false            �            1259    73749    bkup_employees    TABLE     ]  CREATE TABLE public.bkup_employees (
    employee_id smallint,
    last_name character varying(20),
    first_name character varying(10),
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);
 "   DROP TABLE public.bkup_employees;
       public         heap    postgres    false            �            1259    65569 	   employees    TABLE     �  CREATE TABLE public.employees (
    employee_id smallint NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    65537 
   fb_ecomain    TABLE     �  CREATE TABLE public.fb_ecomain (
    postid integer NOT NULL,
    permalink character(128) NOT NULL,
    postmessage character varying(256),
    type character varying(12),
    datepost date,
    lt_posttotreach integer,
    lt_postorgreach integer,
    lt_postpdreach integer,
    lt_posttotimp integer,
    lt_postorgimp integer,
    lt_engusers integer,
    lt_targetaud integer,
    lt_targetcon integer,
    lt_targetlike integer,
    lt_postlikepage integer,
    lt_postadstory integer,
    lt_postengclick integer,
    lt_videoview3sec integer,
    lt_videolen integer,
    lt_poststory integer,
    lt_poststoryshare integer,
    emp_id integer
);
    DROP TABLE public.fb_ecomain;
       public         heap    postgres    false            �            1259    73743    humanresources    TABLE     A  CREATE TABLE public.humanresources (
    employee_id smallint,
    last_name character varying(20),
    birth_date date,
    hire_date date,
    country character varying(15),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255),
    salary bigint,
    commstructure integer
);
 "   DROP TABLE public.humanresources;
       public         heap    postgres    false            �            1259    73755    slidingscalecomm    TABLE     �   CREATE TABLE public.slidingscalecomm (
    value_id integer NOT NULL,
    commlower numeric(5,2) NOT NULL,
    commhigher numeric(5,2)
);
 $   DROP TABLE public.slidingscalecomm;
       public         heap    postgres    false            �          0    73749    bkup_employees 
   TABLE DATA           �   COPY public.bkup_employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) FROM stdin;
    public          postgres    false    203   L       �          0    65569 	   employees 
   TABLE DATA           �   COPY public.employees (employee_id, last_name, first_name, title, title_of_courtesy, address, city, region, postal_code, country, home_phone, extension) FROM stdin;
    public          postgres    false    201   !       �          0    65537 
   fb_ecomain 
   TABLE DATA           V  COPY public.fb_ecomain (postid, permalink, postmessage, type, datepost, lt_posttotreach, lt_postorgreach, lt_postpdreach, lt_posttotimp, lt_postorgimp, lt_engusers, lt_targetaud, lt_targetcon, lt_targetlike, lt_postlikepage, lt_postadstory, lt_postengclick, lt_videoview3sec, lt_videolen, lt_poststory, lt_poststoryshare, emp_id) FROM stdin;
    public          postgres    false    200   :!       �          0    73743    humanresources 
   TABLE DATA           �   COPY public.humanresources (employee_id, last_name, birth_date, hire_date, country, photo, notes, reports_to, photo_path, salary, commstructure) FROM stdin;
    public          postgres    false    202   �,       �          0    73755    slidingscalecomm 
   TABLE DATA           K   COPY public.slidingscalecomm (value_id, commlower, commhigher) FROM stdin;
    public          postgres    false    204   -2       6           2606    65576    employees employees_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    201            4           2606    81925    fb_ecomain fb_ecomain_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fb_ecomain
    ADD CONSTRAINT fb_ecomain_pkey PRIMARY KEY (postid);
 D   ALTER TABLE ONLY public.fb_ecomain DROP CONSTRAINT fb_ecomain_pkey;
       public            postgres    false    200            �   �  x��W�v۸\#_��s������ɲ'��s},�z�LB"nH@ ��� -�3�8+Z����F��h�ZZ�Х�/�����J�J��9_�Z:vi�,���`��9>������G3�0�K�U^��A�ؽ(L#�Â�g�(a?Vv��&y��y6K�8˧���Ww*����Y��R�_ܯ8"4�
!���|�q�K.�m5��oJ{i���h,j��)�����ᾒ��FD��q�既����fɐ�/��u����V�
�|�M����JQ:�Y�F���FidJG ˭�;���;B
� 1�ٳ<�/��-R2���n����t�7�[aw�0'b�3���I���6,�Yb��t�):���"b-eh�b:��w�եO5r
��|Y�~�2b�!,��Z��ߩ�m��r��0C���wVy��ϧO�(^��'�4���t��AYçf�a̮%ب�Í�g1û#�؍#�M�$���Y6���i�o��:Ď_��������F����7Jg	�6��p*�U+^ʍ��-*�(�AA�΅q�h���7��A.�G`�aw�L ��D�����P�83+
�6��ㅢKw��s!iT�R��~D��R�'���+�XgA��ɾ*i��Ӽ�=����JTl�A[aOrc9��`4�L <�јeI2���Kl)�|�@O�ݱ��oؙ%i��d:	��G���e�hAw�қZ���
���2��4�0�T␧|�1��d���Dv4���W��$� Z��Lz��Р6:NA�q�¬�T�^R1��N4�Z|�ʚvS���9�����rv�T��ʃ �k��`��7J"���ɔ%�,,�����ks��\=$|������M��{6�f��{<��Gs��l)-�k�F�q~��PO�S�
�<()��`��2�K*�w�e'���c�ےqM8T�`~H�X#t_m�YZGRgb������_���)��Nq#b���հ����#{�;C�pk��ڢ�������[�vs���:��V�[e=u9iMت�	���_e}��{�E���[BК�i�||�7�6�^kW˔O�hm:���Y,�xx�V�ΨW�s��a�>�Y�sYmU�sj�㏯]鸱/ѫ��jxtpmП�F���n.��&��'��'$r��M[{5�?@5ć�랩{��æ�s���5k�h�־	hx�H�G4Z�?^,�c��ߢͶ�+c#^a<p���t�������h��wt���#��489�Xb���HL`����~PHJ:(4�v{��>'|��=�;��3�MbÍ	pJ�;ii�Si�7�<�ݺH��`����!C�����'
B�����5t�,
Қ���Z����}��YjMw<8Nt���MyJ����Z�����0p����S��7�K�-ilE%�k52�0���ޖ�Z ���np�g�ƞQj�,��>�I�^<�!�>���+csN��9'�l��q�&����o�[�+Ю�fwj�~�`>x��*�O�3�:�����Z(�=�w��]�ҽ��*�7����9!�iD0IIΦ�{��Xh���=|��]�wX�c���Ѳ�:� ��6{-^�Z��h�˟z�t/��*)a��/�]�b�;2���u�M�9M��h
��^CWCX�b����-�o��o�<���U��{�X궔 ��� �Ҋ#ƨ�荠�i泾	!JIM�,9���s��������[a��>�k/�o      �   	  x�}�Mo�0�ϓ_�cW�F�c��H����v�p�%Du��1 ����Hl.�i�ϼ~l�5��	f�ەa�`��1.~g5Z��0�Pf[�l�mD�x�\�w�E�Bf^�>܉���)��KYȥ�I�3��nO�L��X67D"�vg��R�B��w{�{��&��6�Yt͙���'��8�R����+�ޠ°�p�$9��/�����;z��}A)q�*����%
��:tPG
�.���֤�"c\�1�Ed���0����r
����i��p��y�,dqԕ'=��$�UKco�Ha��Á=�mg�KW�΄S�O�h ���i�s��H4饭��n�JaԬ�߉c��hѺ��t�h�&|��c��z���TY�쩤�Z��&�?ݱh疱���iFN]�Z��=�<nXgR6MG)�c��"���q^� r)�����>��ۙ�����5]��P_�-�do��uU�T"�0ĝ���)���6Ae����_�QJ�1e��H\��,�%{:Y�I����0      �   k  x��Y����-=���v������4�$�]7��m Q#i�$G�P+˿�y��I�!O��%yo2��E�Ҝ�w�s&���n�v~���Ζ��s��J_�W���3[��o���o��Ƈ.�'Y�3��:��:e��M�\˾47n�.��6s���jͺ�m-s�mەm�=�,3�����[cO{ݺ��]�L����i��{��~"�3�g"�HA�+]�:
�+=9����DME>� y"
�k�ʔg|�A��vi�o�m�O/Lۺp:�mùH�<���2т'i�$\@�o\s�A�d"s~Z��	?=��r��9�O�<I�y�����Vl�zr>��mK8|�׶�[#��W�YM^����\L���V�J2~x�HK1Er�(�,��d�T2R�7�Je�aK1���Z1��YYd@`+S�O��&IA���P�u��>������RH.�֙��z��ܙ�~��:߰��l+��%~vwv�,�l��]�~�T�H�a��Ӓ䨬<85�-Wy��"͔L�Hm��v�5Ьt��\�ȭM`�ge|c�a�k����5�������=�էlnJd�3��!�H�a��9ɝ�S�����B�&��R1���_�ܐCٌ�ֶa)\�j�l�#�g�ڈ絭�b���D%$����+E�8UO�bXR<ES�����3[��2[���4[��ܡT��i:@b�X��SN2<�D=�Q?9I9��҃����3.��<I�:��:W�PAM���9�fa��x��rK�}e�?Ԣ��U�3�,�}�a��"�V-R �!9�{�V��җ�0�>z�P�Y*���w���޳�57�:��Ꟑ7����Kk6��t����/�|�Lu���-�ś����i��s��B�*�R�O%H�a��P$� ����aԡP*O (S��� �_���ZW��5�3��7�v�|[���s��pYL?�Ň��4HK��@�{y��LH�a��E9�0��Na�A!�f��)�cC��r��ek��/�j�8C�����$Hv���pġ ���0�kM�� ��|��&�ɝN�0L�% 	��</�2�M�*�E�Y�҃8��\�e����rM��w0FI�^������V���(E�ո��`n�h	�z۬��{�:l��[V~g���c�"!ᇵ׵�$w�d:Ʊ��#�����c������X�4�\R֟���Ʒ������]�Ud"�T�x˄ڔ���yeJ�ǶND�{�g�b0�@�����2��,^�y�k\4��]m,�X`o��"��h��̫={eo�`���U��|P��"~w(ъ������z�(�y�D"��vG��A�vT;Yg��8
�$��i����Q�}��5I_��ĩ�Q�˦ò�й���b���Z@8����8�#�"�we�A��3SU��W��;���	�zz�ӕ��.
�c�ǹ@>���<)rh��
U~l���/�aG�j�������X��֭�ڢ���+j��9 \D�6ȧr�0 ]r��(kɵ��B�c��/���/]���� D%���'|>ϊ�!���񃷇�z�%`؅�E��Ni�z�\�&����ڼ'�/]@���<d%:'ᇵ�-�����b��ciJ�s��:;�zk)R���+��ו���m����^أ����D��H�aU'̺]�4�9�F@I�S�F*��5�)[}���GaZ�&�	�k�����e/M0[���\�A�T�'�i���m"��NٝP ȩ��y��y!��Y:>�8'0�ZS}���R�}!ZŅeK�242m�����Ԕ�[C2������l�b�o����M� @�r����3��#&���Tˏ��L�.�$. Ϸ����e�$��@�[!s`��-(9�Jm��}��嚄�������NT��s}T�0��:͒� v3�4vkoc&|�g�Z�:c_��_~����[�Ķ�O��8<�zH��8����m?����=-D�p�&�P�����f�Ϯ���V���P�!�ǩ��!-���S������	z͑���&��< �v���P�z���[�u�!�dmgր:���S��L��l6��5��do����/���5���~0:��G�T�wZB%y��*�=��5�1@��8��c3'�K4�欮�g�,�yƑ�����&���vY��`a�"FK�����t_�Nt��A'&�}�C�}��t�l�m����=�1܉ٍu�f<k
����B�
찵gMI��PQ�IĊ�0�L�Њ���z��UL� ��tR$||��R9Gyp*��:����$MH���Į=�('���i(9���:�����̷Y?��i$�o�~-u���$�ٓ��{��M���׿j�ۍ�O��\��o�@M�O���Y�q�� I�Fk�Q#�Ϥ�
Х������I��VT	���Os�p8a"�b%�m�f2�@G��Ĥ���d��~�Z`1їK:lԑFƹ�� !�9�4xB1�R<��eY����kb|Q0�й�m|Um�Q#P�p�G�k"ׁa�=�<ؐ��Zĉ!Xv�
GCB�`͌�����M��Z���9F��yk �ǔ�:��J)���B�?��3RVœ*�����F�I�Mz��!�� �t�0;�\�l�sZy�|��zz���S�b�����<˄ (�9����K۵���F�L�\(�tNsU<:^@Ɉ�Ok�&MrL�����S%�TdY�9L�h�;��1m�q�������rV����%w��}W�c���?�v��na�p���� �*���+�7~9�DNհt ���s5z�|ɞ��,��SP�������:��]�)�8����5]8c�<�vLl�n�bk��w0�& ��L�U��5�ڲ��@{0�I&9'�A�7�Y>ɲ���g������s�      �   h  x��V�n�8=�_�cĎe;��7'mw�M��N��\hilq+�I%���R��ɦ@��o�{3��sS�d�tq>�'�t��>��t�<������d�sK��RF�rQ('��W"3UE6S�J�tq9R�B��b�qĿ)��j�����A^��XS	_�x��h��;a6�,K�b�y:�/�kS6�=��ْΊp�/K%u��$s'�$[IO�k�F�|����	$��ɒ�kK9Q���g�_����3��B2�%��~���v'�p#��TF�󨜫C���o�E����=��WT���\�*�߆k*���4:�r]��@����u!�s�s�2t'3�Q���*񥪍�N,�3�#?J�%���gg2˞i}FUU�fG��6��uU'�d�?��'WMV�0��8����1��az�<�����DZt�bke�HF1tx�G��]�ӧb�_�~ �<�)�V�"��%j�t�j�C#�1��d<���
D��!��ѾmA�ƪ���8ꭄ�G`�͆;�«q�o���`�ׁf��6.����ܴ��_*q�֎�8�O,���X��&��9�J�SI!i�WN�*�Q2y�붦@��9�"̒;���~����x������^��@M�̹UWK���ޖ��T�WS�$�6:36W_���pn~��-v��U��h�o<M4��,ϥ��O_\��ݫ"�C:��m9IlW�gO�iU���|m��k�m!���(Y�՛���b��E�jv��@�(��oDt� 6��!:�V�s���n���2�M�2w�69=�;���^�7�j ��x��������Y���&�,��?@�>o�ҫ!�F�iT��UE}#ý=���f�����_%T�L�\����g��|=w��f� 2��
�@�Qr�zWr�dJebW�+��ߨ�{2f�N�g�q��i{�ݠ�^p�pdyꩈk �ll�"�V>�\�OOڡ�Ϛ� uj�$����Z�q�j+���8fGҲ���l<c6�T�:�vM c幼�]|{cMM�$Yx�v��5��ֻ�D���c�0ϰW�v�n��to��&�ƬtV69��v�fb���2JH670,�|qz�[�",����n�"K�*aN~�:��:��t��_�G6����`:�'|�,�@��u�c�ܣp#!�ê�/Y�t��� ���| `�
d\7Dr��Pܤ��s����������-[�My���۶��m�jţ"���UO#YA�r޶/�°7z3b>;y�0/F̐n�#��^�TAUR�ZX�b5���Sݎ��^N���gZ����&�eY�:��"�hr��+����2r'M��y�YK��r��ٯd7�J�-��m��^�^��g����`0� �R      �   .   x�3�42�30�42�\F��$�e�9��r&��,���� +|	}     