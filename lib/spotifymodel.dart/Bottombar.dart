import 'package:flut_loginpage/builder/searchbuild/searchview.dart';
import 'package:flut_loginpage/libbuild.dart/library.dart';
import 'package:flut_loginpage/builder/home/build.dart';
import 'package:flut_loginpage/spotifymodel.dart/premium.dart';
import 'package:flut_loginpage/search.dart';
import 'package:flutter/material.dart';

import '../builder/searchbuild/search1.dart';

class Homeclass extends StatefulWidget {
  @override
  State<Homeclass> createState() => _HomeclassState();
}

class _HomeclassState extends State<Homeclass> {
//  const Homeclass({ Key? key }) : super(key: key);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Builderpage(),
    Searchpage(),
    Libpage(),
    Premium(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_add_check,
            ),
            label: 'Your Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'premium',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
