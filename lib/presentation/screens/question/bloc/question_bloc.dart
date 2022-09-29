import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app/data/repositories/questions_repository.dart';
import 'package:quiz_app/di/injector.dart';
import 'package:quiz_app/domain/dto/correct_answers.dart';
import 'package:quiz_app/domain/dto/result.dart';
import 'package:quiz_app/domain/entities/question_entity.dart';
import 'package:quiz_app/domain/enums/difficulty_type.dart';
import 'package:quiz_app/domain/enums/questions_category.dart';
import 'package:quiz_app/presentation/navigation/app_router.gr.dart';

part 'question_state.dart';

part 'question_event.dart';

part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc({
    required DifficultyType difficulty,
    required QuestionsCategory category,
    required this.questionsRepository,
  }) : super(QuestionState(
          difficulty: difficulty,
          category: category,
        )) {
    on<Init>(_init);
    on<AnswerClicked>(_answerClicked);
    on<ContinueClicked>(_continueClicked);
    add(const Init());
  }

  QuestionsRepository questionsRepository;

  FutureOr<void> _init(Init event, Emitter<QuestionState> emit) async {
    List<QuestionEntity>? questions;
    String? error;

    final data = await questionsRepository.getQuestions(
      category: state.category.getName(),
      difficulty: state.difficulty.name,
      limit: 3,
    );
    data.fold(
      (data) => questions = data,
      (failure) => error = failure,
    );

    if (questions != null && questions!.isNotEmpty) {
      emit(state.copyWith(questions: questions!));
      QuestionEntity question = questions![0];
      List<String> answers = [question.answers.answerA, question.answers.answerB];
      if (question.answers.answerC != null) answers.add(question.answers.answerC!);
      if (question.answers.answerD != null) answers.add(question.answers.answerD!);
      if (question.answers.answerE != null) answers.add(question.answers.answerE!);
      if (question.answers.answerF != null) answers.add(question.answers.answerF!);
      emit(state.copyWith(answers: answers));
      emit(state.copyWith(buttonEnabled: true));
    }
  }

  FutureOr<void> _answerClicked(AnswerClicked event, Emitter<QuestionState> emit) {
    emit(state.copyWith(selectedAnswerIndex: event.answerIndex));
  }

  FutureOr<void> _continueClicked(ContinueClicked event, Emitter<QuestionState> emit) {
    CorrectAnswers correctAnswers = state.questions[state.indexCurrentQuestion].correctAnswers;
    List<String> correctList = [
      correctAnswers.correctAnswerA,
      correctAnswers.correctAnswerB,
      correctAnswers.correctAnswerC,
      correctAnswers.correctAnswerD,
      correctAnswers.correctAnswerE,
      correctAnswers.correctAnswerF
    ];
    if (correctList[state.selectedAnswerIndex] == 'true') {
      emit(state.copyWith(amountCorrectAnswer: state.amountCorrectAnswer + 1));
    } else {
      emit(state.copyWith(amountWrongAnswer: state.amountWrongAnswer + 1));
    }

    if (state.indexCurrentQuestion < state.questions.length - 1) {
      int indexCurrentQuestion = state.indexCurrentQuestion + 1;
      QuestionEntity question = state.questions[indexCurrentQuestion];
      List<String> answers = [question.answers.answerA, question.answers.answerB];
      if (question.answers.answerC != null) answers.add(question.answers.answerC!);
      if (question.answers.answerD != null) answers.add(question.answers.answerD!);
      if (question.answers.answerE != null) answers.add(question.answers.answerE!);
      if (question.answers.answerF != null) answers.add(question.answers.answerF!);
      emit(state.copyWith(answers: answers));
      emit(state.copyWith(selectedAnswerIndex: 0));
      emit(state.copyWith(indexCurrentQuestion: indexCurrentQuestion));
    } else {
      AppRouter appRouter = injector();
      appRouter.replace(ResultScreen(
        result: Result(
          id: Random().nextInt(2000),
          category: state.category.getName(),
          difficulty: state.difficulty.getName(),
          date: DateTime.now(),
          amountCorrectAnswers: state.amountCorrectAnswer,
          amountWrongAnswers: state.amountWrongAnswer,
        ),
      ));
    }
  }
}
