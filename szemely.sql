DROP TABLE IF EXISTS  szemely;
CREATE TABLE szemely(id  INTEGER PRIMARY KEY AUTOINCREMENT, csaladnev TEXT,  keresztnev TEXT, szuletes TEXT, szulhey TEXT, foglalkozas TEXT);

INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Kiss', 'Árpád', '1990-01-01', 'Buda', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nagy' ,'Erika', '1970-02-23', 'Pest', 'felnőtt ipar');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Eleben', 'Elemer', '1932-03-30', 'Kecskemét', 'elnök');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Markáns' ,'eszter', '1912-04-31', 'Kuskunfélegyháza', 'kukás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Kiss', 'Mihály', '1933-05-17', 'Kuskunfélegyháza', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Nagyné' ,'Mária', '1953-06-05', 'Győr', 'énekes');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Sárkány', 'Zoltán', '1927-07-07', 'Miskolc', 'koldus');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Zsebes' ,'Klaudia', '19573-08-09', 'Debrecen', 'tolvaj');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Fazekas', 'István', '1902-09-13', 'Debrecen', 'ápoló');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Hunyó' ,'Marcsi', '1959-10-26', 'Debrecen', 'szakmunkás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Keser', 'Demeter', '1951-11-21', 'Arad', 'katona');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Aba' ,'Ilona', '1914-12-27', 'Arad', 'lakatos');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Víz', 'Elek', '1942-11-28', 'Buda', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Dobrev' ,'Klára', '1948-10-29', 'Pest', 'felnőtt ipar');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Francia', 'Ferenc', '1969-09-30', 'Kecskemét', 'elnök');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Magyar' ,'Mercedes', '1923-08-26', 'Kuskunfélegyháza', 'kukás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Koza', 'Dominik', '1932-07-02', 'Kuskunfélegyháza', 'fazekas');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Füzesi' ,'Csilla', '1937-06-05', 'Győr', 'énekes');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Csavar', 'Húzó', '1966-05-19', 'Miskolc', 'koldus');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Jánosi' ,'Eriks', '1955-04-18', 'Debrecen', 'tolvaj');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Fazekas', 'Csaba', '1954-03-22', 'Debrecen', 'ápoló');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Fazekas' ,'Juliska', '1937-02-24', 'Debrecen', 'szakmunkás');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Tposó', 'Bernadett', '1946-01-27', 'Arad', 'katona');
INSERT INTO szemely(csaladnev, keresztnev, szuletes, szulhey, foglalkozas) VALUES('Kis' ,'Emese', '1977-12-16', 'Arad', 'lakatos');



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
