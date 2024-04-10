---
title: "Aktenzeichen FFxiv ungelöst: Der UI Verlust"
meta_title: ""
description: "Wie kann man den Verlust seiner Einstellungen verhindern? Das erfahrt ihr hier!"
date: 2024-04-09T19:45:05+02:00
image: "/images/blog/Aktenzeichen_DerUiVerlust.png"
categories: ["Neko:Aktenzeichen"]
author: "Dopine L. Faerondal"
draft: false
---

Jeder kennt es und jeder durchlebte es mindestens einmal. Man hat viel Müh und Leid in das eigene UI (User Interface = Layout) und Makros gesteckt nur um durch irgendeinen dummen Zufall alles wieder zu verlieren.

Wie bei allen, was einem digital wichtig ist, sollte man vorher ein Backup anlegen. Für genau solch einen Fall. Deswegen gibt es einen Leidspruch in der IT-Welt: "Kein Backup? Kein Mitleid." :sweat_smile:

Aber wie genau geht das? Ist das Kompliziert? 'Ich kann so etwas doch gar nicht' fragen sich sicherlich viele.

Das wird dir hier von Dopine gezeigt, welche Möglichkeiten es gibt und wie einfach es ist.

### Methode 1 | Server Backup | Sehr einfach

Es gibt direkt in Final Fantasy 14 eine Funktion zum Sichern der Einstellungen! [Wie cool ist das bitte?!](https://www.youtube.com/watch?v=ZLqcyxK-lqw) :exploding_head: Das klappt sogar auf PC sowie Konsole!

Sie ist nur etwas versteckt zu finden, aber relativ simple gestaltet:

Meldet am Spiel an und geht in die Charakter Übersicht. Öffnet mit Rechtsklick (oder X am Kontroller) das Untermenü eines ausgewählten Charakters. Dort gibt es den Menüpunkt *Charaktereinstellungen sichern*. Mit **Hochladen** sichert ihr euren aktuellen Stand von diesem Charakter und mit **Runterladen** überschreibt ihr diesen!

![Bild des Menüpunkt der Charaktereinstellung sichern](images/blog/screenshots/1712608981-Aktenzeichen_DerUIVerlust_01.jpg)

![Bild vom Sicherungsfenster](images/blog/screenshots/1712608981-Aktenzeichen_DerUIVerlust_02.jpg)

Auch nett: Man sieht direkt wann zuletzt gesichert wurde.

Das Sichern der Allgemeinen Makros (Systemeinstellungen) erfolgt ähnlich, jedoch ist hier der Menüpunkt am Zahnrad neben dem erstellen eines neuen Charakters versteckt.

Die Sicherung muss in beiden Fällen jedoch jedes mal selber durchgeführt werden und passiert **nicht** automatisch!

### Methode 2 | Dateien kopieren | Einfach

Dies ist nur am PC machbar, aber man hat dadurch mehr Kontrolle über alle Einstellungen. Alle Charakter- und Systemeinstellungen befindet sich im Dokumente Ordner von Windows:

> %USERPROFILE%\Documents\My Games\FINAL FANTASY XIV - A Realm Reborn

Kopiert den oberen Pfad und gebt diese in die Leiste des Datei Explorers ein und ihr gelangt direkt in den passenden Ordner.

Seht ihr diese, womöglich vielen, Ordner die mit **FFXIV_CHR** beginnen? ~~Löscht~~ Kopiert diese Ordner an einen Ort eurer Wahl und all eure Charaktereinstellungen sind gesichert ~~futsch~~! Ich empfehle hier einen USB Stick um bei einem System Totalausfall auf der sicheren Seite zu stehen.

Zum Wiederherstellen einfach die Dateien vom USB Stick in den Ordner zurückkopieren und überschreiben.

#### TIP:
Falls ihr, wie ich, viele Freunde ~~Charaktere~~ besitzt, könnt ihr mit die Ordner "markieren" indem ihr in diesen eine Textdatei mit den Namen des dazugehörigen Charakter anlegt (*DOPINE_FAERONDAL.txt*). 

Toll und wie erkennt man am besten welcher Ordner zu einem Charakter passt? Loggt euch einmal im Spiel mit diese ein, beendet dieses wieder und filtert dann welcher Ordner zu welchem Datum und Uhrzeit geändert wurde. Der neuste ist der soeben eingeloggte gewesen. Etwas umständlich, aber einmal gemacht...

### Methode 3 | Scripting | Fortgeschritten

Leider auch hier nur am PC möglich.

Diese Methode erfordert zumindest ein bisschen Wissen in Dateistrukturen und/oder Scripting. Der Vorteil? Es passiert automatisch und in selbst definierten Zeitintervallen :timer_clock:

Ich werde hier nicht in die Details gehen, da dies den Rahmen sprengen würde. Jeder der sich jedoch etwas auskennt, wird dennoch zurechtkommen:

1. Öffnen der Aufgabenplanung (Task Scheduler)
2. Anlegen eines neuen (einfachen) Tasks:
    1. Name: FFXIV UI Backup
    2. Zeitintervall der Ausführung: Nach Belieben, ich denke hier ist einmal Wöchentlich ganz ok.
    3. Aktion: Programm starten -> Script einfügen

> xcopy "%USERPROFILE%\Documents\My Games\FINAL FANTASY XIV - A Realm Reborn" "C:\Zielort" /s /y

Hier sollte das Script je nach Bedarf jedoch angepasst werden:
* "C:\Zielort" -> Den Ordnerpfad angeben. Ist dies ein USB Stick? Dann z.B. "D:\FFXIVBackup"

Falls danach gefragt wird, die Argumente bei der Aufgabenerstellung zu übernehmen kann dies bejaht werden.

Danach die Aufgabe speichern und sie wird automatisch zum ausgewählten Zeitpunkt und Uhrzeit die Dateien abspeichern!

Nicht erschrecken: Sobald das Script ausgeführt wird, öffnet sich ein Kommandozeilen Fenster und "rattert" alle Dateien runter bis er fertig ist. Das ist normal und kann je nach Menge der Dateien ein bis zwei Minuten dauern.