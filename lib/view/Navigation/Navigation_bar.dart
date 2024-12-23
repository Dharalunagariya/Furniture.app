import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/view/Home/Homescreen.dart';
import 'package:furniture_app/view/Product/Productscreen.dart';

List<TabItem> items = [
  TabItem(icon: (Icons.home)),
  TabItem(icon: (Icons.bookmark)),
  TabItem(icon: (Icons.notifications)),
  TabItem(icon: (Icons.person)),
];

class NavigationBarscreen extends StatefulWidget {
  const NavigationBarscreen({super.key});

  @override
  State<NavigationBarscreen> createState() => _NavigationBarscreenState();
}

class _NavigationBarscreenState extends State<NavigationBarscreen> {
  int visit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Homescreen(),
        Productscreen(),
        Text('notifition'),
        Text('person'),
      ][visit],
      bottomNavigationBar: Container(
        // height:,
        padding: const EdgeInsets.only(bottom: 50),
        // padding: const EdgeInsets.only(bottom: 30, right: 32, left: 32),
        child: BottomBarFloating(
          items: items,
          backgroundColor: Colors.transparent,
          color: Colors.black,
          colorSelected: Colors.grey,
          indexSelected: visit,
          paddingVertical: 8,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
