import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  var currentIndex = 0;

  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => onTap(value),
      currentIndex: currentIndex,
      elevation: 0,
      selectedLabelStyle: TextStyle(color: Color(0xff67C4A7)),
      unselectedLabelStyle: TextStyle(color: Color(0xff939393)),
      selectedItemColor: Color(0xff67C4A7),
      unselectedItemColor: Color(0xff939393),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 0 ? Icons.home : Icons.home_outlined,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
                currentIndex == 1 ? Icons.favorite : Icons.favorite_outline),
            label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: Icon(
                currentIndex == 2 ? Icons.file_copy : Icons.file_copy_outlined),
            label: 'History'),
        BottomNavigationBarItem(
            icon: Icon(currentIndex == 3 ? Icons.person : Icons.person_outline),
            label: 'Account'),
      ],
    );
  }
}
