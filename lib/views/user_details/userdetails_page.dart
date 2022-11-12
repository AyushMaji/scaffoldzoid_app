import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/utils/messsenger.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/inputfield/input_field.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 40.h,
        width: double.infinity,
        child: Button(
          onPressed: () {
            if (nameController.text.isNotEmpty &&
                descriptionController.text.isNotEmpty) {
            } else {
              CustomSnackbar.errorSnackbar(
                  'Error', 'Please fill all the fields');
            }
          },
          label: 'GET STARTED',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Center(
              child: Text(
                'User Details',
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  'Add your essential details and make your profile stronger than other businesses.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 52.sp,
                    backgroundColor: Kcolor.primaryColor,
                    child: CircleAvatar(
                      backgroundColor: Kcolor.textColor,
                      radius: 49.sp,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                ConstantData.profilePic,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 13.5.sp,
                      backgroundColor: Kcolor.primaryColor,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            InputField(
              hintText: 'Name',
              labelText: 'Name',
              controller: nameController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 200.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    borderSide: BorderSide(
                      color: Kcolor.borderColor,
                      width: 1.5.w,
                    ),
                  ),
                  labelText: 'description',
                  labelStyle: TextStyle(
                    color: Kcolor.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  hintText: 'Enter your description',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(121, 154, 154, 154),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(127, 242, 118, 3),
                      width: 1.5.w,
                    ),
                  ),
                ),
                minLines: 6,
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
