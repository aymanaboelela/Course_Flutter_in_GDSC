import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, required this.icon, this.height});

  final String hintText;
  final IconData icon;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(height: 0),
            prefixIcon: Icon(icon),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: Color.fromRGBO(29, 143, 242, 0.5), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: Color.fromRGBO(29, 143, 242, 0.5), width: 2))),
      ),
    );
  }
}
