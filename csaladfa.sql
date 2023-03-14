DROP TABLE IF EXISTS hazassag;
DROP TABLE IF EXISTS hazastars;
DROP TABLE IF EXISTS szemely;
DROP TABLE IF EXISTS szulok;

CREATE TABLE hazassag(
    hazassag_id INTEGER,
    datum DATE,
    helyszin VARCHAR(40),
    PRIMARY KEY (hazassag_id)
);

CREATE TABLE szemely(
    szemelyi_id INTEGER,
    szuletes DATE,
    elhalalozas DATE,
    szuletesi_hely TEXT,
    foglalkozas TEXT,
    neme ENUM('férfi', 'nő'),
    vezeteknev VARCHAR(40),
    keresztnev VARCHAR(40),
    PRIMARY KEY (szemelyi_id)
);

CREATE TABLE hazastars(
    hazastars_id INTEGER,
    hazassag_id INTEGER,
    szemelyi_id INTEGER,
    PRIMARY KEY (hazastars_id),
    FOREIGN KEY (hazassag_id) REFERENCES hazassag(hazassag_id),
    FOREIGN KEY (szemelyi_id) REFERENCES szemely(szemelyi_id)
);

CREATE TABLE szulok(
    szulo_id INTEGER,
    szemelyi_id INTEGER,
    szulo_szemelyi_id INTEGER,
    kapcsolat ENUM('apa', 'anya'),
    PRIMARY KEY (szulo_id),
    FOREIGN KEY (szemelyi_id) REFERENCES szemely(szemelyi_id),
    FOREIGN KEY (szulo_szemelyi_id) REFERENCES szemely(szemelyi_id)
);
