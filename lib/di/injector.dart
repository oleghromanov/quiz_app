import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data/repositories/questions_repository.dart';
import 'package:quiz_app/data/sources/remote/questions_remote_source.dart';
import 'package:quiz_app/presentation/navigation/app_router.gr.dart';

final GetIt injector = GetIt.I;
final Dio _dio = Dio()..options.headers = {"Accept" :"application/json"};

Future<void> initLocatorWithNavigatorKey() async {
  injector.registerSingleton<Dio>(_dio);

  injector.registerSingleton<AppRouter>(AppRouter());
  injector.registerLazySingleton<QuestionsRemoteSource>(() => QuestionsRemoteSource(dio: injector()));
  injector.registerLazySingleton<QuestionsRepository>(() => QuestionsRepository(questionsRemoteSource: injector()));
}
