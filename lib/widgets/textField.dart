import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  const CustomTextField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: AppColor.colorWhiteHighEmp,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(size.height/64),
          borderSide: BorderSide(),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: size.height/40, horizontal: size.height/40),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: (value) {

      },
    );
  }
}
