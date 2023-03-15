import sqlite3 as sqlite
con = sqlite.connect('szemely.db')

########################################################################################################################

#Szótárba rendezés
szemelyek = []
with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM szemely')
  for person in cur.fetchall():
    id,csaladnev, keresztnev,szuletes,szulhey,foglalkozas = person
    szemelyek.append({ 'id' : id,'csaladnev' : csaladnev,'keresztnev' : keresztnev,'szuletes' : szuletes,'szulhey' : szulhey,'foglalkozas' : foglalkozas})


hazassagok = []
with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM hazassag')
  for hazasok in cur.fetchall():
    id,fej,feleseg,eskuvoido,eskuvohely = hazasok
    hazassagok.append({'id' : id,'fej' : fej,'feleseg' : feleseg,'eskuvoido' : eskuvoido,'eskuvohely' : eskuvohely})


szulok =[]
with con:
  cur = con.cursor()
  cur.execute('SELECT * FROM szulo')
  for szulokk in cur.fetchall():
    id,elsogyerek,masodikgyerek,apa,anya = szulokk
    szulok.append({'id' : id,'elsogyerek' : elsogyerek,'masodikgyerek' : masodikgyerek,'apa' : apa,'anya' : anya})
print(szulok)
########################################################################################################################

#Név bekérése:
csaladn = input("Családnevét:")
keresztn = input("Keresztnevét:")

########################################################################################################################

#nemmi,szülidő és szülhely keresése:
sorszam=0
for i in range(len(szemelyek)):
  if csaladn == szemelyek[i]['csaladnev'] and keresztn == szemelyek[i]['keresztnev']:
    print(f"{csaladn} {keresztn} ({szemelyek[i]['szuletes']} - {szemelyek[i]['szulhey']}) - adatlapja:")
    sorszam = szemelyek[i]['id']

#A szemely nő vagy férfi
neme = ""
for i in range(len(hazassagok)):
  if sorszam == hazassagok[i]['fej']:
    neme = "ferfi"
  if sorszam == hazassagok[i]['feleseg']:
    neme = "no"


########################################################################################################################

#Házastárs,testvér és gyermek keresése:
#A feleségét keresi és a gyerekeit
if neme == "ferfi":
  for i in range(len(szemelyek)):
    for j in range(len(hazassagok)):
      if sorszam == hazassagok[j]['fej'] and hazassagok[j]['feleseg'] == szemelyek[i]['id']:
        print(f"\t|--> feleség: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['apa'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
              print(f"\t|--> elsogyerek: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['apa'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
              print(f"\t|--> masodikgyerek: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

#A férjet keresi és a gyerekeit
if neme == "no":
  for i in range(len(szemelyek)):
    for j in range(len(hazassagok)):
      if sorszam == hazassagok[j]['feleseg'] and hazassagok[j]['fej'] == szemelyek[i]['id']:
        print(f"\t|--> férj: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['anya'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
              print(f"\t|--> elsogyerek: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['anya'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
              print(f"\t|--> masodikgyerek: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

#A szemely elsogyerek vagy masodikgyerek
gyerek =""
for i in range(len(szulok)):
  if sorszam == szulok[i]['elsogyerek']:
    gyerek = "elso"
  if sorszam == szulok[i]['masodikgyerek']:
    gyerek = "masod"

if gyerek == "":
  print(f"\t↓")
  print("Erről a személyről további adatok NEM szerepelnek az adatbázisunkban!")

#A masodiktestvért keresi
if gyerek == "elso":
  for i in range(len(szemelyek)):
    for j in range(len(szulok)):
      if sorszam == szulok[j]['elsogyerek'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
        print(f"\t|--> testvér: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

#Az elsotestvért keresi
if gyerek == "masod":
  for i in range(len(szemelyek)):
    for j in range(len(szulok)):
      if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
        print(f"\t|--> testvér: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

########################################################################################################################

#Szulok,nagyszulok és nagyszulok gyerekei keresése

if gyerek == "elso":
  print(f"\t˙----> Szülők:")
  apasorszam=0
  anyasorszam=0
  for i in range(len(szemelyek)):
    for j in range(len(szulok)):
      #Szülők-apa:
      if sorszam == szulok[j]['elsogyerek'] and szulok[j]['apa'] == szemelyek[i]['id']:
        print(f"\t\t|--> apa: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        apasorszam = szemelyek[i]['id']
        #Apa-testvere:
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['elsogyerek'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> apatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> apatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        #Nagyszülők-apa:
        print(f"\t\t|--> nagyszülők:")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if apasorszam == szulok[j]['elsogyerek'] and szulok[j]['apa'] == szemelyek[i]['id']:
              print(f"\t\t|\t\t|--> apa: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if apasorszam == szulok[j]['elsogyerek'] and szulok[j]['anya'] == szemelyek[i]['id']:
              print(f"\t\t|\t\t˙--> anya: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
      #Szülők-anya:
      if sorszam == szulok[j]['elsogyerek'] and szulok[j]['anya'] == szemelyek[i]['id']:
        print(f"\t\t|--> anya: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        anyasorszam = szemelyek[i]['id']
        #Anya-testvére:
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['elsogyerek'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> anyatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> anyatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        #Nagyszülők-anya:
        print(f"\t\t˙--> nagyszülők:")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if anyasorszam == szulok[j]['elsogyerek'] and szulok[j]['apa'] == szemelyek[i]['id']:
              print(f"\t\t\t\t|--> apa: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if anyasorszam == szulok[j]['elsogyerek'] and szulok[j]['anya'] == szemelyek[i]['id']:
              print(f"\t\t\t\t˙--> anya: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")


if gyerek == "masod":
  print(f"\t˙----> Szülők:")
  apasorszam=0
  anyasorszam=0
  for i in range(len(szemelyek)):
    for j in range(len(szulok)):
      #Szülők-apa:
      if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['apa'] == szemelyek[i]['id']:
        print(f"\t\t|--> apa: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        apasorszam = szemelyek[i]['id']
        #Apa-testvere:
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> apatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if sorszam == szulok[j]['elsogyerek'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> apatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        #Nagyszülők-apa:
        print(f"\t\t|--> nagyszülők:")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if apasorszam == szulok[j]['masodikgyerek'] and szulok[j]['apa'] == szemelyek[i]['id']:
              print(f"\t\t|\t\t|--> apa: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if apasorszam == szulok[j]['masodikgyerek'] and szulok[j]['anya'] == szemelyek[i]['id']:
              print(f"\t\t|\t\t˙--> anya: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
      #Szülők-anya:
      if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['anya'] == szemelyek[i]['id']:
        print(f"\t\t|--> anya: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        anyasorszam = szemelyek[i]['id']
        #Anya-testvere:
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if sorszam == szulok[j]['masodikgyerek'] and szulok[j]['elsogyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> anyatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if sorszam == szulok[j]['elsogyerek'] and szulok[j]['masodikgyerek'] == szemelyek[i]['id']:
              print(f"\t\t|----> anyatesója: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
        #Nagyszülők-anya:
        print(f"\t\t˙--> nagyszülők:")
        for i in range(len(szemelyek)):
          for j in range(len(szulok)):
            if anyasorszam == szulok[j]['masodikgyerek'] and szulok[j]['apa'] == szemelyek[i]['id']:
              print(f"\t\t\t\t|--> apa: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")
            if anyasorszam == szulok[j]['masodikgyerek'] and szulok[j]['anya'] == szemelyek[i]['id']:
              print(f"\t\t\t\t˙--> anya: {szemelyek[i]['csaladnev']} {szemelyek[i]['keresztnev']}")

########################################################################################################################

#ez a jo

