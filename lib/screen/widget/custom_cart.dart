import 'package:cached_network_image/cached_network_image.dart';
import 'package:course_flutter/screen/view/check_out.dart';
import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckOutScreen(),
            ));
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedNetworkImage(
                imageUrl:
                    "https://smhttp-ssl-73217.nexcesscdn.net/pub/media/catalog/product/cache/661473ab953cdcdf4c3b607144109b90/h/u/huawei-nova-y90-1.jpg",
                fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text("Mobile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_checkout)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("220 EG"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
