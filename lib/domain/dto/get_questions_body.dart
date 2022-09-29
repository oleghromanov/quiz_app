import 'package:json_annotation/json_annotation.dart';

part 'get_questions_body.g.dart';

@JsonSerializable()
class GetQuestionsBody {
  GetQuestionsBody ({
    required this.apiKey,
    required this.category,
    required this.difficulty,
    required this.limit,
  });

  String apiKey;
  String category;
  String difficulty;
  int limit;

  factory GetQuestionsBody.fromJson(Map<String, dynamic> json) => _$GetQuestionsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetQuestionsBodyToJson(this);
}