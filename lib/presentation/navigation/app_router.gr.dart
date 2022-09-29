// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i5;

import '../../domain/dto/result.dart' as _i9;
import '../../domain/enums/difficulty_type.dart' as _i7;
import '../../domain/enums/questions_category.dart' as _i6;
import '../screens/home/home_screen.dart' as _i1;
import '../screens/question/question_screen.dart' as _i2;
import '../screens/result/result_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.WrappedRoute(child: const _i1.HomeScreen()));
    },
    QuestionScreen.name: (routeData) {
      final args = routeData.argsAs<QuestionScreenArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.WrappedRoute(
              child: _i2.QuestionScreen(
                  category: args.category,
                  difficulty: args.difficulty,
                  key: args.key)));
    },
    ResultScreen.name: (routeData) {
      final args = routeData.argsAs<ResultScreenArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.WrappedRoute(
              child: _i3.ResultScreen(result: args.result, key: args.key)));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeScreen.name, path: '/'),
        _i4.RouteConfig(QuestionScreen.name, path: '/question-screen'),
        _i4.RouteConfig(ResultScreen.name, path: '/result-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i4.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.QuestionScreen]
class QuestionScreen extends _i4.PageRouteInfo<QuestionScreenArgs> {
  QuestionScreen(
      {required _i6.QuestionsCategory category,
      required _i7.DifficultyType difficulty,
      _i8.Key? key})
      : super(QuestionScreen.name,
            path: '/question-screen',
            args: QuestionScreenArgs(
                category: category, difficulty: difficulty, key: key));

  static const String name = 'QuestionScreen';
}

class QuestionScreenArgs {
  const QuestionScreenArgs(
      {required this.category, required this.difficulty, this.key});

  final _i6.QuestionsCategory category;

  final _i7.DifficultyType difficulty;

  final _i8.Key? key;

  @override
  String toString() {
    return 'QuestionScreenArgs{category: $category, difficulty: $difficulty, key: $key}';
  }
}

/// generated route for
/// [_i3.ResultScreen]
class ResultScreen extends _i4.PageRouteInfo<ResultScreenArgs> {
  ResultScreen({required _i9.Result result, _i8.Key? key})
      : super(ResultScreen.name,
            path: '/result-screen',
            args: ResultScreenArgs(result: result, key: key));

  static const String name = 'ResultScreen';
}

class ResultScreenArgs {
  const ResultScreenArgs({required this.result, this.key});

  final _i9.Result result;

  final _i8.Key? key;

  @override
  String toString() {
    return 'ResultScreenArgs{result: $result, key: $key}';
  }
}
