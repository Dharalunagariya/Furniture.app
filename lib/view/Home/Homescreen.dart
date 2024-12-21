import 'package:flutter/material.dart';
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
  ];
  List<String> comman0 = [
    '\$12',
  ];
  List<String> comman2 = [
    'Minimal Stand',
  ];

  List<String> comman1 = [
    "Font/images/Media (7).png",
    "Font/images/Media (3).png",
    "Font/images/Media (4).png",
    "Font/images/Media (5).png",
  ];
  @override
  Widget build(BuildContext context) {
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
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/Media (12).png',
                          ),
                          CommanText(
                            text: '  Black Simple Lamp',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          CommanText(
                            text: '  \$12.00',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ],
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
