class TaskModel {
  String discipline;
  String educator;
  String taskName;
  String deadline;
  String mark;
  String imageUrl;

  TaskModel(
      {required this.discipline,
      required this.educator,
      required this.taskName,
      required this.deadline,
      required this.mark,
      required this.imageUrl});
}

List<TaskModel> taskList = [
  TaskModel(
      discipline: 'Теорія Ймовірності',
      educator: 'Арнольдівна Ч.О',
      taskName: 'Виконати лабораторну роботу 4',
      deadline: '30 січня',
      mark: '',
  imageUrl: ''),
];
