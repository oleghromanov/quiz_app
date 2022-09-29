import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app/domain/dto/result.dart';

part 'result_state.dart';

part 'result_event.dart';

part 'result_bloc.freezed.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc({required Result result}) : super(ResultState(result: result)) {
    on<Init>(_init);
    add(const Init());
  }

  FutureOr<void> _init(Init event, Emitter<ResultState> emit) {
    final resultBase = FirebaseFirestore.instance
        .collection('results')
        .withConverter<Result>(
      fromFirestore: (snapshots, _) => Result.fromJson(snapshots.data()!),
      toFirestore: (result, _) => result.toJson(),
    );
    resultBase.add(state.result);
  }

}
