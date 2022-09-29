import 'package:json_annotation/json_annotation.dart';

part 'correct_answers.g.dart';

@JsonSerializable()
class CorrectAnswers {
  CorrectAnswers ({
    required this.correctAnswerA,
    required this.correctAnswerB,
    required this.correctAnswerC,
    required this.correctAnswerD,
    required this.correctAnswerE,
    required this.correctAnswerF,
  });

  @JsonKey(name: 'answer_a_correct')
  String correctAnswerA;
  @JsonKey(name: 'answer_b_correct')
  String correctAnswerB;
  @JsonKey(name: 'answer_c_correct')
  String correctAnswerC;
  @JsonKey(name: 'answer_d_correct')
  String correctAnswerD;
  @JsonKey(name: 'answer_e_correct')
  String correctAnswerE;
  @JsonKey(name: 'answer_f_correct')
  String correctAnswerF;

  factory CorrectAnswers.fromJson(Map<String, dynamic> json) => _$CorrectAnswersFromJson(json);

  Map<String, dynamic> toJson() => _$CorrectAnswersToJson(this);
}