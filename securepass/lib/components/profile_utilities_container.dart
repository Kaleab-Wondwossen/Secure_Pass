import 'package:flutter/material.dart';
import '../screens/Profile/settings_screen.dart';
import '/measures/consts.dart';

class UtilitiesContainer extends StatelessWidget {
  const UtilitiesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Container(
      height: AppSizes.mediumGap * 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.mediumGap)),
        color: const Color.fromRGBO(232, 232, 232, 1),
      ),
      child: Column(
        children: [
          SizedBox(
            height: AppSizes.smallGap,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const SettingsPage(),
                  transitionDuration: Duration.zero, // No transition duration
                  reverseTransitionDuration:
                      Duration.zero, // No reverse transition duration
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: AppSizes.smallGap,
                ),
                const Icon(
                  Icons.settings,
                  color: Color.fromRGBO(26, 46, 107, 1),
                ),
                Text(
                  '   Settings',
                  style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: AppSizes.mediumGap * 10.8),
                Text(
                  '>',
                  style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: AppSizes.smallGap * .25,
            color: Colors.white,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.download,
                color: Color.fromRGBO(26, 46, 107, 1),
              ),
              Text(
                '   Downloads',
                style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: AppSizes.mediumGap * 10),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            thickness: AppSizes.smallGap * .25,
            color: Colors.white,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.policy,
                color: Color.fromRGBO(26, 46, 107, 1),
              ),
              Text(
                '   Privacy Policy',
                style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: AppSizes.mediumGap * 9),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            thickness: AppSizes.smallGap * .25,
            color: Colors.white,
          ),
          Row(
            children: [
              SizedBox(
                width: AppSizes.smallGap,
              ),
              const Icon(
                Icons.question_mark,
                color: Color.fromRGBO(26, 46, 107, 1),
              ),
              Text(
                '   FAQs',
                style: TextStyle(
                  fontSize: AppSizes.tertiaryFontSize,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: AppSizes.mediumGap * 11.6),
              Text(
                '>',
                style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
