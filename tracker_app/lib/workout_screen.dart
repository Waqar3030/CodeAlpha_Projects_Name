import 'package:flutter/material.dart';
import 'package:tracker_app/progress.dart';
import 'package:tracker_app/workout_record.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  final List<String> exercises = ['Running', 'Cycling', 'Weight Lifting'];

  String selectedExercise = 'Running';
  int timerDuration = 0;
  bool isTimerRunning = false;
  int elapsedTimeInSeconds = 0;

  void startTimer(int durationInSeconds, BuildContext context) {
    setState(() {
      timerDuration = durationInSeconds;
      elapsedTimeInSeconds = 0;
      isTimerRunning = true;
    });

    // Start timer
    Future.delayed(Duration(seconds: 1), () {
      if (elapsedTimeInSeconds < timerDuration) {
        setState(() {
          elapsedTimeInSeconds++;
        });
        startTimer(durationInSeconds, context);
      } else {
        setState(() {
          isTimerRunning = false;
          
          final workoutRecord = WorkoutRecord(
            exercise: selectedExercise,
            duration: timerDuration,
            date: DateTime.now().toString(),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProgressScreen(
                workoutRecords: [workoutRecord],
              ),
            ),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Workout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Exercise',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButton<String>(
              value: selectedExercise,
              onChanged: (String? newValue) {
                setState(() {
                  selectedExercise = newValue!;
                });
              },
              items: exercises.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedExercise.isNotEmpty && !isTimerRunning) {
                  int durationInSeconds =
                      _getExerciseDuration(selectedExercise);
                  startTimer(durationInSeconds, context); // Pass context here
                }
              },
              child: Text('Start Exercise'),
            ),
            SizedBox(height: 20),
            if (isTimerRunning)
              Text(
                'Time Remaining: ${timerDuration - elapsedTimeInSeconds} seconds',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }

  int _getExerciseDuration(String exercise) {
    switch (exercise) {
      case 'Running':
        return 300; // 5 minutes in seconds
      case 'Cycling':
        return 600; // 10 minutes in seconds
      case 'Weight Lifting':
        return 180; // 3 minutes in seconds
      default:
        return 0;
    }
  }
}
