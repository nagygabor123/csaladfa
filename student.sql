DROP TABLE IF EXISTS students;
CREATE TABLE students(id INTEGER PRIMARY KEY autoincrement, name text, age INTEGER, class text);

INSERT INTO students(name, age, class) VALUES('Kiss Árpád', 15, '10b');
INSERT INTO students(name, age, class) VALUES('Nagy Zoltán', 16, '10b');
INSERT INTO students(name, age, class) VALUES('Joó Mariann', 14, '9a');
INSERT INTO students(name, age, class) VALUES('Eleben Elemér', 14, '9a');