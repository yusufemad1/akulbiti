import 'package:flutter/material.dart';

class SweetView extends StatelessWidget {
  static String routeName = 'SweetView';
  const SweetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Sweet',
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
