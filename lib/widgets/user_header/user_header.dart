import 'package:cached_network_image/cached_network_image.dart';
import 'package:scaffoldzoid_app/constant/data.dart';
import 'package:scaffoldzoid_app/repo/Auth_repo.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/utils/messsenger.dart';
import 'package:scaffoldzoid_app/views/login/login_page.dart';
import 'package:scaffoldzoid_app/widgets/inputfield/input_field.dart';

class UserHeader extends StatefulWidget {
  final String? tittle;
  final String? subtittle;
  final String? picture;
  const UserHeader(
      {super.key,
      required this.tittle,
      required this.subtittle,
      required this.picture});

  @override
  State<UserHeader> createState() => _UserHeaderState();
}

class _UserHeaderState extends State<UserHeader> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  void logOut() {
    // logout function from auth repo
    AuthRepo().logout().whenComplete(() => Get.offAll(const LoginPage()));
    CustomSnackbar.successSnackbar('Success', 'Logged out successfully');
  }

  void chnageDetails() {
    Get.snackbar('Success', 'Logout Successful');
  }

  @override
  void initState() {
    setState(() {
      nameController.text = widget.tittle!;
      descriptionController.text = widget.subtittle!;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            elevation: 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            isScrollControlled: true,
            builder: (context) => Container(
              margin: EdgeInsets.all(20.w),
              height: 540.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Kcolor.textColor,
                        radius: 50.w,
                        backgroundImage: CachedNetworkImageProvider(
                          widget.picture!,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InputField(
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                  ),
                  const SizedBox(
                    height: 20,
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
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Kcolor.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                          onPressed: logOut,
                          child: const Text('Log Out',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Kcolor.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                          onPressed: chnageDetails,
                          child: const Text('Update',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
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
                widget.tittle!,
                style: GoogleFonts.poppins(
                    color: Kcolor.headingColor,
                    fontSize: 13.5.sp,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                widget.subtittle!,
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
                  imageUrl: widget.picture ?? ConstantData.profilePic,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
