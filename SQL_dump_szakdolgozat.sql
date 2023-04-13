

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

-- Az adatbázis létrehozása
CREATE DATABASE `vaczi_var_adatbazis` CHARACTER SET UTF8 COLLATE utf8_general_ci;
USE `vaczi_var_adatbazis`;
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
(1, 'Sciipy', 'lessmatevac@gmail.com', 'Kismalac19567', '2',1),
(2, 'mateka', 'rt@gmail.com', '06209506303B06407301B0510D40B50890940EE06A03C07002A04500602F0190520E30160A00FF09C04500E01609F0A5','1',1),
(4, 	'ember' ,'ember@gmail.com',	'03C07B0CE01A0BF03B0D405D0F103F08403C0D00A703D0B500B0640FC05607C0640430CC0050DD05005308F0AF071015','1',1),
(5, 	'krisz' ,'kriszhero@gmail.com',	'00809D09E0D40710B303F04803002A09B0D107B0E209805E02202C0610870C00700340FE05A03401509106D00108F009','1',1),
(6,  'Tesztelo','test@gmail.com','08403D07908A0D602C02606F05F01601F00F02205C0220C107E08F0A402E0C50830890990E00F201C08B0750900BC0E7','2',1),
(7,  'Admin1','admin@gmail.com','0360A90E90B106107201208D0CC0AF0A10EA0FB0040D107A03C0190DD0440B60BC0590B70F40900F505E02B0370D5076','1',1),
(8,  'Foadmin1','foadmin@gmail.com','0C700C0DE0F307A0C509C0E10CF0530D90300DE0760D508E02E08002701202B0EE0EC0FF0940280190F40E905D01509D','2',1);

/*
-- Felhasználónév: ember Jelszó: jelszo45 Daik: abc
                    -- Tesztelo jelszo: Teszteset395 Daik: Teszteset395
                    -- krisz: jelszo: Kriszhero45 Daik: Kriszhero45
                    -- Admin1: jelszo: Admin06  Daik: Admin06
                    --Foadmin: jelszo: Foadmin06 Daik: FAdmin06

-- --------------------------------------------------------

*/
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

INSERT INTO `daik` (`id`, `daik_neve`) VALUES
(1,'daik'),
(2, 'ztg'),
(4, '0BA0780160BF08F0010CF0EA0410410400DE05D0AE0220230B00030610A309601707A09C0B40100FF0610F20000150AD'),
(5, '00809D09E0D40710B303F04803002A09B0D107B0E209805E02202C0610870C00700340FE05A03401509106D00108F009'),
(6, '08403D07908A0D602C02606F05F01601F00F02205C0220C107E08F0A402E0C50830890990E00F201C08B0750900BC0E7'),
(7,'0360A90E90B106107201208D0CC0AF0A10EA0FB0040D107A03C0190DD0440B60BC0590B70F40900F505E02B0370D5076'),
(8,'0B308103407E0D20960FC05002E00605A0C905907405D08E05A05009B0E40C20390E50E206D0060EC0880FB05202607F');

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
(1, 'Sciipy', 'aa@gmail.com', 'MAte', 'Kovacs', 'dfsfs45', '2022-11-02 00:00:00', 1, 3, '1'),
(2,'Felhasznalo1','felhasznalo5654@gmail.com','Aranyházi','József','68653140e7ea68ec4467db4f0a35f06d9b282c0730f43268a17ed7ae2b3a1ca0', '2022-11-02 00:00:00', 1, 1, '1'),
(3,'Admin1','admin1@gmail.com','Nemecz','Krisztián','36a9e9b16172128dccafa1eafb04d17a3c19dd44b6bc59b7f490f55e2b37d576', '2022-11-02 00:00:00', 1, 2, '1'),
(4,'andris','an1@gmail.com','Rusznák','András','36a9wfb16172128dccafa1gafbe4d17a3c19dd44b6bc59b7f490f58e2b37d576', '2022-11-02 00:00:00', 1, 1, '1');

/*
-- Felhasznalo1: jelszo: Felhasz06
-- Admin1: jelszo:Admin06

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcs_megjegyzes_felhasznalo`
--
*/


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

INSERT INTO kepek_program(id,img_index,program_id) VALUES(1,'ijaszat/1.jpg',10); 
INSERT INTO kepek_program(id,img_index,program_id) VALUES(3,'ijaszat/2.jpg',10); 
INSERT INTO kepek_program(id,img_index,program_id) VALUES(5,'ijaszat/3.jpg',10); 
INSERT INTO kepek_program(id,img_index,program_id) VALUES(2,'lovagi_torna/1.jpg',2);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(4,'tankcsapda/1.jpg',3);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(9,'tankcsapda/2.jpg',3);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(6,'lang/1.jpg',11);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(7,'lang/2.jpg',11);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(8,'lang/3.jpg',11);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(10,'babszinhaz/1.jpg',12);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(11,'babszinhaz/2.jpg',12);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(12,'babszinhaz/3.jpg',12);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(13,'moziest/1.jpg',14);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(14,'moziest/2.jpg',14);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(15,'moziest/3.jpg',14);
INSERT INTO kepek_program(id,img_index,program_id) VALUES(16,'lovagi_torna/2.jpg',2);
-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `programok`
--

CREATE TABLE `programok` (
  `id` int NOT NULL AUTO_INCREMENT,
  `megnevezes` varchar(30) NOT NULL,
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
VALUES (3, 'Tankcsapda a várban', 'TZTZ', '2023-10-12', '19:02:00', '2023-10-12', '20:00:00','3', '3', '4', '0','1'); 

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(5, 'Sólymászat', 'TZTZ', '2020-11-12', '13:02:00', '2020-11-13', '13:00:00', '1', '1', '2', '1','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(6, 'Udvaribolond a színpadon', 'TZTZ', '2020-11-12', '13:02:00', '2020-11-13', '13:00:00', '1', '1', '2', '1','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(10, 'íjászat', 'TZTZ', '2023-11-12', '13:02:00', '2023-11-13', '13:00:00', '1', '1', '2', '1','1');
INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(11, 'lángzsonglőr', 'TZTZ', '2024-03-12', '18:02:00', '2024-03-12', '19:00:00', '3', '4', '5', '0','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(12, 'Bábszínház', 'TZTZ', '2023-11-12', '18:02:00', '2023-11-12', '18:30:00', '3', '4', '5', '0','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(13, 'Várostrom', 'TZTZ', '2022-11-14', '15:02:00', '2022-11-14', '18:00:00', '1', '1', '5', '0','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(14, 'Moziest', 'TZTZ', '2023-08-12', '20:02:00', '2022-08-12', '23:00:00', '1', '1', '3', '0','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(15, 'Középkori botanika', 'TZTZ', '2022-08-11', '16:02:00', '2022-08-11', '17:00:00', '1', '1', '5', '0','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(16, 'Zokni csetepaté', 'TZTZ', '2022-09-11', '16:02:00', '2022-09-11', '16:20:00', '3', '1', '1', '1','1');

INSERT INTO `programok` (`id`, `megnevezes`, `leiras`, `kezd_datum`, `kezd_ido`, `befejez_datum`, `befejez_ido`, `nemek`, `prog_tipus`, `kor`, `reszveteles`,`megtartva`) VALUES
(17, 'Történelmi vásár', 'TZTZ', '2022-09-11', '06:02:00', '2022-09-13', '16:20:00', '3', '4', '5', '1','1');

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
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('udvaribolond2.jpg',6);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('udvaribolond3.jpg',6);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('varostrom1.jpg',13);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('varostrom2.jpg',13);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('varostrom3.jpg',13);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('varostrom4.jpg',13);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('novenyek1.jpg',15);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('novenyek2.jpg',15);
INSERT INTO `galeria_kepek` (img_index,prog_id) VALUES('zoknicsata.jpg',16);
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



INSERT INTO `megjegyzesek` (megj,ertekeles,prog_id,user_id,comment_date) VALUES(' Itt a főadminisztrátor teszt kommentje.',5,0,1,NOW()),
('Nagyon tetszett a program. Így tovább !',2,5,4,'2023-04-10 15:22:04');
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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

UPDATE programok SET programok.leiras = "A tűz kémiai jelenség, éghető anyag fény- és hőhatással járó oxidációja. Közvetlen hatása, az égés, a szerves anyagokat visszafordíthatatlan folyamattal elbomlasztja. A tűz általában az oxidációs folyamat kísérőjelensége. Önfenntartó folyamat. Hőmérséklete 1226,85 °C-1776,85 °C (de csak nagy tüzeknél éri el a legnagyobb hőmérsékletet). 
Bizonyíték van arra, hogy a homo erectus már 790 ezer évvel a jelenkori ember, a homo sapiens előtt használta a tüzet.[3][4] A homo erectus helyét a homo sapiens vette át. A tűz nagyon fontos szerepet töltött be az emberré válás folyamatában. A beszéd és a tárgyhasználat mellett a tűz megszelídítése emelte ki az állatvilágból. 20. századi kutatások szerint az első lépcső a tűz domesztikációja felé a passzív tűzhasználat volt. Egy-egy tűzvész után ehető gyümölcsök és élve megsült állatok maradtak hátra, melyeket az ember megtalált (hasonlóképp tesznek egyes őserdei ragadozók is, akik a hamuban szerencsétlenül járt rágcsálókat keresgélnek). A félelem a tűztől csak ezután következett.

Lassan megtanulta kordában tartani, elkövetkezett az aktív tűzhasználat ideje, mely napjainkig is tart. A tűz feletti uralom a civilizáció egy formáját tette lehetővé. Magával vont ugyanis szociológiai változásokat is. 
Több ezer év elteltével ennek köszönhetően alakult ki a földművelés és a földművelő társadalom. A földművelésben – a közhiedelemmel ellentétben – szintén jelentős volt a tűz szerepe. Mielőtt a vándorló csoportok letelepedtek, felégettek bizonyos földterületet, amit később megműveltek. Hosszú időbe telt, mire ezt az irtásos-égetéses földművelés helyett eljött az egymással területért harcoló csoportok ideje.

Fontos szerepe volt a tűznek abban is, hogy az ember táplálkozása gyökeresen megváltozott. A főzés folyamatával megszűnnek a különben mérgező növények méreganyagai, a kemény rostszálak megpuhulnak, a hús tartósabbá válik, mintha nyersen maradna. A tűz felhasználásával különösen zárt térben fontossá vált a légzéshez szükséges levegőmennyiség biztosítása. "
WHERE programok.id = 11;

UPDATE programok SET programok.leiras = "A bábszínház vagy bábjáték a színjátszás egyik legősibb formája, amelyet minden kor új hagyományokkal gazdagított. Az előadások eszközei, a bábok is nagy változatosságot mutatnak.A frikában, Kínában és Indiában már nagyon régen is bábokkal elevenítették meg a különböző mondákat és vallási történeteket. Az indiai bábjátékok, melyeknek létezésükről már az i. e. 1. évezred előttről származó Mahábhárata eposz is tudósít, és későbbi változatai, a Rámájanát dolgozták fel (ramikák, Ráma-játék), vagy az indonéz szigetvilágban ma is élő wayang (mindkettőnél pálcás bábokat használtak). Régi, európai játék, a betlehemi játék, egyik főszereplőjéről, Máriáról kapta a nevét a marionett is. A reneszánsz korban kezdett elkülönülni a népi és az udvari bábszínház. A népi bábjátszás (betlehemezés, bábtáncoltatás) mellett egyik fő forma a vásári bábjáték. 
A 18. századi Japánban Bunraku-bábokkal játszották el a történeteket, amiket egy mesélő adott elő, aki a színpad szélén, egy magaslaton ült.
Elhasználódott bábok a múzeumban, Bread & Puppet Museum , Glover, Vermont

Az évszázadok során szinte minden nemzet megteremtette a maga jellegzetes bábfiguráját. Pulcinella (olasz), Polichinelle, Punch (francia és angol), Pickelhering (észak-német), Kasperl (délnémet), Hanswurst (osztrák), Petruska (orosz), Kasparek (cseh), Kargöz (török) stb. A bábjátszás hagyományos magyarországi alakjai Vitéz László és Paprikajancsi.

Az udvari bábjáték a korabeli divatos műfajok szerint jelenített meg történeteket, gazdag díszlet között, pompás bábokkal. A bábjáték két fajtájából alakult ki a bábszínház elődje, amely főként a 19. században volt népszerű: a német Papa (Joseph) Smied bábszínháza vagy az olasz Teatrino Rissone már darabokat rendelt, tekintélyes társulatuk, díszlet és kelléktáruk volt. A. Jarry bábdarabokat írt Übü-történetek címmel, az első bemutató (1888) valóságos bábszínházi forradalom lett. Richard Teschner osztrák, Iván és Nyina Effimov, Alexandra Exter orosz képzőművészek megújították a régi figurákat, új technikákat, új anyagokat kerestek. A bábszínház lehetőségei azóta is gyarapodnak, népszerűsége azonban a 20-as és a 30-as évektől egyre csökkent. Napjainkban legtöbbször gyerekközönsége van, nekik tartanak előadásokat.

1949-ben a magyar bábjátszás hagyományainak őrzésére alakult az Állami Bábszínház. Szilágyi Dezső, Koós Iván, Kemény Henrik, Bródy Vera stb. több sikeres produkciót is színpadra állított. "
WHERE programok.id = 12;

UPDATE programok SET programok.leiras = "

A Váczi  viglom  folytatásaként júlis 20-án a PMKI közbenjárásának köszönhetően került vetítésre a Kincsem c. 2017-es magyar filmalkotás.

A Kincsem c. film vetítésének az egyik kiemelt IMAX mozi – a Lumiére Pavilon adott helyszínt. 
A rendezvény nagy sajtóvisszhangot kapott, számos elismerő cikk íródott a rendezvényről, valamint több tv-s riport foglalkozott az eseménnyel. Várunk mindenkit sok sok szeretettel, hogy megtekenintsétek egy gyönyörű naplemente közben 
a filmet. A belépés ingyenyes, csak a helyszínen lévő büfénél kell fizetned, ha szeretnél venni valamit. 
 "
WHERE programok.id = 14;

UPDATE programok SET programok.leiras = "Az év egyik legnagyobb Tanker-találkozója 2023.  október 12-én a Váci várban! 
Több mint harminc éve a hazai rock legnagyobb zenekarainak sorába tartozó Tankcsapda egy igazi best of műsorral készül, ahol a legnagyobb rockhimnuszok mellett minden bizonnyal az örök közönségkedvencek is megszólalnak majd. A kezelési költség összegéről a jegyértékesítési felületen tájékozódhatsz.
A jegyet a Oneticket honlapon a  Váci vár tankacsapda feltűntetett opciónál lehet megrendelni rá. 7000 Ft per fő a belépő.  Lehetőség van a helyszíni jegypénztárakban (nyitvatartás) és bizonyos Ticketportal jegyirodákban megvásárolni a jegyet, mely esetben ez a kezelési költség nem kerül felszámításra.
 "
WHERE programok.id = 3;

