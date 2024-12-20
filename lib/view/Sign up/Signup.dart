import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';
import 'package:furniture_app/res/comman/commantextfield.dart';
import 'package:furniture_app/res/constant/App_image.dart';
import 'package:furniture_app/res/constant/App_text.dart';
import 'package:furniture_app/view/Home/Homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 64,
          left: 30,
          right: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppImage.boardingimage1,
              ),
              SizedBox(
                height: 44,
              ),
              CommanText(
                text: 'WELCOME',
                fontSize: 32,
                weight: FontWeight.w600,
                color: Color(0xff242424),
              ),
              SizedBox(
                height: 72,
              ),
              Commantextfield(
                hinttext: 'Name',
                fontSize: 12,
                color: Color(0xff909090),
                icon: Icon(Icons.keyboard_arrow_down),
                weight: FontWeight.w400,
              ),
              SizedBox(
                height: 16,
              ),
              Commantextfield(
                hinttext: 'Email',
                fontSize: 12,
                color: Color(0xff909090),
                weight: FontWeight.w400,
              ),
              SizedBox(
                height: 16,
              ),
              Commantextfield(
                hinttext: 'Password',
                fontSize: 12,
                color: Color(0xff909090),
                weight: FontWeight.w400,
                icon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: 16,
              ),
              Commantextfield(
                hinttext: 'Confirm password',
                fontSize: 12,
                color: Color(0xff909090),
                weight: FontWeight.w400,
                icon: Icon(Icons.visibility),
              ),
              SizedBox(
                height: 32,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homescreen();
                  }));
                  log('message');
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
                      text: AppText.boardingtext7,
                      fontSize: 16,
                      weight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                          log('message');
                        },
                      text: AppText.boardingtext8,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xff303030),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                  text: AppText.boardingtext9,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Color(0xff909090),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
