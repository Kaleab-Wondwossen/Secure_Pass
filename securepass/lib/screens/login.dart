import 'package:flutter/material.dart';
import '/components/my_button.dart';
import '/components/my_text_box.dart';
import '/measures/consts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUp/sign_up_with_google.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                  color: Colors.white
                ),
                child: Image.asset("images/Secure Pass.png")),
            SizedBox(
              height: AppSizes.smallGap,
            ),
            Text(
              "Login",
              style: GoogleFonts.acme(
                fontSize: AppSizes.primaryFontSize * 1.2,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: AppSizes.smallGap * .5,
            ),
            Text(
              "Secure Your Passwords and Manage !!",
              style: GoogleFonts.acme(
                fontSize: AppSizes.tertiaryFontSize,
                color: const Color.fromARGB(255, 102, 102, 102),
              ),
            ),
            SizedBox(
              height: AppSizes.smallGap,
            ),
            const MyTextBox(
              hintText: "Enter Your Nunber",
              icon: Icon(Icons.phone),
            ),
            const MyTextBox(
              hintText: "Enter Your Password",
              icon: Icon(Icons.lock),
              optinalIcon: Icon(Icons.password),
            ),
            SizedBox(
              height: AppSizes.smallGap * 2.5,
            ),
            MyBytton(
                height: AppSizes.largeGap * 1.5,
                width: AppSizes.largeGap * 9.5,
                btnName: "Login"),
            SizedBox(
              height: AppSizes.smallGap * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpWithGoogle()));
                  },
                  child: Text(
                    "Sign Up",
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
