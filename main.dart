// ignore_for_file: unused_import, unused_local_variable

import "dart:io";
import "models/trash_abc.dart";
import "models/user.dart";
import "data/database_repository.dart";
import "data/mock_database.dart";
import "functions/caseabcswitch.dart";

import "models/cancolor.dart";
import "models/news.dart";

void main() {
  DatabaseRepository databaseRepository = MockDatabase();

  Trashabc obj =
      Trashabc(name: "name", explanation: "Test", picture: "picture");

  print(obj.explanation);

  // Hier werden die Methoden zum adden aufgerufen
  // später werden noch die Variablen surch inputs ersetzt
  databaseRepository..addNewcanColor("color", "text", "picture");
  databaseRepository.addNewNews(
      "newstitle", "newsdate", "newstext", "newspicture");
  databaseRepository.addNewTrashInformation(
      "Testname", "Testbezeichnung", "Testbild");
  databaseRepository.addNewTrashInformation(
      "Testname", "Testbezeichnung", "Testbild");

// add new User

// hier wird die remove Methode getestet fuktioniert noch nicht

  databaseRepository.removeTrashInformation(
      "Testname", "Testbezeichnung", "Testbild");

// Mit den Prints wird getestet ob die Add Methoden fukktionieren

  print(databaseRepository.getAllNews());
  print(databaseRepository.getAllcans());
  print(databaseRepository.getAllTrashInformation());

// Hier startet die App

  stdout.writeln(" Herzlich Willkomen zur Marler Müll App");

  stdout.writeln(" Sie haben die Wahl. Was möchten Sie tun? \n [L]ogin");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case "L":
      stdout.writeln("Bitte geben Sie ihren Usernamen ein");
      String? username = stdin.readLineSync();
      stdout.writeln("Bitte geben Sie ihr Passwort ein");
      String? userpassword = stdin.readLineSync();
      if (databaseRepository.loggedincorrectly(username!, userpassword!) ==
          true) {
        print("jetzt gehts weiter");
      }
  }
}
