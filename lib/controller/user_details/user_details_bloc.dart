import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/model/user_details/user_details_model.dart';
import 'package:scaffoldzoid_app/repo/user_details_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc() : super(const _Initial()) {
    final SetUserDetailsRepo setUserDetailsRepo = SetUserDetailsRepo();
    on<_UpdateUserDetails>((event, emit) async {
      emit(const _Loading());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String userId = prefs.getString('uid') ?? '';
      await setUserDetailsRepo
          .setUserDetails(userId, event.name, event.description, event.imageUrl)
          .then((ApiResult result) {
        result.when(success: (data) {
          emit(_Success(userDetails: data));
        }, failure: (error) {
          emit(_Failure(error: error));
        });
      });
    });
    on<_GetUserDetails>((event, emit) async {
      emit(const _Loading());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String userId = prefs.getString('uid') ?? '';
      await setUserDetailsRepo.getUserDetails(userId).then((ApiResult result) {
        result.when(success: (data) {
          emit(_Success(userDetails: UserDataModel.fromJson(data)));
        }, failure: (error) {
          emit(_Failure(error: error));
        });
      });
    });
  }
}
