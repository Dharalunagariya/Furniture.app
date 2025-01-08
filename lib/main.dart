import 'package:flutter/material.dart';
import 'package:furniture_app/view/Check%20out/Checkout.dart';
import 'package:furniture_app/view/Congrats/Congrats.dart';
import 'package:furniture_app/view/Home/Homescreen.dart';
import 'package:furniture_app/view/Login/Login.dart';
import 'package:furniture_app/view/Navigation/Navigation_bar.dart';
import 'package:furniture_app/view/Notificationscreen/Notification.dart';
import 'package:furniture_app/view/Profile/Profile.dart';
import 'package:furniture_app/view/Sign%20up/Signup.dart';
import 'package:furniture_app/view/onboarding/Onboarding_screen.dart';

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
      // home: NavigationBarscreen(),
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => OnboardingScreen(),
        'login': (context) => Login(),
        'signup': (context) => Signup(),
        'navigation': (context) => NavigationBarscreen(),
        'Checkout': (context) => Checkout(),
        'Congrats': (context) => Congrats(),
        'Notificationscreen': (context) => Notificationscreen(),
        'Profilescreen': (context) => Profilescreen(),
      },
    );
  }
}
