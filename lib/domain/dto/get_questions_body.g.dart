// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_questions_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetQuestionsBody _$GetQuestionsBodyFromJson(Map<String, dynamic> json) =>
    GetQuestionsBody(
      apiKey: json['apiKey'] as String,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$GetQuestionsBodyToJson(GetQuestionsBody instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'limit': instance.limit,
    };
