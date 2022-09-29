// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  DifficultyType get difficulty => throw _privateConstructorUsedError;
  QuestionsCategory get category => throw _privateConstructorUsedError;
  bool get buttonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {DifficultyType difficulty,
      QuestionsCategory category,
      bool buttonEnabled});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? difficulty = freezed,
    Object? category = freezed,
    Object? buttonEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyType,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as QuestionsCategory,
      buttonEnabled: buttonEnabled == freezed
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DifficultyType difficulty,
      QuestionsCategory category,
      bool buttonEnabled});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? difficulty = freezed,
    Object? category = freezed,
    Object? buttonEnabled = freezed,
  }) {
    return _then(_$_HomeState(
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyType,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as QuestionsCategory,
      buttonEnabled: buttonEnabled == freezed
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {this.difficulty = DifficultyType.none,
      this.category = QuestionsCategory.none,
      this.buttonEnabled = false});

  @override
  @JsonKey()
  final DifficultyType difficulty;
  @override
  @JsonKey()
  final QuestionsCategory category;
  @override
  @JsonKey()
  final bool buttonEnabled;

  @override
  String toString() {
    return 'HomeState(difficulty: $difficulty, category: $category, buttonEnabled: $buttonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.buttonEnabled, buttonEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(buttonEnabled));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final DifficultyType difficulty,
      final QuestionsCategory category,
      final bool buttonEnabled}) = _$_HomeState;

  @override
  DifficultyType get difficulty;
  @override
  QuestionsCategory get category;
  @override
  bool get buttonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(QuestionsCategory category) categoryChanged,
    required TResult Function(DifficultyType difficulty) difficultyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, (v) => _then(v as _$Init));

  @override
  _$Init get _value => super._value as _$Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(QuestionsCategory category) categoryChanged,
    required TResult Function(DifficultyType difficulty) difficultyChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements HomeEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$CategoryChangedCopyWith<$Res> {
  factory _$$CategoryChangedCopyWith(
          _$CategoryChanged value, $Res Function(_$CategoryChanged) then) =
      __$$CategoryChangedCopyWithImpl<$Res>;
  $Res call({QuestionsCategory category});
}

/// @nodoc
class __$$CategoryChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$CategoryChangedCopyWith<$Res> {
  __$$CategoryChangedCopyWithImpl(
      _$CategoryChanged _value, $Res Function(_$CategoryChanged) _then)
      : super(_value, (v) => _then(v as _$CategoryChanged));

  @override
  _$CategoryChanged get _value => super._value as _$CategoryChanged;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$CategoryChanged(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as QuestionsCategory,
    ));
  }
}

/// @nodoc

class _$CategoryChanged implements CategoryChanged {
  const _$CategoryChanged(this.category);

  @override
  final QuestionsCategory category;

  @override
  String toString() {
    return 'HomeEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChanged &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$CategoryChangedCopyWith<_$CategoryChanged> get copyWith =>
      __$$CategoryChangedCopyWithImpl<_$CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(QuestionsCategory category) categoryChanged,
    required TResult Function(DifficultyType difficulty) difficultyChanged,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements HomeEvent {
  const factory CategoryChanged(final QuestionsCategory category) =
      _$CategoryChanged;

  QuestionsCategory get category;
  @JsonKey(ignore: true)
  _$$CategoryChangedCopyWith<_$CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DifficultyChangedCopyWith<$Res> {
  factory _$$DifficultyChangedCopyWith(
          _$DifficultyChanged value, $Res Function(_$DifficultyChanged) then) =
      __$$DifficultyChangedCopyWithImpl<$Res>;
  $Res call({DifficultyType difficulty});
}

/// @nodoc
class __$$DifficultyChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$DifficultyChangedCopyWith<$Res> {
  __$$DifficultyChangedCopyWithImpl(
      _$DifficultyChanged _value, $Res Function(_$DifficultyChanged) _then)
      : super(_value, (v) => _then(v as _$DifficultyChanged));

  @override
  _$DifficultyChanged get _value => super._value as _$DifficultyChanged;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(_$DifficultyChanged(
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyType,
    ));
  }
}

/// @nodoc

class _$DifficultyChanged implements DifficultyChanged {
  const _$DifficultyChanged(this.difficulty);

  @override
  final DifficultyType difficulty;

  @override
  String toString() {
    return 'HomeEvent.difficultyChanged(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DifficultyChanged &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(difficulty));

  @JsonKey(ignore: true)
  @override
  _$$DifficultyChangedCopyWith<_$DifficultyChanged> get copyWith =>
      __$$DifficultyChangedCopyWithImpl<_$DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(QuestionsCategory category) categoryChanged,
    required TResult Function(DifficultyType difficulty) difficultyChanged,
  }) {
    return difficultyChanged(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
  }) {
    return difficultyChanged?.call(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(QuestionsCategory category)? categoryChanged,
    TResult Function(DifficultyType difficulty)? difficultyChanged,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
  }) {
    return difficultyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
  }) {
    return difficultyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class DifficultyChanged implements HomeEvent {
  const factory DifficultyChanged(final DifficultyType difficulty) =
      _$DifficultyChanged;

  DifficultyType get difficulty;
  @JsonKey(ignore: true)
  _$$DifficultyChangedCopyWith<_$DifficultyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
