import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaffoldzoid_app/controller/get_product/get_product_bloc.dart';
import 'package:scaffoldzoid_app/controller/product/product_bloc.dart';
import 'package:scaffoldzoid_app/controller/user_details/user_details_bloc.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/additems_page.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/edititem_pagedart.dart';
import 'package:scaffoldzoid_app/widgets/product_card/product_card.dart';
import 'package:scaffoldzoid_app/widgets/user_header/user_header.dart';

class SellerHomePage extends StatefulWidget {
  final String uuid;
  const SellerHomePage({super.key, required this.uuid});

  @override
  State<SellerHomePage> createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage> {
  @override
  void initState() {
    context
        .read<UserDetailsBloc>()
        .add(const UserDetailsEvent.getUserDetails());
    super.initState();
  }

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
                width: 175.w,
                height: 100.h,
              ),
            ),
            BlocConsumer<UserDetailsBloc, UserDetailsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () {
                    return const CircularProgressIndicator(
                      color: Kcolor.primaryColor,
                    );
                  },
                  success: (userDetails) {
                    return UserHeader(
                      tittle: userDetails.name,
                      subtittle: "check all your activity",
                      picture: userDetails.imageUrl,
                      description: userDetails.description,
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Row(
                children: [
                  Text(
                    'Your Oranges List ',
                    style: GoogleFonts.poppins(
                        color: Kcolor.headingColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('product')
                    .where('userId', isEqualTo: widget.uuid)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: SizedBox(
                          height: 0.h,
                        ),
                      ),
                    );
                  }
                  if (snapshot.data!.docs.isEmpty) {
                    return Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: SizedBox(
                          height: 230.h,
                          child: Center(
                              child: Text(
                            'No Items Found',
                            style: GoogleFonts.poppins(
                                color: Kcolor.textColor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600),
                          ))),
                    );
                  }
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        title:
                            "${snapshot.data!.docs[index]['name']} (${snapshot.data!.docs[index]['category']})",
                        isAvailability: snapshot.data!.docs[index]
                            ['isAvailability'],
                        price: 'Rs. 100',
                        image: ConstantData.orangeIcon,
                        onTapDlt: () {
                          context.read<ProductBloc>().add(
                              ProductEvent.deleteProduct(
                                  snapshot.data!.docs[index]['productId']));
                        },
                        onTapEdit: () {
                          Get.to(() => const EditItemsPage());
                          context.read<GetProductBloc>().add(
                              GetProductEvent.getProductDetailsById(
                                  snapshot.data!.docs[index]['productId']));
                        },
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
