CREATE DATABASE `vaczi_var_adatbazis` CHARACTER SET UTF8 COLLATE utf8_general_ci;
USE `vaczi_var_adatbazis`;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 31. 14:10
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Adatbázis: `vaczi_var_adatbazis`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adminisztrátorok`
--
CREATE TABLE `adminisztrátorok` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT
 , `felhasznalo` varchar(12) NOT NULL
  ,`email` varchar(64) NOT NULL
  ,`jelszo` varchar(260) NOT NULL
  ,`szint` varchar(1) NOT NULL
  ,`allapot_id` int(11) NOT NULL
  ,PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla indexei `adminisztrátorok`
--
ALTER TABLE `adminisztrátorok`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `felhasznalo` (`felhasznalo`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `jelszo` (`jelszo`);

--
-- A tábla adatainak kiíratása `adminisztrátorok`
--

INSERT INTO `adminisztrátorok` (`id`, `felhasznalo`, `email`, `jelszo`, `szint`,`allapot_id`) VALUES
(1, 'Lmate', 'lessmatevac@gmail.com', 'Kismalac19567', 2,1),
(2, 'mateka', 'rt@gmail.com', '06209506303B06407301B0510D40B50890940EE06A03C07002A04500602F0190520E30160A00FF09C04500E01609F0A5','1',1),
(4, 	'ember' ,'fdf',	'03C07B0CE01A0BF03B0D405D0F103F08403C0D00A703D0B500B0640FC05607C0640430CC0050DD05005308F0AF071015','2',1),
(5, 	'ember2' ,'fdf@gmail.com','03C07B4CE01A0BF03B0D405D0F103F08403C0D00A703D0B500B0640FC05607C0640430CC0050DD05005308F0AF071012','1',2),
(6, 'mateka69', 'rst@gmail.com', '06209506303B06207301B0510D40B50890940EE06A03C07002A04500602F0190520E30160A00FF09C04500E01609F0A5','1',1),
(7, 	'krisz' ,'fddf',	'03C07B0CE01A0BF03B03405D0F103F08403C0D00A703D0B500B0640FC05607C0640430CC0050DD05005308F0AF071015','1',1),
(9, 	'lajos' ,'fddf@gmail.com',	'03C07B0CE01A0BF03B0D405D0F403F08403C0D00A703D0B500B0640FC05607C0640430CC0050DD05005308F0AF071012','1',2); 
-- Felhasználónév: emebr Jelszó: jelszo45 Daik: abc

-- --------------------------------------------------------


--
-- Tábla szerkezet ehhez a táblához `alkalmazas_naplo`
--

CREATE TABLE `alkalmazas_naplo` (
  `id` int(11) NOT NULL,
  `info` varchar(70) NOT NULL,
  `happen_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla indexei `alkalmazas_naplo`
--
ALTER TABLE `alkalmazas_naplo`
  ADD PRIMARY KEY (`id`);

--
-- A tábla adatainak kiíratása `alkalmazas_naplo`
--

INSERT INTO `alkalmazas_naplo` (`id`, `info`, `happen_time`) VALUES
(7, 'Program hozzáadva reeee néven  által', '2023-01-22 15:59:13'),
(8, 'Sikertelen bejelntkezési próbálgatások lacko néven', '2023-01-25 17:21:36'),
(9, 'Sikertelen bejelntkezési próbálgatások lacko néven', '2023-01-25 17:37:08'),
(10, 'Program hozzáadva ASZTAL néven  által', '2023-01-25 18:40:52');


-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `daik`
--

CREATE TABLE `daik` (
  `id` tinyint(11) NOT NULL,
  `daik_neve` varchar(260) DEFAULT NULL
  ,PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `daik`
--
 -- jelszo = jelszo45 daik = abc
INSERT INTO `daik` (`id`, `daik_neve`) VALUES
(1,'daik'),
(2, 'ztg'),
(4, '0BA0780160BF08F0010CF0EA0410410400DE05D0AE0220230B00030610A309601707A09C0B40100FF0610F20000150AD');


--
-- A tábla indexei `daik`
--
ALTER TABLE `daik`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `daik_neve` (`daik_neve`);


-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `felhasznev` varchar(12) NOT NULL,
  `email` varchar(64) NOT NULL,
  `veznev` varchar(12) NOT NULL,
  `kernev` varchar(12) NOT NULL,
  `jelszo` varchar(260) NOT NULL,
  `legutolso_belepes_datuma` datetime DEFAULT NULL,
  `allapot_id` tinyint(11) NOT NULL,
  `jogosultsag_id` tinyint(11) NOT NULL,
  `jogosult_e_megjegyzesre` varchar(1) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD UNIQUE KEY `email` (`email`);

  ALTER TABLE `felhasznalo`
  ADD UNIQUE KEY `felhasznev` (`felhasznev`);

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`id`, `felhasznev`, `email`, `veznev`, `kernev`, `jelszo`, `legutolso_belepes_datuma`, `allapot_id`, `jogosultsag_id`, `jogosult_e_megjegyzesre`) VALUES
(1, 'Sciipy', 'aa@gmail.com', 'MAte', 'Kovacs', 'dfsfs45', '2022-11-02 00:00:00', 1, 3, '1');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcs_megjegyzes_felhasznalo`
--



CREATE TABLE prog_kategoriak_nem(
id VARCHAR(1) NOT NULL UNIQUE
,kategoria_megnevezes varchar(22)
,PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO prog_kategoriak_nem(id,kategoria_megnevezes)
VALUES(1,"Fiúknak"),
        (2,"Lányoknak"),
        (3,"Mindkettő nem számára");


CREATE TABLE prog_kategoriak_kor(
id VARCHAR(1) NOT NULL UNIQUE
,kategoria_megnevezes varchar(25)
,PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO prog_kategoriak_kor(id,kategoria_megnevezes)
VALUES(1,"gyermek"),
      (2,"gyermek és felnőtt"),
      (3,"serdülő"),
      (4,"felnőtt"),
      (5,"Minden korosztály");


CREATE TABLE prog_kategoriak_tipus(
id VARCHAR(1) NOT NULL UNIQUE
,kategoria_megnevezes varchar(15)
,PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;  
INSERT INTO prog_kategoriak_tipus(id,kategoria_megnevezes)
 VALUES(1,"kaland"),
      (2,"kultúrális"),
      (3,"zene"),
      (4,"esztétikus");



-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepek_program`
--

CREATE TABLE `kepek_program` (
  `id` int NOT NULL,
  `img_index` varchar(70) NOT NULL,
  `program_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- A tábla indexei `kepek_program`
--
ALTER TABLE `kepek_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kepek_program` (`program_id`);

--
-- A tábla adatainak kiíratása `kepek_program`
--

INSERT INTO kepek_program(id,img_index,program_id) VALUES(1,'íjászat/1.jpg',10); 
INSERT INTO kepek_program(id,img_index,program_id) VALUES(3,'íjászat/2.jpg',10); 
INSERT INTO kepek_program(id,img_index,program_id) VALUES(5,'íjászat/3.jpg',10); 
INSERT INTO kepek_program(id,img_index,program_id) VALUES(2,'lovagi_torna/1.jpg',2);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(4,'raid/1.jpg',3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `programok`
--

CREATE TABLE `programok` (
  `id` int NOT NULL AUTO_INCREMENT,
  `megnevezes` varchar(20) NOT NULL,
  `leiras` varchar(2000) DEFAULT NULL,
  `kezd_datum` date DEFAULT NULL,
  `kezd_ido` time DEFAULT NULL,
  `befejez_datum` date DEFAULT NULL,
  `befejez_ido` time DEFAULT NULL,
  `nemek` varchar(1) NOT NULL,
  `prog_tipus` varchar(1) NOT NULL,
  `kor` varchar(1) NOT NULL,
  `reszveteles` varchar(1) NOT NULL,
  `megtartva` varchar(1) NOT NULL,
  PRIMARY KEY(`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `programok`
  ADD UNIQUE KEY `megnevezes` (`megnevezes`);

--
-- A tábla adatainak kiíratása `programok`
--
INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(0, '', 'TZTZ', '2022-11-12', '13:02:00', '2022-11-13', '13:00:00', '1', '1', '2', '1','1');



INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`)
 VALUES (2, 'Lovagi torna', 'TZTZ', '2023-09-12', '06:02:00', '2023-09-12', '07:00:00','2', '1', '1', '1','1'); 
 
INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) 
VALUES (3, 'Radi', 'TZTZ', '2023-10-12', '16:02:00', '2023-11-13', '07:00:00','1', '1', '1', '0','1'); 

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(5, 'Sólymászat', 'TZTZ', '2020-11-12', '13:02:00', '2020-11-13', '13:00:00', '1', '1', '2', '1','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(6, 'Udvaribolond', 'TZTZ', '2020-11-12', '13:02:00', '2020-11-13', '13:00:00', '1', '1', '2', '1','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(10, 'íjászat', 'TZTZ', '2023-11-12', '13:02:00', '2023-11-13', '13:00:00', '1', '1', '2', '1','1');
--  A tábla adatati `megjelolt_programok`
--

CREATE TABLE `megjejolt_programok` (
`id` INT NOT NULL AUTO_INCREMENT
,`prog_id` INT(11) NOT NULL
,`felhaszn_id` int(11) NOT NULL 
,PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `megjejolt_programok`(prog_id,felhaszn_id) VALUES(3,1);

--
-- Tábla szerkezet ehhez a táblához `galeria_kepek`
--
CREATE TABLE `galeria_kepek`(
`id` INT NOT NULL AUTO_INCREMENT
,`img_index` VARCHAR(30) 
,`prog_id` INT(11)
,PRIMARY KEY(`id`)
);

INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('solymaszat1.jpg',5);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('solymaszat2.jpg',5);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('solymaszat3.jpg',5);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('solymaszat4.jpg',5);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('solymaszat4.jpg',5);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('udvaribolond1.jpg',6);
-- SELECT p.megnevezes,p.befejez_datum,g.img_index FROM galeria_kepek as g INNER JOIN programok as p ON g.prog_id = p.id; ; 
--
-- Tábla szerkezet ehhez a táblához `megjegyzesek`
--


CREATE TABLE `megjegyzesek` (
`id` INT  NOT NULL AUTO_INCREMENT
,`megj` VARCHAR(200) NOT NULL 
,`ertekeles` VARCHAR(1) NOT NULL 
,`prog_id` INT  NULL
,`user_id` INT NOT NULL
,`comment_date` datetime NOT NULL
,PRIMARY KEY(`id`)

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE megjegyzesek MODIFY `prog_id` INT NULL;
INSERT INTO `megjegyzesek` (megj,ertekeles,prog_id,user_id,comment_date) VALUES('test',5,0,1,NOW());
--
-- Tábla szerkezet ehhez a táblához `ertekeles`
--

--
-- AUTO_INCREMENT a táblához `adminisztrátorok`
--
/*
ALTER TABLE `adminisztrátorok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

*/
--
-- AUTO_INCREMENT a táblához `alkalmazas_naplo`
--
ALTER TABLE `alkalmazas_naplo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `kepek_program`
--
ALTER TABLE `kepek_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `megjegyzesek`
--

ALTER TABLE `megjegyzesek` 
ADD CONSTRAINT `fk_megj_program` FOREIGN KEY (`prog_id`) REFERENCES `programok` (`id`); 

ALTER TABLE `megjegyzesek`
ADD CONSTRAINT `fk_megj_user` FOREIGN KEY(`user_id`) REFERENCES `felhasznalo` (`id`);


--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kepek_program`
--


ALTER TABLE `kepek_program`
  ADD CONSTRAINT `fk_kepek_program` FOREIGN KEY (`program_id`) REFERENCES `programok` (`id`)
ON DELETE CASCADE
ON UPDATE CASCADE;
COMMIT;
--
-- Megkötések a táblához `daik`
--

ALTER TABLE `daik`  
  ADD CONSTRAINT `fk_daik_admin` FOREIGN KEY (`id`) REFERENCES `adminisztrátorok` (`id`)
ON DELETE CASCADE
ON UPDATE CASCADE;
COMMIT;

--
-- Megkötések a táblához `programok`
--
ALTER TABLE `programok`
ADD CONSTRAINT `fk_prog_kat_nem` FOREIGN KEY (`nemek`) REFERENCES `prog_kategoriak_nem` (`id`)
ON DELETE CASCADE
ON UPDATE CASCADE;
COMMIT;


ALTER TABLE `programok`
ADD CONSTRAINT `fk_prog_kat_kor` FOREIGN KEY (`kor`) REFERENCES `prog_kategoriak_kor` (`id`)
ON DELETE CASCADE
ON UPDATE CASCADE;
COMMIT;

ALTER TABLE `programok`
ADD CONSTRAINT `fk_prog_kat_tipus` FOREIGN KEY (`prog_tipus`) REFERENCES `prog_kategoriak_tipus` (`id`)
ON DELETE CASCADE
ON UPDATE CASCADE;
COMMIT;



--
-- Megkötések a táblához `megjegyzesek`
--

ALTER TABLE `megjegyzesek`
ADD CONSTRAINT `fk_prog_megj` FOREIGN KEY(`prog_id`) REFERENCES `programok` (`id`);

--
-- Megkötések a táblához `megjejolt_programok`
--


ALTER TABLE `megjejolt_programok` 
ADD CONSTRAINT `fk_megjelolt_user` FOREIGN key(`felhaszn_id`) REFERENCES `felhasznalo`(`id`);


ALTER TABLE `megjejolt_programok` 
ADD CONSTRAINT `fk_megjelolt_prog` FOREIGN key(`prog_id`) REFERENCES `programok`(`id`);



--
-- Megkötések a táblához `galeria_programok`
--


ALTER TABLE `galeria_kepek`
ADD CONSTRAINT `fk_galeriak_prog` FOREIGN KEY(`prog_id`)  REFERENCES `programok`(`id`)
ON DELETE NO ACTION;


--
-- programok leírás feltölsée
--

UPDATE programok SET programok.leiras = "Így vesződékf Miklós, nyers, haragos búban, De van drága dolog otthon Nagyfaluban:anTán kigyúlt a ház is, úgy füstöl a kémény,anNagy kolonc köszönget a kút méla gémén.anA malac-nép sí-rí; borju, bárány béget;anAprómarha-nyáj közt van szörnyű itélet;anA fehércseléd közt a beteg se lomha:anHolmi kis vásárnál népesebb a konyha.anan2.ananEgy cseléd vizet tesz félakós bögrében,anMely ha forr a tűzön s nem fér a bőrében,anAkkor a baromfit gyorsan belemártja,anTollait letörli, bocskorát lerántja.anVan, ki a kis bárányt félti izzadástul;anS bundáját lerántja, még pedig irhástul;anMás a vékonypénzü nyúlat szalonnázza,anHogy csöpögjön zsírtól ösztövér csontváza.anan3.ananMásik a malacot láng felett hintálja,anSzőrit kés fokával bőrig borotválja;anBort ez csobolyóban, az kecsketömlőben,anKenyeret hoz amaz bükkfa tekenőben..  Mit jelent e hű-hó gyászos özvegy-házban, nHol a dinom-dánom régen v"
WHERE programok.megnevezes = 'Íjászat';

UPDATE programok SET programok.leiras = "Tűrte Miklós, tűrte, ameddig tűrhette,
Azzal álla bosszút, hogy csak fel sem vette;
Úgy mutatta, mintha nem is venné észre,
Fülét sem mozdítá a nagy döngetésre.
De, midőn egy dárda válla csontját érte,
Iszonyatosképen megharagutt érte,
S melyen ült, a malomkő-darabot fogta,
Toldi György bosszantó népe közé dobta.

7.

Repül a nehéz kő: ki tudja, hol áll meg?
Ki tudja, hol áll meg s kit hogyan talál meg?
Fuss, ha futhatsz, Miklós! pallos alatt fejed!
Víz se mossa rólad le a gyilkos nevet!
Elvadulsz, elzüllöl az apai háztól,
Mint amely kivert kan elzüllik a nyájtól:
Ki egyet agyarral halálosan sérte,
Úgy aztán kimarta őt a többi érte.

8.

Elrepült a nagy kő, és ahol leszálla,
Egy nemes vitéznek lőn szörnyű halála:
Mint olajütőben szétmállott a teste,
És az összetört hús vérolajt ereszte.
Vérit a poros föld nagy-mohón felnyalta,
Két szemét halálos hályog eltakarta,
S aki őt eloltá, az a veszedelem
Mindenik bajtársnak fájt, csak ő neki nem.

9.

György haragja pedig lészen rendkivűli,
Mert vitéz szolgáját igen keserűli.
Másfelől örül, hogy gyilkos a testvére,
Kit hogy elveszessen, most esik kezére.
Most ravasz szándékát, melynek úta görbe,
Eltakarja törvény és igazság örve,
És, hogy öccsét bíró hírivel megrontsa,
El kell fogni nyomban, az kemény parancsa."
WHERE programok.megnevezes = 'Lovagi torna';



