import 'package:flutter/material.dart';

import '../measures/consts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: AppSizes.mediumGap*2.5,
      surfaceTintColor: Colors.amber,
      shape: const CircularNotchedRectangle(),
      notchMargin: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.lock,
                color: Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {}),
          // space for floating action button
          IconButton(
              icon: const Icon(
                Icons.key,
                color: Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.amber,
              ),
              iconSize: AppSizes.largeIconSize * .85,
              onPressed: () {}),
        ],
      ),
    );
  }
}
