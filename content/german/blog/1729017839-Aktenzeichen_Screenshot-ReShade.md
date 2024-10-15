---
title: "Aktenzeichen FFXIV ungelöst: Screenshots - ReShade"
meta_title: ""
description: "Ich mache gerne Screenshots! Auch Final Fantasy 14 bietet mir da mit GPose eine beinahe unmenschlich große Möglichkeit frei zu experimentieren und digitale Fotografie zu erlernen."
date: 2024-10-15T20:44:06+02:00
image: "/images/blog/Aktenzeichen_ScreenshotsReShade.png"
categories: ["Neko:Aktenzeichen"]
author: "Dopine L. Faerondal"
draft: false
---

{{< toc >}}

Ich mache gerne Screenshots! Auch Final Fantasy 14 bietet mir da mit GPose eine beinahe unmenschlich große Möglichkeit frei zu experimentieren und digitale Fotografie zu erlernen. 

Ich sehe alle Bilder, gemacht von mir oder von der großartigen Screenshot-Community **"GPosers"**, nämlich nicht nur als eine tolle Möglichkeit die Erinnerungen im Spiel festzuhalten sondern gleichzeitig als eine Art Lernprojekt, welches sich in der echten Welt super umsetzen lässt. Vorausgesetzt ich nutze meine Spiegelreflexkamera auch mal mehr dafür :sweat_smile:

Aber auch Final Fantasy 14 hat seine Grenzen im GPose. Eine davon möchte ich hier etwas genauer Beleuchten. Dies wird einer von vielen zusammenhängende Blogbeiträgen, der später in einem Art "Screenshots: Basics" gipfelt indem ich alle Beiträge kurz nochmal anreiße und Tipps sowie Tricks zeige die ich für mich selber nutze um Bilder im Spiel zu machen, nur mithilfe von GPose. Gleichzeitig dient es mir als eine Art Notizblock... :sweat_smile:

Leider ist dies nur PC-Spielern vorbehalten. Einen Kniff kann ich jedoch am Ende des Blog-Eintrags geben, für alle die kein ReShade nutzen wollen oder können :wink:

Die GPose-Funktion im Spiel bietet verschiedene Effekte an, die jedoch begrenzte Möglichkeiten haben:

* Tiefenschärfe
* Farbfilter
* Bildschirmeffekte
* Helligkeitsanpassung

Mit ReShade kann man hier jedoch noch eine ordentliche Schippe oben drauf legen.

## ReShade

Was ist ReShade überhaupt? ReShade kann man, im sehr weitesten Sinn, vielleicht als Third-Party Tool sehen. Das ist in technischer Definition jedoch extrem schwierig festzulegen. 

Für mich ist dies kein Programm welches Spieldateien ändert, manipuliert oder anderweitig missbräuchlich verwendet. Sehr vereinfacht formuliert nutzt ReShade die Bildschirmausgabe vom Spiel (Input), nimmt ein paar Berechnungen vor Anhang des Inputs sowie deren 3D-Informationen und gibt ein neues, auf den Berechnungen (Calculating) basierte Ausgabe, wieder aus (Output). Eine Art zweiter Bildschirm, der vom ersten die Bildinformationen nimmt, weiterverarbeitet und leicht verändert ausgibt. Fast das gleiche Prinzip wie das Ändern von RGB oder Gamma am Monitor selbst. Denn ein Monitor bekommt die Informationen ebenfalls von der Grafikkarte zugespielt.

*TLDR*:  
Reshade legt über das Spiel coole Effekte mit der sich Screenshots nochmal optisch hervorragend abheben lassen können.

### Warum nicht GShade?

ReShade ist [Open Source](https://de.wikipedia.org/wiki/Open_Source). GShade ist [Closed Source](https://de.wikipedia.org/wiki/Propriet%C3%A4re_Software), basiert allerdings auf ReShade. Der einzige Unterschied bei GShade ist die einfache Installation mitsamt massiver Bibliothek an sofort verwendbaren Presets für Final Fantasy 14. Warum also nicht GShade nutzen?

Der Hauptverantwortliche Entwickler von GShade hat sich in Vergangenheit mit seinem sehr arrogant Verhalten etwas geleistet, was massiv das Vertrauen bei vielen (mit mir eingeschlossen) verspielt hat. Es wurde in einem Update einen zusätzlichen Schalter eingebaut, der in einer speziellen Situation den gesamten Rechner zwingt, ohne Vorwarnung, runterzufahren. 

Dies seh ich als Zweckverfremdung sowie das versteckte einbauen einer Malware an, da die Software etwas tut was meinem System schaden könnte. Details können im [großartigen Blog](https://notnite.com/blog/gshade-tango-2) von **notnite** nachgelesen werden, da dies hier den Rahmen sprengen würde. Lohnt sich!

## Installation

* Downloaden von ReShade **mit** AddOn support
* Browse... auswählen und die **ffxiv_dx11.exe** auswählen
* Es musst DirectX 10/11/12 als Rendering Engine ausgewählt sein.
* Preset installation kann übersprungen (Skip) werden, da wir eigene nutzen installieren wollen. 
* Das selbe bei den Effekten.
* ReShade ist installiert!

Ingame:

Zum öffnen von Reshade die Tastenkombination *Shift+F2* oder bei neueren Versionen die *Home* Taste drücken.

Seit dem Grafikupdate muss zusätzlich ReShade angewiesen werden, die Berechnungen umgekehrt zu ... nunja berechnen. Dies wird mit einer Globalen Variable mitgeteilt. 

Dazu ReShade öffnen und die "**Edit global preprocessor definitions**" öffnen. Den Wert für **RESHADE_DEPTH_INPUT_IS_REVERSED** auf **1** setzen. Zu finden ist dieses im Global Tab.

![Edit global preprocessor definitions in ReShade](images/blog/screenshots/1729017839-Aktenzeichen_Screenshot-ReShade.png)

Wenn dies nicht gemacht wird, kann es sein das einige Blur-Effekte nicht funktionieren (=DoF, auch Depth-Of-Field genannt).

## Presets

Nach der Installation hat man noch keine Presets, mit dem einer noch keine tollen Ergebnisse erzielen kann. Diese müssen nachträglich installiert werden.

Ein tolles Projekt und guter Start von [Leon Aquitaine @ Famfrit](https://x.com/LeonAquitaine), einem tollen Mod-Free GPose Enthusiast, ist [GPosingway](https://github.com/gposingway/gposingway). In dieser Kollektionen hat er einige wunderbare Preset-Creator zusammengefasst und achtet penibel auf Kompatibilität mit ReShade. Durch sein Script lässt sich dieses ebenfalls [sehr einfach installieren](https://github.com/gposingway/gposingway/blob/main/md/gposingway_installer_instructions.md).

Natürlich gibt es auch reichlich Discords von Preset-Creatoren die ihre Werke dort zum Runterladen zur Verfügung stellen. Die meisten sind für GShade gedacht, können aber meistens mitsamt ReShade verwendet werden. Vereinzelt kann es hier und da jedoch zu Problemen kommen. Einige tolle Creator können via kurzer Google Suche schnell gefunden werden:

* [Talim Tahee](https://talimstahee.carrd.co/) (Mein persönlicher Favorit)
* [Neneko Colors](https://nenekocolors.carrd.co/)
* [MartyMcFly + RayTracing](https://www.martysmods.com/)

Ich nutzte früher viele Presets aus GShade, bis ich dazu übergegangen bin ein eigenes zu erarbeiten. Dies erfordert jedoch tieferes Verständnis und viel viel Geduld. Die Belohnung ist jedoch eines auf sich selbst zugeschnittenes Preset, welches für viele Situationen verwendet werden kann und seinen eigenen *Charm* in jedem Screenshot erkennen lässt.

Im Ordner von Final Fantasy XIV (FINAL FANTASY XIV Online\game) findet sich ein Presets-Ordner **reshade-presets** indem alle Presets kopiert werden können.

## Update

Ein Update von ReShade läuft ähnlich wie die Installation. Das neue Setup einfach von der offiziellen Website runterladen und ausführen genügt. Dabei erkennt er bereits ob ReShade installiert ist und bietet direkt an, dieses zu aktualisieren.

Wenn GPosingway verwendet wird für die Presets, wird ein Update über das Ausführen des selbigen Scripts *gposingway-update.bat*
durchgeführt. Auf GitHub ist dies bereits mit Bildern gut beschrieben.

## Verwendung

Da nun alles Installiert und bereit ist, wie verwendet man ReShade den nun für bombastische, Kinoreife Screenshots?

* Tipp: UI Skalierung kann mit STRG + Mausrad manipuliert werden. Praktisch bei hochauflösenden Monitoren (4K).
* Tipp: Durch ziehen und an den Rand bewegen kann das Fenster oben; unten; rechts oder links angedockt werden. Gut wenn das UI im Weg sein sollte.
* Tipp: Lieber unkomprimierte Bilder speichern lassen (.png) um später mit Photoshop oder Gimp besser bearbeiten zu können. Komprimieren kann man hinterher immernoch ( -> jpg)
* Tipp: Greenscreen rules! Damit kann man jeden Hintergrund kinderleicht mit einem Bildbearbeitungsprogramm entfernen. 

## Sonstiges

Ich nutze ReShade unter anderem um die Farben deutlich kräftiger als vom Spiel darstellen zu lassen. Dopines' Haare sollten vor Rot regelrecht leuchten, sonst macht das ja gar kein Sinn :wink:

Im Gpose-Modus sollten, für einen ähnlichen Effekt, folgende Einstellungen vorgenommen werden:

* **Farbfilter** -> Hell 4
* **Tiefenschärfe** bei Portrait oder Charakterfotos aktivieren. Landschaftsbilder je nach Bedarf.
* **Manuelle Helligkeitsanpassung** -> Hier aktivieren und gerne mit dem Wert experimentieren, da dies je nach Situation ein ganz andere Feelings auslösen kann (Herbstlich; Hochsommer; Kälte usw.). Ein niedriger Wert in Verbindung mit dem Farbfilter Hell 4 lässt die Farben sehr kräftig erscheinen.

Für dunkle Bereiche, wie zum Beispiel bei Höhlenausgänge oder Ecken, macht es Sinn in den Grafikoptionen zusätzlich die Option **Gammakorrektur** auf **0** zu stellen. Dies bewirkt das ein "*Grauschleier*" welcher über das Spiel gelegt wird nicht mehr zu sehen ist. So bleiben dunkle Bereiche auch wirklich dunkel!

