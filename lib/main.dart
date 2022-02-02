import 'package:flutter/material.dart';

import 'Screens/bottom_nav_screen.dart';
import 'Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange.shade600,
        cardColor: Colors.white70,
        backgroundColor: Colors.grey,
        colorScheme:
            ColorScheme.fromSwatch(accentColor: Colors.orange.shade200),
      ),
      home: SplashScreen(),
    );
  }
}
