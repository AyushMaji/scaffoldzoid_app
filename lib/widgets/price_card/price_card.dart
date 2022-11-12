import 'package:scaffoldzoid_app/utils/barrel.dart';

class PriceCard extends StatelessWidget {
  final String? price;
  final String? quantity;
  final VoidCallback? onPressed;
  const PriceCard(
      {super.key,
      required this.price,
      required this.quantity,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w),
      margin: EdgeInsets.only(bottom: 10.h),
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
        border: Border.all(color: const Color.fromRGBO(200, 200, 200, 1)),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Text(
            '$quantity',
            style: GoogleFonts.poppins(
              color: Kcolor.headingColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Text(
            'Rs. $price',
            style: GoogleFonts.poppins(
              color: Kcolor.headingColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.close,
                color: Kcolor.primaryColor,
                size: 20.sp,
              ))
        ],
      ),
    );
  }
}
