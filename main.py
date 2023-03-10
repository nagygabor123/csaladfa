import sqlite3 as sqlite
con = sqlite.connect('szemely.db')

#Szótárba rendezés
szemelyek = []
with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM szemely')
  for person in cur.fetchall():
    id,csaladnev, keresztnev,szuletes,szulhey,foglalkozas = person
    szemelyek.append({ 'id' : id,'csaladnev' : csaladnev,'keresztnev' : keresztnev,'szuletes' : szuletes,'szulhey' : szulhey,'foglalkozas' : foglalkozas})
print(szemelyek)


hazassagok = []
with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM hazassag')
  for hazasok in cur.fetchall():
    id,fej,feleseg,eskuvoido,eskuvohely = hazasok
    hazassagok.append({'id' : id,'fej' : fej,'feleseg' : feleseg,'eskuvoido' : eskuvoido,'eskuvohely' : eskuvohely})
print(hazassagok)


#Név bekérése:
csaladn = input("Családnevét: ")
keresztn = input("Keresztnevét: ")


#faj és egyébb adatok keresése:
sorszam=0
for i in range(len(szemelyek)):
  if csaladn == szemelyek[i]['csaladnev'] and keresztn == szemelyek[i]['keresztnev']:
    print(f"  |--> születés helye-ideje: {szemelyek[i]['szuletes']} - {szemelyek[i]['szulhey']}")
    print(f"  |--> foglalkozás: {szemelyek[i]['foglalkozas']} ")
    sorszam = szemelyek[i]['id']

neme = ""
for i in range(len(hazassagok)):
  if sorszam == hazassagok[i]['fej']:
    neme = "ferfi"
  if sorszam == hazassagok[i]['feleseg']:
    neme = "no"


#Házastárs keresése:
if neme == "ferfi":
  for i in range(len(szemelyek)):
    for j in range(len(hazassagok)):
      if sorszam == hazassagok[j]['fej'] and hazassagok[j]['feleseg'] == szemelyek[i]['id']:
        print(f"  ˙--> feleség : {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")


if neme == "no":
  for i in range(len(szemelyek)):
    for j in range(len(hazassagok)):
      if sorszam == hazassagok[j]['feleseg'] and hazassagok[j]['fej'] == szemelyek[i]['id']:
        print(f"  ˙--> férj : {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")



#ez a jo

