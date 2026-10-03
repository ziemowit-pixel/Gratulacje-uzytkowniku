# GRATULACJE UŻYTKOWNIKU!!!

## Oficjalny dokument absolutnie niepotrzebny

Witaj, wędrowcze. Jeśli czytasz ten tekst, to znaczy, że:

1. masz internet;
2. znalazłeś przycisk „OK” przynajmniej raz w życiu;
3. ziemniak z działu kadr zatwierdził Ci dostęp.

Gratulujemy. Twoja nagroda to **honorowy tytuł Mistrza Klikania OK**. Trofea wysyłamy gołębiem. Gołąb jest na przerwie.

## Co robi ten projekt?

Pokazuje absurdalne okienka, odtwarza kilka dźwięków macOS i zadaje pytania, na które nawet komisja naleśników nie zna odpowiedzi. Nie przyznaje prawdziwych nagród, nie zbiera danych i nie wie, gdzie schował się Twój iPhone 6S.

## Uruchomienie ceremonii

Na Macu z narzędziami Xcode Command Line Tools uruchom w Terminalu:

```sh
osacompile -o "Gratulacje Użytkowniku!.app" "Gratulacje Użytkowniku.applescript"
mkdir -p "Gratulacje Użytkowniku!.app/Contents/Resources"
cp "Gratulacje Użytkowniku! - Psiki (192k).mp3" "Gratulacje Użytkowniku!.app/Contents/Resources/Gratulacje Użytkowniku.mp3"
open "Gratulacje Użytkowniku!.app"
```

Po każdym kliknięciu „OK” komisja otrzymuje jeden naleśnik. Nie pytaj, dlaczego.

Gotowy instalator macOS pobierzesz ze strony [najnowszego wydania](https://github.com/ziemowit-pixel/Gratulacje-uzytkowniku/releases/latest). Instaluje aplikację w `/Applications`. Pakiet jest niepodpisany; macOS może wymagać potwierdzenia otwarcia.

## Dźwięk

Do repozytorium dołączono plik audio „Gratulacje Użytkowniku!” z filmu kanału [Psiki na YouTube](https://www.youtube.com/shorts/x_SJMONahsY). Właściciel projektu potwierdza, że ma licencję na jego użycie i udostępnienie. Skrypt szuka go w `Contents/Resources/Gratulacje Użytkowniku.mp3` i odtwarza przy uruchomieniu. Dźwięki systemowe nadal będą ćwierkać, bulgotać i podejmować wątpliwe decyzje.

## Licencja

Licencja nie została jeszcze zapytana, czy chce brać udział w tym projekcie.
