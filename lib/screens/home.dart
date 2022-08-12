import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:badges/badges.dart';
import 'package:gligx_test/screens/details_from_api.dart';
import 'package:gligx_test/screens/details_screen.dart';

import '../custom_widgets/trending_items.dart';
import '../repository/slider_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Categories",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 27,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (newIndex) => setState(() => _selectedIndex = newIndex),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontSize: 15),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Badge(
                  badgeColor: Colors.greenAccent,
                  badgeContent: const Text("5"),
                  child: const Icon(Icons.shopping_bag_outlined)),
              activeIcon: Badge(
                  badgeColor: Colors.greenAccent,
                  badgeContent: const Text("5"),
                  child: const Icon(Icons.shopping_bag)),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              activeIcon: Icon(Icons.account_circle),
              label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const DetailsScreen()),
                // );
              },
              child: CarouselSlider(
                  items: Sliderlist,
                  options: CarouselOptions(
                      height: MediaQuery.of(context).size.height / 2,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: .8)),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Trending Items",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 27),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserSCreen()),
                      );
                    },
                    child: Text("Api Connection"))
              ],
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsScreen()),
                  );
                },
                child: const TrendingCard()),
          ],
        ),
      ),
    );
  }
}
