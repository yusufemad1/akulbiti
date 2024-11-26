import 'package:akulbiti/features/food/pages/food_view.dart';
import 'package:akulbiti/features/readyToCook/pages/ready_to_cook.dart';
import 'package:akulbiti/features/sweet/pages/sweet_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: false,
                autoPlayCurve: Curves.easeInBack,
                // منحنى التحريك
                reverse: false,
                initialPage: 0,
                // aspectRatio: 16/9,
                viewportFraction: 1.0,
              ),
              carouselController: _controller,
              items: [
                'asstes/image/food 1.jpg',
                'asstes/image/food 2.jpg',
                'asstes/image/food 1.jpg',
              ].map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            // const Padding(
            //   padding: EdgeInsets.only(left: 20, top: 20),
            //   child: Row(
            //     children: [
            //       Icon(Icons.sunny),
            //       SizedBox(
            //         width: 5,
            //       ),
            //       Text(
            //         'Good Morning',
            //         style: TextStyle(
            //           fontSize: 14,
            //           fontWeight: FontWeight.w400,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 22,
              ),
              child: Text(
                'AKL BEYTI',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        FoodView.routeName,
                      );
                    },
                    child: Container(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 15, bottom: 25, right: 60),
                            child: Text(
                              'FOOD',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SweetView.routeName,
                      );
                    },
                    child: Container(
                      width: 270,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3DA0A7),
                        borderRadius: BorderRadius.circular(15), // حواف دائرية
                        image: const DecorationImage(
                          image: AssetImage('asstes/image/Card 2.png'),
                          // صورة من مجلد assets
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 15, bottom: 25, right: 60),
                            child: Text(
                              'SWEET',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ReadyToCook.routeName,
                      );
                    },
                    child: Container(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 15, bottom: 25, right: 60),
                            child: Text(
                              'READY TO COOK',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 22,
                  ),
                  child: Text(
                    'Popular Recipes',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), // حواف دائرية
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(
                            image: AssetImage('asstes/image/Image 1.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Healthy Taco Salad with fresh vegetable',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 65,
                                child: Row(
                                  children: [
                                    Icon(Icons.price_change,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '150',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 90,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        '•',
                                        style: TextStyle(
                                            color: theme.primaryColor),
                                      ),
                                    ),
                                    Icon(Icons.watch_later_outlined,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), // حواف دائرية
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(
                            image: AssetImage('asstes/image/Image 1.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Healthy Taco Salad with fresh vegetable',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 65,
                                child: Row(
                                  children: [
                                    Icon(Icons.price_change,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '150',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 90,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        '•',
                                        style: TextStyle(
                                            color: theme.primaryColor),
                                      ),
                                    ),
                                    Icon(Icons.watch_later_outlined,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), // حواف دائرية
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(
                            image: AssetImage('asstes/image/Image 1.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Healthy Taco Salad with fresh vegetable',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 65,
                                child: Row(
                                  children: [
                                    Icon(Icons.price_change,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '150',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 90,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        '•',
                                        style: TextStyle(
                                            color: theme.primaryColor),
                                      ),
                                    ),
                                    Icon(Icons.watch_later_outlined,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), // حواف دائرية
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(
                            image: AssetImage('asstes/image/Image 1.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Healthy Taco Salad with fresh vegetable',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 65,
                                child: Row(
                                  children: [
                                    Icon(Icons.price_change,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '150',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 90,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        '•',
                                        style: TextStyle(
                                            color: theme.primaryColor),
                                      ),
                                    ),
                                    Icon(Icons.watch_later_outlined,
                                        size: 15, color: theme.primaryColor),
                                    const SizedBox(width: 5),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: theme.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
