import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

class SpalashPage extends StatelessWidget {
  const SpalashPage({super.key});

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
