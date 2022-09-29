import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/di/injector.dart';
import 'package:quiz_app/presentation/navigation/app_router.gr.dart';
import 'package:quiz_app/presentation/resources/app_colors.dart';

class Application extends StatelessWidget {
  final AppRouter _appRouter = injector();

  Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
        primaryColor: AppColors.accent,
      ),
    );
  }
}
