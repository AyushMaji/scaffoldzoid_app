import 'package:scaffoldzoid_app/constant/color.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

class InputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;

  const InputField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.controller,
      required this.keyboardType,
      required this.textCapitalization});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: 50.h,
        child: TextField(
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          controller: TextEditingController(),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
              borderSide: BorderSide(
                color: Kcolor.borderColor,
                width: 1.5.w,
              ),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: Kcolor.primaryColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: const Color.fromARGB(121, 154, 154, 154),
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
              borderSide: BorderSide(
                color: const Color.fromARGB(127, 242, 118, 3),
                width: 1.5.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
