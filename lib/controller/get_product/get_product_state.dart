part of 'get_product_bloc.dart';

@freezed
class GetProductState with _$GetProductState {
  const factory GetProductState.initial() = _Initial;
  const factory GetProductState.loading() = _Loading;
  const factory GetProductState.loaded(
      {required ProductDataModel productDetails}) = _Loaded;
  const factory GetProductState.failure({required String error}) = _Failure;
}
