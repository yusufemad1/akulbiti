import 'package:flutter/material.dart';
class SettingWidget extends StatelessWidget {
  String image;
  String text;
  String price;
   SettingWidget({super.key,required this.text,required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(
                top: 5, left: 40),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30, right: 40),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                price,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      );
  }
}
