on run
	try
		set soundPath to POSIX path of (path to resource "Gratulacje Użytkowniku.mp3" in bundle (path to me))
		do shell script "/usr/bin/afplay " & quoted form of soundPath & " >/dev/null 2>&1 &"
	on error errorMessage number errorNumber
		display alert "Nie udało się uruchomić dźwięku" message (errorMessage & " (" & errorNumber & "). Ceremonia będzie kontynuowana bez MP3.") as warning
	end try
	display dialog "Gratulacje użytkowniku! Zostałeś wybrany jako dzisiejszy zwycięzca darmowego iPhone 6S, PlayStation 4 lub Samsung Galaxy S6! Kliknij OK, aby wybrać nagrodę, zanim odbierze ją ktoś inny!" buttons {"OK"} default button "OK" with title "Gratulacje Użytkowniku!" with icon caution
	playEffect("Frog")
	display dialog "Żart! Twoją nagrodą jest honorowy tytuł Mistrza Klikania OK. Niestety, dostawa zaszczytów może potrwać do 6–8 dni roboczych. 😄" buttons {"OK"} default button "OK" with title "Gratulacje Użytkowniku!"
	playEffect("Pop")
	display dialog "AKTUALIZACJA ŚLEDZENIA PACZKI: iPhone 6S schował się za kanapą, PS4 gra w chowanego, a Galaxy S6 udaje pilota. Kurier wróci, gdy przestaną się śmiać. Twoim jedynym pewnym prezentem pozostaje tytuł Mistrza Klikania OK! 🏆" buttons {"Przyjmuję ten zaszczyt"} default button "Przyjmuję ten zaszczyt" with title "Gratulacje Użytkowniku!"
	playEffect("Bottle")
	display dialog "KONTROLA CELNA: proszę zadeklarować niewidzialnego pingwina. Czy przewozi własną rybę? Czy umie latać? Urzędnik też nie wie, ale formularz ma 47 stron." buttons {"Pingwin jest na diecie"} default button "Pingwin jest na diecie" with title "Gratulacje Użytkowniku!"
	playEffect("Purr")
	display dialog "WAŻNE PYTANIE: ziemniak właśnie zapytał, czy to już piątek. Odpowiedziałem, że jest bulwą i nie ma kalendarza. Ziemniak poprosił o rozmowę z kierownikiem." buttons {"Awansuję ziemniaka"} default button "Awansuję ziemniaka" with title "Gratulacje Użytkowniku!"
	playEffect("Hero")
	display dialog "CERTYFIKAT PRZYZNANY: niniejszym potwierdza się, że kliknięto „OK” z godnością, refleksem i lekkim zdziwieniem. Proszę powiesić ten certyfikat na lodówce obok magnesu z wakacji. 🏅" buttons {"Koniec ceremonii"} default button "Koniec ceremonii" with title "Gratulacje Użytkowniku!"
	playEffect("Basso")
	display dialog "PILNE POSIEDZENIE ZARZĄDU: makaron twierdzi, że jest spaghetti, ale nie ma dokumentów. Pomidor zeznaje, że widział go w zupie. Czy uznajesz makaron za wiarygodne źródło węglowodanów?" buttons {"Tylko po sprawdzeniu sosu"} default button "Tylko po sprawdzeniu sosu" with title "Gratulacje Użytkowniku!"
	playEffect("Submarine")
	display dialog "ALARM! Wtorek próbuje uciec w przebraniu środy. Prosimy nie panikować. Kalendarz został poinformowany i już udaje, że go nie zna." buttons {"Trzymam kalendarz"} default button "Trzymam kalendarz" with title "Gratulacje Użytkowniku!"
	playEffect("Morse")
	display dialog "GRATULACJE! Zostałeś mianowany Naczelnym Ochroniarzem Księżyca. Zmiana zaczyna się dziś o północy. Strój służbowy: kapcie. Hasło: „ser żółty”. Księżyc jeszcze nie wie, ale to niespodzianka." buttons {"Przyjmuję nocną zmianę"} default button "Przyjmuję nocną zmianę" with title "Gratulacje Użytkowniku!"
	playEffect("Glass")
	display dialog "KONIEC. Komputer właśnie szepnął do drukarki: „to był człowiek od OK”. Drukarka odpowiedziała: „szanuję”. Oboje życzą Ci miłego dnia. 🫡" buttons {"Rozejść się"} default button "Rozejść się" with title "Gratulacje Użytkowniku!"
	playEffect("Sosumi")
	display dialog "NADCHODZI AKTUALIZACJA SYSTEMU: gołąb przejął kontrolę nad Wi‑Fi. Żąda okruszków, pełnych uprawnień administratora i żebyś przestał mówić „ćwir” bez licencji. Szacowany czas instalacji: do pierwszego kichnięcia." buttons {"Dajcie mu okruszka"} default button "Dajcie mu okruszka" with title "Gratulacje Użytkowniku!"
	playEffect("Funk")
	display dialog "WERDYKT KOMISJI OD NALEŚNIKÓW: po długich obradach trzy naleśniki i jeden podejrzany krokiet uznały, że jesteś niewinny. Możesz odejść. Zostaw jednak naleśniki — są teraz kierownictwem." buttons {"Wychodzę na paluszkach"} default button "Wychodzę na paluszkach" with title "Gratulacje Użytkowniku!"
	playEffect("Tink")
	display dialog "OSTATNIA CHWILA: właśnie kliknąłeś tyle razy, że klawisz OK dostał awans i własne biurko. Pierwsze zarządzenie nowego szefa: koniec klikania, czas na herbatę. 🫡" buttons {"Rozkaz przyjęty"} default button "Rozkaz przyjęty" with title "Gratulacje Użytkowniku!"
end run

on playEffect(soundName)
	set effectPath to "/System/Library/Sounds/" & soundName & ".aiff"
	do shell script "/usr/bin/afplay " & quoted form of effectPath & " >/dev/null 2>&1 &"
end playEffect
