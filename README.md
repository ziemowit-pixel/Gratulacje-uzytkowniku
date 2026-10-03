# Gratulacje Użytkowniku!

Niewielka aplikacja-żart dla macOS napisana w AppleScript. Pokazuje serię absurdalnych okienek i odtwarza systemowe efekty dźwiękowe. Opcjonalny podkład MP3 nie jest dołączony do repozytorium.

## Budowanie

1. Otwórz Terminal w systemie macOS z zainstalowanymi narzędziami Xcode Command Line Tools.
2. W katalogu projektu uruchom:

   ```sh
   osacompile -o "Gratulacje Użytkowniku!.app" "Gratulacje Użytkowniku.applescript"
   ```

3. Opcjonalnie, jeśli masz prawo do użycia pliku audio, skopiuj go do:

   ```text
   Gratulacje Użytkowniku!.app/Contents/Resources/Gratulacje Użytkowniku.mp3
   ```

Aplikacja działa również bez opcjonalnego MP3. Dodatkowe efekty są odtwarzane z biblioteki dźwięków macOS.

## Uruchamianie

Otwórz `Gratulacje Użytkowniku!.app` w Finderze. To wyłącznie żart — aplikacja nie przyznaje nagród i nie zbiera danych.
