// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashierItemDtoImpl _$$CashierItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$CashierItemDtoImpl(
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
    );

Map<String, dynamic> _$$CashierItemDtoImplToJson(
        _$CashierItemDtoImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
    };
