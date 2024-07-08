// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraProperty {
  List<CameraDescription> get cameras => throw _privateConstructorUsedError;
  CameraController get controller => throw _privateConstructorUsedError;
  double get minZoom => throw _privateConstructorUsedError;
  double get maxZoom => throw _privateConstructorUsedError;
  int get camCount => throw _privateConstructorUsedError;
  int get camIndex => throw _privateConstructorUsedError;
  int get maxTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraPropertyCopyWith<CameraProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraPropertyCopyWith<$Res> {
  factory $CameraPropertyCopyWith(
          CameraProperty value, $Res Function(CameraProperty) then) =
      _$CameraPropertyCopyWithImpl<$Res, CameraProperty>;
  @useResult
  $Res call(
      {List<CameraDescription> cameras,
      CameraController controller,
      double minZoom,
      double maxZoom,
      int camCount,
      int camIndex,
      int maxTime});
}

/// @nodoc
class _$CameraPropertyCopyWithImpl<$Res, $Val extends CameraProperty>
    implements $CameraPropertyCopyWith<$Res> {
  _$CameraPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameras = null,
    Object? controller = null,
    Object? minZoom = null,
    Object? maxZoom = null,
    Object? camCount = null,
    Object? camIndex = null,
    Object? maxTime = null,
  }) {
    return _then(_value.copyWith(
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double,
      camCount: null == camCount
          ? _value.camCount
          : camCount // ignore: cast_nullable_to_non_nullable
              as int,
      camIndex: null == camIndex
          ? _value.camIndex
          : camIndex // ignore: cast_nullable_to_non_nullable
              as int,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraPropertyImplCopyWith<$Res>
    implements $CameraPropertyCopyWith<$Res> {
  factory _$$CameraPropertyImplCopyWith(_$CameraPropertyImpl value,
          $Res Function(_$CameraPropertyImpl) then) =
      __$$CameraPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CameraDescription> cameras,
      CameraController controller,
      double minZoom,
      double maxZoom,
      int camCount,
      int camIndex,
      int maxTime});
}

/// @nodoc
class __$$CameraPropertyImplCopyWithImpl<$Res>
    extends _$CameraPropertyCopyWithImpl<$Res, _$CameraPropertyImpl>
    implements _$$CameraPropertyImplCopyWith<$Res> {
  __$$CameraPropertyImplCopyWithImpl(
      _$CameraPropertyImpl _value, $Res Function(_$CameraPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameras = null,
    Object? controller = null,
    Object? minZoom = null,
    Object? maxZoom = null,
    Object? camCount = null,
    Object? camIndex = null,
    Object? maxTime = null,
  }) {
    return _then(_$CameraPropertyImpl(
      cameras: null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double,
      camCount: null == camCount
          ? _value.camCount
          : camCount // ignore: cast_nullable_to_non_nullable
              as int,
      camIndex: null == camIndex
          ? _value.camIndex
          : camIndex // ignore: cast_nullable_to_non_nullable
              as int,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CameraPropertyImpl implements _CameraProperty {
  const _$CameraPropertyImpl(
      {required final List<CameraDescription> cameras,
      required this.controller,
      required this.minZoom,
      required this.maxZoom,
      required this.camCount,
      required this.camIndex,
      this.maxTime = 60})
      : _cameras = cameras;

  final List<CameraDescription> _cameras;
  @override
  List<CameraDescription> get cameras {
    if (_cameras is EqualUnmodifiableListView) return _cameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  final CameraController controller;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  @override
  final int camCount;
  @override
  final int camIndex;
  @override
  @JsonKey()
  final int maxTime;

  @override
  String toString() {
    return 'CameraProperty(cameras: $cameras, controller: $controller, minZoom: $minZoom, maxZoom: $maxZoom, camCount: $camCount, camIndex: $camIndex, maxTime: $maxTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPropertyImpl &&
            const DeepCollectionEquality().equals(other._cameras, _cameras) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            (identical(other.camCount, camCount) ||
                other.camCount == camCount) &&
            (identical(other.camIndex, camIndex) ||
                other.camIndex == camIndex) &&
            (identical(other.maxTime, maxTime) || other.maxTime == maxTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cameras),
      controller,
      minZoom,
      maxZoom,
      camCount,
      camIndex,
      maxTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraPropertyImplCopyWith<_$CameraPropertyImpl> get copyWith =>
      __$$CameraPropertyImplCopyWithImpl<_$CameraPropertyImpl>(
          this, _$identity);
}

abstract class _CameraProperty implements CameraProperty {
  const factory _CameraProperty(
      {required final List<CameraDescription> cameras,
      required final CameraController controller,
      required final double minZoom,
      required final double maxZoom,
      required final int camCount,
      required final int camIndex,
      final int maxTime}) = _$CameraPropertyImpl;

  @override
  List<CameraDescription> get cameras;
  @override
  CameraController get controller;
  @override
  double get minZoom;
  @override
  double get maxZoom;
  @override
  int get camCount;
  @override
  int get camIndex;
  @override
  int get maxTime;
  @override
  @JsonKey(ignore: true)
  _$$CameraPropertyImplCopyWith<_$CameraPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
