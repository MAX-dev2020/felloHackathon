import 'package:goal_based_savings_app/data/models/goal_model.dart';
import 'package:goal_based_savings_app/data/repositories/goal_repository.dart';

class GetGoalsUseCase {
  final GoalRepository repository;

  GetGoalsUseCase(this.repository);

  Future<List<GoalModel>> call() async {
    return repository.getGoals();
  }
}
