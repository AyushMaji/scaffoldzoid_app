part of 'get_product_bloc.dart';

@freezed
class GetProductEvent with _$GetProductEvent {
  const factory GetProductEvent.started() = _Started;
  const factory GetProductEvent.getProductDetailsById(String productId) =
      _GetProductDetailsById;
}
