import 'package:akulbiti/features/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatelessWidget {
  static String routeName = 'layoutView';
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);

    return   Scaffold(
      body: vm.screans[vm.currentIndex],
      bottomNavigationBar: BottomAppBar(
        height: 90,
        notchMargin: 10,
        elevation: 0,
        // shape: const CircularNotchedRectangle(),
        // notchMargin: 12,
        child: BottomNavigationBar(
          currentIndex: vm.currentIndex,
          onTap: vm.changeIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                ),
                label: "Settings")
          ],
        ),
      ),
        );
  }
}
