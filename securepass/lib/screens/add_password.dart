// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:securepass/measures/consts.dart';

class PasswordManagerPage extends StatefulWidget {
  const PasswordManagerPage({super.key});

  @override
  _PasswordManagerPageState createState() => _PasswordManagerPageState();
}

class _PasswordManagerPageState extends State<PasswordManagerPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool includeNumbers = true;
  bool includeSymbols = false;
  bool includeLowercase = true;
  bool includeUppercase = true;
  int passwordLength = 12;
  double passwordStrength = 0.0;
  String passwordStrengthLabel = "Weak";

  @override
  void initState() {
    super.initState();
    _generatePassword();
  }

  void _generatePassword() {
    const numbers = '0123456789';
    const symbols = '!@#\$%^&*()-_=+[]{}|;:,.<>?';
    const lowercase = 'abcdefghijklmnopqrstuvwxyz';
    const uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    String allowedChars = '';
    if (includeNumbers) allowedChars += numbers;
    if (includeSymbols) allowedChars += symbols;
    if (includeLowercase) allowedChars += lowercase;
    if (includeUppercase) allowedChars += uppercase;

    if (allowedChars.isEmpty) return;

    Random random = Random();
    String password = List.generate(passwordLength, (index) {
      return allowedChars[random.nextInt(allowedChars.length)];
    }).join();

    _passwordController.text = password;
    _checkPasswordStrength(password);
  }

  void _checkPasswordStrength(String password) {
    int score = 0;

    if (password.length >= 8) score++;
    if (password.contains(RegExp(r'[A-Z]'))) score++;
    if (password.contains(RegExp(r'[a-z]'))) score++;
    if (password.contains(RegExp(r'[0-9]'))) score++;
    if (password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) score++;

    setState(() {
      passwordStrength = score / 5;
      if (score <= 2) {
        passwordStrengthLabel = "Weak";
      } else if (score == 3) {
        passwordStrengthLabel = "Medium";
      } else {
        passwordStrengthLabel = "Strong";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Add Password',
        style: GoogleFonts.dmSerifText(
            fontWeight: FontWeight.bold, fontSize: AppSizes.primaryFontSize),
      )),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            AppSizes.mediumGap * .6,
            AppSizes.mediumGap * .3,
            AppSizes.mediumGap * .6,
            AppSizes.mediumGap * .3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                fillColor: Colors.amber,
                focusColor: Colors.amber,
                hoverColor: Colors.amber,
                labelText: "Name",
                suffixIcon: Icon(Icons.check_circle, color: Colors.amber),
              ),
            ),
            SizedBox(height: AppSizes.smallGap),
            TextField(
              controller: _userIdController,
              decoration: const InputDecoration(
                labelText: "User id",
                suffixIcon: Icon(Icons.check_circle, color: Colors.amber),
              ),
            ),
            SizedBox(height: AppSizes.mediumGap),
            Divider(
              height: AppSizes.smallGap,
              color: Colors.amber,
            ),
            SizedBox(height: AppSizes.mediumGap),
            Text("Password",
                style: TextStyle(
                    fontSize: AppSizes.secondaryFontSize,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: AppSizes.mediumGap),
            TextField(
              controller: _passwordController,
              readOnly: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: _generatePassword,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.largeGap)),
              ),
            ),
            SizedBox(height: AppSizes.mediumGap),
            LinearProgressIndicator(
              value: passwordStrength,
              color: passwordStrengthLabel == "Strong"
                  ? Colors.green
                  : passwordStrengthLabel == "Medium"
                      ? Colors.amber
                      : Colors.red,
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(height: AppSizes.mediumGap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Length",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.secondaryFontSize),
                ),
                Slider(
                  activeColor: Colors.amber,
                  inactiveColor: const Color.fromARGB(255, 237, 224, 185),
                  value: passwordLength.toDouble(),
                  min: 8,
                  max: 20,
                  divisions: 12,
                  label: passwordLength.toString(),
                  onChanged: (value) {
                    setState(() {
                      passwordLength = value.toInt();
                      _generatePassword();
                    });
                  },
                ),
                Text(
                  passwordLength.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.secondaryFontSize),
                ),
              ],
            ),
            SizedBox(height: AppSizes.mediumGap),
            Wrap(
              spacing: 20,
              children: [
                _buildOption("Numbers", includeNumbers, (value) {
                  setState(() {
                    includeNumbers = value;
                    _generatePassword();
                  });
                }),
                _buildOption("Symbols", includeSymbols, (value) {
                  setState(() {
                    includeSymbols = value;
                    _generatePassword();
                  });
                }),
                _buildOption("Lowercase", includeLowercase, (value) {
                  setState(() {
                    includeLowercase = value;
                    _generatePassword();
                  });
                }),
                _buildOption("Uppercase", includeUppercase, (value) {
                  setState(() {
                    includeUppercase = value;
                    _generatePassword();
                  });
                }),
              ],
            ),
            SizedBox(height: AppSizes.mediumGap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _generatePassword,
                  child: const Text(
                    "Regenerate",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Save password logic
                    final savedPassword = _passwordController.text;
                    // ignore: avoid_print
                    print('Password saved: $savedPassword');
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            // SizedBox(height: AppSizes.smallGap),
            Center(
              child: Text("OR",
                  style: GoogleFonts.dmSerifText(
                      fontSize: AppSizes.secondaryFontSize)),
            ),
            SizedBox(height: AppSizes.smallGap),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logic to add password manually
                  // ignore: avoid_print
                  print('Add password manually');
                },
                child: const Text(
                  "Add manually",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String label, bool value, Function(bool) onChanged) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          activeColor: Colors.amber,
          value: value,
          onChanged: (newValue) {
            onChanged(newValue!);
          },
        ),
        Text(label),
      ],
    );
  }
}
