import 'package:akulbiti/features/Register/pages/register.dart';
import 'package:akulbiti/features/login/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/food/pages/food_view.dart';
import 'features/layout_view.dart';
import 'features/readyToCook/pages/ready_to_cook.dart';
import 'features/settings_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/sweet/pages/sweet_view.dart';
import 'features/welcome_view.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
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
      initialRoute: WelcomeView.routeName,
      routes: {
        LayoutView.routeName: (context) => const LayoutView(),
        Loginview.routeName:(context) => Loginview(),
        RegisterView.routeName:(context) => RegisterView(),
        WelcomeView.routeName:(context) => const WelcomeView(),
        FoodView.routeName:(context) => const FoodView(),
        SweetView.routeName:(context) => const SweetView(),
        ReadyToCook.routeName:(context) => const ReadyToCook(),



      },
    );
  }
}
