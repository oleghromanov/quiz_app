import 'package:json_annotation/json_annotation.dart';

part 'answers.g.dart';

@JsonSerializable()
class Answers {
  Answers ({
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.answerE,
    required this.answerF,
  });

  @JsonKey(name: 'answer_a')
  String answerA;
  @JsonKey(name: 'answer_b')
  String answerB;
  @JsonKey(name: 'answer_c')
  String? answerC;
  @JsonKey(name: 'answer_d')
  String? answerD;
  @JsonKey(name: 'answer_e')
  String? answerE;
  @JsonKey(name: 'answer_f')
  String? answerF;

  factory Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

  Map<String, dynamic> toJson() => _$AnswersToJson(this);
}