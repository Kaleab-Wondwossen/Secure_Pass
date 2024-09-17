import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../measures/consts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMMM dd yyyy ').format(now);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello, Nicky",
          style: GoogleFonts.dmSerifText(
              fontSize: AppSizes.secondaryFontSize * 1.5,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Row(
          children: [
            // IconButton(
            //   icon: const Icon(Icons.notifications,
            //       color: Color.fromRGBO(233, 176, 64, 1)),
            //   onPressed: () {},
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                      'images/profile.jpeg'), // Placeholder for profile image
                ),
                SizedBox(
                  height: AppSizes.mediumGap * .5,
                ),
                Text(formattedDate)
              ],
            ),
          ],
        ),
      ],
    );
  }
}