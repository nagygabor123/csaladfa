CREATE TABLE hazassag(hazassag_id INTEGER, datum DATE, helyszin VARCHAR(40));
CREATE TABLE hazastars(hazastars_id INTEGER, hazassag_id INTEGER, szemelyi_id INTEGER);
CREATE TABLE szemely(szemelyi_id INTEGER, szuletes DATE, elhalalozas DATE, szuletesi_hely text, foglalkozas text, neme enum(férfi, nő), vezeteknev VARCHAR(40), keresztnev VARCHAR(40));
CREATE TABLE szulok(szulo_id INTEGER, szemelyi_id INTEGER, szulo_szemelyi_id INTEGER, kapcsolat enum(apa, anya));