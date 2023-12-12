import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.image, required this.name});

  final String image;
  final String? name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 300,
              child: Swiper(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: 3,
                pagination:
                    const SwiperPagination(alignment: Alignment.topCenter),
                control: const SwiperControl(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 15)),
              ),
            ),
            Visibility(
              visible: false,
              replacement: const Text(
                "سجل الان",
                style: TextStyle(fontSize: 30),
              ),
              child: Text(
                "Name : ${widget.name}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            // Opacity(opacity: 1,child: Lottie.asset("assets/images/animation .json"),),
            ElevatedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now());

                setState(() {});
              },
              child: const Text("Log Out"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  label: const Text("Enter Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
