import 'package:flutter/material.dart';
import 'package:furniture_app/view/Home/Homescreen.dart';
import 'package:furniture_app/view/Login/Login.dart';
import 'package:furniture_app/view/Navigation/Navigation_bar.dart';
import 'package:furniture_app/view/Sign%20up/Signup.dart';
import 'package:furniture_app/view/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NavigationBarscreen(),
    );
  }
}
