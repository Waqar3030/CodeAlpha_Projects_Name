import 'package:flutter/material.dart';
import 'package:tracker_app/goals-page.dart';
import 'package:tracker_app/progress.dart';
import 'package:tracker_app/workout_record.dart';
import 'package:tracker_app/workout_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff62cff4),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to the Fitness Tracking App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WorkoutScreen(),
                    ),
                  );
                },
                child: Text('Start Workout'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoalsScreen(),
                    ),
                  );
                },
                child: Text('Set Goals'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProgressScreen(
                        workoutRecords: [
                          WorkoutRecord(
                            exercise: 'Running',
                            duration: 100,
                            date: '20-05-2024',
                          ),
                          WorkoutRecord(
                            exercise: 'Cycling',
                            duration: 600,
                            date: '23-03-2024',
                          ),
                          WorkoutRecord(
                            exercise: 'Weight Lifting',
                            duration: 180,
                            date: '26-04-2024',
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text('View Progress'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
