import 'package:akulbiti/features/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatelessWidget {
  static String routeName = 'layoutView';

  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: vm.screans[vm.currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: theme.primaryColor,
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: vm.currentIndex,
          onTap: vm.changeIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Image(image:AssetImage('asstes/image/Home.png')),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image(image:AssetImage('asstes/image/Search Icon.png')),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Image(image:AssetImage('asstes/image/Profile Icon .png')),
                label: "Settings")
          ],
        ),
      ),
    );
  }
}
