import 'package:course_flutter/screen/widget/custom_scroll.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key});

  List<String> image = [
    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
    "https://images.unsplash.com/photo-1699694927472-46a4fcf68973?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://www.lifewire.com/thmb/cux3I6-7gd6cj4xPhAqckZIJiTA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/DSLR-camera-56e0b8ee5f9b5854a9f865ca.jpg",
    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Check Out"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomScroll(image: image),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Addrese",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 6),
                width: double.infinity,
                height: 90,
                color: Colors.amber[300],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Lottie.asset('assets/images/icon.json'),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chhatak, Sunamgonj 12/8A",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Sylhet",
                          maxLines: 1,
                          // overflow: TextOverflow.??,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    const Icon(Icons.track_changes)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 6),
                width: double.infinity,
                height: 90,
                color: Colors.amber[300],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Lottie.asset('assets/images/icon.json'),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chhatak, Sunamgonj 12/8A",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Sylhet",
                          maxLines: 1,
                          // overflow: TextOverflow.??,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Icon(Icons.track_changes),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    r"$100",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Row(
                children: [
                  Text(
                    "Shipping cost",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    r"$200",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Row(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    r"$120",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
