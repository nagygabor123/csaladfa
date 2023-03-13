import sqlite3 as sqlite

con = sqlite.connect('szemely.db')

szemelyek = []

with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM szemely')
  for person in cur.fetchall():
    szemelyek.append(person)

print(szemelyek)


hazassagok = []

with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM hazassag')
  for hazasok in cur.fetchall():
    hazassagok.append(hazasok)

print(hazassagok)

#Név bekérése
csaladn = input("Írja be a keresendő szemely családnevét: ")
keresztn = input("Írja be a keresendő személy keresztnevét: ")
'''
sql = 'SELECT csaladnev,keresztnev,szuletes,foglalkozas FROM szemely WHERE csaladnev = ? and keresztnev = ?'
nev = (csaladn , keresztn,)
with con:
  cur = con.cursor()
  cur.execute(sql, nev)
  for person in cur.fetchall():
    print(person)'''


#Házastárs keresése

with con:
  cur = con.cursor()
  cur.execute('SELECT hazassag.feleseg FROM szemely INNER JOIN hazassag ON szemely.id = hazassag.fej')
  for person in cur.fetchall():
    print(person)




