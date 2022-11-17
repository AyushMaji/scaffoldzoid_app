import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaffoldzoid_app/controller/auth/login/login_bloc.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/dashboard/buyer/home_page.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/home_page.dart';
import 'package:scaffoldzoid_app/views/register/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    //* login  funtion ========
    void login() {
      if (emailController.text == '' || passwordController.text == '') {
        Get.snackbar('Error', 'Please fill all the fields');
      } else {
        context.read<LoginBloc>().add(
            LoginEvent.loginWithEmailAndPasswordPressed(
                email: emailController.text,
                password: passwordController.text));
      }
    }

    return Scaffold(
      backgroundColor: Kcolor.bgColor,
      bottomNavigationBar: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
              success: (role, uid) {
                if (role == 'Seller') {
                  Get.offAll(() => SellerHomePage(uuid: uid));
                } else {
                  Get.offAll(() => const BuyerHomePage());
                }
              },
              failure: (failure) {
                CustomSnackbar.errorSnackbar('error', failure);
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.when(failure: (String failure) {
            return SizedBox(
              height: 40.h,
              child: Button(
                label: 'LOGIN',
                onPressed: login,
              ),
            );
          }, initial: () {
            return SizedBox(
              height: 40.h,
              child: Button(
                label: 'LOGIN',
                onPressed: login,
              ),
            );
          }, loading: () {
            return const LinearProgressIndicator();
          }, success: (String role, String uid) {
            return SizedBox(
              height: 40.h,
              child: Button(
                label: 'LOGIN',
                onPressed: login,
              ),
            );
          });
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
              height: 290.h,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: ConstantData.registerbanner,
              placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                color: Kcolor.primaryColor,
              )),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'LOGIN',
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      ' Enter all your details correctly and register your shop with orangy.',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Kcolor.textColor,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InputField(
              labelText: 'Email',
              hintText: 'Enter your email',
              controller: emailController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 10.h,
            ),
            InputField(
              labelText: 'Password',
              hintText: 'Enter your password',
              controller: passwordController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                    color: Kcolor.textColor,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () {
                    Get.off(() => const RegisterPage());
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Kcolor.primaryColor,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
