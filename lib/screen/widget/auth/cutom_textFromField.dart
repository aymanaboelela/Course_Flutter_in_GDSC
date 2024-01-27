import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.icon});
  final String hintText;
  final  IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon:  Icon(icon),
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
