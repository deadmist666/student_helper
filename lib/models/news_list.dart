class NewsModel {
  String imageUrl;
  String newsTitle;
  String description;
  String author;
  String date;

  NewsModel({
      required this.imageUrl,
      required this.newsTitle,
      required this.description,
      required this.author,
      required this.date
  });
}

List<NewsModel> newsList = [
  NewsModel(
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/200131-D-RQ659-0001.JPG/640px-200131-D-RQ659-0001.JPG',
      newsTitle: 'Вручення дипломів бакалаврів 2022!',
      description:
          '19 липня в Національній академії статистики, обліку та аудиту відбулася урочиста церемонія вручення дипломів випускникам-бакалаврам 2022 року!',
      author: 'Олексій Ізосімов',
      date: '21.07'),

  NewsModel(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/200131-D-RQ659-0001.JPG/640px-200131-D-RQ659-0001.JPG',
      newsTitle: 'Test Title',
      description: 'Test Description',
      author: 'Test Author',
      date: 'Test Date'
  )
];
