
class SlideModel {
  String imageUrl;
  String title;
  String description;

  SlideModel({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

List<SlideModel> slideList = [
  SlideModel(
    imageUrl: 'assets/images/carousel1.png',
    title: 'Новини НАСОА',
    description:
        'Дізнавайся та ділись новинами про Національну академію статистики, обліку й аудиту',
  ),
  SlideModel(
    imageUrl: 'assets/images/carousel2.png',
    title: 'Розклад та успішність ',
    description:
        'Переглядай свої оцінки, контролюй успішність та користуйся швидким доступом до розкладу викладачів та будь-якої групи',
  ),
  SlideModel(
    imageUrl: 'assets/images/carousel3.png',
    title: 'Відповіді на найпоширеніші питання',
    description:
        'Знайдіть відповіді на усі питання щодо університету або задайте їх онлайн',
  )
];

/// Commit message test!