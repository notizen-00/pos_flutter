import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/product/data/dto/product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashier_dto.freezed.dart';
part 'cashier_dto.g.dart';

@freezed
class CashierDto with _$CashierDto {
  const CashierDto._(); // Added private constructor to allow for concrete methods in Freezed class

  const factory CashierDto({
    required List<CashierItemDto> items,
  }) = _CashierDto;

  factory CashierDto.fromJson(Map<String, dynamic> json) {
    // Deserialize the list of items
    final List<dynamic> itemsJson = json['items'];
    final List<CashierItemDto> items = itemsJson.map((itemJson) => CashierItemDto.fromJson(itemJson)).toList();

    return CashierDto(
      items: items,
    );
  }

  Map<String, dynamic> toJson() {
    // Serialize the list of items
    final List<Map<String, dynamic>> itemsJson = items.map((item) => item.toJson()).toList();

    return {
      'items': itemsJson,
    };
  }

  factory CashierDto.fromEntity(Cashier cashier) {
    return CashierDto(
      items: cashier.items.map((item) => CashierItemDto.fromEntity(item)).toList(),
    );
  }

  Cashier toEntity() {
    return Cashier(
      items: items.map((item) => item.toEntity()).toList(),
    );
  }
}

@freezed
class CashierItemDto with _$CashierItemDto {
  const CashierItemDto._(); // Added private constructor to allow for concrete methods in Freezed class

  const factory CashierItemDto({
    required ProductDto product,
    required int quantity,
    required int subtotal,
  }) = _CashierItemDto;

  factory CashierItemDto.fromJson(Map<String, dynamic> json) => _$CashierItemDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => {
    'product': product.toJson(),
    'quantity': quantity,
    'subtotal': subtotal,
  }; // Implement toJson manually

  factory CashierItemDto.fromEntity(CashierItem item) {
    return CashierItemDto(
      product: ProductDto.fromEntity(item.product),
      quantity: item.quantity,
      subtotal: item.subtotal,
    );
  }

  CashierItem toEntity() {
    return CashierItem(
      product: product.toEntity(),
      quantity: quantity,
      subtotal: subtotal,
    );
  }
}
