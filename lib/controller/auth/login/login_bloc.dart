import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/repo/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_LoginWithEmailAndPasswordPressed>((event, emit) async {
      emit(const _Loading());
      final AuthRepo authRepo = AuthRepo();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final ApiResult result =
          await authRepo.loginUser(event.email, event.password);
      result.when(success: (data) {
        // store user data in shared preferences
        prefs.setString('uid', data['uid']);
        prefs.setString('role', data['role']);
        emit(_Success(role: data['role'], uid: data['uid']));
      }, failure: (error) {
        Logger().e(error);
        emit(_Failure(failure: error));
      });
    });
  }
}
