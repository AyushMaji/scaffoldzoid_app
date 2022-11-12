import 'package:cached_network_image/cached_network_image.dart';
import 'package:scaffoldzoid_app/constant/color.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String image;
  final GestureTapCallback onTapDlt;
  final GestureTapCallback onTapEdit;

  const ProductCard(
      {super.key,
      required this.title,
      required this.description,
      required this.price,
      required this.image,
      required this.onTapDlt,
      required this.onTapEdit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.w, right: 13.w, bottom: 10.h),
      child: Container(
        height: 75.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          boxShadow: const [
            BoxShadow(
                color: Kcolor.shadowColor, offset: Offset(0, 4), blurRadius: 40)
          ],
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Center(
          child: ListTile(
            leading: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            title: Text(
              title,
              style: TextStyle(
                  color: Kcolor.textColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              description,
              style: TextStyle(
                  color: Kcolor.primaryColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700),
            ),
            onTap: onTapEdit,
            trailing: GestureDetector(
              onTap: onTapDlt,
              child: const CircleAvatar(
                  backgroundColor: Kcolor.primaryLightColor,
                  child: Icon(
                    Icons.delete,
                    color: Kcolor.primaryColor,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
