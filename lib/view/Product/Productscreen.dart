import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 52,
              ),
              height: 455,
              // height: 0.455 * height,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Media (13).png'),
                  alignment: Alignment.centerRight,
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 56),
                      Container(
                        height: 192,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 5,
                                    color: Color(0xff909090),
                                  ),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  color: Color(0xffB4916C),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 5,
                                    color: Color(0xffF5F5F5),
                                  ),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  color: Color(0xffbaE4CBAD),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 5,
                                    color: Color(0xffF5F5F5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 250,
                width: 375,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommanText(
                      text: 'Minimal Stand',
                      fontSize: 24,
                      weight: FontWeight.w400,
                      color: Color(0xff242424),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: '\$ 50',
                          fontSize: 24,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        CommanText1(
                          text: '+   01   -',
                          fontSize: 24,
                          weight: FontWeight.w400,
                          color: Color(0xff242424),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CommanText(
                          text: '4.5',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CommanText(
                          text: '(50 reviews)',
                          fontSize: 14,
                          weight: FontWeight.w600,
                          color: Color(0xff909090),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CommanText(
                      text:
                          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is   truly one of the best furnitures in any family for   now. With 3 different colors, you can easily       select the best match for your home.',
                      color: Color(0xff909090),
                      fontSize: 14,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffE0E0E0),
                    ),
                    child: Icon(
                      Icons.bookmark,
                      color: Color(0xff909090),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 56,
                    width: 263,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff242424),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'Checkout');
                        },
                        child: CommanText(
                          text: 'Add to cart',
                          fontSize: 16,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
