# GRATULACJE UŻYTKOWNIKU!!!

## Oficjalny dokument absolutnie niepotrzebny

Witaj, wędrowcze. Jeśli czytasz ten tekst, to znaczy, że:

1. masz internet;
2. znalazłeś przycisk „OK” przynajmniej raz w życiu;
3. ziemniak z działu kadr zatwierdził Ci dostęp.

Gratulujemy. Twoja nagroda to **honorowy tytuł Mistrza Klikania OK**. Trofea wysyłamy gołębiem. Gołąb jest na przerwie.

## Co robi ten projekt?

Pokazuje absurdalne okienka, odtwarza kilka dźwięków macOS i zadaje pytania, na które nawet komisja naleśników nie zna odpowiedzi. Nie przyznaje prawdziwych nagród, nie zbiera danych i nie wie, gdzie schował się Twój iPhone 6S.

## Budowanie i uruchomienie

Na Macu z narzędziami Xcode Command Line Tools, plikiem źródłowym AppleScript oraz plikiem MP3 uruchom:

```sh
bash make-dmg.sh 1.0.1
```

Skrypt tworzy aplikację `.app`, instalator `.pkg` i obraz `.dmg`. Obraz zawiera umowę, którą trzeba zaakceptować przed zamontowaniem. Instalator umieszcza aplikację w `/Applications`. Gotowe pliki pobierzesz z [wydania v1.0.1](https://github.com/ziemowit-pixel/Gratulacje-uzytkowniku/releases/tag/v1.0.1).

Po każdym kliknięciu „OK” komisja otrzymuje jeden naleśnik. Nie pytaj, dlaczego.

## Dźwięk

Do repozytorium dołączono plik audio „Gratulacje Użytkowniku!” z filmu kanału [Psiki na YouTube](https://www.youtube.com/shorts/x_SJMONahsY). Właściciel projektu potwierdza, że ma licencję na jego użycie i udostępnienie. Skrypt umieszcza dźwięk w `Contents/Resources/Gratulacje Użytkowniku.mp3` i odtwarza przy uruchomieniu. Efekty systemowe nadal będą ćwierkać i bulgotać.

## Umowa

Tekst umowy przed zamontowaniem znajduje się w [`LICENSE-AGREEMENT.txt`](LICENSE-AGREEMENT.txt). Jeśli wybierzesz „Disagree”, obraz nie zostanie zamontowany.

## Ważne

Informacje o wygranej są żartem. Aplikacja nie przyznaje nagród, nie zbiera danych i nie jest powiązana z Apple, Sony ani Samsungiem. Pakiet nie jest podpisany ani notaryzowany przez Apple, więc macOS może pokazać ostrzeżenie.

## Licencja

Licencja nie została jeszcze zapytana, czy chce brać udział w tym projekcie.
