// ignore_for_file: unused_field, unused_local_variable, unused_import

import "../../../MAM_Database/models/trash_abc.dart";
import '../../../MAM_Database/models/cancolor.dart';
import '../../../MAM_Database/models/user.dart';
import 'database_repository.dart';
import '../../../MAM_Database/models/news.dart';
import "Dart:io";
// Hier wird die Mockdatabase erstellt

class MockDatabase implements DatabaseRepository {
// hier werden die Listen zu den Klassen generiert in welche später die Objekte gespeichert werden.
// Muss noch um Kalender etc erweitert werden

  final List<User> _users = [];
  List<News> news = [];
  List<Trashabc> trash = [];
  List<Cancolor> cancolor = [];

  @override
  void addNewcanColor(
    String color,
    String text,
    String picture,
  ) {
    Cancolor newcan = Cancolor(color: color, text: text, picture: picture);
    cancolor.add(newcan);
  }

  @override
  List<Cancolor> getAllcans() {
    return cancolor;
  }

  @override
  void addNewNews(
      String newstitle, String newsdate, String newstext, String newspicture) {
    News newnews = News(
        newstitle: newstitle,
        newsdate: newsdate,
        newspicture: newspicture,
        newstext: newstext);

    news.add(newnews);
  }

  // Hier wird die Methode addnewTrashinformation überschrieben. Diese befindet sich im database Repository
  // Die Funktion fügt einen neune Eintrag zum Abffall ABC hinzu
  @override
  void addNewTrashInformation(String name, String explanation, String picture) {
    Trashabc newtrash =
        Trashabc(name: name, explanation: explanation, picture: picture);
    trash.add(newtrash);
  }

// hier werden die methoden aus der Mockdatabes aufgerufen um Informatione über die Listen abzurufen
  @override
  List<News> getAllNews() {
    return news;
  }

  @override
  List<Trashabc> getAllTrashInformation() {
    return trash;
  }

  @override
  void removeTrashInformation(String name, String explanation, String picture) {
    Trashabc remove =
        Trashabc(name: name, explanation: explanation, picture: picture);

    trash.remove(remove);
  }

  @override
  String? getallGarbageCancolorInformation(
      String color, String text, String picture) {
    return null;
  }

  // Das ist der klassische Log in doch müssen hier noch die erwarteten Werte aus der User list in der MockDatabase geholt werden.
  //Ist in Arbeit
  @override
  bool loggedincorrectly(String username, String userpassword) {
    String expectedusername = "Dirk";
    String expecteduserpassword = "0000";
    bool logincorrect = false;

    if (username == expectedusername && userpassword == expecteduserpassword) {
      print("Deine Daten waren ok");
      return logincorrect = true;
    } else {
      print("Deine Dateneingabe war falsch");
      return logincorrect = false;
    }
  }
}
