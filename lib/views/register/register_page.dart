import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/login/login_page.dart';
import 'package:scaffoldzoid_app/views/user_details/userdetails_page.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/inputfield/input_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  String iteamData = "Select";
  String? selectedValue;
  final List<String> items = [
    'Buyer',
    'Seller',
  ];
  @override
  Widget build(BuildContext context) {
    void register() {
      if (emailController.text == '' ||
          passwordController.text == '' ||
          confirmPasswordController.text == '') {
        Get.snackbar('Error', 'Please fill all the fields');
      } else if (passwordController.text != confirmPasswordController.text) {
        Get.snackbar('Error', 'Password and Confirm Password do not match');
      } else if (iteamData == "Select") {
        Get.snackbar('Error', 'Please select your role');
      } else {
        Get.snackbar('Success', 'Registration Successful');
        Get.offAll(() => const UserDetailsPage());
      }
    }

    return Scaffold(
      backgroundColor: Kcolor.bgColor,
      bottomNavigationBar: SizedBox(
        height: 40.h,
        child: Button(
          label: 'REGISTER',
          onPressed: register,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
              height: 250.h,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl:
                  ConstantData.registerbanner, // Replace this with your image
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
              height: 10.h,
            ),
            InputField(
              labelText: 'Confirm Password',
              hintText: 'Enter your password',
              controller: confirmPasswordController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: CustomDropdownButton2(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Kcolor.primaryColor,
                  size: 25.sp,
                ),
                buttonWidth: double.infinity,
                buttonHeight: 45.h,
                dropdownWidth: 300.w,
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: const Color.fromARGB(0, 255, 255, 255),
                    width: 0,
                  ),
                  color: const Color.fromRGBO(250, 250, 250, 1),
                ),
                hint: iteamData,
                dropdownItems: items,
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                    iteamData = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 20.h),
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
