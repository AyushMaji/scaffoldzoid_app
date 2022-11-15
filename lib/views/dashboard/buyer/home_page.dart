import 'package:scaffoldzoid_app/constant/data.dart';
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
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return SellerProfileCard(
                          profilePic:
                              "https://firebasestorage.googleapis.com/v0/b/scaffoldzoid.appspot.com/o/banner%2Favatar.png?alt=media&token=232bf921-3bf7-4244-abbb-72f8d3021671",
                          name: ' Ayush Maji',
                          types: 'Scaffolder',
                          onTap: () {
                            Get.to(() => const ProductDetailspage());
                          });
                    })
              ],
            ))));
  }
}
