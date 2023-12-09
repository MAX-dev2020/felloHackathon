import 'dart:convert';

import 'package:goal_based_savings_app/data/models/goal_model.dart';
import 'package:goal_based_savings_app/data/networking/api_client.dart';

class GoalRepository {
  final ApiClient apiClient;

  GoalRepository(this.apiClient);

  Future<List<GoalModel>> getGoals() async {
    final response = await apiClient.get('/active_goals');

    // Decode the JSON response
    final decodedResponse = json.decode(response);

    if (decodedResponse is List) {
      print("decodeResponse as List $decodedResponse");
      return decodedResponse
          .map((jsonItem) =>
              GoalModel.fromJson(jsonItem as Map<String, dynamic>))
          .toList();
    }
    if (decodedResponse is Map) {
      var goalsMap = decodedResponse as Map<String, dynamic>;
      if (goalsMap.containsKey('activeGoals')) {
        List<dynamic> goalsList = goalsMap['activeGoals'];
        return goalsList
            .map((jsonItem) =>
                GoalModel.fromJson(jsonItem as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Key "activeGoals" not found in response');
      }
    } else {
      throw Exception('Unexpected JSON format');
    }
  }

  Future<List<GoalModel>> smallGoals() async {
    final response = await apiClient.get('/active_goals');

    // Decode the JSON response
    final decodedResponse = json.decode(response);

    if (decodedResponse is List) {
      print("decodeResponse as List $decodedResponse");
      return decodedResponse
          .map((jsonItem) =>
              GoalModel.fromJson(jsonItem as Map<String, dynamic>))
          .toList();
    }
    if (decodedResponse is Map) {
      var goalsMap = decodedResponse as Map<String, dynamic>;
      if (goalsMap.containsKey('smallGoals')) {
        List<dynamic> goalsList = goalsMap['smallGoals'];
        return goalsList
            .map((jsonItem) =>
                GoalModel.fromJson(jsonItem as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Key "activeGoals" not found in response');
      }
    } else {
      throw Exception('Unexpected JSON format');
    }
  }

  Future<List<GoalModel>> shortTermGoals() async {
    final response = await apiClient.get('/active_goals');

    // Decode the JSON response
    final decodedResponse = json.decode(response);

    if (decodedResponse is List) {
      print("decodeResponse as List $decodedResponse");
      return decodedResponse
          .map((jsonItem) =>
              GoalModel.fromJson(jsonItem as Map<String, dynamic>))
          .toList();
    }
    if (decodedResponse is Map) {
      var goalsMap = decodedResponse as Map<String, dynamic>;
      if (goalsMap.containsKey('shortTermGoals')) {
        List<dynamic> goalsList = goalsMap['shortTermGoals'];
        return goalsList
            .map((jsonItem) =>
                GoalModel.fromJson(jsonItem as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Key "activeGoals" not found in response');
      }
    } else {
      throw Exception('Unexpected JSON format');
    }
  }

  Future<List<GoalModel>> longTermGoals() async {
    final response = await apiClient.get('/active_goals');

    // Decode the JSON response
    final decodedResponse = json.decode(response);

    if (decodedResponse is List) {
      print("decodeResponse as List $decodedResponse");
      return decodedResponse
          .map((jsonItem) =>
              GoalModel.fromJson(jsonItem as Map<String, dynamic>))
          .toList();
    }
    if (decodedResponse is Map) {
      var goalsMap = decodedResponse as Map<String, dynamic>;
      if (goalsMap.containsKey('longTermGoals')) {
        List<dynamic> goalsList = goalsMap['longTermGoals'];
        return goalsList
            .map((jsonItem) =>
                GoalModel.fromJson(jsonItem as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Key "activeGoals" not found in response');
      }
    } else {
      throw Exception('Unexpected JSON format');
    }
  }
}
