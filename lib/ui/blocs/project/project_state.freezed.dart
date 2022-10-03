// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProjectStateData value) $default, {
    required TResult Function(ProjectStateLoading value) loading,
    required TResult Function(ProjectStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;
}

/// @nodoc
abstract class _$$ProjectStateDataCopyWith<$Res> {
  factory _$$ProjectStateDataCopyWith(
          _$ProjectStateData value, $Res Function(_$ProjectStateData) then) =
      __$$ProjectStateDataCopyWithImpl<$Res>;
  $Res call({List<ProjectModel> projects});
}

/// @nodoc
class __$$ProjectStateDataCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements _$$ProjectStateDataCopyWith<$Res> {
  __$$ProjectStateDataCopyWithImpl(
      _$ProjectStateData _value, $Res Function(_$ProjectStateData) _then)
      : super(_value, (v) => _then(v as _$ProjectStateData));

  @override
  _$ProjectStateData get _value => super._value as _$ProjectStateData;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_$ProjectStateData(
      projects == freezed
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$ProjectStateData implements ProjectStateData {
  const _$ProjectStateData(final List<ProjectModel> projects)
      : _projects = projects;

  final List<ProjectModel> _projects;
  @override
  List<ProjectModel> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'ProjectState(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateData &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  _$$ProjectStateDataCopyWith<_$ProjectStateData> get copyWith =>
      __$$ProjectStateDataCopyWithImpl<_$ProjectStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProjectStateData value) $default, {
    required TResult Function(ProjectStateLoading value) loading,
    required TResult Function(ProjectStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ProjectStateData implements ProjectState {
  const factory ProjectStateData(final List<ProjectModel> projects) =
      _$ProjectStateData;

  List<ProjectModel> get projects => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProjectStateDataCopyWith<_$ProjectStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectStateLoadingCopyWith<$Res> {
  factory _$$ProjectStateLoadingCopyWith(_$ProjectStateLoading value,
          $Res Function(_$ProjectStateLoading) then) =
      __$$ProjectStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectStateLoadingCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements _$$ProjectStateLoadingCopyWith<$Res> {
  __$$ProjectStateLoadingCopyWithImpl(
      _$ProjectStateLoading _value, $Res Function(_$ProjectStateLoading) _then)
      : super(_value, (v) => _then(v as _$ProjectStateLoading));

  @override
  _$ProjectStateLoading get _value => super._value as _$ProjectStateLoading;
}

/// @nodoc

class _$ProjectStateLoading implements ProjectStateLoading {
  const _$ProjectStateLoading();

  @override
  String toString() {
    return 'ProjectState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProjectStateData value) $default, {
    required TResult Function(ProjectStateLoading value) loading,
    required TResult Function(ProjectStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectStateLoading implements ProjectState {
  const factory ProjectStateLoading() = _$ProjectStateLoading;
}

/// @nodoc
abstract class _$$ProjectStateErrorCopyWith<$Res> {
  factory _$$ProjectStateErrorCopyWith(
          _$ProjectStateError value, $Res Function(_$ProjectStateError) then) =
      __$$ProjectStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$ProjectStateErrorCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements _$$ProjectStateErrorCopyWith<$Res> {
  __$$ProjectStateErrorCopyWithImpl(
      _$ProjectStateError _value, $Res Function(_$ProjectStateError) _then)
      : super(_value, (v) => _then(v as _$ProjectStateError));

  @override
  _$ProjectStateError get _value => super._value as _$ProjectStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ProjectStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ProjectStateError implements ProjectStateError {
  const _$ProjectStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ProjectState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ProjectStateErrorCopyWith<_$ProjectStateError> get copyWith =>
      __$$ProjectStateErrorCopyWithImpl<_$ProjectStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProjectModel> projects)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProjectStateData value) $default, {
    required TResult Function(ProjectStateLoading value) loading,
    required TResult Function(ProjectStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProjectStateData value)? $default, {
    TResult Function(ProjectStateLoading value)? loading,
    TResult Function(ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProjectStateError implements ProjectState {
  const factory ProjectStateError(final dynamic error) = _$ProjectStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProjectStateErrorCopyWith<_$ProjectStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
