// create buttton widget

import 'package:scaffoldzoid_app/utils/barrel.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const Button({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: const BoxDecoration(
          color: Kcolor.primaryColor,
        ),
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              color: Kcolor.buttonTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
