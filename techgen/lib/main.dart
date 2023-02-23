// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techgen/screens/SplashScreen.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(255, 234, 230, 230),
        padding: EdgeInsets.all(10),
        color: Color(0xFF1E3D33),
        tabBackgroundColor: Color(0xFFA3DCCA),
        activeColor: Color(0xFF1E3D33),
        textStyle: TextStyle(
          color: Color(0xFF1E3D33),
          fontSize: 20,
        ),
        iconSize: 40,
        tabs: [
          GButton(
            text: "Home Page",
            icon: Icon(Icons.house_rounded).icon!,
          ),
          GButton(
            text: "Your Events",
            icon: Icon(Icons.calendar_today_rounded).icon!,
          ),
          GButton(
            text: "Upcoming Events",
            icon: Icon(Icons.assignment_turned_in_rounded).icon!,
          ),
          GButton(
            text: "Profile",
            icon: Icon(Icons.person_outline_rounded).icon!,
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            height: _height * 0.3,
            width: _width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/home_bg_image.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Text(
                "Event Updates",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.red,
              border: Border(),
            ),
            child: ListWheelScrollView(
              itemExtent: 1,
              children: [],
            ),
          )),
        ],
      ),
    );
  }
}
