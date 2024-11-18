import 'package:flutter/material.dart';
import 'package:horizontal_list_view/horizontal_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            HorizontalListView(
              crossAxisCount: 2, // Number of items displayed per row.
              crossAxisSpacing: 3.0, // Spacing between items in the same row.
              alignment: CrossAxisAlignment.center, // Alignment of items within the row (default is center)
              controller: HorizontalListViewController(), //Optional scroll controller.
              children: [
                Container(
                  width: 300, // عرض ثابت
                  height: 150, // ارتفاع ثابت
                  margin: EdgeInsets.all(20), // تباعد خارجي
                  padding: EdgeInsets.all(16), // تباعد داخلي
                  decoration: BoxDecoration(
                    color: Colors.blue, // اللون
                    borderRadius: BorderRadius.circular(10), // الزوايا المدورة
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Container مع مساحة محددة'),
                      SizedBox(height: 10),
                      Text('يمكنك التحكم في الحجم باستخدام الخصائص'),
                    ],
                  ),
                ),
                Container(
                  width: 300, // عرض ثابت
                  height: 150, // ارتفاع ثابت
                  margin: EdgeInsets.all(20), // تباعد خارجي
                  padding: EdgeInsets.all(16), // تباعد داخلي
                  decoration: BoxDecoration(
                    color: Colors.blue, // اللون
                    borderRadius: BorderRadius.circular(10), // الزوايا المدورة
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Container مع مساحة محددة'),
                      SizedBox(height: 10),
                      Text('يمكنك التحكم في الحجم باستخدام الخصائص'),
                    ],
                  ),
                ),
                Container(
                  width: 300, // عرض ثابت
                  height: 150, // ارتفاع ثابت
                  margin: EdgeInsets.all(20), // تباعد خارجي
                  padding: EdgeInsets.all(16), // تباعد داخلي
                  decoration: BoxDecoration(
                    color: Colors.blue, // اللون
                    borderRadius: BorderRadius.circular(10), // الزوايا المدورة
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Container مع مساحة محددة'),
                      SizedBox(height: 10),
                      Text('يمكنك التحكم في الحجم باستخدام الخصائص'),
                    ],
                  ),
                ),

              ],
            ),

         const Text('Home',style: TextStyle(color: Colors.black,fontSize: 30)

        ),         ],
        ),

    ),
    );
  }
}
