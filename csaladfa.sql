/*segíts már mert elakadtam nem tudom mi a hiba mondd meg és kijavítom xd*/
drop table if exists hazassag;
drop table if exists hazastars;
drop table if exists szemely;
drop table if exists szulok;
CREATE TABLE hazassag(
    hazassag_id INTEGER,
    datum DATE,
    helyszin VARCHAR(40),
    primary key (hazassag_id)
);
CREATE TABLE hazastars(
    hazastars_id INTEGER,
    hazassag_id INTEGER,
    szemelyi_id integer,
    primary key (hazastars_id),
    foreign key (hazassag_id) references hazassag(hazassag_id),
    foreign key (szemelyi_id) references szemely(szemelyi_id)
);
CREATE TABLE szemely(
    szemelyi_id INTEGER,
    szuletes DATE,
    elhalalozas DATE,
    szuletesi_hely text,
    foglalkozas text,
    neme ENUM(férfi, nő),
    vezeteknev VARCHAR(40),
    keresztnev VARCHAR(40),
    primary key (szemelyi_id)
);
CREATE TABLE szulok(
    szulo_id INTEGER,
    szemelyi_id INTEGER,
    szulo_szemelyi_id INTEGER,
    kapcsolat ENUM(apa, anya),
    primary key (szulo_id),
    foreign key (szemelyi_id) references szemely(szemelyi_id),
    foreign key (szulo_szemelyi_id) references szemely(szulo_szemelyi_id)
);
