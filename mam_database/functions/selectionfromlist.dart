// ignore_for_file: unused_import

import 'dart:io';
import '../../../MAM_Database/main.dart';
import '../../../MAM_Database/models/trash_abc.dart';

// Hier übergebe
void selectionFromList() {
  stdout.writeln(
      "Im Abfall ABC gibt es im Moment folgende Auswahl   [A]luminiumfolie oder [B]ratfett");
  String selection = stdin.readLineSync()!;
  switch (selection) {
    case "A":
      stdout.writeln(
          "Alufolie ist ein wichtiger Rohstoff und  gehört in die gelbe Tonne");
    case "B":
      stdout.writeln("Braftfett gehört in die Restmülltonne");
  }
}
