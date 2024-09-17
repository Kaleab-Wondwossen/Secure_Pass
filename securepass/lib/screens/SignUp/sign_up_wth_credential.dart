import 'package:flutter/material.dart';
import '/components/my_button.dart';
import '/components/my_text_box.dart';
import '/measures/consts.dart';
import '/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWithCredential extends StatelessWidget {
  const SignUpWithCredential({super.key});

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
                  borderRadius: BorderRadius.circular(2),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Image.asset("images/Secure Pass.png")),
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
                  "Secure Pass",
                  style: GoogleFonts.dmSerifText(
                    fontSize: AppSizes.primaryFontSize * 1.2,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 233, 176, 64),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.smallGap * .5,
            ),
            Text(
              "Be Safe!! Manage and Coqntroll Your Passwords.",
              style: GoogleFonts.acme(
                fontSize: AppSizes.tertiaryFontSize,
                color: const Color.fromARGB(255, 102, 102, 102),
              ),
            ),
            SizedBox(
              height: AppSizes.smallGap,
            ),
            const MyTextBox(
              hintText: "Enter Username",
              icon: Icon(Icons.person_2),
            ),
            const MyTextBox(
              hintText: "Enter Phone Nunber",
              icon: Icon(Icons.phone),
            ),
            const MyTextBox(
              hintText: "Enter Password",
              icon: Icon(Icons.lock),
              optinalIcon: Icon(Icons.password),
            ),
            SizedBox(
              height: AppSizes.smallGap * 2,
            ),
            MyBytton(
                height: AppSizes.largeGap * 1.5,
                width: AppSizes.largeGap * 9.5,
                btnName: "Sign Up"),
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
