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
  void addNewcanColor(
    String color,
    String text,
    String picture,
  );

  // erledigt hier werden neue News hmit Parametern definiert. Die Methode wird in der Mock Databes überschrieben . Ist getestet
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
}
