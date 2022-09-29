// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      amountCorrectAnswers: json['amountCorrectAnswers'] as int,
      amountWrongAnswers: json['amountWrongAnswers'] as int,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'amountCorrectAnswers': instance.amountCorrectAnswers,
      'amountWrongAnswers': instance.amountWrongAnswers,
      'category': instance.category,
      'difficulty': instance.difficulty,
    };
