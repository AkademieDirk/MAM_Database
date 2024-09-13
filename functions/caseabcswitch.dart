// ignore_for_file: unused_import

import "../data/mock_database.dart";
import "Dart:io";
import "/Users/dirkkraft/Code/Marler-Muell-App/functions/caseabcswitch.dart";

caseabcswitch() {
  stdout.writeln(
      "Jetzt sind Sie auf dem ABfall ABC welchen Artikel möchen Sie entsorgen? \n [K]onserven oder [F]arbeimer");
  String abcinput = stdin.readLineSync()!;
  switch (abcinput) {
    case "K":
      stdout.writeln("Hier würden die Infos zu Konservendosen angezeigt");

    case "F":
      stdout.writeln("Hier würden die Infos zu Konservendosen angezeigt");
  }
}
