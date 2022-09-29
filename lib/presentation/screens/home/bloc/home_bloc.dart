import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app/di/injector.dart';
import 'package:quiz_app/domain/enums/difficulty_type.dart';
import 'package:quiz_app/domain/enums/questions_category.dart';

part 'home_state.dart';

part 'home_event.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<Init>(_init);
    on<CategoryChanged>(_categoryChanged);
    on<DifficultyChanged>(_difficultyChanged);
  }

  FutureOr<void> _init(Init event, Emitter<HomeState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _categoryChanged(CategoryChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(category: event.category));
    emit(state.copyWith( buttonEnabled: state.difficulty != DifficultyType.none
        && event.category != QuestionsCategory.none));
  }

  FutureOr<void> _difficultyChanged(DifficultyChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(difficulty: event.difficulty, buttonEnabled: event.difficulty != DifficultyType.none
        && state.category != QuestionsCategory.none));
  }

}
