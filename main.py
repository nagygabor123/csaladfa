import sqlite3 as sqlite

con = sqlite.connect('szemely.db')

szemelyek = []

with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM szemely')
  for person in cur.fetchall():
<<<<<<< HEAD
    id,csaladnev, keresztnev,szuletes,szulhey,foglalkozas = person
    szemelyek.append({ 'id' : id,'csaladnev' : csaladnev,'keresztnev' : keresztnev,'szuletes' : szuletes,'szulhey' : szulhey,'foglalkozas' : foglalkozas})
=======
    szemelyek.append(person)
>>>>>>> 11a1a48b501ef879dc5f05f8795ba8048a402a00

print(szemelyek)


hazassagok = []

with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM hazassag')
  for hazasok in cur.fetchall():
<<<<<<< HEAD
    id,fej,feleseg,eskuvoido,eskuvohely = hazasok
    hazassagok.append({'id' : id,'fej' : fej,'feleseg' : feleseg,'eskuvoido' : eskuvoido,'eskuvohely' : eskuvohely})
=======
    hazassagok.append(hazasok)

>>>>>>> 11a1a48b501ef879dc5f05f8795ba8048a402a00
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
<<<<<<< HEAD
sorszam=0
for i in range(len(szemelyek)):
  if csaladn == szemelyek[i]['csaladnev'] and keresztn == szemelyek[i]['keresztnev']:
    sorszam = szemelyek[i]['id']

neme = "nincs"

for i in range(len(hazassagok)):
  if sorszam == hazassagok[i]['fej']:
    neme = "ferfi"
  if sorszam == hazassagok[i]['feleseg']:
    neme = "no"



#Házastárs keresése
if neme == "ferfi":
  for i in range(len(szemelyek)):
    for j in range(len(hazassagok)):
      if sorszam == hazassagok[j]['fej'] and hazassagok[j]['feleseg'] == szemelyek[i]['id']:
        print(f"feleseg : {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")


if neme == "no":
  for i in range(len(szemelyek)):
    for j in range(len(hazassagok)):
      if sorszam == hazassagok[j]['feleseg'] and hazassagok[j]['fej'] == szemelyek[i]['id']:
        print(f"férj : {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

=======


#Házastárs keresése

with con:
  cur = con.cursor()
  cur.execute('SELECT hazassag.feleseg FROM szemely INNER JOIN hazassag ON szemely.id = hazassag.fej')
  for person in cur.fetchall():
    print(person)
>>>>>>> 11a1a48b501ef879dc5f05f8795ba8048a402a00




