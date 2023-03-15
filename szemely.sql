DROP TABLE IF EXISTS  szemely;
CREATE TABLE szemely(id  INTEGER PRIMARY KEY AUTOINCREMENT, csaladnev TEXT,  keresztnev TEXT, szuletes TEXT, szulhey TEXT, foglalkozas TEXT);

INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Kiss', 'Ároád', '1950-01-10', 'Buda', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nagy' ,'Zoltán', '1950-10-01', 'Pest', 'felnőtt ipar');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Joó', 'Marian', '1950-12-01', 'Kecskemét', 'elnök');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Eleben' ,'Elemer', '1950-11-141', 'Kuskunfélegyháza', 'kukás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Kiss', 'Klaudia', '1950-01-10', 'Kuskunfélegyháza', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nagyné' ,'Mária', '1950-01-10', 'Győr', 'énekes');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Sárkány', 'Ibolya', '1950-01-10', 'Miskolc', 'koldus');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Zsebes' ,'Elemer', '1950-01-10', 'Debrecen', 'tolvaj');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Fazekas', 'István', '1950-01-10', 'Debrecen', 'ápoló');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nagy' ,'Máté', '1950-01-10', 'Debrecen', 'szakmunkás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Keser', 'Demeter', '1950-01-10', 'Arad', 'katona');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Aba' ,'Amádé', '1950-01-10', 'Arad', 'lakatos');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('rgr', 'drgrg', '1950-01-10', 'Buda', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('drgrg' ,'drgrg', '1950-01-10', 'Pest', 'felnőtt ipar');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('drgrdgr', 'rgdrgdrg', '1950-01-10', 'Kecskemét', 'elnök');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Edrgrgleben' ,'drggrg', '1950-01-10', 'Kuskunfélegyháza', 'kukás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('drgrgr', 'drgrg', '1950-01-10', 'Kuskunfélegyháza', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nadrgrggyné' ,'drgrg', '1950-01-10', 'Győr', 'énekes');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('drgrg', 'drgg', '1950-01-10', 'Miskolc', 'koldus');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('drgrg' ,'drgrgds', '1950-01-10', 'Debrecen', 'tolvaj');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Fazekas', 'ddrdrgrdgrdg', '1950-01-10', 'Debrecen', 'ápoló');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nadrgrggy' ,'Máté', '1950-01-10', 'Debrecen', 'szakmunkás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Keddrgrser', 'Demeter', '1950-01-10', 'Arad', 'katona');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Aba' ,'Amdrgrggádé', '1950-01-10', 'Arad', 'lakatos');



DROP TABLE IF EXISTS  hazassag;
CREATE TABLE hazassag(id  INTEGER PRIMARY KEY AUTOINCREMENT, fej INTEGER, feleseg INTEGER, eskuvoido TEXT,eskuvohely TEXT);
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(1,2,'1950-01-10',"Bugac");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(3,4,'1950-01-10',"Debrecen");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(5,6,'1950-01-10',"Debrecen");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(7,8,'1950-01-10',"Debrecen");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(9,10,'1950-01-10',"Arad");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(11,12,'1950-01-10',"Bugac");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(13,14,'1950-01-10',"Miskolc");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(15,16,'1950-01-10',"Bugac");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(17,18,'1950-01-10',"Bugac");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(19,20,'1950-01-10',"Győr");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(21,22,'1950-01-10',"Győr");
INSERT INTO hazassag(fej, feleseg, eskuvoido,eskuvohely) VALUES(23,24,'1950-01-10',"Győr");



DROP TABLE IF EXISTS  szulo;
CREATE TABLE szulo(id  INTEGER PRIMARY KEY AUTOINCREMENT, elsogyerek INTEGER, masodikgyerek INTEGER, apa INTEGER,  anya INTEGER);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(1,13,3,4);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(2,14,5,6);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(3,15,7,8);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(4,16,9,10);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(5,17,11,12);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(6,18,13,14);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(7,19,15,16);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(8,20,17,18);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(9,21,1,2);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(10,22,19,20);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(11,0,21,22);
INSERT INTO szulo(elsogyerek, masodikgyerek, apa, anya) VALUES(12,0,23,24);
