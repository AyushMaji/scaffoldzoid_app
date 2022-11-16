import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/widgets/user_header/user_header.dart';

class ProductDetailspage extends StatelessWidget {
  const ProductDetailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Kcolor.primaryColor,
        title: Text("Product Details",
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            UserHeader(
                tittle: "Ayush Maji",
                subtittle: 'ayushmaji2001@gmail.com',
                picture: ConstantData.profilePic),
          ],
        ),
      ),
    );
  }
}
