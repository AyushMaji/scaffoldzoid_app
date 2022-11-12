import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffoldzoid_app/constant/color.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/login/login_page.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/inputfield/input_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolor.bgColor,
      bottomNavigationBar: SizedBox(
        height: 50.h,
        child: Button(
          label: 'REGISTER',
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
              height: 290.h,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/scaffoldzoid.appspot.com/o/banner%2Fbanner.png?alt=media&token=509d5829-4644-417a-a8bc-6e9b9d5b02c1',
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'REGISTER YOUR SHOP',
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
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 10.h,
            ),
            InputField(
              labelText: 'Password',
              hintText: 'Enter your password',
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 10.h,
            ),
            InputField(
              labelText: 'Confirm Password',
              hintText: 'Enter your password',
              controller: TextEditingController(),
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
                  'If you already a user ',
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
                    Get.off(() => const LoginPage());
                  },
                  child: Text(
                    'Login',
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
