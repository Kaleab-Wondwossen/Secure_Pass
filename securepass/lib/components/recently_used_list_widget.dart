import 'package:flutter/material.dart';

class RecentlyUsedListWidget extends StatelessWidget {
  final List<Map<String, String>> recentlyUsed = [
    {
      "name": "images/apple_logo.png",
      "email": "user.email@gmail.com",
      "type": "Apple Account"
    },
    {
      "name": "images/google_icon.png",
      "email": "user.email@gmail.com",
      "type": "Google Account"
    },
    {
      "name": "images/snapchat.png",
      "email": "user.email@gmail.com",
      "type": "Snapchat Account"
    },
    {
      "name": "images/discord.png",
      "email": "user.email@gmail.com",
      "type": "Discord Account"
    },
    {
      "name": "images/instagram.jpeg",
      "email": "user.email@gmail.com",
      "type": "Instagram Account"
    },
    {
      "name": "images/pintrest.png",
      "email": "user.email@gmail.com",
      "type": "Pintrest Account"
    },
    {
      "name": "images/unity.png",
      "email": "user.email@gmail.com",
      "type": "Unity In Account"
    },
  ];

  RecentlyUsedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: recentlyUsed.length,
        itemBuilder: (context, index) {
          // Check if the name is an image path or just text
          bool isImage = recentlyUsed[index]['name']!.endsWith('.png') ||
              recentlyUsed[index]['name']!.endsWith('.jpg') ||
              recentlyUsed[index]['name']!.endsWith('.jpeg');

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              // If it's an image, load the image from assets; otherwise, show the first letter of the name
              backgroundImage: isImage
                  ? AssetImage(recentlyUsed[index]['name']!)
                  : null, // No background image if it's not an image path
              child: isImage
                  ? null // If it's an image, don't show any text
                  : Text(
                      recentlyUsed[index]['name']![
                          0], // Show the first letter for non-image entries
                      style: const TextStyle(color: Colors.black),
                    ),
            ),
            title: Text(
              false
                  ? "Image-based Login"
                  : recentlyUsed[index]
                      ['type']!, // Optional: Customize text for image entries
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(recentlyUsed[index]['email']!),
            trailing: const Icon(Icons.more_vert),
          );
        },
      ),
    );
  }
}