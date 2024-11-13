import 'package:akulbiti/features/matbakhi/pages/matbakhi_view.dart';
import 'package:akulbiti/features/settings/pages/setting_view.dart';
import 'package:flutter/cupertino.dart';

class SettingsProvider extends ChangeNotifier {
  List<Widget> screans = [MatbakhiView(), SettingView()];
  int currentIndex = 0;


  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

}