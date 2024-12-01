import 'package:akulbiti/features/search/pages/search_view.dart';
import 'package:akulbiti/features/settings/pages/setting_view.dart';
import 'package:flutter/material.dart';

import 'home/pages/home_page.dart';

class SettingsProvider extends ChangeNotifier {
  List<Widget> screans = [ HomePage(),const SearchView(),  SettingView()];
  int currentIndex = 0;
  ThemeMode currentThemeMode = ThemeMode.light;


  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  changeTheme(ThemeMode newThemeMode) {
    if (currentThemeMode == newThemeMode) return;

    currentThemeMode = newThemeMode;
    notifyListeners();
  }

}