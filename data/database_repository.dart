import '../models/cancolor.dart';
import '../models/news.dart';
import '../models/trash_abc.dart';

abstract class DatabaseRepository {
// Create fügt neue Daten zum ABC hinzu

  void addNewTrashInformation(
    String color,
    String text,
    String Bild,
  );

  /// übergibt eine Tonne mit Farbe und Bild an dei Liste
  // Eingabe: Tonnenfarenb Beschriebung und Bild
  // Rückgabe: -
  // EinDT: String String String(später Datentyp für Bild)
  // RüDT: -
  // Name: addNewCanColor

  void addNewcanColor(
    String color,
    String text,
    String picture,
  );

  // erledigt hier werden neue News hmit Parametern definiert. Die Methode wird in der Mock Databes überschrieben . Ist getestet
  /// übergibt eine Neue News
  // Eingabe: Nachricht mit Titel Datum  Text und Bild
  // Rückgabe: -
  // EinDT: String String String(später Datentyp für Bild)
  // RüDT: -
  // Name: addNewNews

  void addNewNews(
    String newstitle,
    String newsdate,
    String newstext,
    String newspicture,
  );

  void getallGarbageCancolorInformation(
    String color,
    String text,
    String picture,
  );

// Delete löscht einzelne Einträge

  List<News> getAllNews();

  List<Cancolor> getAllcans();

  void removeTrashInformation(
    String color,
    String text,
    String picture,
  );

  List<Trashabc> getAllTrashInformation();

  /// übergibt Benutzername un d Passwort und vergleicht diese mit der in der Liste enthaletenen Werten
  // Eingabe: Benutzername und Passwort
  // Rückgabe: ein Boolscher Wert des Vergleichs erfolgreich wahr
  // EinDT: String String
  // RüDT: bool
  // Name: loggedincorrectly

  bool loggedincorrectly(String username, String userpassword);
}
