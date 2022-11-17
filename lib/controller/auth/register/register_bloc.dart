import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/repo/Auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _Initial()) {
    final AuthRepo authRepo = AuthRepo();
    on<_RegisterWithEmailAndPasswordPressed>((event, emit) async {
      emit(const _Loading());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final ApiResult result =
          await authRepo.authUser(event.email, event.password, event.role);
      result.when(success: (data) {
        prefs.setString('email', data['email']);
        prefs.setString('role', data['role']);
        prefs.setString('uid', data['uid']);
        emit(_Success(role: event.role));
      }, failure: (error) {
        Logger().e(error);
        emit(_Failure(failure: error));
      });
    });
  }
}
