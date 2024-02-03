import 'package:course_flutter/core/ui/color.dart';
import 'package:course_flutter/screen/widget/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(29, 143, 242, 0.1),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 140,
                ),
                const Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const  Padding(
                    padding:  EdgeInsets.only(bottom: 10),
                    child:  CartItem(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
