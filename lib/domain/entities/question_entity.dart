import 'package:quiz_app/domain/dto/answers.dart';
import 'package:quiz_app/domain/dto/correct_answers.dart';
import 'package:quiz_app/domain/dto/question.dart';
import 'package:quiz_app/domain/entities/answer_entity.dart';

class QuestionEntity {
  const QuestionEntity({
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

  final int id;
  final String question;
  final String description;
  final AnswersEntity answers;
  final String? multipleCorrectAnswers;
  final CorrectAnswers correctAnswers;
  final String? explanation;
  final String category;
  final String difficulty;

  factory QuestionEntity.fromResponse(Question response) => QuestionEntity(
        id: response.id,
        question: response.question,
        description: response.description ?? '',
        answers: AnswersEntity.fromResponse(response.answers),
        multipleCorrectAnswers: response.multipleCorrectAnswers,
        correctAnswers: response.correctAnswers,
        explanation: response.explanation,
        category: response.category,
        difficulty: response.difficulty,
      );
}
