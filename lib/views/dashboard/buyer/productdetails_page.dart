import 'package:draggable_home/draggable_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaffoldzoid_app/controller/user_details/user_details_bloc.dart';
import 'package:scaffoldzoid_app/model/user_details/user_details_model.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/widgets/product_card/product_card_two.dart';

class ProductDetailspage extends StatelessWidget {
  final String productId;

  const ProductDetailspage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserDetailsBloc, UserDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(failure: (String error) {
          return Scaffold(
            body: Center(
              child: Text(error),
            ),
          );
        }, loading: () {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }, initial: () {
          return const Scaffold(
            body: Center(
              child: Text('initial'),
            ),
          );
        }, success: (UserDataModel userDetails) {
          return DraggableHome(
            appBarColor: Kcolor.primaryColor,
            alwaysShowLeadingAndAction: true,
            title: const Text("Product List",
                style: TextStyle(color: Colors.white)),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            headerWidget: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.r),
                    child: CachedNetworkImage(
                      height: 90.h,
                      width: 90.h,
                      fit: BoxFit.cover,
                      imageUrl: userDetails.imageUrl,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  userDetails.name,
                  style: GoogleFonts.poppins(
                      color: Kcolor.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      shadows: [
                        const Shadow(
                            color: Color.fromARGB(192, 242, 139, 4),
                            offset: Offset(0, 1),
                            blurRadius: 1)
                      ]),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(userDetails.email,
                    style: GoogleFonts.poppins(
                      color: Kcolor.headingColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 25.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Text(
                      userDetails.description,
                      style: GoogleFonts.poppins(
                        color: Kcolor.textColor,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
            body: [
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('product')
                      .where('userId', isEqualTo: userDetails.uid)
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
                                  color: Kcolor.headingColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            ))),
                      );
                    }
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 13.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.w, vertical: 20.h),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r)),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(200, 200, 200, 1)),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '${snapshot.data!.docs[index]['name']} ',
                                        style: GoogleFonts.poppins(
                                          color: Kcolor.headingColor,
                                          fontSize: 13.5.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '*',
                                        style: GoogleFonts.poppins(
                                          color: Kcolor.primaryColor,
                                          fontSize: 13.5.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    '( ${snapshot.data!.docs[index]['category']} )',
                                    style: GoogleFonts.poppins(
                                      color: Kcolor.textColor,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: snapshot
                                          .data!.docs[index]['iteams'].length,
                                      itemBuilder:
                                          (BuildContext context, int i) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: PriceCardTwo(
                                            price: snapshot.data!.docs[index]
                                                ['iteams'][i]['price'],
                                            quantity: snapshot.data!.docs[index]
                                                ['iteams'][i]['quantity'],
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          );
                        });
                  }),
            ],
          );
        });
      },
    );
  }
}
