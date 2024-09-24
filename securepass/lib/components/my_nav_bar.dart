import 'package:flutter/material.dart';
import '../measures/consts.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex; // Track the current selected index
  final Function(int) onItemTapped; // Callback to handle navigation

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: AppSizes.mediumGap * 2.5,
      surfaceTintColor: Colors.amber,
      shape: const CircularNotchedRectangle(),
      notchMargin: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.home,
                color: currentIndex == 0 ? const Color.fromRGBO(26, 46, 107, 1) : Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {
                if (currentIndex != 0) {
                  onItemTapped(0); // Navigate if it's not the current page
                }
              }),
          IconButton(
              icon: Icon(
                Icons.lock,
                color: currentIndex == 1 ? const Color.fromRGBO(26, 46, 107, 1)  : Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {
                if (currentIndex != 1) {
                  onItemTapped(1);
                }
              }),
          IconButton(
              icon: Icon(
                Icons.key,
                color: currentIndex == 2 ? const Color.fromRGBO(26, 46, 107, 1)  : Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {
                if (currentIndex != 2) {
                  onItemTapped(2);
                }
              }),
          IconButton(
              icon: Icon(
                Icons.person,
                color: currentIndex == 3 ?const Color.fromRGBO(26, 46, 107, 1) : Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {
                if (currentIndex != 3) {
                  onItemTapped(3); // Navigate if the profile icon is tapped and it's not the current page
                }
              }),
        ],
      ),
    );
  }
}
