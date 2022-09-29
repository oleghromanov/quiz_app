import 'package:dio/dio.dart';
import 'package:quiz_app/domain/dto/question.dart';
import 'package:retrofit/retrofit.dart';

part 'questions_remote_source.g.dart';

@RestApi()
abstract class QuestionsRemoteSource {
  factory QuestionsRemoteSource({required Dio dio}) {
    final apiClient = _QuestionsRemoteSource(dio, baseUrl: "https://quizapi.io/api/v1");
    return apiClient;
  }

  @GET('/questions')
  Future<HttpResponse<List<Question>>> getQuestions({
    @Query("apiKey") required String apiKey,
    @Query("category") String? category,
    @Query("difficulty") String? difficulty,
    @Query("limit") int? limit,
  });

}
