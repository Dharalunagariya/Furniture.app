import 'package:flutter/material.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 455,
            width: double.infinity,
            child: Image.asset('images/Media (13).png'),
          ),
        ],
      ),
    );
  }
}
