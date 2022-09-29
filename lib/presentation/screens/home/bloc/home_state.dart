part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(DifficultyType.none) DifficultyType difficulty,
    @Default(QuestionsCategory.none) QuestionsCategory category,
    @Default(false) bool buttonEnabled,
  }) = _HomeState;
}
