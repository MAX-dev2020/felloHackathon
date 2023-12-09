import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final double currentSavings;
  final double targetAmount;
  final double progress;
  final String deadline;
  final double nextMilestone;
  final String savingsPlan;
  final String image;

  const GoalCard({
    Key? key,
    required this.title,
    required this.currentSavings,
    required this.targetAmount,
    required this.progress,
    required this.deadline,
    required this.nextMilestone,
    required this.savingsPlan,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Saved: \$${currentSavings.toStringAsFixed(2)}"),
                Text("Goal: \$${targetAmount.toStringAsFixed(2)}"),
              ],
            ),
            SizedBox(height: 8.0),
            LinearProgressIndicator(value: progress),
            SizedBox(height: 8.0),
            Text("Deadline: $deadline"),
            SizedBox(height: 8.0),
            Text("Next Milestone: \$${nextMilestone.toStringAsFixed(2)}"),
            SizedBox(height: 8.0),
            Text("Plan: $savingsPlan"),
            SizedBox(height: 8.0),
            Image.asset(image),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Handle edit goal
              },
              child: Text('Edit Goal'),
            ),
          ],
        ),
      ),
    );
  }
}
