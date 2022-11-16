import 'dart:async';
import 'dart:developer';

import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/dashboard/buyer/home_page.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/home_page.dart';
import 'package:scaffoldzoid_app/views/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  @override
  void initState() {
    getValidationData().whenComplete(() async {});
    super.initState();
  }

  Future<void> getValidationData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var role = prefs.getString('role');
    var uid = prefs.getString('uid');
    Timer(const Duration(milliseconds: 3000), () {
      if (uid != null) {
        role == 'Seller'
            ? Get.offAll(() => SellerHomePage(
                  uuid: uid,
                ))
            : Get.offAll(() => const BuyerHomePage());
      } else {
        Get.offAll(() => const LoginPage());
      }
    });
    log('userId: $uid');
    log('role: $role');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ConstantData.logo,
          width: 150.w,
          height: 150.h,
        ),
      ),
    );
  }
}
