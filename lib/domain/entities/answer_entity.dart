import 'package:quiz_app/domain/dto/answers.dart';

class AnswersEntity {
  const AnswersEntity({
    required this.answerA,
    required this.answerB,
    this.answerC,
    this.answerD,
    this.answerE,
    this.answerF,
  });

  final String answerA;
  final String answerB;
  final String? answerC;
  final String? answerD;
  final String? answerE;
  final String? answerF;

  factory AnswersEntity.fromResponse(Answers response) => AnswersEntity(
      answerA: response.answerA,
      answerB: response.answerB,
      answerC: response.answerC,
      answerD: response.answerD,
      answerE: response.answerE,
      answerF: response.answerF,
  );
}
