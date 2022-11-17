import 'package:scaffoldzoid_app/controller/user_details/user_details_bloc.dart';
import 'package:scaffoldzoid_app/repo/Auth_repo.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/dashboard/buyer/productdetails_page.dart';
import 'package:scaffoldzoid_app/views/login/login_page.dart';
import 'package:scaffoldzoid_app/widgets/sellerprofile_card/sellerprofile_card.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({super.key});

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Kcolor.primaryColor,
            child: const Icon(Icons.logout_rounded),
            onPressed: () {
              AuthRepo()
                  .logout()
                  .whenComplete(() => Get.offAll(() => const LoginPage()));
            }),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Kcolor.primaryColor,
                  expandedHeight: 250.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Scaffoldzoid",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              shadows: [
                                const Shadow(
                                    color: Color.fromARGB(192, 242, 139, 4),
                                    offset: Offset(0, 1),
                                    blurRadius: 1)
                              ])),
                      background: Image.asset(
                        ConstantData.homepageBanner,
                        fit: BoxFit.cover,
                      )),
                ),
              ];
            },
            body: SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                  height: 23.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text("Your Seller List",
                        style: GoogleFonts.poppins(
                            color: Kcolor.headingColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('users')
                        .where('role', isEqualTo: 'Seller')
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
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.docs.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SellerProfileCard(
                                profilePic: snapshot.data!.docs[index]
                                    ['imageUrl'],
                                name: snapshot.data!.docs[index]['name'],
                                types: snapshot.data!.docs[index]
                                    ['description'],
                                onTap: () {
                                  Logger().i(snapshot.data!.docs[index].id);
                                  Get.to(() => ProductDetailspage(
                                        productId: snapshot.data!.docs[index]
                                            ['uid'],
                                      ));
                                  context.read<UserDetailsBloc>().add(
                                      UserDetailsEvent.getOwnerDetails(
                                          ownerId:
                                              snapshot.data!.docs[index].id));
                                });
                          });
                    })
              ],
            ))));
  }
}
