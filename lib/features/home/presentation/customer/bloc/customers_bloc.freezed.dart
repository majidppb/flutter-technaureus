// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomersEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCustomers value) getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCustomers value)? getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCustomers value)? getCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersEventCopyWith<CustomersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersEventCopyWith<$Res> {
  factory $CustomersEventCopyWith(
          CustomersEvent value, $Res Function(CustomersEvent) then) =
      _$CustomersEventCopyWithImpl<$Res, CustomersEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CustomersEventCopyWithImpl<$Res, $Val extends CustomersEvent>
    implements $CustomersEventCopyWith<$Res> {
  _$CustomersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCustomersImplCopyWith<$Res>
    implements $CustomersEventCopyWith<$Res> {
  factory _$$GetAllCustomersImplCopyWith(_$GetAllCustomersImpl value,
          $Res Function(_$GetAllCustomersImpl) then) =
      __$$GetAllCustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetAllCustomersImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$GetAllCustomersImpl>
    implements _$$GetAllCustomersImplCopyWith<$Res> {
  __$$GetAllCustomersImplCopyWithImpl(
      _$GetAllCustomersImpl _value, $Res Function(_$GetAllCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetAllCustomersImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllCustomersImpl implements _GetAllCustomers {
  const _$GetAllCustomersImpl({this.name = ''});

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'CustomersEvent.getCustomers(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCustomersImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCustomersImplCopyWith<_$GetAllCustomersImpl> get copyWith =>
      __$$GetAllCustomersImplCopyWithImpl<_$GetAllCustomersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getCustomers,
  }) {
    return getCustomers(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? getCustomers,
  }) {
    return getCustomers?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getCustomers,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCustomers value) getCustomers,
  }) {
    return getCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCustomers value)? getCustomers,
  }) {
    return getCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCustomers value)? getCustomers,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(this);
    }
    return orElse();
  }
}

abstract class _GetAllCustomers implements CustomersEvent {
  const factory _GetAllCustomers({final String name}) = _$GetAllCustomersImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCustomersImplCopyWith<_$GetAllCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Customer> customers) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Customer> customers)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Customer> customers)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersStateLoading value) loading,
    required TResult Function(CustomersStateLoaded value) loaded,
    required TResult Function(CustomersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateLoading value)? loading,
    TResult? Function(CustomersStateLoaded value)? loaded,
    TResult? Function(CustomersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersStateLoading value)? loading,
    TResult Function(CustomersStateLoaded value)? loaded,
    TResult Function(CustomersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res, CustomersState>;
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res, $Val extends CustomersState>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomersStateLoadingImplCopyWith<$Res> {
  factory _$$CustomersStateLoadingImplCopyWith(
          _$CustomersStateLoadingImpl value,
          $Res Function(_$CustomersStateLoadingImpl) then) =
      __$$CustomersStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomersStateLoadingImplCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$CustomersStateLoadingImpl>
    implements _$$CustomersStateLoadingImplCopyWith<$Res> {
  __$$CustomersStateLoadingImplCopyWithImpl(_$CustomersStateLoadingImpl _value,
      $Res Function(_$CustomersStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomersStateLoadingImpl implements CustomersStateLoading {
  const _$CustomersStateLoadingImpl();

  @override
  String toString() {
    return 'CustomersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Customer> customers) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Customer> customers)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Customer> customers)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersStateLoading value) loading,
    required TResult Function(CustomersStateLoaded value) loaded,
    required TResult Function(CustomersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateLoading value)? loading,
    TResult? Function(CustomersStateLoaded value)? loaded,
    TResult? Function(CustomersStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersStateLoading value)? loading,
    TResult Function(CustomersStateLoaded value)? loaded,
    TResult Function(CustomersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CustomersStateLoading implements CustomersState {
  const factory CustomersStateLoading() = _$CustomersStateLoadingImpl;
}

/// @nodoc
abstract class _$$CustomersStateLoadedImplCopyWith<$Res> {
  factory _$$CustomersStateLoadedImplCopyWith(_$CustomersStateLoadedImpl value,
          $Res Function(_$CustomersStateLoadedImpl) then) =
      __$$CustomersStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Customer> customers});
}

/// @nodoc
class __$$CustomersStateLoadedImplCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$CustomersStateLoadedImpl>
    implements _$$CustomersStateLoadedImplCopyWith<$Res> {
  __$$CustomersStateLoadedImplCopyWithImpl(_$CustomersStateLoadedImpl _value,
      $Res Function(_$CustomersStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$CustomersStateLoadedImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc

class _$CustomersStateLoadedImpl implements CustomersStateLoaded {
  const _$CustomersStateLoadedImpl({required final List<Customer> customers})
      : _customers = customers;

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomersState.loaded(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersStateLoadedImplCopyWith<_$CustomersStateLoadedImpl>
      get copyWith =>
          __$$CustomersStateLoadedImplCopyWithImpl<_$CustomersStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Customer> customers) loaded,
    required TResult Function() error,
  }) {
    return loaded(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Customer> customers)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Customer> customers)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersStateLoading value) loading,
    required TResult Function(CustomersStateLoaded value) loaded,
    required TResult Function(CustomersStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateLoading value)? loading,
    TResult? Function(CustomersStateLoaded value)? loaded,
    TResult? Function(CustomersStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersStateLoading value)? loading,
    TResult Function(CustomersStateLoaded value)? loaded,
    TResult Function(CustomersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CustomersStateLoaded implements CustomersState {
  const factory CustomersStateLoaded(
      {required final List<Customer> customers}) = _$CustomersStateLoadedImpl;

  List<Customer> get customers;
  @JsonKey(ignore: true)
  _$$CustomersStateLoadedImplCopyWith<_$CustomersStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomersStateErrorImplCopyWith<$Res> {
  factory _$$CustomersStateErrorImplCopyWith(_$CustomersStateErrorImpl value,
          $Res Function(_$CustomersStateErrorImpl) then) =
      __$$CustomersStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomersStateErrorImplCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$CustomersStateErrorImpl>
    implements _$$CustomersStateErrorImplCopyWith<$Res> {
  __$$CustomersStateErrorImplCopyWithImpl(_$CustomersStateErrorImpl _value,
      $Res Function(_$CustomersStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomersStateErrorImpl implements CustomersStateError {
  const _$CustomersStateErrorImpl();

  @override
  String toString() {
    return 'CustomersState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Customer> customers) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Customer> customers)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Customer> customers)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersStateLoading value) loading,
    required TResult Function(CustomersStateLoaded value) loaded,
    required TResult Function(CustomersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersStateLoading value)? loading,
    TResult? Function(CustomersStateLoaded value)? loaded,
    TResult? Function(CustomersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersStateLoading value)? loading,
    TResult Function(CustomersStateLoaded value)? loaded,
    TResult Function(CustomersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CustomersStateError implements CustomersState {
  const factory CustomersStateError() = _$CustomersStateErrorImpl;
}
