--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;


SET search_path = public, pg_catalog;
DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_2af72f10;
DROP INDEX IF EXISTS public.wazimap_geography_2fc6351a;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_long_name_9b8409f5_like;
DROP INDEX IF EXISTS public.wazimap_geography_version_01953818_like;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_bbe3c9fc_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE public.wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100),
    version character varying(100)
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public
--

CREATE SEQUENCE public.wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public
--

ALTER SEQUENCE public.wazimap_geography_id_seq OWNED BY public.wazimap_geography.id;

ALTER TABLE ONLY public.wazimap_geography ALTER COLUMN id SET DEFAULT nextval('public.wazimap_geography_id_seq'::regclass);


COPY public.wazimap_geography (name, geo_code, version, parent_level, long_name, geo_level, parent_code) FROM stdin WITH DELIMITER ',';
Nepal,NP,2021,\N,Nepal,country,\N
Province No. 1,1,2021,country,Province No. 1,province,NP
Province No. 2,2,2021,country,Province No. 2,province,NP
Province No. 3,3,2021,country,Province No. 3,province,NP
Gandaki Province,4,2021,country,Gandaki Province,province,NP
Province No. 5,5,2021,country,Province No. 5,province,NP
Karnali Province,6,2021,country,Karnali Province,province,NP
Sudurpashchim Province,7,2021,country,Sudurpashchim Province,province,NP
Achham,01,2021,province,Achham,district,7
Arghakhanchi,02,2021,province,Arghakhanchi,district,5
Baglung,03,2021,province,Baglung,district,4
Baitadi,04,2021,province,Baitadi,district,7
Bajhang,05,2021,province,Bajhang,district,7
Bajura,06,2021,province,Bajura,district,7
Banke,07,2021,province,Banke,district,5
Bara,08,2021,province,Bara,district,2
Bardiya,09,2021,province,Bardiya,district,5
Bhaktapur,10,2021,province,Bhaktapur,district,3
Bhojpur,11,2021,province,Bhojpur,district,1
Chitwan,12,2021,province,Chitwan,district,3
Dadeldhura,13,2021,province,Dadeldhura,district,7
Dailekh,14,2021,province,Dailekh,district,6
Dang,15,2021,province,Dang,district,5
Darchula,16,2021,province,Darchula,district,7
Dhading,17,2021,province,Dhading,district,3
Dhankuta,18,2021,province,Dhankuta,district,1
Dhanusa,19,2021,province,Dhanusa,district,2
Dolakha,20,2021,province,Dolakha,district,3
Dolpa,21,2021,province,Dolpa,district,6
Doti,22,2021,province,Doti,district,7
Gorkha,23,2021,province,Gorkha,district,4
Gulmi,24,2021,province,Gulmi,district,5
Humla,25,2021,province,Humla,district,6
Ilam,26,2021,province,Ilam,district,1
Jajarkot,27,2021,province,Jajarkot,district,6
Jhapa,28,2021,province,Jhapa,district,1
Jumla,29,2021,province,Jumla,district,6
Kailali,30,2021,province,Kailali,district,7
Kalikot,31,2021,province,Kalikot,district,6
Kanchanpur,32,2021,province,Kanchanpur,district,7
Kapilbastu,33,2021,province,Kapilbastu,district,5
Kaski,34,2021,province,Kaski,district,4
Kathmandu,35,2021,province,Kathmandu,district,3
Kavrepalanchowk,36,2021,province,Kavrepalanchowk,district,3
Khotang,37,2021,province,Khotang,district,1
Lalitpur,38,2021,province,Lalitpur,district,3
Lamjung,39,2021,province,Lamjung,district,4
Mahottari,40,2021,province,Mahottari,district,2
Makwanpur,41,2021,province,Makwanpur,district,3
Manang,42,2021,province,Manang,district,4
Morang,43,2021,province,Morang,district,1
Mugu,44,2021,province,Mugu,district,6
Mustang,45,2021,province,Mustang,district,4
Myagdi,46,2021,province,Myagdi,district,4
Nawalparasi East,47,2021,province,Nawalparasi East,district,4
Nuwakot,48,2021,province,Nuwakot,district,3
Okhaldhunga,49,2021,province,Okhaldhunga,district,1
Palpa,50,2021,province,Palpa,district,5
Panchthar,51,2021,province,Panchthar,district,1
Parbat,52,2021,province,Parbat,district,4
Parsa,53,2021,province,Parsa,district,2
Pyuthan,54,2021,province,Pyuthan,district,5
Ramechhap,55,2021,province,Ramechhap,district,3
Rasuwa,56,2021,province,Rasuwa,district,3
Rautahat,57,2021,province,Rautahat,district,2
Rolpa,58,2021,province,Rolpa,district,5
Rukum East,59,2021,province,Rukum East,district,5
Rupandehi,60,2021,province,Rupandehi,district,5
Salyan,61,2021,province,Salyan,district,6
Sankhuwasabha,62,2021,province,Sankhuwasabha,district,1
Saptari,63,2021,province,Saptari,district,2
Sarlahi,64,2021,province,Sarlahi,district,2
Sindhuli,65,2021,province,Sindhuli,district,3
Sindhupalchowk,66,2021,province,Sindhupalchowk,district,3
Siraha,67,2021,province,Siraha,district,2
Solukhumbu,68,2021,province,Solukhumbu,district,1
Sunsari,69,2021,province,Sunsari,district,1
Surkhet,70,2021,province,Surkhet,district,6
Syangja,71,2021,province,Syangja,district,4
Tanahu,72,2021,province,Tanahu,district,4
Taplejung,73,2021,province,Taplejung,district,1
Tehrathum,74,2021,province,Terhathum,district,1
Udayapur,75,2021,province,Udayapur,district,1
Nawalparasi West,76,2021,province,Nawalparasi West,district,5
Rukum West,77,2021,province,Rukum West,district,6
Aathrai Tribeni,10105,2021,district,Aathrai Tribeni Gaunpalika,local,73
Sidingba,10109,2021,district,Sidingba Gaunpalika,local,73
Sirijangha,10108,2021,district,Sirijangha Gaunpalika,local,73
Maijogmai,11001,2021,district,Maijogmai Gaunpalika,local,26
Mangsebung,11006,2021,district,Mangsebung Gaunpalika,local,26
Rong,11010,2021,district,Rong Gaunpalika,local,26
Sandakpur,11002,2021,district,Sandakpur Gaunpalika,local,26
Suryodaya,11009,2021,district,Suryodaya Nagarpalika,local,26
Arjundhara,11103,2021,district,Arjundhara Nagarpalika,local,28
Barhadashi,11111,2021,district,Barhadashi Gaunpalika,local,28
Bhadrapur,11114,2021,district,Bhadrapur Nagarpalika,local,28
Birtamod,11112,2021,district,Birtamod Nagarpalika,local,28
Buddhashanti,11102,2021,district,Buddhashanti Gaunpalika,local,28
Damak,11107,2021,district,Damak Nagarpalika,local,28
Gauradhaha,11108,2021,district,Gauradhaha Nagarpalika,local,28
Gauriganj,11109,2021,district,Gauriganj Gaunpalika,local,28
Haldibari,11113,2021,district,Haldibari Gaunpalika,local,28
Jhapa,11110,2021,district,Jhapa Gaunpalika,local,28
Kachankawal,11115,2021,district,Kachankawal Gaunpalika,local,28
Kamal,11106,2021,district,Kamal Gaunpalika,local,28
Kankai,11104,2021,district,Kankai Nagarpalika,local,28
Maiwakhola,10104,2021,district,Maiwakhola Gaunpalika,local,73
Meringden,10103,2021,district,Meringden Gaunpalika,local,73
Mikwakhola,10102,2021,district,Mikwakhola Gaunpalika,local,73
Phaktanglung,10101,2021,district,Phaktanglung Gaunpalika,local,73
Phungling,10106,2021,district,Phungling Nagarpalika,local,73
Pathibhara Yangwarak,10107,2021,district,Pathibhara Yangwarak Gaunpalika,local,73
Falelung,10903,2021,district,Falelung Gaunpalika,local,51
Falgunanda,10905,2021,district,Falgunanda Gaunpalika,local,51
Hilihang,10902,2021,district,Hilihang Gaunpalika,local,51
Kummayak,10906,2021,district,Kummayak Gaunpalika,local,51
Miklajung,10908,2021,district,Miklajung Gaunpalika,local,51
Phidim,10904,2021,district,Phidim Nagarpalika,local,51
Tumbewa,10907,2021,district,Tumbewa Gaunpalika,local,51
Yangwarak,10901,2021,district,Yangwarak Gaunpalika,local,51
Chulachuli,11007,2021,district,Chulachuli Gaunpalika,local,26
Deumai,11004,2021,district,Deumai Nagarpalika,local,26
Fakphokthum,11005,2021,district,Fakphokthum Gaunpalika,local,26
Illam,11003,2021,district,Illam Nagarpalika,local,26
Mai,11008,2021,district,Mai Nagarpalika,local,26
Mechinagar,11101,2021,district,Mechinagar Nagarpalika,local,28
Shivasataxi,11105,2021,district,Shivasataxi Nagarpalika,local,28
Belbari,11205,2021,district,Belbari Nagarpalika,local,43
Biratnagar,11214,2021,district,Biratnagar Mahanagarpalika,local,43
Budhiganga,11213,2021,district,Budhiganga Gaunpalika,local,43
Dhanpalthan,11216,2021,district,Dhanpalthan Gaunpalika,local,43
Gramthan,11212,2021,district,Gramthan Gaunpalika,local,43
Jahada,11217,2021,district,Jahada Gaunpalika,local,43
Kanepokhari,11206,2021,district,Kanepokhari Gaunpalika,local,43
Katahari,11215,2021,district,Katahari Gaunpalika,local,43
Kerabari,11203,2021,district,Kerabari Gaunpalika,local,43
Letang,11202,2021,district,Letang Nagarpalika,local,43
Miklajung,11201,2021,district,Miklajung Gaunpalika,local,43
Patahrishanishchare,11207,2021,district,Patahrishanishchare Nagarpalika,local,43
Rangeli,11211,2021,district,Rangeli Nagarpalika,local,43
Ratuwamai,11209,2021,district,Ratuwamai Nagarpalika,local,43
Sundarharaicha,11204,2021,district,Sundarharaicha Nagarpalika,local,43
Sunwarshi,11210,2021,district,Sunwarshi Nagarpalika,local,43
Uralabari,11208,2021,district,Uralabari Nagarpalika,local,43
Barah,11302,2021,district,Barah Nagarpalika,local,69
Barju,11312,2021,district,Barju Gaunpalika,local,69
Bhokraha Narsingh,11304,2021,district,Bhokraha Narsingh Gaunpalika,local,69
Dewanganj,11311,2021,district,Dewanganj Gaunpalika,local,69
Dharan,11301,2021,district,Dharan Upamahanagarpalika,local,69
Duhabi,11307,2021,district,Duhabi Nagarpalika,local,69
Gadhi,11308,2021,district,Gadhi Gaunpalika,local,69
Harinagar,11310,2021,district,Harinagar Gaunpalika,local,69
Inaruwa,11309,2021,district,Inaruwa Nagarpalika,local,69
Itahari,11306,2021,district,Itahari Upamahanagarpalika,local,69
Koshi,11303,2021,district,Koshi Gaunpalika,local,69
Ramdhuni,11305,2021,district,Ramdhuni Nagarpalika,local,69
Koshi Tappu Wildlife Reserve,00000,2021,district,Koshi Tappu Wildlife Reserve Wildlife Reserve,local,69
Chaubise,10707,2021,district,Chaubise Gaunpalika,local,18
Chhathar Jorpati,10703,2021,district,Chhathar Jorpati Gaunpalika,local,18
Dhankuta,10704,2021,district,Dhankuta Nagarpalika,local,18
Shahidbhumi,10705,2021,district,Shahidbhumi Gaunpalika,local,18
Mahalaxmi,10701,2021,district,Mahalaxmi Nagarpalika,local,18
Pakhribas,10702,2021,district,Pakhribas Nagarpalika,local,18
Sangurigadhi,10706,2021,district,Sangurigadhi Gaunpalika,local,18
Aathrai,10801,2021,district,Aathrai Gaunpalika,local,74
Chhathar,10806,2021,district,Chhathar Gaunpalika,local,74
Laligurans,10805,2021,district,Laligurans Nagarpalika,local,74
Phedap,10802,2021,district,Phedap Gaunpalika,local,74
Bhotkhola,10201,2021,district,Bhotkhola Gaunpalika,local,62
Chainpur,10208,2021,district,Chainpur Nagarpalika,local,62
Chichila,10204,2021,district,Chichila Gaunpalika,local,62
Dharmadevi,10210,2021,district,Dharmadevi Nagarpalika,local,62
Khandbari,10206,2021,district,Khandbari Nagarpalika,local,62
Arun,10605,2021,district,Arun Gaunpalika,local,11
Bhojpur,10604,2021,district,Bhojpur Nagarpalika,local,11
Hatuwagadhi,10608,2021,district,Hatuwagadhi Gaunpalika,local,11
Pauwadungma,10606,2021,district,Pauwadungma Gaunpalika,local,11
Ramprasad Rai,10607,2021,district,Ramprasad Rai Gaunpalika,local,11
Salpasilichho,10602,2021,district,Salpasilichho Gaunpalika,local,11
Shadananda,10601,2021,district,Shadananda Nagarpalika,local,11
Tyamkemaiyung,10603,2021,district,Tyamkemaiyung Gaunpalika,local,11
Thulung Dudhkoshi,10305,2021,district,Thulung Dudhkoshi Gaunpalika,local,68
Dudhkoshi,10304,2021,district,Dudhkoshi Gaunpalika,local,68
Khumbupasanglahmu,10301,2021,district,Khumbupasanglahmu Gaunpalika,local,68
Likhupike,10308,2021,district,Likhupike Gaunpalika,local,68
Mahakulung,10302,2021,district,Mahakulung Gaunpalika,local,68
Chaudandigadhi,11402,2021,district,Chaudandigadhi Nagarpalika,local,75
Katari,11407,2021,district,Katari Nagarpalika,local,75
Rautamai,11404,2021,district,Rautamai Gaunpalika,local,75
Sunkoshi,11405,2021,district,Sunkoshi Gaunpalika,local,75
Tapli,11406,2021,district,Tapli Gaunpalika,local,75
Triyuga,11403,2021,district,Triyuga Nagarpalika,local,75
Udayapurgadhi,11408,2021,district,Udayapurgadhi Gaunpalika,local,75
Rubi Valley,30401,2021,district,Rubi Valley Gaunpalika,local,17
Siddhalek,30408,2021,district,Siddhalek Gaunpalika,local,17
Thakre,30412,2021,district,Thakre Gaunpalika,local,17
Tripura Sundari,30404,2021,district,Tripura Sundari Gaunpalika,local,17
Bagmati,31210,2021,district,Bagmati Gaunpalika,local,41
Bakaiya,31209,2021,district,Bakaiya Gaunpalika,local,41
Bhimphedi,31207,2021,district,Bhimphedi Gaunpalika,local,41
Hetauda,31206,2021,district,Hetauda Upamahanagarpalika,local,41
Indrasarowar,31201,2021,district,Indrasarowar Gaunpalika,local,41
Kailash,31203,2021,district,Kailash Gaunpalika,local,41
Makawanpurgadhi,31208,2021,district,Makawanpurgadhi Gaunpalika,local,41
Manahari,31205,2021,district,Manahari Gaunpalika,local,41
Raksirang,31204,2021,district,Raksirang Gaunpalika,local,41
Thaha,31202,2021,district,Thaha Nagarpalika,local,41
Parsa Wildlife Reserve,00000,2021,district,Parsa Wildlife Reserve Wildlife Reserve,local,41
Menchayam,10803,2021,district,Menchayam Gaunpalika,local,74
Myanglung,10804,2021,district,Myanglung Nagarpalika,local,74
Madi,10209,2021,district,Madi Nagarpalika,local,62
Makalu,10202,2021,district,Makalu Gaunpalika,local,62
Panchakhapan,10207,2021,district,Panchakhapan Nagarpalika,local,62
Sabhapokhari,10205,2021,district,Sabhapokhari Gaunpalika,local,62
Silichong,10203,2021,district,Silichong Gaunpalika,local,62
Aamchowk,10609,2021,district,Aamchowk Gaunpalika,local,11
Nechasalyan,10306,2021,district,Nechasalyan Gaunpalika,local,68
Solududhakunda,10307,2021,district,Solududhakunda Nagarpalika,local,68
Barahapokhari,10510,2021,district,Barahapokhari Gaunpalika,local,37
Diprung,10507,2021,district,Diprung Gaunpalika,local,37
Halesi Tuwachung,10504,2021,district,Halesi Tuwachung Nagarpalika,local,37
Jantedhunga,10509,2021,district,Jantedhunga Gaunpalika,local,37
Kepilasagadhi,10501,2021,district,Kepilasagadhi Gaunpalika,local,37
Khotehang,10508,2021,district,Khotehang Gaunpalika,local,37
Aaurahi,20314,2021,district,Aaurahi Gaunpalika,local,19
Bateshwor,20304,2021,district,Bateshwor Gaunpalika,local,19
Bideha,20313,2021,district,Bideha Nagarpalika,local,19
Chhireshwornath,20305,2021,district,Chhireshwornath Nagarpalika,local,19
Dhanauji,20316,2021,district,Dhanauji Gaunpalika,local,19
Dhanusadham,20302,2021,district,Dhanusadham Nagarpalika,local,19
Ganeshman Charnath,20301,2021,district,Ganeshman Charnath Nagarpalika,local,19
Hansapur,20308,2021,district,Hansapur Nagarpalika,local,19
Janaknandani,20312,2021,district,Janaknandani Gaunpalika,local,19
Janakpur,20315,2021,district,Janakpur Upamahanagarpalika,local,19
Kamala,20311,2021,district,Kamala Nagarpalika,local,19
Lakshminiya,20306,2021,district,Lakshminiya Gaunpalika,local,19
Mithila,20303,2021,district,Mithila Nagarpalika,local,19
Mithila Bihari,20307,2021,district,Mithila Bihari Nagarpalika,local,19
Mukhiyapatti Musarmiya,20318,2021,district,Mukhiyapatti Musarmiya Gaunpalika,local,19
Nagarain,20317,2021,district,Nagarain Nagarpalika,local,19
Sabaila,20309,2021,district,Sabaila Nagarpalika,local,19
Sahidnagar,20310,2021,district,Sahidnagar Nagarpalika,local,19
Aurahi,20404,2021,district,Aurahi Nagarpalika,local,40
Balwa,20407,2021,district,Balwa Nagarpalika,local,40
Bardibas,20401,2021,district,Bardibas Nagarpalika,local,40
Bhangaha,20405,2021,district,Bhangaha Nagarpalika,local,40
Ekdanra,20411,2021,district,Ekdanra Gaunpalika,local,40
Gaushala,20402,2021,district,Gaushala Nagarpalika,local,40
Sotang,10303,2021,district,Sotang Gaunpalika,local,68
Champadevi,10406,2021,district,Champadevi Gaunpalika,local,49
Chisankhugadhi,10401,2021,district,Chisankhugadhi Gaunpalika,local,49
Khijidemba,10404,2021,district,Khijidemba Gaunpalika,local,49
Likhu,10405,2021,district,Likhu Gaunpalika,local,49
Manebhanjyang,10408,2021,district,Manebhanjyang Gaunpalika,local,49
Molung,10403,2021,district,Molung Gaunpalika,local,49
Siddhicharan,10402,2021,district,Siddhicharan Nagarpalika,local,49
Sunkoshi,10407,2021,district,Sunkoshi Gaunpalika,local,49
Ainselukhark,10502,2021,district,Ainselukhark Gaunpalika,local,37
Rawa Besi,10503,2021,district,Rawa Besi Gaunpalika,local,37
Rupakot Majhuwagadhi,10505,2021,district,Rupakot Majhuwagadhi Nagarpalika,local,37
Sakela,10506,2021,district,Sakela Gaunpalika,local,37
Belaka,11401,2021,district,Belaka Nagarpalika,local,75
Koshi Tappu Wildlife Reserve,00000,2021,district,Koshi Tappu Wildlife Reserve Wildlife Reserve,local,75
Agnisair Krishna Savaran,20103,2021,district,Agnisair Krishna Savaran Gaunpalika,local,63
Balan Bihul,20108,2021,district,Balan Bihul Gaunpalika,local,63
Belhi Chapena,20111,2021,district,Belhi Chapena Gaunpalika,local,63
Bishnupur,20112,2021,district,Bishnupur Gaunpalika,local,63
Bode Barsain,20109,2021,district,Bode Barsain Nagarpalika,local,63
Chhinnamasta,20118,2021,district,Chhinnamasta Gaunpalika,local,63
Dakneshwori,20110,2021,district,Dakneshwori Nagarpalika,local,63
Hanumannagar Kankalini,20116,2021,district,Hanumannagar Kankalini Nagarpalika,local,63
Kanchanrup,20102,2021,district,Kanchanrup Nagarpalika,local,63
Khadak,20106,2021,district,Khadak Nagarpalika,local,63
Jaleswor,20415,2021,district,Jaleswor Nagarpalika,local,40
Loharpatti,20406,2021,district,Loharpatti Nagarpalika,local,40
Mahottari,20412,2021,district,Mahottari Gaunpalika,local,40
Manra Siswa,20410,2021,district,Manra Siswa Nagarpalika,local,40
Matihani,20414,2021,district,Matihani Nagarpalika,local,40
Pipra,20413,2021,district,Pipra Gaunpalika,local,40
Ramgopalpur,20408,2021,district,Ramgopalpur Nagarpalika,local,40
Samsi,20409,2021,district,Samsi Gaunpalika,local,40
Sonama,20403,2021,district,Sonama Gaunpalika,local,40
Bagmati,20503,2021,district,Bagmati Nagarpalika,local,64
Balara,20516,2021,district,Balara Nagarpalika,local,64
Barahathawa,20504,2021,district,Barahathawa Nagarpalika,local,64
Chitawan National Park,00000,2021,district,Chitawan National Park National Park,local,41
Baudhimai,20611,2021,district,Baudhimai Nagarpalika,local,57
Brindaban,20605,2021,district,Brindaban Nagarpalika,local,57
Chandrapur,20601,2021,district,Chandrapur Nagarpalika,local,57
Dewahhi Gonahi,20609,2021,district,Dewahhi Gonahi Nagarpalika,local,57
Durga Bhagwati,20615,2021,district,Durga Bhagwati Gaunpalika,local,57
Gadhimai,20606,2021,district,Gadhimai Nagarpalika,local,57
Garuda,20608,2021,district,Garuda Nagarpalika,local,57
Dhurkot,50408,2021,district,Dhurkot Gaunpalika,local,24
Gulmidarbar,50410,2021,district,Gulmidarbar Gaunpalika,local,24
Isma,50405,2021,district,Isma Gaunpalika,local,24
Kaligandaki,50401,2021,district,Kaligandaki Gaunpalika,local,24
Madane,50407,2021,district,Madane Gaunpalika,local,24
Malika,50406,2021,district,Malika Gaunpalika,local,24
Musikot,50404,2021,district,Musikot Nagarpalika,local,24
Resunga,50409,2021,district,Resunga Nagarpalika,local,24
Ruru,50412,2021,district,Ruru Gaunpalika,local,24
Satyawati,50402,2021,district,Satyawati Gaunpalika,local,24
Bagnaskali,50604,2021,district,Bagnaskali Gaunpalika,local,50
Mathagadhi,50609,2021,district,Mathagadhi Gaunpalika,local,50
Nisdi,50610,2021,district,Nisdi Gaunpalika,local,50
Purbakhola,50602,2021,district,Purbakhola Gaunpalika,local,50
Rainadevi Chhahara,50607,2021,district,Rainadevi Chhahara Gaunpalika,local,50
Rambha,50603,2021,district,Rambha Gaunpalika,local,50
Rampur,50601,2021,district,Rampur Nagarpalika,local,50
Ribdikot,50606,2021,district,Ribdikot Gaunpalika,local,50
Tansen,50605,2021,district,Tansen Nagarpalika,local,50
Tinau,50608,2021,district,Tinau Gaunpalika,local,50
Bardaghat,50701,2021,district,Bardaghat Nagarpalika,local,76
Palhi Nandan,50704,2021,district,Palhi Nandan Gaunpalika,local,76
Pratappur,50706,2021,district,Pratappur Gaunpalika,local,76
Mahadeva,20114,2021,district,Mahadeva Gaunpalika,local,63
Rajbiraj,20113,2021,district,Rajbiraj Nagarpalika,local,63
Rupani,20104,2021,district,Rupani Gaunpalika,local,63
Saptakoshi,20101,2021,district,Saptakoshi Nagarpalika,local,63
Shambhunath,20105,2021,district,Shambhunath Nagarpalika,local,63
Surunga,20107,2021,district,Surunga Nagarpalika,local,63
Tilathi Koiladi,20117,2021,district,Tilathi Koiladi Gaunpalika,local,63
Umakunda,31001,2021,district,Umakunda Gaunpalika,local,55
Bishrampur,20706,2021,district,Bishrampur Gaunpalika,local,8
Devtal,20715,2021,district,Devtal Gaunpalika,local,8
Jitpur Simara,20703,2021,district,Jitpur Simara Upamahanagarpalika,local,8
Kalaiya,20708,2021,district,Kalaiya Upamahanagarpalika,local,8
Karaiyamai,20709,2021,district,Karaiyamai Gaunpalika,local,8
Kolhabi,20702,2021,district,Kolhabi Nagarpalika,local,8
Mahagadhimai,20714,2021,district,Mahagadhimai Nagarpalika,local,8
Nijgadh,20701,2021,district,Nijgadh Nagarpalika,local,8
Pacharauta,20713,2021,district,Pacharauta Nagarpalika,local,8
Parwanipur,20704,2021,district,Parwanipur Gaunpalika,local,8
Pheta,20707,2021,district,Pheta Gaunpalika,local,8
Prasauni,20705,2021,district,Prasauni Gaunpalika,local,8
Simraungadh,20712,2021,district,Simraungadh Nagarpalika,local,8
Suwarna,20716,2021,district,Suwarna Gaunpalika,local,8
Ramgram,50703,2021,district,Ramgram Nagarpalika,local,76
Sarawal,50705,2021,district,Sarawal Gaunpalika,local,76
Sunwal,50702,2021,district,Sunwal Nagarpalika,local,76
Susta,50707,2021,district,Susta Gaunpalika,local,76
Butwal,50802,2021,district,Butwal Upamahanagarpalika,local,60
Devdaha,50801,2021,district,Devdaha Nagarpalika,local,60
Gaidahawa,50805,2021,district,Gaidahawa Gaunpalika,local,60
Kanchan,50804,2021,district,Kanchan Gaunpalika,local,60
Kotahimai,50814,2021,district,Kotahimai Gaunpalika,local,60
Lumbini Sanskritik,50813,2021,district,Lumbini Sanskritik Nagarpalika,local,60
Marchawari,50816,2021,district,Marchawari Gaunpalika,local,60
Tirahut,20115,2021,district,Tirahut Gaunpalika,local,63
Koshi Tappu Wildlife Reserve,00000,2021,district,Koshi Tappu Wildlife Reserve Wildlife Reserve,local,63
Arnama,20209,2021,district,Arnama Gaunpalika,local,67
Aurahi,20216,2021,district,Aurahi Gaunpalika,local,67
Bariyarpatti,20215,2021,district,Bariyarpatti Gaunpalika,local,67
Bhagawanpur,20213,2021,district,Bhagawanpur Gaunpalika,local,67
Bishnupur,20208,2021,district,Bishnupur Gaunpalika,local,67
Dhangadhimai,20202,2021,district,Dhangadhimai Nagarpalika,local,67
Golbazar,20203,2021,district,Golbazar Nagarpalika,local,67
Kalyanpur,20206,2021,district,Kalyanpur Nagarpalika,local,67
Karjanha,20205,2021,district,Karjanha Nagarpalika,local,67
Lahan,20201,2021,district,Lahan Nagarpalika,local,67
Laxmipur Patari,20211,2021,district,Laxmipur Patari Gaunpalika,local,67
Mirchaiya,20204,2021,district,Mirchaiya Nagarpalika,local,67
Naraha,20207,2021,district,Naraha Gaunpalika,local,67
Nawarajpur,20214,2021,district,Nawarajpur Gaunpalika,local,67
Sakhuwanankarkatti,20212,2021,district,Sakhuwanankarkatti Gaunpalika,local,67
Siraha,20217,2021,district,Siraha Nagarpalika,local,67
Sukhipur,20210,2021,district,Sukhipur Nagarpalika,local,67
Basbariya,20513,2021,district,Basbariya Gaunpalika,local,64
Bishnu,20518,2021,district,Bishnu Gaunpalika,local,64
Bramhapuri,20509,2021,district,Bramhapuri Gaunpalika,local,64
Bigu,30102,2021,district,Bigu Gaunpalika,local,20
Gaurishankar,30101,2021,district,Gaurishankar Gaunpalika,local,20
Jiri,30105,2021,district,Jiri Nagarpalika,local,20
Kalinchok,30103,2021,district,Kalinchok Gaunpalika,local,20
Melung,30107,2021,district,Melung Gaunpalika,local,20
Sailung,30108,2021,district,Sailung Gaunpalika,local,20
Tamakoshi,30106,2021,district,Tamakoshi Gaunpalika,local,20
Besishahar,40605,2021,district,Besishahar Nagarpalika,local,39
Dordi,40601,2021,district,Dordi Gaunpalika,local,39
Dudhpokhari,40608,2021,district,Dudhpokhari Gaunpalika,local,39
Kwholasothar,40603,2021,district,Kwholasothar Gaunpalika,local,39
MadhyaNepal,40604,2021,district,MadhyaNepal Nagarpalika,local,39
Marsyangdi,40602,2021,district,Marsyangdi Gaunpalika,local,39
Rainas,40607,2021,district,Rainas Nagarpalika,local,39
Sundarbazar,40606,2021,district,Sundarbazar Nagarpalika,local,39
Anbukhaireni,40710,2021,district,Anbukhaireni Gaunpalika,local,72
Bandipur,40709,2021,district,Bandipur Gaunpalika,local,72
Bhanu,40701,2021,district,Bhanu Nagarpalika,local,72
Bhimad,40705,2021,district,Bhimad Nagarpalika,local,72
Byas,40702,2021,district,Byas Nagarpalika,local,72
Chakraghatta,20512,2021,district,Chakraghatta Gaunpalika,local,64
Chandranagar,20510,2021,district,Chandranagar Gaunpalika,local,64
Dhulikhel,30905,2021,district,Dhulikhel Nagarpalika,local,30
Khanikhola,30913,2021,district,Khanikhola Gaunpalika,local,30
Mahabharat,30912,2021,district,Mahabharat Gaunpalika,local,30
Mandandeupur,30903,2021,district,Mandandeupur Nagarpalika,local,30
Namobuddha,30908,2021,district,Namobuddha Nagarpalika,local,30
Panauti,30909,2021,district,Panauti Nagarpalika,local,30
Panchkhal,30906,2021,district,Panchkhal Nagarpalika,local,30
Roshi,30911,2021,district,Roshi Gaunpalika,local,30
Temal,30907,2021,district,Temal Gaunpalika,local,30
Bagmati,30806,2021,district,Bagmati Gaunpalika,local,38
Dhankaul,20514,2021,district,Dhankaul Gaunpalika,local,64
Godaita,20517,2021,district,Godaita Nagarpalika,local,64
Haripur,20505,2021,district,Haripur Nagarpalika,local,64
Haripurwa,20507,2021,district,Haripurwa Nagarpalika,local,64
Hariwan,20502,2021,district,Hariwan Nagarpalika,local,64
Ishworpur,20506,2021,district,Ishworpur Nagarpalika,local,64
Kabilasi,20511,2021,district,Kabilasi Nagarpalika,local,64
Kaudena,20519,2021,district,Kaudena Gaunpalika,local,64
Lalbandi,20501,2021,district,Lalbandi Nagarpalika,local,64
Malangawa,20520,2021,district,Malangawa Nagarpalika,local,64
Godawari,30803,2021,district,Godawari Nagarpalika,local,38
Konjyosom,30804,2021,district,Konjyosom Gaunpalika,local,38
Parsa,20508,2021,district,Parsa Gaunpalika,local,64
Lalitpur,30802,2021,district,Lalitpur Mahanagarpalika,local,38
Mahalaxmi,30801,2021,district,Mahalaxmi Nagarpalika,local,38
Mahankal,30805,2021,district,Mahankal Gaunpalika,local,38
Devghat,40708,2021,district,Devghat Gaunpalika,local,72
Ghiring,40706,2021,district,Ghiring Gaunpalika,local,72
Myagde,40703,2021,district,Myagde Gaunpalika,local,72
Rhishing,40707,2021,district,Rhishing Gaunpalika,local,72
Shuklagandaki,40704,2021,district,Shuklagandaki Nagarpalika,local,72
Aandhikhola,40903,2021,district,Aandhikhola Gaunpalika,local,71
Arjunchaupari,40904,2021,district,Arjunchaupari Gaunpalika,local,71
Bhirkot,40905,2021,district,Bhirkot Nagarpalika,local,71
Ramnagar,20515,2021,district,Ramnagar Gaunpalika,local,64
Dudhouli,31101,2021,district,Dudhouli Nagarpalika,local,65
Ghanglekh,31107,2021,district,Ghanglekh Gaunpalika,local,65
Golanjor,31104,2021,district,Golanjor Gaunpalika,local,65
Hariharpurgadhi,31109,2021,district,Hariharpurgadhi Gaunpalika,local,65
Kamalamai,31105,2021,district,Kamalamai Nagarpalika,local,65
Marin,31108,2021,district,Marin Gaunpalika,local,65
Phikkal,31102,2021,district,Phikkal Gaunpalika,local,65
Sunkoshi,31106,2021,district,Sunkoshi Gaunpalika,local,65
Tinpatan,31103,2021,district,Tinpatan Gaunpalika,local,65
Doramba,31007,2021,district,Doramba Gaunpalika,local,55
Gokulganga,31002,2021,district,Gokulganga Gaunpalika,local,55
Khadadevi,31006,2021,district,Khadadevi Gaunpalika,local,55
Likhu Tamakoshi,31003,2021,district,Likhu Tamakoshi Gaunpalika,local,55
Manthali,31005,2021,district,Manthali Nagarpalika,local,55
Ramechhap,31004,2021,district,Ramechhap Nagarpalika,local,55
Sunapati,31008,2021,district,Sunapati Gaunpalika,local,55
Baiteshwor,30104,2021,district,Baiteshwor Gaunpalika,local,20
Bhimeshwor,30109,2021,district,Bhimeshwor Nagarpalika,local,20
Balefi,30209,2021,district,Balefi Gaunpalika,local,66
Barhabise,30208,2021,district,Barhabise Nagarpalika,local,66
Bhotekoshi,30201,2021,district,Bhotekoshi Gaunpalika,local,66
Chautara SangachokGadhi,30207,2021,district,Chautara SangachokGadhi Nagarpalika,local,66
Helambu,30204,2021,district,Helambu Gaunpalika,local,66
Indrawati,30206,2021,district,Indrawati Gaunpalika,local,66
Jugal,30202,2021,district,Jugal Gaunpalika,local,66
Lisangkhu Pakhar,30211,2021,district,Lisangkhu Pakhar Gaunpalika,local,66
Melamchi,30205,2021,district,Melamchi Nagarpalika,local,66
Panchpokhari Thangpal,30203,2021,district,Panchpokhari Thangpal Gaunpalika,local,66
Sunkoshi,30212,2021,district,Sunkoshi Gaunpalika,local,66
Tripurasundari,30210,2021,district,Tripurasundari Gaunpalika,local,66
Banepa,30904,2021,district,Banepa Nagarpalika,local,30
Bethanchowk,30910,2021,district,Bethanchowk Gaunpalika,local,30
Bhumlu,30902,2021,district,Bhumlu Gaunpalika,local,30
Chaurideurali,30901,2021,district,Chaurideurali Gaunpalika,local,30
Bhaktapur,30702,2021,district,Bhaktapur Nagarpalika,local,10
Changunarayan,30701,2021,district,Changunarayan Nagarpalika,local,10
Dakshinkali,30611,2021,district,Dakshinkali Nagarpalika,local,36
Gokarneshwor,30603,2021,district,Gokarneshwor Nagarpalika,local,36
Kageshwori Manahora,30602,2021,district,Kageshwori Manahora Nagarpalika,local,36
Kathmandu,30608,2021,district,Kathmandu Mahanagarpalika,local,36
Kirtipur,30609,2021,district,Kirtipur Nagarpalika,local,36
Nagarjun,30607,2021,district,Nagarjun Nagarpalika,local,36
Shankharapur,30601,2021,district,Shankharapur Nagarpalika,local,36
Biruwa,40906,2021,district,Biruwa Gaunpalika,local,71
Chapakot,40908,2021,district,Chapakot Nagarpalika,local,71
Galyang,40910,2021,district,Galyang Nagarpalika,local,71
Harinas,40907,2021,district,Harinas Gaunpalika,local,71
Kaligandagi,40911,2021,district,Kaligandagi Gaunpalika,local,71
Phedikhola,40902,2021,district,Phedikhola Gaunpalika,local,71
Putalibazar,40901,2021,district,Putalibazar Nagarpalika,local,71
Waling,40909,2021,district,Waling Nagarpalika,local,71
Annapurna,40503,2021,district,Annapurna Gaunpalika,local,35
Machhapuchchhre,40502,2021,district,Machhapuchchhre Gaunpalika,local,35
Madi,40501,2021,district,Madi Gaunpalika,local,35
Pokhara Lekhnath,40504,2021,district,Pokhara Lekhnath Mahanagarpalika,local,35
Rupa,40505,2021,district,Rupa Gaunpalika,local,35
Chame,40203,2021,district,Chame Gaunpalika,local,42
Narphu,40201,2021,district,Narphu Gaunpalika,local,42
Nashong,40204,2021,district,Nashong Gaunpalika,local,42
Neshyang,40202,2021,district,Neshyang Gaunpalika,local,42
Barhagaun Muktikhsetra,40303,2021,district,Barhagaun Muktikhsetra Gaunpalika,local,45
Dalome,40301,2021,district,Dalome Gaunpalika,local,45
Gharapjhong,40302,2021,district,Gharapjhong Gaunpalika,local,45
Lomanthang,40304,2021,district,Lomanthang Gaunpalika,local,45
Thasang,40305,2021,district,Thasang Gaunpalika,local,45
Annapurna,40401,2021,district,Annapurna Gaunpalika,local,46
Beni,40406,2021,district,Beni Nagarpalika,local,46
Madhyapur Thimi,30703,2021,district,Madhyapur Thimi Nagarpalika,local,10
Suryabinayak,30704,2021,district,Suryabinayak Nagarpalika,local,10
Gosaikunda,30301,2021,district,Gosaikunda Gaunpalika,local,56
Kalika,30304,2021,district,Kalika Gaunpalika,local,56
Naukunda,30305,2021,district,Naukunda Gaunpalika,local,56
Parbati Kunda,30302,2021,district,Parbati Kunda Gaunpalika,local,56
Uttargaya,30303,2021,district,Uttargaya Gaunpalika,local,56
Benighat Rorang,30409,2021,district,Benighat Rorang Gaunpalika,local,17
Budhanilakantha,30604,2021,district,Budhanilakantha Nagarpalika,local,36
Chandragiri,30610,2021,district,Chandragiri Nagarpalika,local,36
Tarakeshwor,30606,2021,district,Tarakeshwor Nagarpalika,local,36
Dhunibesi,30413,2021,district,Dhunibesi Nagarpalika,local,17
Gajuri,30410,2021,district,Gajuri Gaunpalika,local,17
Galchi,30411,2021,district,Galchi Gaunpalika,local,17
Gangajamuna,30403,2021,district,Gangajamuna Gaunpalika,local,17
Jwalamukhi,30407,2021,district,Jwalamukhi Gaunpalika,local,17
Khaniyabash,30402,2021,district,Khaniyabash Gaunpalika,local,17
Netrawati Dabjong,30405,2021,district,Netrawati Dabjong Gaunpalika,local,17
Nilakantha,30406,2021,district,Nilakantha Nagarpalika,local,17
Tokha,30605,2021,district,Tokha Nagarpalika,local,36
Belkotgadhi,30508,2021,district,Belkotgadhi Nagarpalika,local,48
Bidur,30504,2021,district,Bidur Nagarpalika,local,48
Dupcheshwar,30501,2021,district,Dupcheshwar Gaunpalika,local,48
Kakani,30512,2021,district,Kakani Gaunpalika,local,48
Kispang,30505,2021,district,Kispang Gaunpalika,local,48
Likhu,30509,2021,district,Likhu Gaunpalika,local,48
Meghang,30506,2021,district,Meghang Gaunpalika,local,48
Panchakanya,30510,2021,district,Panchakanya Gaunpalika,local,48
Shivapuri,30511,2021,district,Shivapuri Gaunpalika,local,48
Suryagadhi,30503,2021,district,Suryagadhi Gaunpalika,local,48
Tadi,30502,2021,district,Tadi Gaunpalika,local,48
Tarkeshwar,30507,2021,district,Tarkeshwar Gaunpalika,local,48
Shivapuri Watershed and Wildlife Reserve,00000,2021,district,Shivapuri Watershed and Wildlife Reserve Watershed and Wildlife Reserve,local,48
Langtang National Park,00000,2021,district,Langtang National Park National Park,local,48
Gaur,20617,2021,district,Gaur Nagarpalika,local,57
Gujara,20602,2021,district,Gujara Nagarpalika,local,57
Ishanath,20618,2021,district,Ishanath Nagarpalika,local,57
Katahariya,20604,2021,district,Katahariya Nagarpalika,local,57
Madhav Narayan,20607,2021,district,Madhav Narayan Nagarpalika,local,57
Maulapur,20610,2021,district,Maulapur Nagarpalika,local,57
Paroha,20612,2021,district,Paroha Nagarpalika,local,57
Phatuwa Bijayapur,20603,2021,district,Phatuwa Bijayapur Nagarpalika,local,57
Dhaulagiri,40403,2021,district,Dhaulagiri Gaunpalika,local,46
Malika,40404,2021,district,Malika Gaunpalika,local,46
Mangala,40405,2021,district,Mangala Gaunpalika,local,46
Raghuganga,40402,2021,district,Raghuganga Gaunpalika,local,46
Dhorpatan Hunting Reserve,00000,2021,district,Dhorpatan Hunting Reserve Hunting Reserve,local,46
Bihadi,41006,2021,district,Bihadi Gaunpalika,local,52
Jaljala,41002,2021,district,Jaljala Gaunpalika,local,52
Kushma,41003,2021,district,Kushma Nagarpalika,local,52
Mahashila,41005,2021,district,Mahashila Gaunpalika,local,52
Modi,41001,2021,district,Modi Gaunpalika,local,52
Painyu,41007,2021,district,Painyu Gaunpalika,local,52
Phalebas,41004,2021,district,Phalebas Nagarpalika,local,52
Badigad,41107,2021,district,Badigad Gaunpalika,local,3
Baglung,41101,2021,district,Baglung Nagarpalika,local,3
Bareng,41109,2021,district,Bareng Gaunpalika,local,3
Dhorpatan,41105,2021,district,Dhorpatan Nagarpalika,local,3
Galkot,41108,2021,district,Galkot Nagarpalika,local,3
Jaimuni,41110,2021,district,Jaimuni Nagarpalika,local,3
Kanthekhola,41102,2021,district,Kanthekhola Gaunpalika,local,3
Nisikhola,41106,2021,district,Nisikhola Gaunpalika,local,3
Taman Khola,41104,2021,district,Taman Khola Gaunpalika,local,3
Tara Khola,41103,2021,district,Tara Khola Gaunpalika,local,3
Dhorpatan Hunting Reserve,00000,2021,district,Dhorpatan Hunting Reserve Hunting Reserve,local,3
Chandrakot,50403,2021,district,Chandrakot Gaunpalika,local,24
Chatrakot,50411,2021,district,Chatrakot Gaunpalika,local,24
Rajdevi,20616,2021,district,Rajdevi Nagarpalika,local,57
Rajpur,20613,2021,district,Rajpur Nagarpalika,local,57
Yemunamai,20614,2021,district,Yemunamai Gaunpalika,local,57
Adarshkotwal,20711,2021,district,Adarshkotwal Gaunpalika,local,8
Baragadhi,20710,2021,district,Baragadhi Gaunpalika,local,8
Parsa Wildlife Reserve,00000,2021,district,Parsa Wildlife Reserve Wildlife Reserve,local,8
Bahudaramai,20808,2021,district,Bahudaramai Nagarpalika,local,53
Bindabasini,20814,2021,district,Bindabasini Gaunpalika,local,53
Birgunj,20807,2021,district,Birgunj Mahanagarpalika,local,53
Chhipaharmai,20812,2021,district,Chhipaharmai Gaunpalika,local,53
Dhobini,20811,2021,district,Dhobini Gaunpalika,local,53
Jagarnathpur,20803,2021,district,Jagarnathpur Gaunpalika,local,53
Jirabhawani,20802,2021,district,Jirabhawani Gaunpalika,local,53
Kalikamai,20810,2021,district,Kalikamai Gaunpalika,local,53
Pakahamainpur,20813,2021,district,Pakahamainpur Gaunpalika,local,53
Parsagadhi,20806,2021,district,Parsagadhi Nagarpalika,local,53
Paterwasugauli,20804,2021,district,Paterwasugauli Gaunpalika,local,53
Pokhariya,20809,2021,district,Pokhariya Nagarpalika,local,53
SakhuwaPrasauni,20805,2021,district,SakhuwaPrasauni Gaunpalika,local,53
Thori,20801,2021,district,Thori Gaunpalika,local,53
Parsa Wildlife Reserve,00000,2021,district,Parsa Wildlife Reserve Wildlife Reserve,local,53
Chitawan National Park,00000,2021,district,Chitawan National Park National Park,local,53
Bharatpur,31304,2021,district,Bharatpur Mahanagarpalika,local,12
Ichchhyakamana,31303,2021,district,Ichchhyakamana Gaunpalika,local,12
Kalika,31302,2021,district,Kalika Nagarpalika,local,12
Khairahani,31306,2021,district,Khairahani Nagarpalika,local,12
Madi,31307,2021,district,Madi Nagarpalika,local,12
Rapti,31301,2021,district,Rapti Nagarpalika,local,12
Ratnanagar,31305,2021,district,Ratnanagar Nagarpalika,local,12
Chitawan National Park,00000,2021,district,Chitawan National Park National Park,local,12
Aarughat,40105,2021,district,Aarughat Gaunpalika,local,23
Ajirkot,40102,2021,district,Ajirkot Gaunpalika,local,23
Bhimsen,40106,2021,district,Bhimsen Gaunpalika,local,23
Chum Nubri,40101,2021,district,Chum Nubri Gaunpalika,local,23
Dharche,40104,2021,district,Dharche Gaunpalika,local,23
Gandaki,40111,2021,district,Gandaki Gaunpalika,local,23
Gorkha,40109,2021,district,Gorkha Nagarpalika,local,23
Palungtar,40108,2021,district,Palungtar Nagarpalika,local,23
Sahid Lakhan,40110,2021,district,Sahid Lakhan Gaunpalika,local,23
Siranchok,40107,2021,district,Siranchok Gaunpalika,local,23
Sulikot,40103,2021,district,Sulikot Gaunpalika,local,23
Mayadevi,50812,2021,district,Mayadevi Gaunpalika,local,60
Omsatiya,50809,2021,district,Omsatiya Gaunpalika,local,60
Rohini,50810,2021,district,Rohini Gaunpalika,local,60
Sainamaina,50803,2021,district,Sainamaina Nagarpalika,local,60
Sammarimai,50815,2021,district,Sammarimai Gaunpalika,local,60
Siddharthanagar,50811,2021,district,Siddharthanagar Nagarpalika,local,60
Siyari,50807,2021,district,Siyari Gaunpalika,local,60
Sudhdhodhan,50806,2021,district,Sudhdhodhan Gaunpalika,local,60
Tillotama,50808,2021,district,Tillotama Nagarpalika,local,60
Thakurbaba,51203,2021,district,Thakurbaba Nagarpalika,local,9
Bardiya National Park,00000,2021,district,Bardiya National Park National Park,local,9
Barahtal,61007,2021,district,Barahtal Gaunpalika,local,70
Lumbini Sanskritik Development Area,00000,2021,district,Lumbini Sanskritik Development Area Development Area,local,60
Banganga,50901,2021,district,Banganga Nagarpalika,local,34
Bijayanagar,50904,2021,district,Bijayanagar Gaunpalika,local,34
Buddhabhumi,50902,2021,district,Buddhabhumi Nagarpalika,local,34
Kapilbastu,50907,2021,district,Kapilbastu Nagarpalika,local,34
Krishnanagar,50905,2021,district,Krishnanagar Nagarpalika,local,34
Maharajgunj,50906,2021,district,Maharajgunj Nagarpalika,local,34
Mayadevi,50909,2021,district,Mayadevi Gaunpalika,local,34
Shivaraj,50903,2021,district,Shivaraj Nagarpalika,local,34
Suddhodhan,50910,2021,district,Suddhodhan Gaunpalika,local,34
Yashodhara,50908,2021,district,Yashodhara Gaunpalika,local,34
Bhumekasthan,50503,2021,district,Bhumekasthan Nagarpalika,local,2
Chhatradev,50501,2021,district,Chhatradev Gaunpalika,local,2
Malarani,50502,2021,district,Malarani Gaunpalika,local,2
Panini,50505,2021,district,Panini Gaunpalika,local,2
Sandhikharka,50504,2021,district,Sandhikharka Nagarpalika,local,2
Sitganga,50506,2021,district,Sitganga Nagarpalika,local,2
Ayirabati,50308,2021,district,Ayirabati Gaunpalika,local,54
Gaumukhi,50301,2021,district,Gaumukhi Gaunpalika,local,54
Jhimruk,50303,2021,district,Jhimruk Gaunpalika,local,54
Mallarani,50307,2021,district,Mallarani Gaunpalika,local,54
Mandavi,50306,2021,district,Mandavi Gaunpalika,local,54
Naubahini,50302,2021,district,Naubahini Gaunpalika,local,54
Pyuthan,50304,2021,district,Pyuthan Nagarpalika,local,54
Sarumarani,50309,2021,district,Sarumarani Gaunpalika,local,54
Sworgadwary,50305,2021,district,Sworgadwary Nagarpalika,local,54
Duikholi,50203,2021,district,Duikholi Gaunpalika,local,58
Lungri,50210,2021,district,Lungri Gaunpalika,local,58
Madi,50205,2021,district,Madi Gaunpalika,local,58
Rolpa,50207,2021,district,Rolpa Nagarpalika,local,58
Runtigadi,50208,2021,district,Runtigadi Gaunpalika,local,58
Sukidaha,50204,2021,district,Sukidaha Gaunpalika,local,58
Sunchhahari,50201,2021,district,Sunchhahari Gaunpalika,local,58
Suwarnabati,50209,2021,district,Suwarnabati Gaunpalika,local,58
Thawang,50202,2021,district,Thawang Gaunpalika,local,58
Tribeni,50206,2021,district,Tribeni Gaunpalika,local,58
Aathbiskot,60801,2021,district,Aathbiskot Nagarpalika,local,77
Banfikot,60803,2021,district,Banfikot Gaunpalika,local,77
Chaurjahari,60806,2021,district,Chaurjahari Nagarpalika,local,77
Musikot,60804,2021,district,Musikot Nagarpalika,local,77
Sani Bheri,60802,2021,district,Sani Bheri Gaunpalika,local,77
Tribeni,60805,2021,district,Tribeni Gaunpalika,local,77
Bagchaur,60905,2021,district,Bagchaur Nagarpalika,local,61
Bangad Kupinde,60903,2021,district,Bangad Kupinde Nagarpalika,local,61
Chhatreshwori,60906,2021,district,Chhatreshwori Gaunpalika,local,61
Darma,60901,2021,district,Darma Gaunpalika,local,61
Dhorchaur,60904,2021,district,Dhorchaur Gaunpalika,local,61
Kalimati,60908,2021,district,Kalimati Gaunpalika,local,61
Kapurkot,60910,2021,district,Kapurkot Gaunpalika,local,61
Kumakhmalika,60902,2021,district,Kumakhmalika Gaunpalika,local,61
Sharada,60907,2021,district,Sharada Nagarpalika,local,61
Tribeni,60909,2021,district,Tribeni Gaunpalika,local,61
Babai,51005,2021,district,Babai Gaunpalika,local,15
Banglachuli,51001,2021,district,Banglachuli Gaunpalika,local,15
Dangisharan,51006,2021,district,Dangisharan Gaunpalika,local,15
Gadhawa,51009,2021,district,Gadhawa Gaunpalika,local,15
Ghorahi,51002,2021,district,Ghorahi Upamahanagarpalika,local,15
Lamahi,51007,2021,district,Lamahi Nagarpalika,local,15
Rajpur,51010,2021,district,Rajpur Gaunpalika,local,15
Rapti,51008,2021,district,Rapti Gaunpalika,local,15
Shantinagar,51004,2021,district,Shantinagar Gaunpalika,local,15
Tulsipur,51003,2021,district,Tulsipur Upamahanagarpalika,local,15
Baijanath,51103,2021,district,Baijanath Gaunpalika,local,7
Duduwa,51107,2021,district,Duduwa Gaunpalika,local,7
Janki,51105,2021,district,Janki Gaunpalika,local,7
Khajura,51104,2021,district,Khajura Gaunpalika,local,7
Kohalpur,51102,2021,district,Kohalpur Nagarpalika,local,7
Narainapur,51108,2021,district,Narainapur Gaunpalika,local,7
Nepalgunj,51106,2021,district,Nepalgunj Upamahanagarpalika,local,7
Rapti Sonari,51101,2021,district,Rapti Sonari Gaunpalika,local,7
Badhaiyatal,51208,2021,district,Badhaiyatal Gaunpalika,local,9
Bansagadhi,51201,2021,district,Bansagadhi Nagarpalika,local,9
Bansagadhi,51201,2021,district,Bansagadhi Nagarpalika,local,9
Barbardiya,51202,2021,district,Barbardiya Nagarpalika,local,9
Geruwa,51204,2021,district,Geruwa Gaunpalika,local,9
Gulariya,51207,2021,district,Gulariya Nagarpalika,local,9
Madhuwan,51206,2021,district,Madhuwan Nagarpalika,local,9
Rajapur,51205,2021,district,Rajapur Nagarpalika,local,9
Bheriganga,61005,2021,district,Bheriganga Nagarpalika,local,70
Birendranagar,61006,2021,district,Birendranagar Nagarpalika,local,70
Chaukune,61009,2021,district,Chaukune Gaunpalika,local,70
Chingad,61002,2021,district,Chingad Gaunpalika,local,70
Gurbhakot,61004,2021,district,Gurbhakot Nagarpalika,local,70
Lekbeshi,61003,2021,district,Lekbeshi Nagarpalika,local,70
Panchpuri,61008,2021,district,Panchpuri Nagarpalika,local,70
Simta,61001,2021,district,Simta Gaunpalika,local,70
Aathabis,60605,2021,district,Aathabis Nagarpalika,local,14
Bhagawatimai,60609,2021,district,Bhagawatimai Gaunpalika,local,14
Bhairabi,60603,2021,district,Bhairabi Gaunpalika,local,14
Chamunda Bindrasaini,60606,2021,district,Chamunda Bindrasaini Nagarpalika,local,14
Dullu,60607,2021,district,Dullu Nagarpalika,local,14
Dungeshwor,60610,2021,district,Dungeshwor Gaunpalika,local,14
Gurans,60611,2021,district,Gurans Gaunpalika,local,14
Mahabu,60602,2021,district,Mahabu Gaunpalika,local,14
Narayan,60608,2021,district,Narayan Nagarpalika,local,14
Naumule,60601,2021,district,Naumule Gaunpalika,local,14
Thantikandh,60604,2021,district,Thantikandh Gaunpalika,local,14
Barekot,60701,2021,district,Barekot Gaunpalika,local,27
Bheri,60706,2021,district,Bheri Nagarpalika,local,27
Chhedagad,60704,2021,district,Chhedagad Nagarpalika,local,27
Junichande,60703,2021,district,Junichande Gaunpalika,local,27
Kuse,60702,2021,district,Kuse Gaunpalika,local,27
Shiwalaya,60705,2021,district,Shiwalaya Gaunpalika,local,27
Tribeni Nalagad,60707,2021,district,Tribeni Nalagad Nagarpalika,local,27
Chharka Tangsong,60108,2021,district,Chharka Tangsong Gaunpalika,local,21
Dolpo Buddha,60101,2021,district,Dolpo Buddha Gaunpalika,local,21
Jagadulla,60103,2021,district,Jagadulla Gaunpalika,local,21
Kaike,60107,2021,district,Kaike Gaunpalika,local,21
Mudkechula,60104,2021,district,Mudkechula Gaunpalika,local,21
Shey Phoksundo,60102,2021,district,Shey Phoksundo Gaunpalika,local,21
Thuli Bheri,60106,2021,district,Thuli Bheri Nagarpalika,local,21
Tripurasundari,60105,2021,district,Tripurasundari Nagarpalika,local,21
Chandannath,60404,2021,district,Chandannath Nagarpalika,local,29
Guthichaur,60405,2021,district,Guthichaur Gaunpalika,local,29
Hima,60408,2021,district,Hima Gaunpalika,local,29
Kanakasundari,60402,2021,district,Kanakasundari Gaunpalika,local,29
Patrasi,60401,2021,district,Patrasi Gaunpalika,local,29
Sinja,60403,2021,district,Sinja Gaunpalika,local,29
Tatopani,60406,2021,district,Tatopani Gaunpalika,local,29
Tila,60407,2021,district,Tila Gaunpalika,local,29
Kalika,60509,2021,district,Kalika Gaunpalika,local,32
Khandachakra,60506,2021,district,Khandachakra Nagarpalika,local,32
Mahawai,60508,2021,district,Mahawai Gaunpalika,local,32
Naraharinath,60505,2021,district,Naraharinath Gaunpalika,local,32
Pachaljharana,60502,2021,district,Pachaljharana Gaunpalika,local,32
Palata,60501,2021,district,Palata Gaunpalika,local,32
Soru,60203,2021,district,Soru Gaunpalika,local,44
Adanchuli,60306,2021,district,Adanchuli Gaunpalika,local,25
Chankheli,60301,2021,district,Chankheli Gaunpalika,local,25
Kharpunath,60302,2021,district,Kharpunath Gaunpalika,local,25
Namkha,60304,2021,district,Namkha Gaunpalika,local,25
Sarkegad,60305,2021,district,Sarkegad Gaunpalika,local,25
Simkot,60303,2021,district,Simkot Gaunpalika,local,25
Tanjakot,60307,2021,district,Tanjakot Gaunpalika,local,25
Badimalika,70106,2021,district,Badimalika Nagarpalika,local,6
Budhiganga,70108,2021,district,Budhiganga Nagarpalika,local,6
Budhinanda,70103,2021,district,Budhinanda Nagarpalika,local,6
Chhededaha,70107,2021,district,Chhededaha Gaunpalika,local,6
Gaumul,70102,2021,district,Gaumul Gaunpalika,local,6
Himali,70101,2021,district,Himali Gaunpalika,local,6
Pandav Gupha,70105,2021,district,Pandav Gupha Gaunpalika,local,6
Swami Kartik,70104,2021,district,Swami Kartik Gaunpalika,local,6
Tribeni,70109,2021,district,Tribeni Nagarpalika,local,6
Panchadewal Binayak,70701,2021,district,Panchadewal Binayak Nagarpalika,local,1
Ramaroshan,70702,2021,district,Ramaroshan Gaunpalika,local,1
Sanphebagar,70704,2021,district,Sanphebagar Nagarpalika,local,1
Turmakhad,70710,2021,district,Turmakhad Gaunpalika,local,1
Khaptad National Park,00000,2021,district,Khaptad National Park National Park,local,1
Adharsha,70603,2021,district,Adharsha Gaunpalika,local,22
Badikedar,70608,2021,district,Badikedar Gaunpalika,local,22
Bogtan,70607,2021,district,Bogtan Gaunpalika,local,22
Dipayal Silgadi,70605,2021,district,Dipayal Silgadi Nagarpalika,local,22
Jorayal,70609,2021,district,Jorayal Gaunpalika,local,22
K I Singh,70606,2021,district,K I Singh Gaunpalika,local,22
Purbichauki,70601,2021,district,Purbichauki Gaunpalika,local,22
Sayal,70602,2021,district,Sayal Gaunpalika,local,22
Shikhar,70604,2021,district,Shikhar Nagarpalika,local,22
Raskot,60503,2021,district,Raskot Nagarpalika,local,32
Sanni Tribeni,60504,2021,district,Sanni Tribeni Gaunpalika,local,32
Tilagufa,60507,2021,district,Tilagufa Nagarpalika,local,32
Chhayanath Rara,60202,2021,district,Chhayanath Rara Nagarpalika,local,44
Khatyad,60204,2021,district,Khatyad Gaunpalika,local,44
Mugum Karmarong,60201,2021,district,Mugum Karmarong Gaunpalika,local,44
Khaptad National Park,00000,2021,district,Khaptad National Park National Park,local,6
Bithadchir,70210,2021,district,Bithadchir Gaunpalika,local,5
Bungal,70202,2021,district,Bungal Nagarpalika,local,5
Chabispathivera,70207,2021,district,Chabispathivera Gaunpalika,local,5
Durgathali,70208,2021,district,Durgathali Gaunpalika,local,5
JayaPrithivi,70206,2021,district,JayaPrithivi Nagarpalika,local,5
Kanda,70201,2021,district,Kanda Gaunpalika,local,5
Kedarseu,70209,2021,district,Kedarseu Gaunpalika,local,5
Khaptadchhanna,70212,2021,district,Khaptadchhanna Gaunpalika,local,5
Thalara,70211,2021,district,Thalara Gaunpalika,local,5
Khaptad National Park,00000,2021,district,Khaptad National Park National Park,local,5
Bannigadhi Jayagadh,70707,2021,district,Bannigadhi Jayagadh Gaunpalika,local,1
Chaurpati,70705,2021,district,Chaurpati Gaunpalika,local,1
Dhakari,70709,2021,district,Dhakari Gaunpalika,local,1
Kamalbazar,70708,2021,district,Kamalbazar Nagarpalika,local,1
Mangalsen,70706,2021,district,Mangalsen Nagarpalika,local,1
Mellekh,70703,2021,district,Mellekh Gaunpalika,local,1
Masta,70205,2021,district,Masta Gaunpalika,local,5
Surma,70203,2021,district,Surma Gaunpalika,local,5
Talkot,70204,2021,district,Talkot Gaunpalika,local,5
Khaptad National Park,00000,2021,district,Khaptad National Park National Park,local,22
Bardagoriya,70806,2021,district,Bardagoriya Gaunpalika,local,31
Bhajani,70811,2021,district,Bhajani Nagarpalika,local,31
Chure,70802,2021,district,Chure Gaunpalika,local,31
Dhangadhi,70813,2021,district,Dhangadhi Upamahanagarpalika,local,31
Gauriganga,70804,2021,district,Gauriganga Nagarpalika,local,31
Ghodaghodi,70805,2021,district,Ghodaghodi Nagarpalika,local,31
Godawari,70803,2021,district,Godawari Nagarpalika,local,31
Janaki,70808,2021,district,Janaki Gaunpalika,local,31
Joshipur,70809,2021,district,Joshipur Gaunpalika,local,31
Kailari,70812,2021,district,Kailari Gaunpalika,local,31
Lamkichuha,70807,2021,district,Lamkichuha Nagarpalika,local,31
Mohanyal,70801,2021,district,Mohanyal Gaunpalika,local,31
Tikapur,70810,2021,district,Tikapur Nagarpalika,local,31
Bedkot,70903,2021,district,Bedkot Nagarpalika,local,33
Belauri,70908,2021,district,Belauri Nagarpalika,local,33
Beldandi,70909,2021,district,Beldandi Gaunpalika,local,33
Bhimdatta,70904,2021,district,Bhimdatta Nagarpalika,local,33
Krishnapur,70901,2021,district,Krishnapur Nagarpalika,local,33
Laljhadi,70906,2021,district,Laljhadi Gaunpalika,local,33
Dogadakedar,70402,2021,district,Dogadakedar Gaunpalika,local,4
Melauli,70408,2021,district,Melauli Nagarpalika,local,4
Pancheshwar,70406,2021,district,Pancheshwar Gaunpalika,local,4
Patan,70409,2021,district,Patan Nagarpalika,local,4
Purchaudi,70403,2021,district,Purchaudi Nagarpalika,local,4
Shivanath,70407,2021,district,Shivanath Gaunpalika,local,4
Sigas,70410,2021,district,Sigas Gaunpalika,local,4
Surnaya,70404,2021,district,Surnaya Gaunpalika,local,4
Apihimal,70305,2021,district,Apihimal Gaunpalika,local,16
Byas,70301,2021,district,Byas Gaunpalika,local,16
Dunhu,70302,2021,district,Dunhu Gaunpalika,local,16
Lekam,70309,2021,district,Lekam Gaunpalika,local,16
Mahakali,70303,2021,district,Mahakali Nagarpalika,local,16
Malikaarjun,70308,2021,district,Malikaarjun Gaunpalika,local,16
Marma,70306,2021,district,Marma Gaunpalika,local,16
Naugad,70304,2021,district,Naugad Gaunpalika,local,16
Shailyashikhar,70307,2021,district,Shailyashikhar Nagarpalika,local,16
Chitawan National Park,00000,2021,district,Chitawan National Park National Park,local,47
Bhume,50103,2021,district,Bhume Gaunpalika,local,59
Putha Uttarganga,50101,2021,district,Putha Uttarganga Gaunpalika,local,59
Sisne,50102,2021,district,Sisne Gaunpalika,local,59
Dhorpatan Hunting Reserve,00000,2021,district,Dhorpatan Hunting Reserve Hunting Reserve,local,59
Mahakali,70905,2021,district,Mahakali Nagarpalika,local,33
Punarbas,70907,2021,district,Punarbas Nagarpalika,local,33
Shuklaphanta,70902,2021,district,Shuklaphanta Nagarpalika,local,33
Shuklaphanta National Park,00000,2021,district,Shuklaphanta National Park National Park,local,33
Ajaymeru,70506,2021,district,Ajaymeru Gaunpalika,local,13
Alital,70503,2021,district,Alital Gaunpalika,local,13
Amargadhi,70502,2021,district,Amargadhi Nagarpalika,local,13
Bhageshwar,70504,2021,district,Bhageshwar Gaunpalika,local,13
Ganayapdhura,70507,2021,district,Ganayapdhura Gaunpalika,local,13
Nawadurga,70501,2021,district,Nawadurga Gaunpalika,local,13
Parashuram,70505,2021,district,Parashuram Nagarpalika,local,13
Dasharathchanda,70405,2021,district,Dasharathchanda Nagarpalika,local,4
Dilasaini,70401,2021,district,Dilasaini Gaunpalika,local,4
Binayee Tribeni,40808,2021,district,Binayee Tribeni Gaunpalika,local,47
Binayee Tribeni,40808,2021,district,Binayee Tribeni Gaunpalika,local,47
Bulingtar,40802,2021,district,Bulingtar Gaunpalika,local,47
Bungdikali,40803,2021,district,Bungdikali Gaunpalika,local,47
Devchuli,40805,2021,district,Devchuli Nagarpalika,local,47
Gaidakot,40801,2021,district,Gaidakot Nagarpalika,local,47
Hupsekot,40804,2021,district,Hupsekot Gaunpalika,local,47
Kawasoti,40806,2021,district,Kawasoti Nagarpalika,local,47
Madhyabindu,40807,2021,district,Madhyabindu Nagarpalika,local,47
\.

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 1, false);

--
-- Name: wazimap_geography wazimap_geography_geo_level_bbe3c9fc_uniq; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_bbe3c9fc_uniq UNIQUE (geo_level, geo_code, version);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);

--
-- Name: wazimap_geography_2af72f10; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_2af72f10 ON public.wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_2fc6351a ON public.wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_b068931c ON public.wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_long_name_9b8409f5_like; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_long_name_9b8409f5_like ON public.wazimap_geography USING btree (long_name varchar_pattern_ops);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_name_36b79089_like ON public.wazimap_geography USING btree (name varchar_pattern_ops);


--
-- Name: wazimap_geography_version_01953818_like; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_version_01953818_like ON public.wazimap_geography USING btree (version varchar_pattern_ops);

--
-- PostgreSQL database dump complete
--
