import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

int count = 0;

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                fit: BoxFit.fill,
                height: 120,
                "https://s3-alpha-sig.figma.com/img/66d6/86ae/9963d8e58357bd6821da7f31491438f5?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=k7HVeE6SwBc6qhI2HzC7siqQm4UPfh9F-AnBrj-vOu1t01VfSolC3EJGHPmg76t48BPToGTuARfNMy8D9BlZbnUte1vnw-rCBquIJ6a1Kd5C8ym02w0oXGNPaAqcF3qCKGPxa96sJiuZpCZ5RkzurKiBTlQ8MYGqMxDls3I1R-8QjVfQWUNUFEpMzm6ulc0DT9rAgFEi~azd9FWToZBri8vx7MiYCEqn1H0IvPQMREtV3PyFhmboLF0dsPYSy20w8d3GD6O7Bf5Bg7r-SFADj7sqrHIhBoHuyBPd495pWmQ3JBbgk0Sh~JELUPdvM91GkBN6v2dcIi38TccMmME8WQ__",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Men'sTie-Dye T-Shirt\nNike Sportswear",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    r"$45 (-$4.00 Tax)",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count--;
                          });
                          print(count);
                        },
                        icon: const Icon(
                          Icons.arrow_circle_down_rounded,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "$count",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_circle_up_rounded,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
