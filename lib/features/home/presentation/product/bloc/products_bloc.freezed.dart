// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllProducts value)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllProductsImplCopyWith<$Res> {
  factory _$$GetAllProductsImplCopyWith(_$GetAllProductsImpl value,
          $Res Function(_$GetAllProductsImpl) then) =
      __$$GetAllProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetAllProductsImpl>
    implements _$$GetAllProductsImplCopyWith<$Res> {
  __$$GetAllProductsImplCopyWithImpl(
      _$GetAllProductsImpl _value, $Res Function(_$GetAllProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllProductsImpl implements _GetAllProducts {
  const _$GetAllProductsImpl();

  @override
  String toString() {
    return 'ProductsEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllProducts value)? getProducts,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements ProductsEvent {
  const factory _GetAllProducts() = _$GetAllProductsImpl;
}

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartItem> products) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartItem> products)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartItem> products)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateLoaded value) loaded,
    required TResult Function(ProductsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateLoaded value)? loaded,
    TResult? Function(ProductsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateLoaded value)? loaded,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductsStateLoadingImplCopyWith<$Res> {
  factory _$$ProductsStateLoadingImplCopyWith(_$ProductsStateLoadingImpl value,
          $Res Function(_$ProductsStateLoadingImpl) then) =
      __$$ProductsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsStateLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateLoadingImpl>
    implements _$$ProductsStateLoadingImplCopyWith<$Res> {
  __$$ProductsStateLoadingImplCopyWithImpl(_$ProductsStateLoadingImpl _value,
      $Res Function(_$ProductsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsStateLoadingImpl implements ProductsStateLoading {
  const _$ProductsStateLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartItem> products) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartItem> products)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartItem> products)? loaded,
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
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateLoaded value) loaded,
    required TResult Function(ProductsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateLoaded value)? loaded,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateLoaded value)? loaded,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsStateLoading implements ProductsState {
  const factory ProductsStateLoading() = _$ProductsStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProductsStateLoadedImplCopyWith<$Res> {
  factory _$$ProductsStateLoadedImplCopyWith(_$ProductsStateLoadedImpl value,
          $Res Function(_$ProductsStateLoadedImpl) then) =
      __$$ProductsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItem> products});
}

/// @nodoc
class __$$ProductsStateLoadedImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateLoadedImpl>
    implements _$$ProductsStateLoadedImplCopyWith<$Res> {
  __$$ProductsStateLoadedImplCopyWithImpl(_$ProductsStateLoadedImpl _value,
      $Res Function(_$ProductsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsStateLoadedImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$ProductsStateLoadedImpl implements ProductsStateLoaded {
  const _$ProductsStateLoadedImpl({required final List<CartItem> products})
      : _products = products;

  final List<CartItem> _products;
  @override
  List<CartItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.loaded(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateLoadedImplCopyWith<_$ProductsStateLoadedImpl> get copyWith =>
      __$$ProductsStateLoadedImplCopyWithImpl<_$ProductsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartItem> products) loaded,
    required TResult Function() error,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartItem> products)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartItem> products)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateLoaded value) loaded,
    required TResult Function(ProductsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateLoaded value)? loaded,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateLoaded value)? loaded,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductsStateLoaded implements ProductsState {
  const factory ProductsStateLoaded({required final List<CartItem> products}) =
      _$ProductsStateLoadedImpl;

  List<CartItem> get products;
  @JsonKey(ignore: true)
  _$$ProductsStateLoadedImplCopyWith<_$ProductsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsStateErrorImplCopyWith<$Res> {
  factory _$$ProductsStateErrorImplCopyWith(_$ProductsStateErrorImpl value,
          $Res Function(_$ProductsStateErrorImpl) then) =
      __$$ProductsStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsStateErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateErrorImpl>
    implements _$$ProductsStateErrorImplCopyWith<$Res> {
  __$$ProductsStateErrorImplCopyWithImpl(_$ProductsStateErrorImpl _value,
      $Res Function(_$ProductsStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsStateErrorImpl implements ProductsStateError {
  const _$ProductsStateErrorImpl();

  @override
  String toString() {
    return 'ProductsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartItem> products) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartItem> products)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartItem> products)? loaded,
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
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateLoaded value) loaded,
    required TResult Function(ProductsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateLoaded value)? loaded,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateLoaded value)? loaded,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsStateError implements ProductsState {
  const factory ProductsStateError() = _$ProductsStateErrorImpl;
}
