import 'package:flutter/material.dart';
import 'package:tracker_app/workout_record.dart'; // Import WorkoutRecord

class ProgressScreen extends StatelessWidget {
  final List<WorkoutRecord> workoutRecords;

  const ProgressScreen({Key? key, required this.workoutRecords})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Progress'),
      ),
      body: ListView.builder(
        itemCount: workoutRecords.length,
        itemBuilder: (context, index) {
          final record = workoutRecords[index];
          return ListTile(
            title: Text('Exercise: ${record.exercise}'),
            subtitle: Text('Duration: ${record.duration} seconds'),
            trailing: Text('Date: ${record.date}'),
          );
        },
      ),
    );
  }
}
