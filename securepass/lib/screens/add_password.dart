import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:securepass/measures/consts.dart';

class AddPassword extends StatefulWidget {
  const AddPassword({super.key});

  @override
  State<AddPassword> createState() => _AddPasswordState();
}

class _AddPasswordState extends State<AddPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          "Add Password",
          style: GoogleFonts.dmSerifText(
            fontSize: AppSizes.primaryFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
