--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.0

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Calisan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Calisan" (
    kisi_no integer NOT NULL,
    meslek integer NOT NULL,
    kimlik_no integer NOT NULL
);


ALTER TABLE public."Calisan" OWNER TO postgres;

--
-- Name: Ilceler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ilceler" (
    ilce_no integer NOT NULL,
    adi character(20) NOT NULL,
    il_no integer NOT NULL
);


ALTER TABLE public."Ilceler" OWNER TO postgres;

--
-- Name: Iller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Iller" (
    il_no integer NOT NULL,
    adi character(20) NOT NULL
);


ALTER TABLE public."Iller" OWNER TO postgres;

--
-- Name: Kurum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kurum" (
    "Kurum_id" integer NOT NULL,
    "Kurum_isim" character(20) NOT NULL,
    bolum integer NOT NULL
);


ALTER TABLE public."Kurum" OWNER TO postgres;

--
-- Name: Meslek; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Meslek" (
    meslek_no integer NOT NULL,
    adi character(20) NOT NULL
);


ALTER TABLE public."Meslek" OWNER TO postgres;

--
-- Name: basvuru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basvuru (
    basvuru_no integer NOT NULL,
    calisan_no integer NOT NULL,
    kurum_no integer NOT NULL,
    meslek_no integer NOT NULL
);


ALTER TABLE public.basvuru OWNER TO postgres;

--
-- Name: calisan-maas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."calisan-maas" (
    maas_no integer NOT NULL,
    ucret integer NOT NULL,
    kurum_no integer NOT NULL,
    meslek_no integer NOT NULL
);


ALTER TABLE public."calisan-maas" OWNER TO postgres;

--
-- Name: calisan_iletisim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calisan_iletisim (
    iletisim_no integer NOT NULL,
    telefon character(11) NOT NULL,
    adres character(100) NOT NULL,
    ilce integer NOT NULL,
    calisan_id integer NOT NULL
);


ALTER TABLE public.calisan_iletisim OWNER TO postgres;

--
-- Name: hakla-iletisim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."hakla-iletisim" (
    halk_no integer NOT NULL,
    kurum_no integer NOT NULL,
    telefon integer NOT NULL,
    "e-posta" character(30) NOT NULL
);


ALTER TABLE public."hakla-iletisim" OWNER TO postgres;

--
-- Name: is_Veren; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."is_Veren" (
    kisi_no integer NOT NULL,
    kurum_no integer NOT NULL
);


ALTER TABLE public."is_Veren" OWNER TO postgres;

--
-- Name: kisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kisi (
    kisi_no integer NOT NULL,
    ad character(30) NOT NULL,
    kisi_turu integer NOT NULL
);


ALTER TABLE public.kisi OWNER TO postgres;

--
-- Name: kurum_bolum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kurum_bolum (
    bolum_no integer NOT NULL,
    adi character(20) NOT NULL,
    meslek integer NOT NULL,
    maas integer NOT NULL,
    kurum_no integer NOT NULL
);


ALTER TABLE public.kurum_bolum OWNER TO postgres;

--
-- Name: kurum_iletisim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kurum_iletisim (
    kiletisim_no integer NOT NULL,
    adres character(100) NOT NULL,
    ilce integer NOT NULL,
    kurum_no integer NOT NULL,
    telefon integer NOT NULL
);


ALTER TABLE public.kurum_iletisim OWNER TO postgres;

--
-- Name: referans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.referans (
    kisi_no integer NOT NULL,
    calisan_no integer NOT NULL
);


ALTER TABLE public.referans OWNER TO postgres;

--
-- Name: referans_iletisim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.referans_iletisim (
    riletisim_no integer NOT NULL,
    referans_no integer NOT NULL,
    telefon integer NOT NULL,
    "e-posta" character(30) NOT NULL
);


ALTER TABLE public.referans_iletisim OWNER TO postgres;

--
-- Data for Name: Calisan; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Calisan" VALUES
	(1, 3, 4865);


--
-- Data for Name: Ilceler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Ilceler" VALUES
	(7701, 'Merkez              ', 77),
	(5401, 'Serdivan            ', 54);


--
-- Data for Name: Iller; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Iller" VALUES
	(1, 'Adana               '),
	(2, 'Adıyaman            '),
	(77, 'Yalova              '),
	(34, 'İstanbul            '),
	(35, 'İzmir               '),
	(54, 'Sakarya             ');


--
-- Data for Name: Kurum; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kurum" VALUES
	(0, 'Vatan               ', 0);


--
-- Data for Name: Meslek; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Meslek" VALUES
	(0, 'kasap               '),
	(3, 'Bilgisayar Mühendisi'),
	(4, 'Diyetisyen          '),
	(1, 'Öğretmen            ');


--
-- Data for Name: basvuru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.basvuru VALUES
	(0, 1, 0, 3);


--
-- Data for Name: calisan-maas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."calisan-maas" VALUES
	(0, 8000, 0, 3);


--
-- Data for Name: calisan_iletisim; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.calisan_iletisim VALUES
	(0, '5428007345 ', 'yalova                                                                                              ', 7701, 1);


--
-- Data for Name: hakla-iletisim; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."hakla-iletisim" VALUES
	(0, 0, 5684, 'vatan@gmail.com               ');


--
-- Data for Name: is_Veren; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."is_Veren" VALUES
	(0, 0);


--
-- Data for Name: kisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kisi VALUES
	(0, 'Ahmet Vatan                   ', 0),
	(1, 'Taha Adiguzel                 ', 1),
	(2, 'Volkan Ozten                  ', 2);


--
-- Data for Name: kurum_bolum; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kurum_bolum VALUES
	(0, 'cs                  ', 3, 0, 0);


--
-- Data for Name: kurum_iletisim; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kurum_iletisim VALUES
	(0, 'serdivan avm                                                                                        ', 7701, 0, 2920);


--
-- Data for Name: referans; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.referans VALUES
	(2, 1);


--
-- Data for Name: referans_iletisim; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.referans_iletisim VALUES
	(0, 2, 245, 'volkan@gmailc.om              ');


--
-- Name: Calisan Calisan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT "Calisan_pkey" PRIMARY KEY (kisi_no);


--
-- Name: Ilceler Ilceler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ilceler"
    ADD CONSTRAINT "Ilceler_pkey" PRIMARY KEY (ilce_no);


--
-- Name: Iller Iller_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Iller"
    ADD CONSTRAINT "Iller_pkey" PRIMARY KEY (il_no);


--
-- Name: Kurum Kurum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kurum"
    ADD CONSTRAINT "Kurum_pkey" PRIMARY KEY ("Kurum_id");


--
-- Name: Meslek Meslek_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Meslek"
    ADD CONSTRAINT "Meslek_pkey" PRIMARY KEY (meslek_no);


--
-- Name: basvuru basvuru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basvuru
    ADD CONSTRAINT basvuru_pkey PRIMARY KEY (basvuru_no);


--
-- Name: calisan-maas calisan-maas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."calisan-maas"
    ADD CONSTRAINT "calisan-maas_pkey" PRIMARY KEY (maas_no);


--
-- Name: calisan_iletisim calisan_iletisim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calisan_iletisim
    ADD CONSTRAINT calisan_iletisim_pkey PRIMARY KEY (iletisim_no);


--
-- Name: hakla-iletisim hakla-iletisim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."hakla-iletisim"
    ADD CONSTRAINT "hakla-iletisim_pkey" PRIMARY KEY (halk_no);


--
-- Name: is_Veren is_Veren_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."is_Veren"
    ADD CONSTRAINT "is_Veren_pkey" PRIMARY KEY (kisi_no);


--
-- Name: kisi kisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kisi
    ADD CONSTRAINT kisi_pkey PRIMARY KEY (kisi_no);


--
-- Name: kurum_bolum kurum_bolum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_bolum
    ADD CONSTRAINT kurum_bolum_pkey PRIMARY KEY (bolum_no);


--
-- Name: kurum_iletisim kurum_iletisim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_iletisim
    ADD CONSTRAINT kurum_iletisim_pkey PRIMARY KEY (kiletisim_no);


--
-- Name: referans_iletisim referans_iletisim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referans_iletisim
    ADD CONSTRAINT referans_iletisim_pkey PRIMARY KEY (riletisim_no);


--
-- Name: referans referans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referans
    ADD CONSTRAINT referans_pkey PRIMARY KEY (kisi_no);


--
-- Name: Calisan unique_Calisan_calisan_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT "unique_Calisan_calisan_id" UNIQUE (kisi_no);


--
-- Name: Calisan unique_Calisan_kimlik_no; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT "unique_Calisan_kimlik_no" UNIQUE (kimlik_no);


--
-- Name: Ilceler unique_Ilceler_il_no; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ilceler"
    ADD CONSTRAINT "unique_Ilceler_il_no" UNIQUE (il_no);


--
-- Name: Iller unique_Iller_il_no; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Iller"
    ADD CONSTRAINT "unique_Iller_il_no" UNIQUE (il_no);


--
-- Name: Kurum unique_Kurum_Kurum_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kurum"
    ADD CONSTRAINT "unique_Kurum_Kurum_id" UNIQUE ("Kurum_id");


--
-- Name: calisan_iletisim unique_calisan_iletisim_iletisim_no; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calisan_iletisim
    ADD CONSTRAINT unique_calisan_iletisim_iletisim_no UNIQUE (iletisim_no);


--
-- Name: basvuru calisan-basvuru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basvuru
    ADD CONSTRAINT "calisan-basvuru" FOREIGN KEY (calisan_no) REFERENCES public."Calisan"(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: calisan_iletisim calisan-iletisim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calisan_iletisim
    ADD CONSTRAINT "calisan-iletisim" FOREIGN KEY (calisan_id) REFERENCES public."Calisan"(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ilceler il; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ilceler"
    ADD CONSTRAINT il FOREIGN KEY (il_no) REFERENCES public."Iller"(il_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kurum_iletisim ilcele-kurum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_iletisim
    ADD CONSTRAINT "ilcele-kurum" FOREIGN KEY (ilce) REFERENCES public."Ilceler"(ilce_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: calisan_iletisim ilceler; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calisan_iletisim
    ADD CONSTRAINT ilceler FOREIGN KEY (ilce) REFERENCES public."Ilceler"(ilce_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: referans kisi-referans; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referans
    ADD CONSTRAINT "kisi-referans" FOREIGN KEY (kisi_no) REFERENCES public.kisi(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Calisan kisino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT kisino FOREIGN KEY (kisi_no) REFERENCES public.kisi(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: is_Veren kisino-isveren; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."is_Veren"
    ADD CONSTRAINT "kisino-isveren" FOREIGN KEY (kisi_no) REFERENCES public.kisi(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kurum_bolum kurum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_bolum
    ADD CONSTRAINT kurum FOREIGN KEY (kurum_no) REFERENCES public."Kurum"("Kurum_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: basvuru kurum-basvuru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basvuru
    ADD CONSTRAINT "kurum-basvuru" FOREIGN KEY (kurum_no) REFERENCES public."Kurum"("Kurum_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: hakla-iletisim kurum-halk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."hakla-iletisim"
    ADD CONSTRAINT "kurum-halk" FOREIGN KEY (kurum_no) REFERENCES public."Kurum"("Kurum_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: is_Veren kurum-id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."is_Veren"
    ADD CONSTRAINT "kurum-id" FOREIGN KEY (kurum_no) REFERENCES public."Kurum"("Kurum_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kurum_iletisim kurum-iletisim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_iletisim
    ADD CONSTRAINT "kurum-iletisim" FOREIGN KEY (kurum_no) REFERENCES public."Kurum"("Kurum_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kurum_bolum maas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_bolum
    ADD CONSTRAINT maas FOREIGN KEY (maas) REFERENCES public."calisan-maas"(maas_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Calisan meslek; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT meslek FOREIGN KEY (meslek) REFERENCES public."Meslek"(meslek_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kurum_bolum meslekk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurum_bolum
    ADD CONSTRAINT meslekk FOREIGN KEY (meslek) REFERENCES public."Meslek"(meslek_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: referans referans-calisan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referans
    ADD CONSTRAINT "referans-calisan" FOREIGN KEY (calisan_no) REFERENCES public."Calisan"(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: referans_iletisim referans-iletisim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.referans_iletisim
    ADD CONSTRAINT "referans-iletisim" FOREIGN KEY (referans_no) REFERENCES public.referans(kisi_no) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

