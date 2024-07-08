// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() rec,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function(int camIndex) shiftCam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? rec,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function(int camIndex)? shiftCam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? rec,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function(int camIndex)? shiftCam,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Rec value) rec,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Shift value) shiftCam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Rec value)? rec,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Shift value)? shiftCam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Rec value)? rec,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Shift value)? shiftCam,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res, CameraEvent>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res, $Val extends CameraEvent>
    implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl extends _Init {
  const _$InitImpl() : super._();

  @override
  String toString() {
    return 'CameraEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() rec,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function(int camIndex) shiftCam,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? rec,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function(int camIndex)? shiftCam,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? rec,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function(int camIndex)? shiftCam,
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
    required TResult Function(_Init value) init,
    required TResult Function(_Rec value) rec,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Shift value) shiftCam,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Rec value)? rec,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Shift value)? shiftCam,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Rec value)? rec,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Shift value)? shiftCam,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init extends CameraEvent {
  const factory _Init() = _$InitImpl;
  const _Init._() : super._();
}

/// @nodoc
abstract class _$$RecImplCopyWith<$Res> {
  factory _$$RecImplCopyWith(_$RecImpl value, $Res Function(_$RecImpl) then) =
      __$$RecImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$RecImpl>
    implements _$$RecImplCopyWith<$Res> {
  __$$RecImplCopyWithImpl(_$RecImpl _value, $Res Function(_$RecImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecImpl extends _Rec {
  const _$RecImpl() : super._();

  @override
  String toString() {
    return 'CameraEvent.rec()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() rec,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function(int camIndex) shiftCam,
  }) {
    return rec();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? rec,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function(int camIndex)? shiftCam,
  }) {
    return rec?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? rec,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function(int camIndex)? shiftCam,
    required TResult orElse(),
  }) {
    if (rec != null) {
      return rec();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Rec value) rec,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Shift value) shiftCam,
  }) {
    return rec(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Rec value)? rec,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Shift value)? shiftCam,
  }) {
    return rec?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Rec value)? rec,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Shift value)? shiftCam,
    required TResult orElse(),
  }) {
    if (rec != null) {
      return rec(this);
    }
    return orElse();
  }
}

abstract class _Rec extends CameraEvent {
  const factory _Rec() = _$RecImpl;
  const _Rec._() : super._();
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseImpl extends _Pause {
  const _$PauseImpl() : super._();

  @override
  String toString() {
    return 'CameraEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() rec,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function(int camIndex) shiftCam,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? rec,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function(int camIndex)? shiftCam,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? rec,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function(int camIndex)? shiftCam,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Rec value) rec,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Shift value) shiftCam,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Rec value)? rec,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Shift value)? shiftCam,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Rec value)? rec,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Shift value)? shiftCam,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause extends CameraEvent {
  const factory _Pause() = _$PauseImpl;
  const _Pause._() : super._();
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopImpl extends _Stop {
  const _$StopImpl() : super._();

  @override
  String toString() {
    return 'CameraEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() rec,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function(int camIndex) shiftCam,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? rec,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function(int camIndex)? shiftCam,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? rec,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function(int camIndex)? shiftCam,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Rec value) rec,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Shift value) shiftCam,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Rec value)? rec,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Shift value)? shiftCam,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Rec value)? rec,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Shift value)? shiftCam,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop extends CameraEvent {
  const factory _Stop() = _$StopImpl;
  const _Stop._() : super._();
}

/// @nodoc
abstract class _$$ShiftImplCopyWith<$Res> {
  factory _$$ShiftImplCopyWith(
          _$ShiftImpl value, $Res Function(_$ShiftImpl) then) =
      __$$ShiftImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int camIndex});
}

/// @nodoc
class __$$ShiftImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$ShiftImpl>
    implements _$$ShiftImplCopyWith<$Res> {
  __$$ShiftImplCopyWithImpl(
      _$ShiftImpl _value, $Res Function(_$ShiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camIndex = null,
  }) {
    return _then(_$ShiftImpl(
      camIndex: null == camIndex
          ? _value.camIndex
          : camIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShiftImpl extends _Shift {
  const _$ShiftImpl({required this.camIndex}) : super._();

  @override
  final int camIndex;

  @override
  String toString() {
    return 'CameraEvent.shiftCam(camIndex: $camIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftImpl &&
            (identical(other.camIndex, camIndex) ||
                other.camIndex == camIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, camIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      __$$ShiftImplCopyWithImpl<_$ShiftImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() rec,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function(int camIndex) shiftCam,
  }) {
    return shiftCam(camIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? rec,
    TResult? Function()? pause,
    TResult? Function()? stop,
    TResult? Function(int camIndex)? shiftCam,
  }) {
    return shiftCam?.call(camIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? rec,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function(int camIndex)? shiftCam,
    required TResult orElse(),
  }) {
    if (shiftCam != null) {
      return shiftCam(camIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Rec value) rec,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Shift value) shiftCam,
  }) {
    return shiftCam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Rec value)? rec,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Shift value)? shiftCam,
  }) {
    return shiftCam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Rec value)? rec,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Shift value)? shiftCam,
    required TResult orElse(),
  }) {
    if (shiftCam != null) {
      return shiftCam(this);
    }
    return orElse();
  }
}

abstract class _Shift extends CameraEvent {
  const factory _Shift({required final int camIndex}) = _$ShiftImpl;
  const _Shift._() : super._();

  int get camIndex;
  @JsonKey(ignore: true)
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CameraState {
  CameraProperty? get camProperty => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  CamState get camState => throw _privateConstructorUsedError;
  int get recTime => throw _privateConstructorUsedError;
  XFile? get recorded => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraProperty? camProperty, String? question,
            CamState camState, int recTime, XFile? recorded)
        valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraProperty? camProperty, String? question,
            CamState camState, int recTime, XFile? recorded)?
        valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraProperty? camProperty, String? question,
            CamState camState, int recTime, XFile? recorded)?
        valueObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? valueObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call(
      {CameraProperty? camProperty,
      String? question,
      CamState camState,
      int recTime,
      XFile? recorded});

  $CameraPropertyCopyWith<$Res>? get camProperty;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camProperty = freezed,
    Object? question = freezed,
    Object? camState = null,
    Object? recTime = null,
    Object? recorded = freezed,
  }) {
    return _then(_value.copyWith(
      camProperty: freezed == camProperty
          ? _value.camProperty
          : camProperty // ignore: cast_nullable_to_non_nullable
              as CameraProperty?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      camState: null == camState
          ? _value.camState
          : camState // ignore: cast_nullable_to_non_nullable
              as CamState,
      recTime: null == recTime
          ? _value.recTime
          : recTime // ignore: cast_nullable_to_non_nullable
              as int,
      recorded: freezed == recorded
          ? _value.recorded
          : recorded // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CameraPropertyCopyWith<$Res>? get camProperty {
    if (_value.camProperty == null) {
      return null;
    }

    return $CameraPropertyCopyWith<$Res>(_value.camProperty!, (value) {
      return _then(_value.copyWith(camProperty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CameraProperty? camProperty,
      String? question,
      CamState camState,
      int recTime,
      XFile? recorded});

  @override
  $CameraPropertyCopyWith<$Res>? get camProperty;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camProperty = freezed,
    Object? question = freezed,
    Object? camState = null,
    Object? recTime = null,
    Object? recorded = freezed,
  }) {
    return _then(_$StateImpl(
      camProperty: freezed == camProperty
          ? _value.camProperty
          : camProperty // ignore: cast_nullable_to_non_nullable
              as CameraProperty?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      camState: null == camState
          ? _value.camState
          : camState // ignore: cast_nullable_to_non_nullable
              as CamState,
      recTime: null == recTime
          ? _value.recTime
          : recTime // ignore: cast_nullable_to_non_nullable
              as int,
      recorded: freezed == recorded
          ? _value.recorded
          : recorded // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$StateImpl extends _State {
  const _$StateImpl(
      {this.camProperty,
      this.question,
      this.camState = CamState.loading,
      this.recTime = 0,
      this.recorded})
      : super._();

  @override
  final CameraProperty? camProperty;
  @override
  final String? question;
  @override
  @JsonKey()
  final CamState camState;
  @override
  @JsonKey()
  final int recTime;
  @override
  final XFile? recorded;

  @override
  String toString() {
    return 'CameraState.valueObject(camProperty: $camProperty, question: $question, camState: $camState, recTime: $recTime, recorded: $recorded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.camProperty, camProperty) ||
                other.camProperty == camProperty) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.camState, camState) ||
                other.camState == camState) &&
            (identical(other.recTime, recTime) || other.recTime == recTime) &&
            (identical(other.recorded, recorded) ||
                other.recorded == recorded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, camProperty, question, camState, recTime, recorded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraProperty? camProperty, String? question,
            CamState camState, int recTime, XFile? recorded)
        valueObject,
  }) {
    return valueObject(camProperty, question, camState, recTime, recorded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraProperty? camProperty, String? question,
            CamState camState, int recTime, XFile? recorded)?
        valueObject,
  }) {
    return valueObject?.call(
        camProperty, question, camState, recTime, recorded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraProperty? camProperty, String? question,
            CamState camState, int recTime, XFile? recorded)?
        valueObject,
    required TResult orElse(),
  }) {
    if (valueObject != null) {
      return valueObject(camProperty, question, camState, recTime, recorded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) valueObject,
  }) {
    return valueObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? valueObject,
  }) {
    return valueObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? valueObject,
    required TResult orElse(),
  }) {
    if (valueObject != null) {
      return valueObject(this);
    }
    return orElse();
  }
}

abstract class _State extends CameraState {
  const factory _State(
      {final CameraProperty? camProperty,
      final String? question,
      final CamState camState,
      final int recTime,
      final XFile? recorded}) = _$StateImpl;
  const _State._() : super._();

  @override
  CameraProperty? get camProperty;
  @override
  String? get question;
  @override
  CamState get camState;
  @override
  int get recTime;
  @override
  XFile? get recorded;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
