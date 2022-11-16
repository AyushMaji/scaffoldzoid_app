import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/model/product_data/product_data_model.dart';
import 'package:scaffoldzoid_app/repo/product_repo.dart';

part 'get_product_event.dart';
part 'get_product_state.dart';
part 'get_product_bloc.freezed.dart';

class GetProductBloc extends Bloc<GetProductEvent, GetProductState> {
  GetProductBloc() : super(const _Initial()) {
    final ProductRepo productRepo = ProductRepo();
    on<_GetProductDetailsById>((event, emit) async {
      emit(const _Loading());
      final ApiResult result =
          await productRepo.getProductDetailsById(event.productId);
      result.when(success: (data) {
        emit(_Loaded(productDetails: ProductDataModel.fromJson(data)));
      }, failure: (error) {
        emit(_Failure(error: error));
      });
    });
  }
}
