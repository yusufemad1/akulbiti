import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  static String routeName = 'WelcomeView';
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: theme.primaryColor,
            image: const DecorationImage(
              image: AssetImage('asstes/image/Create Account Options.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: Text(
              'نص فوق الخلفية',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
