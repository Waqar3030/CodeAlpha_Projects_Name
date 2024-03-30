import 'package:flutter/material.dart';
import 'package:quiz_app/question_model.dart';

class AddQuestionScreen extends StatefulWidget {
  // Callback function
  final Function(Question) onQuestionAdded;

  const AddQuestionScreen({Key? key, required this.onQuestionAdded})
      : super(key: key);

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final TextEditingController questionController = TextEditingController();
  final List<TextEditingController> answerControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF0F3),
      appBar: AppBar(
        backgroundColor: Color(0xff004643),
        centerTitle: true,
        title: Text('Add Question'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: questionController,
              decoration: InputDecoration(labelText: 'Question'),
            ),
            SizedBox(height: 20),
            for (int i = 0; i < 4; i++)
              TextFormField(
                controller: answerControllers[i],
                decoration: InputDecoration(labelText: 'Answer ${i + 1}'),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Color(0xff004643),
              )),
              onPressed: () {
                List<Answer> answers = [];
                for (int i = 0; i < 4; i++) {
                  answers.add(
                    Answer(
                      answerText: answerControllers[i].text,
                      
                      isCorrect: i == 0, 
                      // Assuming first answer is correct
                    ),
                  );
                }
                // Create a new Question object
                Question newQuestion = Question(
                    questionText: questionController.text,
                    answersList: answers);
                // Call the callback function to pass the new question
                widget.onQuestionAdded(newQuestion);
                Navigator.pop(context);
                 // Go back to the previous screen
              },
              child: Text('Add Question'),
            ),
          ],
        ),
      ),
    );
  }
}
