part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;

  const factory ProductEvent.addProduct(String orangeName, String category,
      bool isAvsilsbility, List iteams) = _AddProduct;
  const factory ProductEvent.updateProduct({
    required String productId,
    required String orangeName,
    required String category,
    required bool isAvsilsbility,
    required List iteams,
  }) = _UpdateProduct;

  const factory ProductEvent.deleteProduct(String productId) = _DeleteProduct;
}
