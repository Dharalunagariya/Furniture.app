import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommanText(
          text: 'Profile ',
          fontSize: 16,
          weight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/avatar (1).jpg')),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    CommanText1(
                      text: 'Kristin Watson',
                      fontSize: 20,
                      weight: FontWeight.w700,
                      color: Color(0xff303030),
                    ),
                    CommanText1(
                      text: 'bruno203@gmail.com',
                      fontSize: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff808080),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CommanText(
                          text: 'My orders',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 230,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CommanText(
                      text: 'Already have 10 orders',
                      fontSize: 12,
                      weight: FontWeight.w400,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CommanText(
                          text: 'Shipping Addresses',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 135,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CommanText(
                      text: '03 Addresses',
                      fontSize: 12,
                      weight: FontWeight.w400,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CommanText(
                          text: 'Payment Method',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 155,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CommanText(
                      text: 'You have 2 cards',
                      fontSize: 12,
                      weight: FontWeight.w400,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CommanText(
                          text: 'My reviews',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 210,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CommanText(
                      text: 'Reviews for 5 items',
                      fontSize: 12,
                      weight: FontWeight.w400,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CommanText(
                          text: 'Setting',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 250,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    CommanText(
                      text: 'Notification, Password, FAQ, Contact',
                      fontSize: 12,
                      weight: FontWeight.w400,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
