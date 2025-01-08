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
    'Discover hot sale furnitures this     week.',
    'Your order #123456789 has been canceled',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 650,
              child: ListView.builder(
                itemCount: text.length,
                itemBuilder: (context, Index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 16,
                          left: 20,
                          right: 20,
                        ),
                        height: 84,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(image[Index])),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommanText(
                                      text: text[Index],
                                      fontSize: 14,
                                      weight: FontWeight.w600,
                                      color: Color(0xff242424),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CommanText(
                                          text:
                                              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. ",
                                          fontSize: 14,
                                          weight: FontWeight.w400,
                                          color: Color(0xff909090),
                                        ),
                                        CommanText(
                                          text: 'New',
                                          fontSize: 14,
                                          weight: FontWeight.w400,
                                          color: Color(0xff27AE60),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 18,
                        endIndent: 18,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
