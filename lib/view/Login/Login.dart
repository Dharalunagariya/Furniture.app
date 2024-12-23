import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';
import 'package:furniture_app/res/comman/commantextfield.dart';
import 'package:furniture_app/res/constant/App_image.dart';
import 'package:furniture_app/res/constant/App_text.dart';
import 'package:furniture_app/view/Sign%20up/Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 64,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Image.asset(AppImage.boardingimage1),
            SizedBox(
              height: 24,
            ),
            CommanText(
              text: AppText.boardingtext4,
              fontSize: 32,
              color: Color(0xff242424),
              weight: FontWeight.w600,
            ),
            SizedBox(
              height: 72,
            ),
            Commantextfield(
              hinttext: 'Email',
              fontSize: 12,
              color: Color(0xff909090),
              icon: Icon(Icons.keyboard_arrow_down),
            ),
            SizedBox(
              height: 16,
            ),
            Commantextfield(
              hinttext: 'Password',
              fontSize: 12,
              color: Color(0xff909090),
              icon: Icon(Icons.visibility),
            ),
            SizedBox(
              height: 32,
            ),
            CommanText1(
              text: AppText.boardingtext5,
              fontSize: 16,
              color: Color(0xff303030),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 0.056 * screenheight,
              // height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Signup();
                  // }));
                  Navigator.pushNamed(context, 'signup');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff242424),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: CommanText(
                  text: 'Log in',
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                  weight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CommanText1(
              text: AppText.boardingtext6,
              fontSize: 16,
              weight: FontWeight.w400,
              color: Color(0xff303030),
            ),
          ],
        ),
      ),
    );
  }
}
