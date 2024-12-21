import 'package:flutter/material.dart';



class NavigationBarscreen extends StatefulWidget {
  const NavigationBarscreen({super.key});

  @override
  State<NavigationBarscreen> createState() => _NavigationBarscreenState();
}

class _NavigationBarscreenState extends State<NavigationBarscreen> {
  int visit=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBar(items:[],),
    );
  }
}
