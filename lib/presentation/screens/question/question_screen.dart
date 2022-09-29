import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/di/injector.dart';
import 'package:quiz_app/domain/dto/result.dart';
import 'package:quiz_app/domain/entities/question_entity.dart';
import 'package:quiz_app/domain/enums/difficulty_type.dart';
import 'package:quiz_app/domain/enums/questions_category.dart';
import 'package:quiz_app/presentation/widgets/answer_options.dart';
import 'package:quiz_app/presentation/widgets/default_button.dart';

import 'bloc/question_bloc.dart';

class QuestionScreen extends StatefulWidget implements AutoRouteWrapper {
  const QuestionScreen({
    required this.category,
    required this.difficulty,
    super.key,
  });

  final QuestionsCategory category;
  final DifficultyType difficulty;

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (BuildContext context) => QuestionBloc(
          questionsRepository: injector(),
          category: category,
          difficulty: difficulty,
        ),
        child: this,
      );

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
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

  Widget _buildBody(BuildContext context) => BlocBuilder<QuestionBloc, QuestionState>(
        buildWhen: (previous, current) =>
            previous.questions != current.questions || previous.indexCurrentQuestion != current.indexCurrentQuestion,
        builder: (context, state) {
          if (state.questions.isNotEmpty) {
            QuestionEntity question = state.questions[state.indexCurrentQuestion];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildQuestion(question.question),
                const SizedBox(height: 50),
                Expanded(child: _buildAnswerOptions(question)),
                _buildButton(),
              ],
            );
          }
          return const SizedBox();
        },
      );

  Widget _buildQuestion(String question) => Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Text(question),
      );

  Widget _buildAnswerOptions(QuestionEntity question) => BlocBuilder<QuestionBloc, QuestionState>(
        buildWhen: (previous, current) =>
            previous.answers != current.answers || previous.selectedAnswerIndex != current.selectedAnswerIndex,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AnswerOptions(
            answers: state.answers,
            selectedIndex: state.selectedAnswerIndex,
            onPressed: (index) {
              context.read<QuestionBloc>().add(QuestionEvent.answerClicked(index));
            },
          ),
        ),
      );

  Widget _buildButton() => BlocBuilder<QuestionBloc, QuestionState>(
        buildWhen: (previous, current) =>
            previous.buttonEnabled != current.buttonEnabled ||
            previous.indexCurrentQuestion != current.indexCurrentQuestion,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
          child: DefaultButton(
            text: "Continue",
            enabled: state.buttonEnabled,
            onPressed: () {
              context.read<QuestionBloc>().add(const QuestionEvent.continueClicked());
            },
          ),
        ),
      );
}
