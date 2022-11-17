import 'package:scaffoldzoid_app/repo/Auth_repo.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/login/login_page.dart';

class UserHeader extends StatefulWidget {
  final String? tittle;
  final String? subtittle;
  final String? picture;
  final String? description;
  const UserHeader(
      {super.key,
      required this.tittle,
      required this.subtittle,
      required this.picture,
      required this.description});

  @override
  State<UserHeader> createState() => _UserHeaderState();
}

class _UserHeaderState extends State<UserHeader> {
  //* logout function from auth repo ==
  void logOut() {
    AuthRepo().logout().whenComplete(() => Get.offAll(const LoginPage()));
    CustomSnackbar.successSnackbar('Success', 'Logged out successfully');
  }

  void chnageDetails() {
    Get.snackbar('Success', 'Logout Successful');
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
              height: 300.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Kcolor.headingColor,
                        radius: 50.w,
                        backgroundImage: CachedNetworkImageProvider(
                          widget.picture!,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.tittle!,
                    style: TextStyle(
                      color: Kcolor.textColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.description!,
                    style: TextStyle(
                      color: Kcolor.textColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 3,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
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
                "Welcome ${widget.tittle!}",
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
                      const CircularProgressIndicator(
                    color: Kcolor.primaryColor,
                  ),
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
