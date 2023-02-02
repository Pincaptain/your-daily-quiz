// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyLog _$DailyLogFromJson(Map<String, dynamic> json) {
  return _DailyLog.fromJson(json);
}

/// @nodoc
mixin _$DailyLog {
  List<Question> get questions => throw _privateConstructorUsedError;
  Question get selectedQuestion => throw _privateConstructorUsedError;
  QuestionStatus get questionStatus => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyLogCopyWith<DailyLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyLogCopyWith<$Res> {
  factory $DailyLogCopyWith(DailyLog value, $Res Function(DailyLog) then) =
      _$DailyLogCopyWithImpl<$Res, DailyLog>;
  @useResult
  $Res call(
      {List<Question> questions,
      Question selectedQuestion,
      QuestionStatus questionStatus,
      DateTime createdDate});

  $QuestionCopyWith<$Res> get selectedQuestion;
}

/// @nodoc
class _$DailyLogCopyWithImpl<$Res, $Val extends DailyLog>
    implements $DailyLogCopyWith<$Res> {
  _$DailyLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? selectedQuestion = null,
    Object? questionStatus = null,
    Object? createdDate = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      selectedQuestion: null == selectedQuestion
          ? _value.selectedQuestion
          : selectedQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      questionStatus: null == questionStatus
          ? _value.questionStatus
          : questionStatus // ignore: cast_nullable_to_non_nullable
              as QuestionStatus,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get selectedQuestion {
    return $QuestionCopyWith<$Res>(_value.selectedQuestion, (value) {
      return _then(_value.copyWith(selectedQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DailyLogCopyWith<$Res> implements $DailyLogCopyWith<$Res> {
  factory _$$_DailyLogCopyWith(
          _$_DailyLog value, $Res Function(_$_DailyLog) then) =
      __$$_DailyLogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Question> questions,
      Question selectedQuestion,
      QuestionStatus questionStatus,
      DateTime createdDate});

  @override
  $QuestionCopyWith<$Res> get selectedQuestion;
}

/// @nodoc
class __$$_DailyLogCopyWithImpl<$Res>
    extends _$DailyLogCopyWithImpl<$Res, _$_DailyLog>
    implements _$$_DailyLogCopyWith<$Res> {
  __$$_DailyLogCopyWithImpl(
      _$_DailyLog _value, $Res Function(_$_DailyLog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? selectedQuestion = null,
    Object? questionStatus = null,
    Object? createdDate = null,
  }) {
    return _then(_$_DailyLog(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      selectedQuestion: null == selectedQuestion
          ? _value.selectedQuestion
          : selectedQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      questionStatus: null == questionStatus
          ? _value.questionStatus
          : questionStatus // ignore: cast_nullable_to_non_nullable
              as QuestionStatus,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyLog implements _DailyLog {
  _$_DailyLog(
      {required final List<Question> questions,
      required this.selectedQuestion,
      required this.questionStatus,
      required this.createdDate})
      : _questions = questions;

  factory _$_DailyLog.fromJson(Map<String, dynamic> json) =>
      _$$_DailyLogFromJson(json);

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final Question selectedQuestion;
  @override
  final QuestionStatus questionStatus;
  @override
  final DateTime createdDate;

  @override
  String toString() {
    return 'DailyLog(questions: $questions, selectedQuestion: $selectedQuestion, questionStatus: $questionStatus, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyLog &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.selectedQuestion, selectedQuestion) ||
                other.selectedQuestion == selectedQuestion) &&
            (identical(other.questionStatus, questionStatus) ||
                other.questionStatus == questionStatus) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      selectedQuestion,
      questionStatus,
      createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyLogCopyWith<_$_DailyLog> get copyWith =>
      __$$_DailyLogCopyWithImpl<_$_DailyLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyLogToJson(
      this,
    );
  }
}

abstract class _DailyLog implements DailyLog {
  factory _DailyLog(
      {required final List<Question> questions,
      required final Question selectedQuestion,
      required final QuestionStatus questionStatus,
      required final DateTime createdDate}) = _$_DailyLog;

  factory _DailyLog.fromJson(Map<String, dynamic> json) = _$_DailyLog.fromJson;

  @override
  List<Question> get questions;
  @override
  Question get selectedQuestion;
  @override
  QuestionStatus get questionStatus;
  @override
  DateTime get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_DailyLogCopyWith<_$_DailyLog> get copyWith =>
      throw _privateConstructorUsedError;
}
