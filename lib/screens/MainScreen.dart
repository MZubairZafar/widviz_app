import 'package:flutter/material.dart';
import 'package:widviz/screens/CreateScreen.dart';
import 'package:widviz/screens/MeScreen.dart';
import 'package:widviz/screens/MixScreen.dart';
import 'package:widviz/screens/SearchScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedindex = 2 ;

  static const List<Widget> _screens = <Widget>[
    MixScreen(),
    Search(),
    CreateScreen(),
    MeScreen(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 20, 21, 24),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(250, 20, 21, 24),
        leading: const Image(
          image: AssetImage('assets/crown_image.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tv_sharp),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),

      body: _screens.elementAt(_selectedindex),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(250, 20, 21, 24),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              backgroundColor:  Color.fromARGB(250, 20, 21, 24),
              icon: Icon(Icons.dashboard_customize), label: 'Mix'),
          BottomNavigationBarItem(
              backgroundColor:  Color.fromARGB(250, 20, 21, 24),
              icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              backgroundColor:  Color.fromARGB(250, 20, 21, 24),
              icon: Icon(Icons.add_circle), label: 'Create'),
          BottomNavigationBarItem(
              backgroundColor:  Color.fromARGB(250, 20, 21, 24),
              icon: Icon(Icons.person), label: 'Me'),
        ],
        currentIndex: _selectedindex,
        onTap:_onItemTapped,
      ),
    );
  }
}
