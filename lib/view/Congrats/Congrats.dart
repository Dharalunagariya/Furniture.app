import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class Congrats extends StatefulWidget {
  const Congrats({super.key});

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 124,
        ),
        child: Column(
          children: [
            Center(
              child: CommanText(
                text: 'SUCCESS!',
                fontSize: 32,
                weight: FontWeight.w600,
                color: Color(0xff303030),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              height: 255,
              width: double.infinity,
              child: Image.asset('images/Graphics (4).jpg'),
            ),
            SizedBox(
              height: 25,
            ),
            CommanText(
              text:
                  'Your order will be delivered soon.\nThank you for choosing our app!',
              fontSize: 16,
              weight: FontWeight.w400,
              color: Color(0xff909090),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff242424),
                ),
                child: Center(
                  child: CommanText(
                    text: 'Track your orders',
                    fontSize: 16,
                    weight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff242424),
                ),
                child: Center(
                  child: CommanText(
                    text: 'Back to home',
                    fontSize: 16,
                    weight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
