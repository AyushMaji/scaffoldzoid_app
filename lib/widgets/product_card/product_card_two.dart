import 'package:scaffoldzoid_app/utils/barrel.dart';

class PriceCardTwo extends StatelessWidget {
  final String? price;
  final String? quantity;

  const PriceCardTwo({
    super.key,
    required this.price,
    required this.quantity,
  });

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
          Row(
            children: [
              Text(
                'Rs  ',
                style: GoogleFonts.poppins(
                  color: Kcolor.primaryColor,
                  fontSize: 12.5.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '$price',
                style: GoogleFonts.poppins(
                  color: Kcolor.headingColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
    );
  }
}
