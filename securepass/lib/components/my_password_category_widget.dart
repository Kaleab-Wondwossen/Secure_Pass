import 'package:flutter/material.dart';

import '../measures/consts.dart';

class PasswordCategoryWidget extends StatelessWidget {
  const PasswordCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryItemWidget(
            icon: Icons.social_distance, label: 'Social', color: Colors.blue),
        CategoryItemWidget(
            icon: Icons.apps, label: 'Apps', color: Colors.amber),
        CategoryItemWidget(
            icon: Icons.credit_card, label: 'Card', color: Colors.green),
      ],
    );
  }
}

// Category Item Widget
class CategoryItemWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CategoryItemWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.mediumGap * 5,
      height: AppSizes.mediumGap * 5,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 10),
          Text(label,
              style: TextStyle(color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}