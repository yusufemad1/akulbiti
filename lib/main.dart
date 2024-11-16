import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/config/application_theme_manager.dart';
import 'features/layout_view.dart';
import 'features/settings_provider.dart';
import 'features/welcome_view.dart';
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
      theme: ApplicationThemeManager.lightThemeData,
      darkTheme: ApplicationThemeManager.darkThemeData,
      themeMode: vm.currentThemeMode,
      initialRoute: WelcomeView.routeName,
      routes: {
        LayoutView.routeName: (context) => const LayoutView(),
        WelcomeView.routeName: (context) => const WelcomeView(),

      },
    );
  }
}
