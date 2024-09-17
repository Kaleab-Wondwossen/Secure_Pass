import 'package:flutter/material.dart';
import '../measures/consts.dart';

class MyTextBox extends StatefulWidget {
  final String hintText; // Custom hint text as a parameter
  final Icon? icon; // Custom icon as a parameter
  final Icon? optinalIcon;

  const MyTextBox(
      {super.key,
      required this.hintText,
      this.icon,
      this.optinalIcon});

  @override
  State<MyTextBox> createState() => _MyTextBoxState();
}

class _MyTextBoxState extends State<MyTextBox> {
  String inputValue = ''; // Variable to store the input value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(AppSizes.largeGap, AppSizes.smallGap * .5,
          AppSizes.largeGap, AppSizes.smallGap * .5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.largeGap),
          color: Colors.white,
        ),
        child: TextField(
          onChanged: (value) {
            setState(() {
              inputValue = value; // Update the input value
            });
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              hintText: widget.hintText, // Use the hintText passed in
              prefixIcon: widget.icon, // Use the icon passed in
              suffixIcon: widget.optinalIcon,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 26, 46, 107),
                ),
              )),
        ),
      ),
    );
  }
}
