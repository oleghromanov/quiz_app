import 'package:auto_route/auto_route.dart';
import 'package:quiz_app/presentation/screens/home/home_screen.dart';
import 'package:quiz_app/presentation/screens/question/question_screen.dart';
import 'package:quiz_app/presentation/screens/result/result_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: QuestionScreen),
    AutoRoute(page: ResultScreen),
  ],
)

class $AppRouter {}
