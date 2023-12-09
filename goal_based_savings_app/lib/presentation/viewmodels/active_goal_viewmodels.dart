// Example of using it in a ViewModel or Bloc
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:goal_based_savings_app/data/models/goal_model.dart';
import 'package:goal_based_savings_app/domain/usecases/get_active_goals_usecase.dart';

class ActiveGoalsViewModel extends ChangeNotifier {
  final GetGoalsUseCase _getGoalsUseCase;
  List<GoalModel> goals = [];
  bool isLoading = false;
  String? errorMessage;

  ActiveGoalsViewModel(this._getGoalsUseCase);

  Future<List<GoalModel>> loadGoals() async {
    isLoading = true;
    notifyListeners();
    try {
      goals = await _getGoalsUseCase.call();
    } catch (error) {
      errorMessage = error.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
    return goals; // Return the goals list
  }
}
