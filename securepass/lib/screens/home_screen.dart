import 'package:flutter/material.dart';
import 'package:securepass/measures/consts.dart';
import 'package:securepass/screens/add_password.dart';

import '../components/my_header_widget.dart';
import '../components/my_nav_bar.dart';
import '../components/my_password_category_widget.dart';
import '../components/my_search_bar_widget.dart';
import '../components/recently_used_list_widget.dart';

// Password Manager Main Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              AppSizes.mediumGap * .6,
              AppSizes.mediumGap * .3,
              AppSizes.mediumGap * .6,
              AppSizes.mediumGap * .3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const HeroHeaderWidget(),
              const HeaderWidget(),
              //const HeroHeaderWidget(),
              SizedBox(
                height: AppSizes.mediumGap,
              ),
              const SearchBarWidget(),
              SizedBox(height: AppSizes.mediumGap),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manage Passwords",
                    style: TextStyle(
                      fontSize: AppSizes.secondaryFontSize * .85,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize * .8,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 108, 107, 107),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: AppSizes.mediumGap,
              ),
              const PasswordCategoryWidget(),
              SizedBox(height: AppSizes.mediumGap),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently Used",
                    style: TextStyle(
                      fontSize: AppSizes.secondaryFontSize * .85,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: AppSizes.tertiaryFontSize * .8,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 108, 107, 107),
                    ),
                  )
                ],
              ),
              RecentlyUsedListWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddPassword()));
              },
              icon: const Icon(Icons.add))),
    );
  }
}

//hero header
class HeroHeaderWidget extends StatelessWidget {
  const HeroHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              "images/Secure Pass black.png",
              height: AppSizes.largeGap * 3,
              width: AppSizes.largeGap * 5,
            ),
            IconButton(
              icon: const Icon(Icons.notifications,
                  color: Color.fromRGBO(233, 176, 64, 1)),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
