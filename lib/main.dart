import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/layout_view.dart';
import 'features/settings_provider.dart';
//123456789tyjujikojhgsdfgh
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
      },
    );
  }
}
