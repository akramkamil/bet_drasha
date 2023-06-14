import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key,required this.hintText, required this.onChanged});

  String? hintText;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          border: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.brown, style: BorderStyle.solid)),
        ),
      ),
    );
  }
}
