import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';

class TextBoxes {
  final BuildContext context;

  TextBoxes({required this.context});

  Widget detailsTextBox({
    required TextEditingController controller,
    obscureText = false,
    required String label,
  }) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.05,
        right: 10,
        bottom: height * 0.05,
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 20),
        scrollPadding: EdgeInsets.zero,
        cursorHeight: 30,
        obscureText: obscureText,
        keyboardType: (label == "Phone Number")
            ? TextInputType.number
            : (label == "Email")
                ? TextInputType.emailAddress
                : TextInputType.text,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          isDense: true,
          contentPadding: const EdgeInsets.only(
            bottom: 7,
            top: 5,
          ),
          label: Text(
            label,
            style: const TextStyle(
              color: tileColor,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
