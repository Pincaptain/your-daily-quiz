// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  @HiveField(0)
  String get category => throw _privateConstructorUsedError;
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get correctAnswer => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String> get incorrectAnswers => throw _privateConstructorUsedError;
  @HiveField(4)
  String get question => throw _privateConstructorUsedError;
  @HiveField(5)
  List<String> get tags => throw _privateConstructorUsedError;
  @HiveField(6)
  String get type => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get difficulty => throw _privateConstructorUsedError;
  @HiveField(8)
  List<String> get regions => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get isNiche => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {@HiveField(0) String category,
      @HiveField(1) String id,
      @HiveField(2) String correctAnswer,
      @HiveField(3) List<String> incorrectAnswers,
      @HiveField(4) String question,
      @HiveField(5) List<String> tags,
      @HiveField(6) String type,
      @HiveField(7) String? difficulty,
      @HiveField(8) List<String> regions,
      @HiveField(9) bool isNiche});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? id = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
    Object? question = null,
    Object? tags = null,
    Object? type = null,
    Object? difficulty = freezed,
    Object? regions = null,
    Object? isNiche = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNiche: null == isNiche
          ? _value.isNiche
          : isNiche // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String category,
      @HiveField(1) String id,
      @HiveField(2) String correctAnswer,
      @HiveField(3) List<String> incorrectAnswers,
      @HiveField(4) String question,
      @HiveField(5) List<String> tags,
      @HiveField(6) String type,
      @HiveField(7) String? difficulty,
      @HiveField(8) List<String> regions,
      @HiveField(9) bool isNiche});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? id = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
    Object? question = null,
    Object? tags = null,
    Object? type = null,
    Object? difficulty = freezed,
    Object? regions = null,
    Object? isNiche = null,
  }) {
    return _then(_$_Question(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: null == incorrectAnswers
          ? _value._incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNiche: null == isNiche
          ? _value.isNiche
          : isNiche // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: "QuestionAdapter")
class _$_Question extends _Question {
  _$_Question(
      {@HiveField(0) required this.category,
      @HiveField(1) required this.id,
      @HiveField(2) required this.correctAnswer,
      @HiveField(3) required final List<String> incorrectAnswers,
      @HiveField(4) required this.question,
      @HiveField(5) required final List<String> tags,
      @HiveField(6) required this.type,
      @HiveField(7) required this.difficulty,
      @HiveField(8) required final List<String> regions,
      @HiveField(9) required this.isNiche})
      : _incorrectAnswers = incorrectAnswers,
        _tags = tags,
        _regions = regions,
        super._();

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @HiveField(0)
  final String category;
  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String correctAnswer;
  final List<String> _incorrectAnswers;
  @override
  @HiveField(3)
  List<String> get incorrectAnswers {
    if (_incorrectAnswers is EqualUnmodifiableListView)
      return _incorrectAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrectAnswers);
  }

  @override
  @HiveField(4)
  final String question;
  final List<String> _tags;
  @override
  @HiveField(5)
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(6)
  final String type;
  @override
  @HiveField(7)
  final String? difficulty;
  final List<String> _regions;
  @override
  @HiveField(8)
  List<String> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  @HiveField(9)
  final bool isNiche;

  @override
  String toString() {
    return 'Question(category: $category, id: $id, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers, question: $question, tags: $tags, type: $type, difficulty: $difficulty, regions: $regions, isNiche: $isNiche)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswers, _incorrectAnswers) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            (identical(other.isNiche, isNiche) || other.isNiche == isNiche));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      category,
      id,
      correctAnswer,
      const DeepCollectionEquality().hash(_incorrectAnswers),
      question,
      const DeepCollectionEquality().hash(_tags),
      type,
      difficulty,
      const DeepCollectionEquality().hash(_regions),
      isNiche);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question extends Question {
  factory _Question(
      {@HiveField(0) required final String category,
      @HiveField(1) required final String id,
      @HiveField(2) required final String correctAnswer,
      @HiveField(3) required final List<String> incorrectAnswers,
      @HiveField(4) required final String question,
      @HiveField(5) required final List<String> tags,
      @HiveField(6) required final String type,
      @HiveField(7) required final String? difficulty,
      @HiveField(8) required final List<String> regions,
      @HiveField(9) required final bool isNiche}) = _$_Question;
  _Question._() : super._();

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  @HiveField(0)
  String get category;
  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String get correctAnswer;
  @override
  @HiveField(3)
  List<String> get incorrectAnswers;
  @override
  @HiveField(4)
  String get question;
  @override
  @HiveField(5)
  List<String> get tags;
  @override
  @HiveField(6)
  String get type;
  @override
  @HiveField(7)
  String? get difficulty;
  @override
  @HiveField(8)
  List<String> get regions;
  @override
  @HiveField(9)
  bool get isNiche;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
