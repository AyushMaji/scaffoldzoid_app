import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffoldzoid_app/constant/color.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/additems_page.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/product_card/product_card.dart';

class SellerHomePage extends StatelessWidget {
  const SellerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 48.h,
        child: Button(
          label: 'ADD NEW ITEMS',
          onPressed: () {
            Get.to(const AddItemsPage());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Image.asset(
                'assets/images/logo_bg.png',
                width: 145.w,
                height: 100.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  boxShadow: const [
                    BoxShadow(
                        color: Kcolor.shadowColor,
                        offset: Offset(0, 4),
                        blurRadius: 40)
                  ],
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Center(
                  child: ListTile(
                    title: Text(
                      ' Welcome User,',
                      style: GoogleFonts.poppins(
                          color: Kcolor.headingColor,
                          fontSize: 13.5.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      ' Check your Activity',
                      style: GoogleFonts.poppins(
                          color: Kcolor.primaryColor,
                          fontSize: 12.5.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: CachedNetworkImage(
                        height: 50.h,
                        width: 50.h,
                        fit: BoxFit.cover,
                        imageUrl:
                            'https://img.mensxp.com/media/content/2022/Aug/Header-Image_BCCL_62e91b2d4c4a5.jpeg',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Row(
                children: [
                  Text(
                    'Your Oranges List (33 Items)',
                    style: GoogleFonts.poppins(
                        color: Kcolor.headingColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductCard(
                  title: 'Orange ',
                  description: 'Fresh Orange',
                  price: 'Rs. 100',
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/scaffoldzoid.appspot.com/o/banner%2Forange_icon.png?alt=media&token=f0cdc2d1-84aa-4472-bfec-f53393f81be4',
                  onTapDlt: () {},
                  onTapEdit: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
