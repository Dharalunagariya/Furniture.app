import 'package:flutter/material.dart';
import 'package:furniture_app/res/comman/commantext.dart';

class Orderscreen extends StatefulWidget {
  const Orderscreen({super.key});

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}

class _OrderscreenState extends State<Orderscreen> {
  List<String> text = [
    'Canceled',
    'Processing',
    'Delivered',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          title: CommanText(
            text: 'My orders',
            fontSize: 16,
            weight: FontWeight.w600,
            color: Color(0xff242424),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(
              indicator: BoxDecoration(),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Row(
                  children: [
                    CommanText(
                      text: 'Delivered',
                      fontSize: 18,
                      weight: FontWeight.w600,
                      color: Color(0xff242424),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CommanText(
                      text: 'Processing',
                      fontSize: 18,
                      weight: FontWeight.w600,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CommanText(
                      text: 'Canceled',
                      fontSize: 18,
                      weight: FontWeight.w600,
                      color: Color(0xff909090),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 700,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, Index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 22,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 173,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CommanText(
                                  text: 'Order No238562312',
                                  fontSize: 16,
                                  weight: FontWeight.w400,
                                  color: Color(0xff242424),
                                ),
                                CommanText(
                                  text: '20/03/2020',
                                  fontSize: 14,
                                  weight: FontWeight.w400,
                                  color: Color(0xff909090),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '03',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff242424),
                                        ),
                                      ),
                                    ],
                                    text: 'Quantity:  ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff909090),
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\$150',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff242424),
                                        ),
                                      ),
                                    ],
                                    text: 'Total Amount:   ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff909090),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 32),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 36,
                                    width: 78,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff242424),
                                    ),
                                    child: Center(
                                      child: CommanText(
                                          text: 'Detail',
                                          fontSize: 16,
                                          weight: FontWeight.w400,
                                          color: Color(0xffFFFFFF)),
                                    ),
                                  ),
                                  CommanText(
                                    text: text[Index],
                                    fontSize: 16,
                                    weight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
