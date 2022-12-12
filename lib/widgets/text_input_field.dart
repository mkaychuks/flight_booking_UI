import 'package:flutter/material.dart';

class TextInputFieldWidget extends StatelessWidget {

  final String hintText;
  final IconData prefixIcon;


  const TextInputFieldWidget({super.key, required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: const Color(0xffbfc2df),
          ),
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.all(12),
          filled: true,
          fillColor: Colors.white),
    );
  }
}
