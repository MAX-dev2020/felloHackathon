import 'package:get_it/get_it.dart';
import 'package:goal_based_savings_app/domain/usecases/get_active_goals_usecase.dart';
import 'package:goal_based_savings_app/presentation/viewmodels/active_goal_viewmodels.dart';
import 'package:http/http.dart' as http;
import 'package:goal_based_savings_app/data/networking/api_client.dart';
import 'package:goal_based_savings_app/data/repositories/goal_repository.dart';

final GetIt sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<http.Client>(() => http.Client());

  sl.registerLazySingleton<ApiClient>(
    () => ApiClient(httpClient: sl<http.Client>()),
  );

  sl.registerLazySingleton<GoalRepository>(
    () => GoalRepository(sl<ApiClient>()),
  );

  sl.registerFactory(
    () => GetGoalsUseCase(sl<GoalRepository>()),
  );

  sl.registerFactory(() => ActiveGoalsViewModel(sl<GetGoalsUseCase>()));
}
