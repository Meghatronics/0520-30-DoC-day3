class News {
  News({this.headline, this.body, this.publishDate, this.source});

  String headline;
  String body;
  DateTime publishDate;
  String source;
}

List<News> newsList = [
  News(
    headline: 'THE HEADLINE OF THE NEWS',
    body:
        'Lorem ipsum tu continum the way you francaise de je suis ne parle pas tu et vu d abcd efgh ijkl mnop qrst uvwx yz okay now. Okay, not okay. this news must be long seh. I must witness my text overflow property working properly. You feel am?!',
    publishDate: DateTime.now(),
    source: 'Lorem Ipsum',
  )
];
