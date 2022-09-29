part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;
  const factory HomeEvent.categoryChanged(QuestionsCategory category) = CategoryChanged;
  const factory HomeEvent.difficultyChanged(DifficultyType difficulty) = DifficultyChanged;
}