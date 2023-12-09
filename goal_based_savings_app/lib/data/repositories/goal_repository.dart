import 'dart:convert';

import 'package:goal_based_savings_app/data/models/goal_model.dart';
import 'package:goal_based_savings_app/data/networking/api_client.dart';

class GoalRepository {
  final ApiClient apiClient;

  GoalRepository(this.apiClient);

  Future<List<GoalModel>> getGoals() async {
    final data = await apiClient.get('/active_goals');
    var parsed = json.decode(data).cast<List<Map<String, dynamic>>>();
    return parsed.map((jsonItem) => GoalModel.fromJson(jsonItem)).toList();
  }
}
