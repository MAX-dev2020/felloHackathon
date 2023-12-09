import 'package:flutter/material.dart';
import 'package:goal_based_savings_app/data/models/goal_model.dart';
import 'package:goal_based_savings_app/presentation/pages/widgets/goal_card.dart';
import 'package:goal_based_savings_app/presentation/viewmodels/active_goal_viewmodels.dart';
import 'package:provider/provider.dart';

class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Assuming you're fetching the ViewModel like this
    final viewModel = Provider.of<ActiveGoalsViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Goals'),
      ),
      body: FutureBuilder(
        future: viewModel.loadGoals(),
        builder: (context, snapshot) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (viewModel.errorMessage != null) {
            return Center(child: Text('Error: ${viewModel.errorMessage}'));
          }

          return buildGoalsList(viewModel.goals);
        },
      ),
    );
  }

  Widget buildGoalsList(List<GoalModel> goals) {
    // Convert each goal into a GoalCard
    List<Widget> goalCards = goals.map((goal) {
      return GoalCard(
        title: goal.title,
        currentSavings: goal.currentSavings,
        targetAmount: goal.targetAmount,
        progress: goal.progress,
        deadline: goal.deadline,
        nextMilestone: goal.nextMilestone,
        savingsPlan: goal.savingsPlan,
        image: goal.image, // Ensure the image asset exists
      );
    }).toList();

    return ListView(
      children: goalCards,
    );
  }
}
