class News {
  String newstitle;
  String newsdate;
  String newstext;
  String newspicture;

  News({
    required this.newstitle,
    required this.newsdate,
    required this.newstext,
    required this.newspicture,
  });

  void shownews() {
    print("Das sind die News vom $newsdate");
    print(newstitle);
    print(newstext);
    print(newspicture);
  }
}
