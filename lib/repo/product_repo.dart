import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/apis/network.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class ProductRepo {
  final Network _network = Network();

  //* add prodcts items ==============>
  Future<ApiResult> addProduct({
    required String name,
    required String category,
    required bool isAvailability,
    required List iteams,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String uuid = prefs.getString('uid')!;
    final String productId = const Uuid().v4();
    final Map<String, dynamic> data = {
      'name': name,
      'category': category,
      'isAvailability': isAvailability,
      'userId': uuid,
      'productId': productId,
      'iteams': iteams,
    };

    try {
      await _network
          .addProductData('product', data, productId)
          .whenComplete(() {});
      return const ApiResult.success(data: 'Product added successfully');
    } catch (e) {
      Logger().e(e);
      return ApiResult.failure(error: e.toString());
    }
  }

  //* delete product ==============>
  Future<ApiResult> deleteProduct(String productId) async {
    try {
      await _network.deleteProductData('product', productId);
      return const ApiResult.success(data: 'Product deleted successfully');
    } catch (e) {
      Logger().e(e);
      return ApiResult.failure(error: e.toString());
    }
  }

  //*  get product details by id ==============>
  Future<ApiResult> getProductDetailsById(String productId) async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> data =
          await _network.getAllProductDataById('product', productId);
      return ApiResult.success(data: data.data());
    } catch (e) {
      Logger().e(e);
      return ApiResult.failure(error: e.toString());
    }
  }

  //* update product details by id ==============>
  Future<ApiResult> updateProductDetails({
    required String productId,
    required String name,
    required String category,
    required bool isAvailability,
    required List iteams,
  }) async {
    final Map<String, dynamic> data = {
      'name': name,
      'category': category,
      'isAvailability': isAvailability,
      'iteams': iteams,
    };
    try {
      await _network.updateProductData('product', productId, data);
      return const ApiResult.success(data: 'Product updated successfully');
    } catch (e) {
      Logger().e(e);
      return ApiResult.failure(error: e.toString());
    }
  }
}
