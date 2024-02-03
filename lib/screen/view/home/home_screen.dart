import 'package:cached_network_image/cached_network_image.dart';
import 'package:course_flutter/core/ui/color.dart';
import 'package:course_flutter/screen/cart/cart_screen.dart';
import 'package:course_flutter/screen/widget/auth/cutom_textFromField.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
      "https://images.unsplash.com/photo-1699694927472-46a4fcf68973?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://www.lifewire.com/thmb/cux3I6-7gd6cj4xPhAqckZIJiTA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/DSLR-camera-56e0b8ee5f9b5854a9f865ca.jpg",
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
    ];
    List<String> imageCat = [
      "https://img.freepik.com/premium-vector/realistic-mockup_9462-14.jpg",
      "https://img.freepik.com/free-vector/new-modern-realistic-front-view-black-iphone-mockup-isolated-white-mobile-template-vector_90220-957.jpg?w=826&t=st=1706638340~exp=1706638940~hmac=b0ec6a318c8ee8ff78f03f4b3dff9fb1c1cccc1fcfc8eecf36d055e5237eba6f",
      "https://img.freepik.com/premium-psd/modern-tv-isolated-transparent-background-3d-rendering-illustration_494250-94958.jpg?w=996",
      "https://img.freepik.com/free-vector/digital-device-mockup_53876-89925.jpg?w=826&t=st=1706638409~exp=1706639009~hmac=4583d8b5082e897ada1f3fb5764c70f5583e6c716ec7be058f318a5a9d2ab944",
      "https://img.freepik.com/free-psd/clock-isolated-transparent-background_191095-11168.jpg?w=826&t=st=1706638466~exp=1706639066~hmac=770c160b41e53223d0e9b86b3a60ac599ae1818e146fcbafefc4a6e814fa31f1",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
                child: CustomTextFormField(
              hintText: "Search",
              icon: Icons.search,
              height: 45,
            )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ),
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(29, 143, 242, 0.1),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: CarouselSlider(
                    items: [
                      ...List.generate(
                        image.length,
                        (index) => CachedNetworkImage(
                          imageUrl: image[index],
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                    options: CarouselOptions(
                      height: 250,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.linear,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, reason) {},
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        image.length,
                        (index) => Container(
                              height: 8,
                              width: 8,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                            ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CartScreen(),
                                        ));
                                  },
                                  child: CachedNetworkImage(
                                    //
                                    ///
                                    /////
                                    imageUrl: imageCat[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text("PC")
                            ],
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: imageCat.length),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Offer",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Card(
                      ///
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon(Icons.shopping_cart_checkout)),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text("220 EG"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 0.57),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
