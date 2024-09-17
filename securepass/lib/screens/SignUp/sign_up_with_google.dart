import 'package:flutter/material.dart';
import 'package:gojo/components/my_button.dart';
import 'package:gojo/components/my_container_boxes.dart';
import 'package:gojo/measure/consts.dart';
import 'package:gojo/screens/SignUp/sign_up_wth_credential.dart';
import 'package:gojo/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWithGoogle extends StatelessWidget {
  const SignUpWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
                height: AppSizes.largeGap * 12,
                width: AppSizes.largeGap * 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(247, 247, 247, 1),
                ),
                child: Image.asset("images/logo.png")),
            SizedBox(
              height: AppSizes.smallGap,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up for",
                  style: GoogleFonts.ptSerif(
                    fontSize: AppSizes.primaryFontSize * 1.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: AppSizes.smallGap*1
                ),
                Text(
                  "Gojo",
                  style: GoogleFonts.newRocker(
                    fontSize: AppSizes.primaryFontSize * 1.2,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 26, 46, 107),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.smallGap * .5,
            ),
            Text(
              "Discover Houses Near you with cheap prices",
              style: GoogleFonts.acme(
                fontSize: AppSizes.tertiaryFontSize,
                color: const Color.fromARGB(255, 102, 102, 102),
              ),
            ),
            SizedBox(
              height: AppSizes.smallGap,
            ),
            const MyContainer(),
            const MyContainer(
              path: "images/apple_logo.png",
              name: "Sign Up with Apple",
            ),
            SizedBox(
              height: AppSizes.smallGap,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  AppSizes.mediumGap * 1.5, 0, AppSizes.mediumGap * 1.5, 0),
              child: Row(
                children: [
                  // Left Divider
                  const Expanded(
                    child: Divider(
                      color: Colors.black, // Line color
                      thickness: 1, // Line thickness
                      endIndent: 10, // Spacing between the line and text
                    ),
                  ),
                  // OR Text
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: AppSizes.secondaryFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  // Right Divider
                  const Expanded(
                    child: Divider(
                      color: Colors.black, // Line color
                      thickness: 1, // Line thickness
                      indent: 10, // Spacing between the line and text
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.smallGap * 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpWithCredential()));
              },
              child: MyBytton(
                  height: AppSizes.largeGap * 1.5,
                  width: AppSizes.largeGap * 9.5,
                  btnName: "Create Account"),
            ),
            SizedBox(
              height: AppSizes.smallGap * 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.acme(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: AppSizes.smallGap * .5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LogIn()));
                  },
                  child: Text(
                    "Log in",
                    style: GoogleFonts.acme(
                        fontSize: AppSizes.tertiaryFontSize,
                        color: const Color.fromRGBO(26, 46, 107, 1),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
