import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/repo/product_repo.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const _Initial()) {
    final ProductRepo productRepo = ProductRepo();
    //* add product =====
    on<_AddProduct>((event, emit) async {
      emit(const _Loading());
      final ApiResult result = await productRepo.addProduct(
        name: event.orangeName,
        category: event.category,
        isAvailability: event.isAvsilsbility,
        iteams: event.iteams,
      );
      result.when(success: (data) {
        emit(const _Success());
      }, failure: (error) {
        Logger().e(error);
        emit(_Failure(error: error));
      });
    });
    //* delete product ======
    on<_DeleteProduct>((event, emit) async {
      emit(const _Loading());
      final ApiResult result = await productRepo.deleteProduct(event.productId);
      result.when(success: (data) {
        emit(const _Success());
      }, failure: (error) {
        Logger().e(error);
        emit(_Failure(error: error));
      });
    });
    //* update product =====
    on<_UpdateProduct>((event, emit) async {
      emit(const _Loading());
      final ApiResult result = await productRepo.updateProductDetails(
        productId: event.productId,
        name: event.orangeName,
        category: event.category,
        isAvailability: event.isAvsilsbility,
        iteams: event.iteams,
      );
      result.when(success: (data) {
        emit(const _Success());
      }, failure: (error) {
        Logger().e(error);
        emit(_Failure(error: error));
      });
    });
  }
}
