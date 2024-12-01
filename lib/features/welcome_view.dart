import 'package:flutter/material.dart';

import 'Register/pages/register.dart';
import 'login/pages/login.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(17),
                child: Text(
                  'Help your path to health goals with happiness',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Loginview.routeName,
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 150, vertical: 15), // لتحديد حجم الزر
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(16), // حواف دائرية للزر
                    ),
                    backgroundColor: Colors.black // لون الخلفية
                    ),
                child: const Text(
                    'Login',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), // تحديد نمط النص
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RegisterView.routeName,
                    );
                  },
                  child: const Text(
                    "Create New Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
