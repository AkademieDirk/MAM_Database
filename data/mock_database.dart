// ignore_for_file: unused_field

import '../classes/trashabc.dart';
import '../classes/garbagecancolor.dart';
import '../classes/user.dart';
import 'database_repository.dart';
import '../classes/news.dart';
// Hier wird die Mockdatabase erstellt

class MockDatabase implements DatabaseRepository {
// hier werden die Listen zu den Klassen generiert in welche später die Objekte gespeichert werden.
// Muss noch um Kalender etc erweitert werden

  List<User> _users = [];
  List<News> news = [];
  List<Trashabc> trash = [];
  List<Garbagecancolor> cancolor = [];

  @override
  void addNewCanColorInformation(String color, String text, String Picture) {
    Garbagecancolor neueTonne = Garbagecancolor(
      color: color,
      text: text,
      picture: Picture,
    );
    trash.add(neueTonne as Trashabc);
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

  @override
  void addNewTrashInformation(String color, String text, String Bild) {}

// hier werden die methoden aus der Mockdatabes auferufen um Informatione über die Listen abzurufen
  @override
  List<News> getAllNews() {
    return news;
  }

  @override
  List<Trashabc> getAllTrashInformation() {
    return trash;
  }

  @override
  void removeTrashInformation() {
    // TODO: implement removeTrashInformation
  }

  @override
  void getallGarbageCancolorInformation(
      String color, String text, String picture) {
    // TODO: implement getallgarbageCancolorlinformation
  }
}
