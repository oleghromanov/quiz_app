import 'package:json_annotation/json_annotation.dart';
import 'package:quiz_app/domain/dto/answers.dart';
import 'package:quiz_app/domain/dto/correct_answers.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  Question ({
    required this.id,
    required this.question,
    required this.description,
    required this.answers,
    required this.multipleCorrectAnswers,
    required this.correctAnswers,
    required this.explanation,
    required this.category,
    required this.difficulty,
  });

  int id;
  String question;
  String? description;
  Answers answers;
  @JsonKey(name: 'multiple_correct_answers')
  String? multipleCorrectAnswers;
  @JsonKey(name: 'correct_answers')
  CorrectAnswers correctAnswers;
  String? explanation;
  String category;
  String difficulty;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}