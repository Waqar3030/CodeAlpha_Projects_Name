class Question {
  final String questionText;
  final List<Answer> answersList;

  Question({required this.questionText, required this.answersList});
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer({required this.answerText, required this.isCorrect});
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    questionText:
        'Who developed the Flutter Framework and continues to maintain it today?',
    answersList: [
      Answer(answerText: 'Google', isCorrect: true),
      Answer(answerText: 'Facebook', isCorrect: false),
      Answer(answerText: 'Oracle', isCorrect: false),
      Answer(answerText: 'Microsoft', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText:
        'Which programming language is used to build Flutter applications??',
    answersList: [
      Answer(answerText: 'Java', isCorrect: false),
      Answer(answerText: 'Kotlin', isCorrect: false),
      Answer(answerText: 'Dart', isCorrect: true),
      Answer(answerText: 'C#', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText: 'How many types of widgets are there in Flutter?',
    answersList: [
      Answer(answerText: 'Seven', isCorrect: false),
      Answer(answerText: 'Five', isCorrect: false),
      Answer(answerText: 'Four', isCorrect: false),
      Answer(answerText: 'Two', isCorrect: true),
    ],
  ));

  list.add(Question(
    questionText:
        'When building for iOS, Flutter is restricted to an compilation strategy?',
    answersList: [
      Answer(answerText: 'JIT (Just-in-time)', isCorrect: false),
      Answer(answerText: 'AOT (ahead-of-time)', isCorrect: true),
      Answer(answerText: 'Transcompilation', isCorrect: false),
      Answer(answerText: 'Recompilation', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText: 'A sequence of asynchronous Flutter events is known as a',
    answersList: [
      Answer(answerText: 'Flow', isCorrect: false),
      Answer(answerText: 'Stream', isCorrect: true),
      Answer(answerText: 'Current', isCorrect: false),
      Answer(answerText: 'Series', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText:
        'Access to a cloud database through Flutter is available through which service?',
    answersList: [
      Answer(answerText: 'SQLite', isCorrect: false),
      Answer(answerText: 'NOSQL', isCorrect: false),
      Answer(answerText: 'Firebase Database', isCorrect: true),
      Answer(answerText: 'MYSQL', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText:
        'What element is used as an identifier for components when programming in Flutter?',
    answersList: [
      Answer(answerText: 'Keys', isCorrect: true),
      Answer(answerText: 'Widgets', isCorrect: false),
      Answer(answerText: 'Elements', isCorrect: false),
      Answer(answerText: 'Serial', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText:
        'What type of test can examine your code as a complete system?',
    answersList: [
      Answer(answerText: 'Unit Tests', isCorrect: false),
      Answer(answerText: 'Widget Tests', isCorrect: false),
      Answer(answerText: 'Integration Tests', isCorrect: true),
      Answer(answerText: 'All of above', isCorrect: false),
    ],
  ));
  list.add(Question(
    questionText:
        'What type of Flutter animation allows you to represent real-world behavior?',
    answersList: [
      Answer(answerText: 'Maths-based', isCorrect: false),
      Answer(answerText: 'Physics-based', isCorrect: true),
      Answer(answerText: 'Graph-based', isCorrect: false),
      Answer(answerText: 'Sim-based', isCorrect: false),
    ],
  ));

  list.add(Question(
    questionText:
        'What command would you use to compile your Flutter app in release mode?',
    answersList: [
      Answer(answerText: 'Flutter --release', isCorrect: false),
      Answer(answerText: 'Flutter build --release', isCorrect: false),
      Answer(answerText: 'Flutter run --release', isCorrect: true),
      Answer(answerText: 'Flutter run release', isCorrect: false),
    ],
  ));

  return list;
}
