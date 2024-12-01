import 'package:akulbiti/features/settings/widgets/setting_widget.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(),
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Color(0xffE8F2FE), shape: BoxShape.circle),
                          child: Image.asset("asstes/image/replace here.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "yuosef emad",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 380,
                          height: 50,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[800],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 1),
                        child: Tab(text: "Services"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 1),
                        child: Tab(text: "Products"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 1),
                        child: Tab(text: "Reviews"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Center(
                              child: Column(
                            children: [
                              SettingWidget(
                                  text: "fdgvdfg",
                                  price: 'dfsdfsdf',
                                  image: 'asstes/image/Rectangle 6.png'),
                              SettingWidget(
                                  text: "fdgvdfg",
                                  price: 'dfsdfsdf',
                                  image: 'asstes/image/Rectangle 6.png'),
                              SettingWidget(
                                  text: "fdgvdfg",
                                  price: 'dfsdfsdf',
                                  image: 'asstes/image/Rectangle 6.png'),
                              SettingWidget(
                                  text: "fdgvdfg",
                                  price: 'dfsdfsdf',
                                  image: 'asstes/image/Rectangle 6.png'),
                            ],
                          )),
                        ),
                        SingleChildScrollView(
                          child: Center(
                            child: Column(
                              children: [
                                SettingWidget(
                                    text: "fdgvdfg",
                                    price: 'dfsdfsdf',
                                    image: 'asstes/image/Rectangle 6.png'),
                                SettingWidget(
                                    text: "fdgvdfg",
                                    price: 'dfsdfsdf',
                                    image: 'asstes/image/Rectangle 6.png'),
                                SettingWidget(
                                    text: "fdgvdfg",
                                    price: 'dfsdfsdf',
                                    image: 'asstes/image/Rectangle 6.png'),
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Center(
                            child: Column(
                              children: [
                                SettingWidget(text: "fdgvdfg", price: 'dfsdfsdf', image: 'asstes/image/Rectangle 6.png'),
                                SettingWidget(text: "fdgvdfg", price: 'dfsdfsdf', image: 'asstes/image/Rectangle 6.png'),
                                SettingWidget(text: "fdgvdfg", price: 'dfsdfsdf', image: 'asstes/image/Rectangle 6.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
