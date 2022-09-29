part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  factory QuestionState({
    required DifficultyType difficulty,
    required QuestionsCategory category,
    @Default([]) List<QuestionEntity> questions,
    @Default([]) List<String> answers,
    @Default(0) int amountWrongAnswer,
    @Default(0) int amountCorrectAnswer,
    @Default(0) int indexCurrentQuestion,
    @Default(0) int selectedAnswerIndex,
    @Default(false) bool buttonEnabled,
  }) = _QuestionState;
}
