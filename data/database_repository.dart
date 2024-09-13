import '../classes/news.dart';
import '../classes/trashabc.dart';

abstract class DatabaseRepository {
// Create fügt neue Daten zum ABC hinzu

  void addNewTrashInformation(
    String color,
    String text,
    String Bild,
  );

  // erledigt hier werden neue News hmit Parametern definiert. Die Methode wird in der Mock Databes überschrieben . Ist getestet
  void addNewNews(
    String newstitle,
    String newsdate,
    String newstext,
    String newspicture,
  );
  void addNewCanColorInformation(
    String color,
    String Text,
    String Picture,
  );

  void getallGarbageCancolorInformation(
      String color, String text, String picture);

// Delete löscht einzelne Einträge

  List<News> getAllNews();

  void removeTrashInformation();
  List<Trashabc> getAllTrashInformation();
}
