import 'dart:io';

import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/apis/network.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

class SetUserDetailsRepo {
  final Network _network = Network();

  //* set user details and update user details ====
  Future<ApiResult> setUserDetails(
      String userId, String name, String description, File imageUrl) async {
    final String path = await _network.uploadImage('users/$userId', imageUrl);
    final Map<String, dynamic> data = <String, dynamic>{
      'name': name,
      'description': description,
      'imageUrl': path,
    };
    // strore user data in firestore
    try {
      await _network.setUserData('users', userId, data);
      return const ApiResult.success(data: 'User details added successfully');
    } on FirebaseException catch (e) {
      Logger().e(e);
      return ApiResult.failure(error: e.message);
    }
  }

  //*  Get user details by id ==============>
  Future<ApiResult> getUserDetails(String userId) async {
    try {
      final Map<String, dynamic> data =
          await _network.getUserData('users', userId);
      return ApiResult.success(data: data);
    } on FirebaseException catch (e) {
      Logger().e(e);
      return ApiResult.failure(error: e.message);
    }
  }
}
