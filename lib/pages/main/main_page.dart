import 'package:codial_coin/pages/auksion/auksion.dart';
import 'package:codial_coin/pages/home/dashboard.dart';
import 'package:codial_coin/pages/kitoblar/kitoblar_page.dart';
import 'package:codial_coin/pages/reyting/reyting_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Widget> pages = [
    Dashboard(),
    ReytingPage(),
    KitoblarPage(),
    AuksionPage()
  ];

  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
          onTap: onTap,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Bosh sahifa"),
        BottomNavigationBarItem(icon: Icon(Icons.star),label: "Reyting"),
        BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "Kitoblar"),
        BottomNavigationBarItem(icon: Icon(Icons.pedal_bike_rounded),label: "Auksion"),
      ]),
    );
  }
}
