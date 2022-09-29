import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/di/injector.dart';
import 'package:quiz_app/domain/enums/difficulty_type.dart';
import 'package:quiz_app/domain/enums/questions_category.dart';
import 'package:quiz_app/presentation/navigation/app_router.gr.dart';
import 'package:quiz_app/presentation/widgets/default_button.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (context) => HomeBloc(),
        child: this,
      );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
          backgroundColor: const Color(0xFF3BDF55),
        ),
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCategory(),
          const SizedBox(height: 20),
          _buildDifficulty(),
          const Spacer(),
          _buildButton(),
        ],
      );

  Widget _buildCategory() => BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.category != current.category,
        builder: (context, state) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Category'),
            const SizedBox(width: 10),
            DropdownButton<QuestionsCategory>(
              value: state.category,
              items: QuestionsCategory.values
                  .map((item) => DropdownMenuItem<QuestionsCategory>(
                        value: item,
                        child: Text(item.getName()),
                      ))
                  .toList(),
              onChanged: (category) {
                if (category != null) {
                  context.read<HomeBloc>().add(HomeEvent.categoryChanged(category));
                }
              },
            ),
          ],
        ),
      );

  Widget _buildDifficulty() => BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.difficulty != current.difficulty,
        builder: (context, state) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Difficulty'),
            const SizedBox(width: 10),
            DropdownButton<DifficultyType>(
              value: state.difficulty,
              items: DifficultyType.values
                  .map((item) => DropdownMenuItem<DifficultyType>(
                        value: item,
                        child: Text(item.getName()),
                      ))
                  .toList(),
              onChanged: (difficulty) {
                if (difficulty != null) {
                  context.read<HomeBloc>().add(HomeEvent.difficultyChanged(difficulty));
                }
              },
            ),
          ],
        ),
      );

  Widget _buildButton() => BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.buttonEnabled != current.buttonEnabled,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
          child: DefaultButton(
            text: "Start",
            enabled: state.buttonEnabled,
            onPressed: () {
              AppRouter appRouter = injector();
              appRouter.push(
                QuestionScreen(
                  category: state.category,
                  difficulty: state.difficulty,
                ),
              );
            },
          ),
        ),
      );
}
