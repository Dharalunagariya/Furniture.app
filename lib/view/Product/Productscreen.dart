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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: 0.455 * height,
                  width: double.infinity,
                  child: Image.asset('images/Media (13).png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          CommanText(
            text: 'Minimal Stand',
            fontSize: 24,
            weight: FontWeight.w400,
            color: Color(0xff242424),
          ),
        ],
      ),
    );
  }
}
