import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class shippingscreen extends StatefulWidget {
  const shippingscreen({super.key});

  @override
  State<shippingscreen> createState() => _shippingscreenState();
}

class _shippingscreenState extends State<shippingscreen> {
  bool currentvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_sharp),
        title: CommanText(
          text: 'Shipping address',
          fontSize: 16,
          weight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 650,
            // width: double.infinity,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 155,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.2,
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                activeColor: Color(0xff242424),
                                value: currentvalue,
                                onChanged: (value) {
                                  setState(() {
                                    currentvalue = value!;
                                  });
                                },
                              ),
                            ),
                            CommanText(
                              text: 'Use as the shipping address',
                              fontSize: 18,
                              weight: FontWeight.w400,
                              color: Color(0xff242424),
                            ),
                          ],
                        ),
                        CommanText(
                          text: '   Bruno Fernandes',
                          fontSize: 18,
                          weight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                        Divider(
                          indent: 16,
                          endIndent: 8,
                        ),
                        CommanText(
                          text:
                              '    25 rue Robert Latouche, Nice, 06200, Côte  \n    Dazur,France',
                          fontSize: 14,
                          weight: FontWeight.w400,
                          color: Color(0xff909090),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 303,
              right: 20,
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffFFFFFF),
                ),
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
