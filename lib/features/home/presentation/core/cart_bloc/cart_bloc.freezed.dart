// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int customer});
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$CheckoutImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckoutImpl implements _Checkout {
  const _$CheckoutImpl({required this.customer});

  @override
  final int customer;

  @override
  String toString() {
    return 'CartEvent.checkout(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      __$$CheckoutImplCopyWithImpl<_$CheckoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) {
    return checkout(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) {
    return checkout?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class _Checkout implements CartEvent {
  const factory _Checkout({required final int customer}) = _$CheckoutImpl;

  int get customer;
  @JsonKey(ignore: true)
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllItemsImplCopyWith<$Res> {
  factory _$$GetAllItemsImplCopyWith(
          _$GetAllItemsImpl value, $Res Function(_$GetAllItemsImpl) then) =
      __$$GetAllItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetAllItemsImpl>
    implements _$$GetAllItemsImplCopyWith<$Res> {
  __$$GetAllItemsImplCopyWithImpl(
      _$GetAllItemsImpl _value, $Res Function(_$GetAllItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllItemsImpl implements _GetAllItems {
  const _$GetAllItemsImpl();

  @override
  String toString() {
    return 'CartEvent.getAllItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) {
    return getAllItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) {
    return getAllItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) {
    if (getAllItems != null) {
      return getAllItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) {
    return getAllItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) {
    return getAllItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (getAllItems != null) {
      return getAllItems(this);
    }
    return orElse();
  }
}

abstract class _GetAllItems implements CartEvent {
  const factory _GetAllItems() = _$GetAllItemsImpl;
}

/// @nodoc
abstract class _$$ResetCheckoutStatusImplCopyWith<$Res> {
  factory _$$ResetCheckoutStatusImplCopyWith(_$ResetCheckoutStatusImpl value,
          $Res Function(_$ResetCheckoutStatusImpl) then) =
      __$$ResetCheckoutStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetCheckoutStatusImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ResetCheckoutStatusImpl>
    implements _$$ResetCheckoutStatusImplCopyWith<$Res> {
  __$$ResetCheckoutStatusImplCopyWithImpl(_$ResetCheckoutStatusImpl _value,
      $Res Function(_$ResetCheckoutStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetCheckoutStatusImpl implements _ResetCheckoutStatus {
  const _$ResetCheckoutStatusImpl();

  @override
  String toString() {
    return 'CartEvent.resetCheckoutStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetCheckoutStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) {
    return resetCheckoutStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) {
    return resetCheckoutStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) {
    if (resetCheckoutStatus != null) {
      return resetCheckoutStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) {
    return resetCheckoutStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) {
    return resetCheckoutStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (resetCheckoutStatus != null) {
      return resetCheckoutStatus(this);
    }
    return orElse();
  }
}

abstract class _ResetCheckoutStatus implements CartEvent {
  const factory _ResetCheckoutStatus() = _$ResetCheckoutStatusImpl;
}

/// @nodoc
abstract class _$$DeleteItemImplCopyWith<$Res> {
  factory _$$DeleteItemImplCopyWith(
          _$DeleteItemImpl value, $Res Function(_$DeleteItemImpl) then) =
      __$$DeleteItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteItemImpl>
    implements _$$DeleteItemImplCopyWith<$Res> {
  __$$DeleteItemImplCopyWithImpl(
      _$DeleteItemImpl _value, $Res Function(_$DeleteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteItemImpl implements _DeleteItem {
  const _$DeleteItemImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      __$$DeleteItemImplCopyWithImpl<_$DeleteItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) {
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) {
    return deleteItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteItem implements CartEvent {
  const factory _DeleteItem(final int id) = _$DeleteItemImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, int quantity});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$AddItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl(this.product, this.quantity);

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addItem(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) {
    return addItem(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) {
    return addItem?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements CartEvent {
  const factory _AddItem(final Product product, final int quantity) =
      _$AddItemImpl;

  Product get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItemImplCopyWith<$Res> {
  factory _$$UpdateItemImplCopyWith(
          _$UpdateItemImpl value, $Res Function(_$UpdateItemImpl) then) =
      __$$UpdateItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, int quantity});
}

/// @nodoc
class __$$UpdateItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateItemImpl>
    implements _$$UpdateItemImplCopyWith<$Res> {
  __$$UpdateItemImplCopyWithImpl(
      _$UpdateItemImpl _value, $Res Function(_$UpdateItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateItemImpl implements _UpdateItem {
  const _$UpdateItemImpl(this.product, this.quantity);

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateItem(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemImplCopyWith<_$UpdateItemImpl> get copyWith =>
      __$$UpdateItemImplCopyWithImpl<_$UpdateItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int customer) checkout,
    required TResult Function() getAllItems,
    required TResult Function() resetCheckoutStatus,
    required TResult Function(int id) deleteItem,
    required TResult Function(Product product, int quantity) addItem,
    required TResult Function(Product product, int quantity) updateItem,
  }) {
    return updateItem(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int customer)? checkout,
    TResult? Function()? getAllItems,
    TResult? Function()? resetCheckoutStatus,
    TResult? Function(int id)? deleteItem,
    TResult? Function(Product product, int quantity)? addItem,
    TResult? Function(Product product, int quantity)? updateItem,
  }) {
    return updateItem?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int customer)? checkout,
    TResult Function()? getAllItems,
    TResult Function()? resetCheckoutStatus,
    TResult Function(int id)? deleteItem,
    TResult Function(Product product, int quantity)? addItem,
    TResult Function(Product product, int quantity)? updateItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkout,
    required TResult Function(_GetAllItems value) getAllItems,
    required TResult Function(_ResetCheckoutStatus value) resetCheckoutStatus,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkout,
    TResult? Function(_GetAllItems value)? getAllItems,
    TResult? Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkout,
    TResult Function(_GetAllItems value)? getAllItems,
    TResult Function(_ResetCheckoutStatus value)? resetCheckoutStatus,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateItem implements CartEvent {
  const factory _UpdateItem(final Product product, final int quantity) =
      _$UpdateItemImpl;

  Product get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateItemImplCopyWith<_$UpdateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  CartStatus get status => throw _privateConstructorUsedError;
  List<CartItem> get items => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  bool? get checkoutStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartStatus status,
      List<CartItem> items,
      int totalPrice,
      bool? checkoutStatus});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? totalPrice = null,
    Object? checkoutStatus = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      checkoutStatus: freezed == checkoutStatus
          ? _value.checkoutStatus
          : checkoutStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartStatus status,
      List<CartItem> items,
      int totalPrice,
      bool? checkoutStatus});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? totalPrice = null,
    Object? checkoutStatus = freezed,
  }) {
    return _then(_$CartStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      checkoutStatus: freezed == checkoutStatus
          ? _value.checkoutStatus
          : checkoutStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {this.status = CartStatus.loading,
      final List<CartItem> items = const [],
      this.totalPrice = 0,
      this.checkoutStatus})
      : _items = items;

  @override
  @JsonKey()
  final CartStatus status;
  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int totalPrice;
  @override
  final bool? checkoutStatus;

  @override
  String toString() {
    return 'CartState(status: $status, items: $items, totalPrice: $totalPrice, checkoutStatus: $checkoutStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.checkoutStatus, checkoutStatus) ||
                other.checkoutStatus == checkoutStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_items), totalPrice, checkoutStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final CartStatus status,
      final List<CartItem> items,
      final int totalPrice,
      final bool? checkoutStatus}) = _$CartStateImpl;

  @override
  CartStatus get status;
  @override
  List<CartItem> get items;
  @override
  int get totalPrice;
  @override
  bool? get checkoutStatus;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
