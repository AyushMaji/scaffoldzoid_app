import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/additems_page.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/product_card/product_card.dart';
import 'package:scaffoldzoid_app/widgets/user_header/user_header.dart';

class SellerHomePage extends StatelessWidget {
  const SellerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 40.h,
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
                ConstantData.logoBg,
                width: 145.w,
                height: 100.h,
              ),
            ),
            const UserHeader(),
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
                  image: ConstantData.orangeIcon,
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
