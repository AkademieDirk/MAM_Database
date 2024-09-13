// ignore_for_file: unused_import

import "dart:io";
import "classes/user.dart";
import "data/database_repository.dart";
import "data/mock_database.dart";
import "functions/caseabcswitch.dart";
import "classes/trashabc.dart";
import "classes/garbagecancolor.dart";
import "classes/news.dart";

void main() {
  DatabaseRepository databaseRepository = MockDatabase();

  databaseRepository.addNewCanColorInformation("rot", "fshf", "Picture");

  databaseRepository.addNewNews(
      "newstitle", "newsdate", "newstext", "newspicture");
  databaseRepository.addNewNews(
      "newstitle2", "newsdate2", "newstext2", "newspicture2");

  print(databaseRepository.getAllNews());

  stdout.writeln(" Herzlich Willkomen zur Marler Müll App");
  stdout.writeln(" Sie haben die Wahl. Was möchten Sie tun? \n ");
}
