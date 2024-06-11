// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CashierDto {
  List<CashierItemDto> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CashierDtoCopyWith<CashierDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashierDtoCopyWith<$Res> {
  factory $CashierDtoCopyWith(
          CashierDto value, $Res Function(CashierDto) then) =
      _$CashierDtoCopyWithImpl<$Res, CashierDto>;
  @useResult
  $Res call({List<CashierItemDto> items});
}

/// @nodoc
class _$CashierDtoCopyWithImpl<$Res, $Val extends CashierDto>
    implements $CashierDtoCopyWith<$Res> {
  _$CashierDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CashierItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashierDtoImplCopyWith<$Res>
    implements $CashierDtoCopyWith<$Res> {
  factory _$$CashierDtoImplCopyWith(
          _$CashierDtoImpl value, $Res Function(_$CashierDtoImpl) then) =
      __$$CashierDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CashierItemDto> items});
}

/// @nodoc
class __$$CashierDtoImplCopyWithImpl<$Res>
    extends _$CashierDtoCopyWithImpl<$Res, _$CashierDtoImpl>
    implements _$$CashierDtoImplCopyWith<$Res> {
  __$$CashierDtoImplCopyWithImpl(
      _$CashierDtoImpl _value, $Res Function(_$CashierDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CashierDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CashierItemDto>,
    ));
  }
}

/// @nodoc

class _$CashierDtoImpl extends _CashierDto {
  const _$CashierDtoImpl({required final List<CashierItemDto> items})
      : _items = items,
        super._();

  final List<CashierItemDto> _items;
  @override
  List<CashierItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CashierDto(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashierDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CashierDtoImplCopyWith<_$CashierDtoImpl> get copyWith =>
      __$$CashierDtoImplCopyWithImpl<_$CashierDtoImpl>(this, _$identity);
}

abstract class _CashierDto extends CashierDto {
  const factory _CashierDto({required final List<CashierItemDto> items}) =
      _$CashierDtoImpl;
  const _CashierDto._() : super._();

  @override
  List<CashierItemDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$CashierDtoImplCopyWith<_$CashierDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CashierItemDto _$CashierItemDtoFromJson(Map<String, dynamic> json) {
  return _CashierItemDto.fromJson(json);
}

/// @nodoc
mixin _$CashierItemDto {
  ProductDto get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashierItemDtoCopyWith<CashierItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashierItemDtoCopyWith<$Res> {
  factory $CashierItemDtoCopyWith(
          CashierItemDto value, $Res Function(CashierItemDto) then) =
      _$CashierItemDtoCopyWithImpl<$Res, CashierItemDto>;
  @useResult
  $Res call({ProductDto product, int quantity, int subtotal});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$CashierItemDtoCopyWithImpl<$Res, $Val extends CashierItemDto>
    implements $CashierItemDtoCopyWith<$Res> {
  _$CashierItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? subtotal = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CashierItemDtoImplCopyWith<$Res>
    implements $CashierItemDtoCopyWith<$Res> {
  factory _$$CashierItemDtoImplCopyWith(_$CashierItemDtoImpl value,
          $Res Function(_$CashierItemDtoImpl) then) =
      __$$CashierItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDto product, int quantity, int subtotal});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$CashierItemDtoImplCopyWithImpl<$Res>
    extends _$CashierItemDtoCopyWithImpl<$Res, _$CashierItemDtoImpl>
    implements _$$CashierItemDtoImplCopyWith<$Res> {
  __$$CashierItemDtoImplCopyWithImpl(
      _$CashierItemDtoImpl _value, $Res Function(_$CashierItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? subtotal = null,
  }) {
    return _then(_$CashierItemDtoImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashierItemDtoImpl extends _CashierItemDto {
  const _$CashierItemDtoImpl(
      {required this.product, required this.quantity, required this.subtotal})
      : super._();

  factory _$CashierItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashierItemDtoImplFromJson(json);

  @override
  final ProductDto product;
  @override
  final int quantity;
  @override
  final int subtotal;

  @override
  String toString() {
    return 'CashierItemDto(product: $product, quantity: $quantity, subtotal: $subtotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashierItemDtoImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, quantity, subtotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CashierItemDtoImplCopyWith<_$CashierItemDtoImpl> get copyWith =>
      __$$CashierItemDtoImplCopyWithImpl<_$CashierItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashierItemDtoImplToJson(
      this,
    );
  }
}

abstract class _CashierItemDto extends CashierItemDto {
  const factory _CashierItemDto(
      {required final ProductDto product,
      required final int quantity,
      required final int subtotal}) = _$CashierItemDtoImpl;
  const _CashierItemDto._() : super._();

  factory _CashierItemDto.fromJson(Map<String, dynamic> json) =
      _$CashierItemDtoImpl.fromJson;

  @override
  ProductDto get product;
  @override
  int get quantity;
  @override
  int get subtotal;
  @override
  @JsonKey(ignore: true)
  _$$CashierItemDtoImplCopyWith<_$CashierItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
