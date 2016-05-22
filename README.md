### Projekt zespołowy na egzamin ASI

###Skład zespołu:  Martin Zelek, Krzysztof Stelmach, Robert Knop

###Nazwa zespołu: MKR
###Nazwa projektu: Ranking seriali

- Krzysztof Stelmach
 - stworzenia modelu serialu
 - stworzenie kontrolera serialu
 - dodanie gemów simple_form i bootstrap
 - instalacja gemów simple form i bootstrap
 - logowanie
 - funkcjonalność dodawania seriali
 - funkcjonalność edycji seriali
 - funkcjonalność podglądu seriali

- Martin Zelek
 - stworzenie modelu Kategoria i dodanie w konsoli kategorii
 - Powiązanie kategorii z serialem (one to many)
 - Zrobienie dropdown listy i listowanie Seriali po kategorii
 - Powiązanie usera z serialem (one to many)
 - User który dodał dany serial może tylko nim zarządzać
 - Dodanie obrazków za pomocą imagemagick
 - wrzucenie aplikacji na heroku
 - częściowe spolszczenie komunikatów
 
- Robert Knop
 - stworzenie modelu Recenzja wraz z kontrolerami i widokami do dodawania, edycji i usuwania oraz powiązanie go z użytkownikiem i serialem
 - umożliwienie edycji lub usunięcia recenzji tylko użytkownikowi, który ją dodał
 - dodanie biblioteki JS raty i systemu oceniania gwiazdkami
 - dodanie średniej oceny
 - style do widoków
 - częściowe spolszczenie komunikatów oraz interfejsu
 
 

 Egzamin:
 - [ ] [Ranking seriali](egzamin)
 - [ ] [Aplikacja na herokuapp](https://projekt-ruby.herokuapp.com/)




 Opis Projektu:

Projekt służy do wystawiania recenzji dla danego serialu. Dodawać recenzje może każdy zalogowany, zarządzać serialem (edytować/usunąć) może tylko ten co go dodał (serial ma relacje Many to One z userem). W Aplikacji można wyświetlać seriale po gatunku do jakiego należą (Serial ma relacje one to many z Kategorią).


 Informacje:
 
|Wersja Ruby|Wersja Rails|Baza danych|
|---|---|---|
|2.3.0p0|5.0.0.beta3|Sqlite3|
