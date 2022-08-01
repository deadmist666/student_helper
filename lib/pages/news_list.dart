class NewsItem{
  String imageUrl;
  String newsTitle;
  String description;
  String author;
  String date;

  NewsItem({
    required this.imageUrl,
    required this.newsTitle,
    required this.description,
    required this.author,
    required this.date
  });


  // NewsItem(this.imageUrl, this.newsTitle, this.description, this.author, this.date);
}

List<NewsItem> newsList = [
  NewsItem(imageUrl: 'http://nasoa.edu.ua/wp-content/uploads/cache/images/2022/07/photo_2022-07-21_23-57-04/photo_2022-07-21_23-57-04-570237974.jpg', newsTitle: 'Вручення дипломів бакалаврів 2022!', description: '19 липня в Національній академії статистики, обліку та аудиту відбулася урочиста церемонія вручення дипломів випускникам-бакалаврам 2022 року!', author:'Олексій Ізосімов', date: '21.07')
  /// example
];