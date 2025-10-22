// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_app_var.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalAppVar {
  bool get isThLanguage;

  /// Create a copy of LocalAppVar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalAppVarCopyWith<LocalAppVar> get copyWith =>
      _$LocalAppVarCopyWithImpl<LocalAppVar>(this as LocalAppVar, _$identity);

  /// Serializes this LocalAppVar to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalAppVar &&
            (identical(other.isThLanguage, isThLanguage) ||
                other.isThLanguage == isThLanguage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isThLanguage);

  @override
  String toString() {
    return 'LocalAppVar(isThLanguage: $isThLanguage)';
  }
}

/// @nodoc
abstract mixin class $LocalAppVarCopyWith<$Res> {
  factory $LocalAppVarCopyWith(
          LocalAppVar value, $Res Function(LocalAppVar) _then) =
      _$LocalAppVarCopyWithImpl;
  @useResult
  $Res call({bool isThLanguage});
}

/// @nodoc
class _$LocalAppVarCopyWithImpl<$Res> implements $LocalAppVarCopyWith<$Res> {
  _$LocalAppVarCopyWithImpl(this._self, this._then);

  final LocalAppVar _self;
  final $Res Function(LocalAppVar) _then;

  /// Create a copy of LocalAppVar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isThLanguage = null,
  }) {
    return _then(_self.copyWith(
      isThLanguage: null == isThLanguage
          ? _self.isThLanguage
          : isThLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [LocalAppVar].
extension LocalAppVarPatterns on LocalAppVar {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LocalAppVar value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalAppVar() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LocalAppVar value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalAppVar():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LocalAppVar value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalAppVar() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isThLanguage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalAppVar() when $default != null:
        return $default(_that.isThLanguage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isThLanguage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalAppVar():
        return $default(_that.isThLanguage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isThLanguage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalAppVar() when $default != null:
        return $default(_that.isThLanguage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocalAppVar implements LocalAppVar {
  const _LocalAppVar({required this.isThLanguage});
  factory _LocalAppVar.fromJson(Map<String, dynamic> json) =>
      _$LocalAppVarFromJson(json);

  @override
  final bool isThLanguage;

  /// Create a copy of LocalAppVar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocalAppVarCopyWith<_LocalAppVar> get copyWith =>
      __$LocalAppVarCopyWithImpl<_LocalAppVar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocalAppVarToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalAppVar &&
            (identical(other.isThLanguage, isThLanguage) ||
                other.isThLanguage == isThLanguage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isThLanguage);

  @override
  String toString() {
    return 'LocalAppVar(isThLanguage: $isThLanguage)';
  }
}

/// @nodoc
abstract mixin class _$LocalAppVarCopyWith<$Res>
    implements $LocalAppVarCopyWith<$Res> {
  factory _$LocalAppVarCopyWith(
          _LocalAppVar value, $Res Function(_LocalAppVar) _then) =
      __$LocalAppVarCopyWithImpl;
  @override
  @useResult
  $Res call({bool isThLanguage});
}

/// @nodoc
class __$LocalAppVarCopyWithImpl<$Res> implements _$LocalAppVarCopyWith<$Res> {
  __$LocalAppVarCopyWithImpl(this._self, this._then);

  final _LocalAppVar _self;
  final $Res Function(_LocalAppVar) _then;

  /// Create a copy of LocalAppVar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isThLanguage = null,
  }) {
    return _then(_LocalAppVar(
      isThLanguage: null == isThLanguage
          ? _self.isThLanguage
          : isThLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
