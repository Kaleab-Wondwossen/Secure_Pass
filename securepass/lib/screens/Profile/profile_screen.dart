import 'package:flutter/material.dart';
import 'package:securepass/components/my_nav_bar.dart';
import 'package:securepass/screens/login.dart';
import '../home_screen.dart';
import '/components/profile_personal_info_container.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/profile_utilities_container.dart';
import '../../measures/consts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    // Only navigate or change the page if the selected index is different
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index; // Update the index
      });

      // Here you can add navigation logic if needed, for example:
      switch (index) {
        case 0:
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const HomeScreen(),
              transitionDuration: Duration.zero, // No transition duration
              reverseTransitionDuration:
                  Duration.zero, // No reverse transition duration
            ),
          );
          break;
        case 1:
          // Navigate to Lock screen
          break;
        case 2:
          // Navigate to Key screen
          break;
        case 3:
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const ProfileScreen(),
              transitionDuration: Duration.zero, // No transition duration
              reverseTransitionDuration:
                  Duration.zero, // No reverse transition duration
            ),
          );
          break;
        default:
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Secure Pass",
          style: GoogleFonts.acme(
            fontSize: AppSizes.primaryFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: AppSizes.smallGap),
                CircleAvatar(
                  radius: AppSizes.mediumGap * 2.5,
                  backgroundImage: const AssetImage('images/profile.jpeg'),
                ),
                SizedBox(height: AppSizes.smallGap),
                Text(
                  "John Doe",
                  style: TextStyle(
                    fontSize: AppSizes.primaryFontSize,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .color, // Use theme color
                  ),
                ),
                Text(
                  "Active Since : Aug 21 2013",
                  style: TextStyle(
                    fontSize: AppSizes.tertiaryFontSize,
                    color: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .color, // Use theme color
                  ),
                ),
                SizedBox(height: AppSizes.mediumGap),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      AppSizes.mediumGap, 0, AppSizes.smallGap, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal Information",
                        style: TextStyle(
                          fontSize: AppSizes.secondaryFontSize * .85,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .color, // Use theme color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            AppSizes.largeGap * 3.6, 0, 0, 0),
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: AppSizes.tertiaryFontSize,
                            color: const Color.fromRGBO(26, 46, 107, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Color.fromRGBO(26, 46, 107, 1),
                        ),
                        iconSize: AppSizes.smallIconSize,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppSizes.mediumGap),
                  child: const PersonalInfoContainer(),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, 0, AppSizes.mediumGap * 13, 0),
                  child: Text(
                    "Utilities",
                    style: TextStyle(
                      fontSize: AppSizes.secondaryFontSize * .85,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color, // Use theme color
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppSizes.mediumGap),
                  child: const UtilitiesContainer(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  },
                  child: Container(
                    height: AppSizes.mediumGap * 2.5,
                    width: AppSizes.largeGap * 10,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppSizes.smallGap)),
                      color: const Color.fromRGBO(232, 232, 232, 1),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: AppSizes.mediumGap),
                        Icon(
                          Icons.logout,
                          size: AppSizes.mediumIconSize,
                          color: Colors.red,
                        ),
                        SizedBox(width: AppSizes.smallGap),
                        Text(
                          "Logout",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppSizes.secondaryFontSize,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex:
            _selectedIndex, // Pass the current index to the BottomNavBar
        onItemTapped: _onItemTapped, // Handle taps on the BottomNavBar
      ),
    );
  }
}
