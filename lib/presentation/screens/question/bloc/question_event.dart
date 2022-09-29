part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.init() = Init;
  const factory QuestionEvent.answerClicked(int answerIndex) = AnswerClicked;
  const factory QuestionEvent.continueClicked() = ContinueClicked;
}