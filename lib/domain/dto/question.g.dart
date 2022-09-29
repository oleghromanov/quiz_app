// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: json['id'] as int,
      question: json['question'] as String,
      description: json['description'] as String?,
      answers: Answers.fromJson(json['answers'] as Map<String, dynamic>),
      multipleCorrectAnswers: json['multiple_correct_answers'] as String?,
      correctAnswers: CorrectAnswers.fromJson(
          json['correct_answers'] as Map<String, dynamic>),
      explanation: json['explanation'] as String?,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'description': instance.description,
      'answers': instance.answers,
      'multiple_correct_answers': instance.multipleCorrectAnswers,
      'correct_answers': instance.correctAnswers,
      'explanation': instance.explanation,
      'category': instance.category,
      'difficulty': instance.difficulty,
    };
