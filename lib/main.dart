import 'package:akulbiti/features/Register/pages/register.dart';
import 'package:akulbiti/features/login/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/layout_view.dart';
import 'features/settings_provider.dart';
//123456789tyjujikojhg
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm= Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Akl Beti',
      debugShowCheckedModeBanner: false,
      initialRoute: LayoutView.routeName,
      routes: {
        LayoutView.routeName: (context) => LayoutView(),
        Loginview.routeName:(context) => Loginview(),
        RegisterView.routeName:(context) => RegisterView(),
      },
    );
  }
}
