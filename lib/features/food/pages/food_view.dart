import 'package:flutter/material.dart';

class FoodView extends StatelessWidget {
  static String routeName = 'FoodView';

  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Food',
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
