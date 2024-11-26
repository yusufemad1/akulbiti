import 'package:flutter/material.dart';

class ReadyToCook extends StatelessWidget {
  static String routeName = 'ReadyToCook';
  const ReadyToCook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Ready To Cook',
              style: TextStyle(),
            ),
          ],
        ),
        automaticallyImplyLeading: false, // إخفاء السهم الافتراضي
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
