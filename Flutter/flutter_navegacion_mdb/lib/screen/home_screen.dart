import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/widget/actors/people_list.dart';
import 'package:flutter_navegacion_mdb/widget/movies/movie_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    PeopleList(),
    // Text(
    //   'Index 2: Movies',
    //   style: optionStyle,
    // ),
    MovieList()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('The Movie DB'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Actors',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Movies',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color.fromARGB(255, 255, 139, 103),
            unselectedItemColor: const Color.fromARGB(255, 240, 31, 31),
            onTap: _onItemTapped,
            backgroundColor: Colors.black),
        backgroundColor: const Color.fromARGB(255, 85, 85, 85));
  }
}
