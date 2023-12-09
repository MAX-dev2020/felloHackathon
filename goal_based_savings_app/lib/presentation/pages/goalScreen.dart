import 'package:flutter/material.dart';
import 'package:goal_based_savings_app/core/injection_cotainer.dart';
import 'package:goal_based_savings_app/data/repositories/goal_repository.dart';
import 'package:provider/provider.dart';
import 'package:goal_based_savings_app/data/models/goal_model.dart';
import 'package:goal_based_savings_app/presentation/pages/widgets/goal_card.dart';
import 'package:goal_based_savings_app/presentation/viewmodels/active_goal_viewmodels.dart';

class GoalsScreen extends StatefulWidget {
  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  late Future loadGoalsFuture;

  @override
  void initState() {
    super.initState();
    final viewModel = sl<ActiveGoalsViewModel>();
    loadGoalsFuture = viewModel.loadGoals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Goals'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: loadGoalsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  print("waiting");
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  print("error ${snapshot.error}");
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  List<GoalModel> goals = snapshot.data!;
                  print("$goals sds");
                  return buildGoalsList(goals);
                }
                return const Center(child: Text("No data available"));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGoalsList(List<GoalModel> goals) {
    return ListView.builder(
      itemCount: goals.length,
      itemBuilder: (context, index) {
        final goal = goals[index];
        return GoalCard(
          title: goal.title,
          currentSavings: goal.currentSavings,
          targetAmount: goal.targetAmount,
          progress: goal.progress,
          deadline: goal.deadline,
          nextMilestone: goal.nextMilestone,
          savingsPlan: goal.savingsPlan,
          image: goal.image,
        );
      },
    );
  }
}
