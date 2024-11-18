import 'package:flutter/material.dart';
import 'package:horizontal_list_view/horizontal_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Row(
              children: [
                Icon(Icons.sunny),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22,),
            child: Text(
              'AKL BEYTI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
              children: <Widget>[
                Container(
                  width: 270,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3DA0A7),
                    borderRadius: BorderRadius.circular(15), // حواف دائرية
                    image: const DecorationImage(
                      image: AssetImage('asstes/image/Card.png'),
                      // صورة من مجلد assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 50, color: Colors.red),
                      SizedBox(height: 10),
                      Text(
                        'Card 2',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 270,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3DA0A7),
                    borderRadius: BorderRadius.circular(15), // حواف دائرية
                    image: const DecorationImage(
                      image: AssetImage('asstes/image/Card.png'),
                      // صورة من مجلد assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 50, color: Colors.red),
                      SizedBox(height: 10),
                      Text(
                        'Card 2',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 270,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3DA0A7),
                    borderRadius: BorderRadius.circular(15), // حواف دائرية
                    image: const DecorationImage(
                      image: AssetImage('asstes/image/Card.png'),
                      // صورة من مجلد assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 50, color: Colors.red),
                      SizedBox(height: 10),
                      Text(
                        'Card 2',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 270,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3DA0A7),
                    borderRadius: BorderRadius.circular(15), // حواف دائرية
                    image: const DecorationImage(
                      image: AssetImage('asstes/image/Card.png'),
                      // صورة من مجلد assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 50, color: Colors.red),
                      SizedBox(height: 10),
                      Text(
                        'Card 2',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // ارتفاع الـ Container
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: const Text(
              'This is a bottom container!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // ارتفاع الـ Container
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: const Text(
              'This is a bottom container!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // ارتفاع الـ Container
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              'This is a bottom container!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // ارتفاع الـ Container
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              'This is a bottom container!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // ارتفاع الـ Container
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              'This is a bottom container!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // ارتفاع الـ Container
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              'This is a bottom container!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
