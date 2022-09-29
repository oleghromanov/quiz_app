import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  Result ({
    required this.id,
    required this.date,
    required this.amountCorrectAnswers,
    required this.amountWrongAnswers,
    required this.category,
    required this.difficulty,
  });

  int id;
  DateTime date;
  int amountCorrectAnswers;
  int amountWrongAnswers;
  String category;
  String difficulty;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}