import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff004643),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text(
              "Let's start Quiz",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffede7f6)),
            ),
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: const Color(0xffEEEFF2),
              ),
            ),
            child: const TextField(
              style: TextStyle(fontSize: 25, color: Color(0xffEEEFF2)),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter your name',
                filled: true,
                hintStyle: TextStyle(fontSize: 15, color: Color(0xffE9EAED)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizScreen()));
            },
            child: Container(
              height: 59,
              width: 383,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffF8C660),
              ),
              child: const Center(
                child: Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Color(0xffFFFFFF)),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
