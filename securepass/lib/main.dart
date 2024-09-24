import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/screens/login.dart';
import 'provider/themes.dart';

// void main() {
//   ChangeNotifierProvider(
//     create: (context) => ThemeNotifier(),
//     child: const MyApp(),
//   );
// }

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeNotifier>(
//       builder: (context, themeNotifier, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Demo',
//           theme: ThemeData.light(), // Light theme data
//           darkTheme: ThemeData.dark(), // Dark theme data
//           themeMode:
//               themeNotifier.themeMode, // Use the theme mode from the provider
//           home: const LogIn(), // Your initial page
//         );
//       },
//     );
//   }
// }


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}