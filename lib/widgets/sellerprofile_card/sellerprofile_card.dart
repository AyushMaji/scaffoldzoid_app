import 'package:scaffoldzoid_app/utils/barrel.dart';

class SellerProfileCard extends StatelessWidget {
  final String profilePic;
  final String name;
  final String types;
  final GestureTapCallback? onTap;

  const SellerProfileCard(
      {super.key,
      required this.profilePic,
      required this.name,
      required this.types,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
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
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: CachedNetworkImage(
                    height: 50.h,
                    width: 50.h,
                    fit: BoxFit.cover,
                    imageUrl: profilePic,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                title: Text(
                  name,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  types,
                  style: GoogleFonts.poppins(
                    color: Kcolor.textColor,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Kcolor.primaryColor,
                )),
          ),
        ),
      ),
    );
  }
}
