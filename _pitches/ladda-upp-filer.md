---
title: "Pitch: Ladda upp filer"
layout: post
date: 2020-05-24
---

💡 *Det här är en pitch för en helt ny tjänst. Den är varken heltäckande eller uttömmande men jag har försökt mig på att beskriva ett enstaka usecase för hur jag tänker att en tjänsten skulle kunna fungera.*

*P.S. Lova att inte skratta åt de fula skisserna.*

--

Vi utbyter filer med varandra som aldrig förr. Vi skickar filer via mejl, via WeTransfer, eller delar länkar via tjänster som Dropbox. För den som skickar filerna är det lätt att bara skicka i väg på smidigast möjligast vis men det är besvärligt att vara mottagare av filerna. 

- Svårt att hålla reda på vilken fil som är den senaste versionen. 
- Svårt att följa upp om det visar sig att man fick bilder i fel format eller i fel storlek. 
- För att hålla ordning behöver mottagaren döpa om och organisera filerna så att de passar sitt egna system.

En enstaka fil kan resultera i otaliga mejl fram och tillbaka till klienten vilket kan vara frustrerande för båda parter.

Så. Det är lätt att skicka filer men det är svårt att *be* om filer.

## Be om filer

Under ett tag har jag gått i funderingar på en tjänst som skulle kunna hjälpa till i den här fil-utväxlingen. En tjänst där mottagaren har möjlighet att skapa ett formulär till klienten för att ladda upp just de filer eller texter som mottagaren behöver.

Så här tänker jag mig att det fungerar:

Maja Mottagare har fått i uppdrag att göra ett reklamblad för en klient. Hon vet att de kommer att behöva följande för att göra reklambladet:

- En stor bild, troligtvis med en upplösning på över 5000px i bredd. Allra helst ett par stycken bilder som vi kan välja bland.
- Ett telefonnummer, en epostadress och en besöksadress som ska finnas med i reklambladet.
- En logga, helst i vektorformat. Om det inte finns vektorformat så behöver den också ha en upplösning över 2500px i bredd.

Så. Hon loggar in på vår sajt och skapar upp ett nytt uppladdningsformulär. 

Där lägger hon till en bilduppladdning som kan ta emot en eller fler bilder. Hon lägger också till regeln att bilden *måste* ha en upplösning på minst 5000px i bredd. Kanske lägger hon också till en egen kommentar om att ni gärna tar emot flera bilder så att ni kan göra ett par varianter. 

<figure>
	<img width="2048" height="1536" src="/assets/img/pitches/pitch-20200519/skiss.1.png" />
	 <figcaption>Mottagaren lägger till bilduppladdning till formuläret</figcaption>
</figure>


Maja fortsätter att lägga till ett textfält för telefonnummer, ett textfält för epostadress och ett textfält för besöksadress.

<figure>
	<img width="2048" height="1536" src="/assets/img/pitches/pitch-20200519/skiss.2.png" />
	 <figcaption>Mottagaren lägger till textinmatning till formuläret</figcaption>
</figure>

Slutligen så lägger hon till en bilduppladdning för loggan med regeln att den kan vara ett vektorformat *eller* en bitmap med bredden 2500px. 

Maja vill döpa bildfilerna så att de passar hennes egna system. 

- main_photo_option_{a,z}.[ext]
- logo.[ext]

Så, oavsett vad filerna har för ursprungsnamn så döps de om när Maja laddar ned dem.

Bara ett steg kvar då. Och det är att mejla länken till klienten så att han kan ladda upp filerna. 

## Ladda upp filer

Kalle Klient sitter förväntansfullt och laddar om sitt mejlprogram i hopp om att det ska dimpa ned ett mejl från Maja Mottagare. Pling! Där kom det. 

Han trycker på länken. 

Där möts han av en webbsida med prydliga alternativ för att ladda upp bilder och skriva in texter.

<figure>
	<img width="2048" height="1536" src="/assets/img/pitches/pitch-20200519/skiss.3.png" />
	 <figcaption>Klienten besöker uppladdningssajten</figcaption>
</figure>

Han börjar med att ladda upp en bild.￼ Den är lite för liten för Kalle har fått tag på en tumnagelbild från företagets interna bilddatabas.￼ så fort filen har laddats upp så skrivs ett felmeddelande ut om att bildfilen är för liten.￼

<figure>
	<img width="2048" height="1536" src="/assets/img/pitches/pitch-20200519/skiss.4.png" />
	 <figcaption>Klienten laddar upp en för liten bild</figcaption>
</figure>

Då går han tillbaka till bilddatabasen och hämtar en stor variant av samma bild.￼

Sedan fortsätter Kalle med att skriva in texter och ladda upp en logga.

<figure>
	<img width="2048" height="1536" src="/assets/img/pitches/pitch-20200519/skiss.5.png" />
	 <figcaption>Klienten fyller i textfälten och laddar upp en logga</figcaption>
</figure>

När han lagt in alla bilder och texter så tänds en "skicka"-knapp i nederkant av formuläret. När han trycker på knappen så skickas ett mejl till Maja Mottagare om att Kalle har laddat upp filerna.

## Ladda hem

Maja Mottagare får ett mejl om att filerna och texterna nu är uppladdade. Direkt i mejlet finns en länk för att ladda hem en zip innehållandes allt material.￼

## Uppdatera filer

Åh nej! Kalle Klient inser att han har glömt en bild som skulle kunna passa väldigt bra till den här reklamkampanjen.￼ 

Ingen fara. Han letar upp länken till uppladdningsformuläret och laddar upp den nya bilden. 

Maja Mottagare får då ett mejl om att formuläret har uppdaterats ytterligare en gång. Hon får möjlighet att ladda hem en zip med allt material, eller en zip med enbart det materialet som har lagts till.￼

## Förslag till [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product)

För att undersöka om det här projektet löser ett faktiskt problem så föreslår jag att vi börjar med att prototypa den sida mottagaren använder för att skapa uppladdningsformulär. Om vi löser den på ett tillfredsställande vis så att den känns enkel och trevlig att använda, då tror jag att vi har löst det viktigaste problemet för sajten.

På sikt behöver en sådan här tjänst kunna en rad olika saker. 

- Användarkonton och inloggning
- Kanske dela projekt mellan mottagare (om man t ex är flera personer på en byrå)
- Kanske koppling till Dropbox/Google Drive/FTP eller annan fillagring för att lägga de uppladdade filerna på (i stället för att ladda hem zippar med det uppladdade materialet)

Men det är bra att börja smått och därför föreslår jag att vi bortser från de här funktionerna i nuläget och fokuserar på skapandet av uppladdningsformuläret. Samt den funktionalitet vi tror att den behöver för att bli så kommunikativt som möjligt.


