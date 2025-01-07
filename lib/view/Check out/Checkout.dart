import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _FavoriteState();
}

class _FavoriteState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommanText(
          text: 'Check out',
          fontSize: 16,
          weight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommanText(
                  text: 'Shipping address',
                  fontSize: 18,
                  weight: FontWeight.w600,
                  color: Color(0xff909090),
                ),
                Icon(
                  Icons.border_color_outlined,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 119,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommanText(
                        text: 'Bruno Fernandes',
                        fontSize: 18,
                        weight: FontWeight.w600,
                        color: Color(0xff242424)),
                    Divider(),
                    CommanText(
                        text:
                            '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                        fontSize: 14,
                        weight: FontWeight.w400,
                        color: Color(0xff909090)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommanText1(
                  text: 'Payment',
                  fontSize: 18,
                  weight: FontWeight.w400,
                  color: Color(0xff909090),
                ),
                Icon(
                  Icons.border_color_outlined,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 68,
              width: double.infinity,
              color: Color(0xffFFFFFF),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 38,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffFFFFFF),
                        image: DecorationImage(
                            image: AssetImage('images/mastercard (5).jpg')),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    CommanText(
                      text: '**** **** **** 3947',
                      fontSize: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff242424),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommanText1(
                  text: 'Delivery method',
                  fontSize: 16,
                  weight: FontWeight.w400,
                  color: Color(0xff909090),
                ),
                Icon(
                  Icons.border_color_outlined,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 68,
              width: double.infinity,
              color: Color(0xffFFFFFF),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        image: DecorationImage(
                            image: AssetImage('images/Слой 2 (1).jpg')),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CommanText(
                      text: 'Fast (2-3days)',
                      fontSize: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff242424),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 134,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 19,
                  right: 18,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Order',
                          fontSize: 18,
                          weight: FontWeight.w400,
                          color: Color(0xff909090),
                        ),
                        CommanText(
                          text: '\$ 95.00',
                          fontSize: 18,
                          weight: FontWeight.w400,
                          color: Color(0xff242424),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Delivery',
                          fontSize: 18,
                          weight: FontWeight.w400,
                          color: Color(0xff909090),
                        ),
                        CommanText(
                          text: '\$ 5.00',
                          fontSize: 18,
                          weight: FontWeight.w400,
                          color: Color(0xff242424),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Total',
                          fontSize: 18,
                          weight: FontWeight.w400,
                          color: Color(0xff909090),
                        ),
                        CommanText(
                          text: '\$ 100.00',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Congrats');
              },
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff242424),
                ),
                child: Center(
                  child: CommanText(
                    text: 'Submit order',
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                    weight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
