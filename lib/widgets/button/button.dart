// create buttton widget

import 'package:google_fonts/google_fonts.dart';
import 'package:scaffoldzoid_app/constant/color.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const Button({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Kcolor.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: GoogleFonts.poppins(
            color: Kcolor.buttonTextColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
