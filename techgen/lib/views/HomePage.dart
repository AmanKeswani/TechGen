// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _titleOptions = <Widget>[
    Text(
      'Home',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 25,
      ),
    ),
    Text(
      'Your Tickets',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 25,
      ),
    ),
    Text(
      'Upcoming Events',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 25,
      ),
    ),
    Text(
      'Profile',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 25,
      ),
    ),
  ];

  @override
  void initState() {
    // String _title = 'abc';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: _titleOptions.elementAt(_selectedIndex),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            color: Colors.black54,
            iconSize: 25,
          ),
        ],
      ),
      body: Container(color: Colors.red),
      // body: Center(
      // child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: const Color.fromARGB(255, 215, 47, 47),
              hoverColor: const Color.fromARGB(255, 63, 6, 161),
              gap: 10,
              activeColor: Colors.black,
              iconSize: 30,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              duration: const Duration(milliseconds: 1000),
              tabBackgroundColor: const Color.fromARGB(255, 9, 207, 124),
              color: Colors.black54,
              tabs: [
                const GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  textColor: Colors.black54,
                ),
                GButton(
                  icon: const Icon(Icons.event_available_rounded).icon!,
                  text: 'Your Tickets',
                  textColor: Colors.black54,
                ),
                GButton(
                  icon: const Icon(Icons.event_note_rounded).icon!,
                  text: 'Upcoming Events',
                  textColor: Colors.black54,
                ),
                GButton(
                  icon: const Icon(Icons.person).icon!,
                  text: 'Profile',
                  textColor: Colors.black54,
                ),
                // GButton(
                //   icon: LineIcons.alternateArrowCircleUp,
                //   text: 'Extra',
                // ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  // switch (index) {
                  //   case 0:
                  //     {
                  //       _title = 'Jobs';
                  //     }
                  //     break;
                  //   case 1:
                  //     {
                  //       _title = 'Timer';
                  //     }
                  //     break;
                  //   case 2:
                  //     {
                  //       _title = 'Overview';
                  //     }
                  //     break;
                  //   case 3:
                  //     {
                  //       _title = 'Clients';
                  //     }
                  //     break;
                  // }
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
