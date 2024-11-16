import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  static String routeName = 'WelcomeView';
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body:  const Column(
        children: [


        ],
      ),
    );
  }
}
