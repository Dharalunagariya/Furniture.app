import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  List<String> image = [
    'images/2681826 1 (3).jpg',
    'images/2681826 1 (4).jpg',
    'images/2681826 1 (9).png',
    'images/2681826 1 (10).png',
    'images/2681826 1 (11).png',
  ];
  List<String> text = [
    'Your order #123456789 has been shipped successfully',
    'Your order #123456789 has been shipped',
    'Your order #123456789 has been confirmed',
    'Discover hot sale furnitures this week.',
    'Your order #123456789 has been canceled',
  ];
  List<String> text1 = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommanText(
          text: 'Notificaton',
          fontSize: 16,
          weight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, Index) {
            return Column(
              children: [
                Container(
                  height: 84,
                  width: double.infinity,
                  // child: Image.asset(image[Index]),
                ),
              ],
            );
          }),
    );
  }
}
