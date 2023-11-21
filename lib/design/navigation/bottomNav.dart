import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/design/DetailsFoodpage/foodDetailsPage.dart';
import 'package:noteapp/design/Home/homePage.dart';
import 'package:noteapp/design/SelectFoodPage/favourite.dart';
import 'package:noteapp/design/newpost/NewFood.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> _page = [HomePages(), FavouriteListPage(), NewFoodpostpage ()];

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: _page[_currentIndex],
      backgroundColor:Color.fromARGB(255, 248, 0, 0),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        animationCurve: Curves.easeIn,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Color.fromARGB(255, 248, 0, 0),
        items: const [
          Icon(Icons.fastfood_rounded, size: 30),
          Icon(Icons.favorite_border_rounded, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
    );
  }
}