class MyNotification {
  final String title;
  final String body;
  final String? link; // Make link nullable by adding `?`
  final String image;

  MyNotification({
    required this.title,
    required this.body,
    this.link,
    this.image = '',
    // Provide a default value for image to avoid null
  }); // Add an assertion

  // Các phương thức hoặc thuộc tính khác nếu cần
}

class ExamNotification extends MyNotification {
  ExamNotification({
    required String title,
    required String body,
  }) : super(title: title, body: body);
}

class ExamNotification2 extends MyNotification {
  ExamNotification2({
    required String title,
    required String body,
  }) : super(title: title, body: body);
}

class CongratulationNotification extends MyNotification {
  int score;

  CongratulationNotification({
    required String title,
    required String body,
    required this.score,
  }) : super(title: title, body: body);
}

class CongratulationNotification2 extends MyNotification {
  CongratulationNotification2({
    required String title,
    required String body,
  }) : super(title: title, body: body);
}

class RememberExam extends MyNotification {
  RememberExam({
    required String title,
    required String body,
  }) : super(title: title, body: body);
}

class RememberExam2 extends MyNotification {
  RememberExam2({
    required String title,
    required String body,
  }) : super(title: title, body: body);
}
