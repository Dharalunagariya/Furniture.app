import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/res/comman/commantext.dart';
import 'package:furniture_app/res/constant/App_text.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> comman = [
    'Black Simple Lamp',
    'Minimal Stand',
    'Coffee Chair',
    'Simple Desk',
  ];
  List<String> comman0 = [
    '\$12',
    '\$25',
    '\$12',
    '\$12',
  ];

  List<String> images = [
    'images/Media (17).png',
    'images/Media (18).png',
    'images/Media (20).png',
    'images/Media (23).png',
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.search,
            size: 40,
          ),
          centerTitle: true,
          title: Column(
            children: [
              CommanText1(
                text: AppText.boardingtext10,
                fontSize: 14,
                color: Color(0xff909090),
                weight: FontWeight.w400,
              ),
              CommanText1(
                text: AppText.boardingtext11,
                fontSize: 18,
                color: Color(0xff909090),
                weight: FontWeight.w700,
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
              ),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(),
              tabs: [
                Column(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      // height: 0.044 * height,
                      // width: 0.044 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff242424),
                      ),
                      child: Icon(
                        Icons.star,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CommanText(
                      text: 'Popular',
                      fontSize: 10,
                      color: Color(0xff242424),
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Icon(
                          Icons.chair,
                          color: Color(0xff909090),
                        ),
                      ),
                    ),
                    CommanText(
                      text: 'Chair',
                      fontSize: 14,
                      color: Color(0xff242424),
                      weight: FontWeight.w400,
                    )
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Icon(
                          Icons.table_restaurant,
                          color: Color(0xff909090),
                        ),
                      ),
                    ),
                    CommanText(
                      text: 'Table',
                      fontSize: 14,
                      color: Color(0xff242424),
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Icon(
                          Icons.chair_sharp,
                          color: Color(0xff909090),
                        ),
                      ),
                    ),
                    CommanText(
                      text: 'Armchair',
                      fontSize: 10,
                      color: Color(0xff242424),
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Icon(
                          Icons.bed_sharp,
                          color: Color(0xff909090),
                        ),
                      ),
                    ),
                    CommanText(
                      text: 'Bed',
                      fontSize: 14,
                      color: Color(0xff242424),
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                    // mainAxisSpacing: 15,
                    // crossAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 16,
                        right: 24,
                      ),
                      child: Container(
                        width: 157,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              images[index],
                              fit: BoxFit.fill,
                            ),
                            CommanText(
                              text: comman[index],
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            CommanText(
                              text: comman0[index],
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
