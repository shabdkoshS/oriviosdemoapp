
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    required this.hinttext,
    required this.prefixicon,
    this.suffixicon,
  });

  final String hinttext;
  final Icon prefixicon;
  Icon? suffixicon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttext,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
      ),
    );
  }
}
