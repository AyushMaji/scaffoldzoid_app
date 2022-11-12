import 'dart:developer';
import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/utils/messsenger.dart';
import 'package:scaffoldzoid_app/views/dashboard/seller/home_page.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/inputfield/input_field.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  File? pickedImage;
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      backgroundColor: Kcolor.bgColor,
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
              Get.offAll(() => const SellerHomePage());
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
              child: GestureDetector(
                onTap: () {
                  loadPicker();
                },
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 52.sp,
                      backgroundColor: Kcolor.primaryColor,
                      child: pickedImage != null
                          ? CircleAvatar(
                              radius: 49.sp,
                              backgroundImage: FileImage(pickedImage!),
                            )
                          : CircleAvatar(
                              backgroundColor:
                                  const Color.fromRGBO(244, 244, 244, 1),
                              radius: 49.sp,
                              child: Image.asset(
                                'assets/images/avatar.png',
                                height: 70.h,
                                width: 70.w,
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

  loadPicker() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedFile = (await picker.pickImage(source: ImageSource.gallery));
    setState(() {
      if (pickedFile != null) {
        _cropImage(File(pickedFile.path));
      } else {
        log('No image selected.');
      }
    });
  }

  _cropImage(File picked) async {
    CroppedFile? cropped = await ImageCropper().cropImage(
      sourcePath: picked.path,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
        WebUiSettings(
          context: context,
        ),
      ],
      aspectRatioPresets: [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio16x9,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.ratio7x5,
      ],
      maxWidth: 800,
    );
    if (cropped != null) {
      setState(() {
        pickedImage = File(cropped.path);
      });
    }
  }
}
