import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';
import 'package:furniture_app/res/constant/App_image.dart';
import 'package:furniture_app/res/constant/App_text.dart';
import 'package:furniture_app/view/Login/Login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 843,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.boardingimage), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 96,
              left: 32,
              right: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommanText(
                  text: AppText.boardingtext,
                  fontSize: 32,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
                SizedBox(
                  height: 24,
                ),
                CommanText(
                  text: AppText.boardingtext1,
                  fontSize: 16,
                  color: Color(0xff909090),
                  weight: FontWeight.w400,
                ),
                Spacer(),
                SizedBox(
                  height: 54,
                  width: 311,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return Login();
                      // }));
                      Navigator.pushNamed(context, 'login');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff242424),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: CommanText(
                      text: AppText.boardingtext3,
                      color: Color(0xffFFFFFF),
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 58,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
