import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/apis/network.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class AuthRepo {
  final Network _network = Network();

  //* This method is used to authenticate  ======================================>
  Future<ApiResult> authUser(String email, String password, String role) async {
    final userCredential = FirebaseAuth.instance;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      //  create  uuid for user
      final String uuid = const Uuid().v4();
      await userCredential
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() => {
                prefs.setString('email', email),
                prefs.setString('role', role),
              });
      // strore user data in firestore
      await _network
          .register({'email': email, 'role': role, 'uid': uuid}, uuid);
      return ApiResult.success(
          data: {'email': email, 'role': role, 'uid': uuid});
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return const ApiResult.failure(
            error: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return const ApiResult.failure(
            error: 'The account already exists for that email.');
      } else {
        Logger().e(e);
        return const ApiResult.failure(error: 'Something went wrong');
      }
    } catch (e) {
      Logger().e(e);
      return const ApiResult.failure(
          error: 'Something went wrong, please try again.');
    }
  }

  //* login user using email and password =======================================>
  Future<ApiResult> loginUser(String email, String password) async {
    final userCredential = FirebaseAuth.instance;
    try {
      await userCredential.signInWithEmailAndPassword(
          email: email, password: password);
      // get user data from firestore by email
      final QuerySnapshot<Map<String, dynamic>> result =
          await _network.getUserDataByEmail(email);
      Logger().d(result.docs[0].data());
      return ApiResult.success(data: result.docs[0].data());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Logger().e(e);
        return const ApiResult.failure(error: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Logger().e(e);
        return const ApiResult.failure(
            error: 'Wrong password provided for that user.');
      } else {
        Logger().e(e);
        return const ApiResult.failure(error: 'Something went wrong');
      }
    } catch (e) {
      Logger().e(e);
      return const ApiResult.failure(
          error: 'Something went wrong, please try again.');
    }
  }

  //* log out user ==================>
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    //! clear shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
