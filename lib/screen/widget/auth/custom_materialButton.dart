import 'package:flutter/material.dart';

import '../../../core/ui/color.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, required this.text,required this.onPressed});
  final String text ;
  final void Function() onPressed ;


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColor.primaryColor,
      minWidth: 392,
      height: 52,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
