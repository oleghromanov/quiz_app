import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quiz_app/domain/dto/result.dart';
import 'package:quiz_app/presentation/resources/app_colors.dart';

import 'bloc/result_bloc.dart';

class ResultScreen extends StatefulWidget implements AutoRouteWrapper {
  const ResultScreen({
    required this.result,
    super.key,
  });

  final Result result;

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (BuildContext context) => ResultBloc(result: result),
        child: this,
      );

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Result'),
          backgroundColor: const Color(0xFF3BDF55),
        ),
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocBuilder<ResultBloc, ResultState>(
        buildWhen: (previous, current) => previous.result != current.result,
        builder: (context, state) => Column(
          children: [
            const SizedBox(height: 10),
            _buildDate(state.result.date),
            const SizedBox(height: 10),
            _buildScore(state.result.amountCorrectAnswers, state.result.amountWrongAnswers),
          ],
        ),
      );

  Widget _buildDate(DateTime date) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Time: "),
          const SizedBox(height: 10),
          Text(DateFormat.yMEd().add_jms().format(date)),
        ],
      );

  Widget _buildScore(int correct, int wrong) => Container(
        padding: const EdgeInsets.all(48),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.grey,
        ),
        child: Column(
          children: [
            const Text(
              "Score",
            ),
            const SizedBox(height: 20),
            Text(
              "$correct / ${wrong + correct} ",
            )
          ],
        ),
      );
}
