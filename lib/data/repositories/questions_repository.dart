import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quiz_app/data/sources/remote/questions_remote_source.dart';
import 'package:quiz_app/domain/dto/get_questions_body.dart';
import 'package:quiz_app/domain/entities/question_entity.dart';

class QuestionsRepository {
  QuestionsRepository({
    required this.questionsRemoteSource,
  }) : super();

  QuestionsRemoteSource questionsRemoteSource;

  Future<Either<List<QuestionEntity>, String>> getQuestions({
     String? category,
     String? difficulty,
     int? limit,
  }) async {
    try {
      final result = await questionsRemoteSource.getQuestions(
        apiKey: 'j24WhINsXuMG7PszLmbkLHqRiXRoFnjRZrHxkwDa',
        category: category,
        difficulty: difficulty,
        limit: limit,
      );
      if (result.response.statusCode.toString().startsWith('2')) {
        return Left(
          result.data.map((question) => QuestionEntity.fromResponse(question)).toList(),
        );
      }
      return Right(result.response.statusMessage.toString());
    } catch (error) {
      print(error.toString());
      return Right(error.toString());
    }
  }
}
