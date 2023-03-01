// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techgen/screens/user/HomePageNav.dart';
import 'package:techgen/screens/user/ProfileNav.dart';
import 'package:techgen/screens/user/UpcomingEventsNav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  Widget tabChangeBodyFunction() {
    switch (_index) {
      case 0:
        return const HomePageNav();
      case 2:
        return const UpcomingEventsNav();
      case 3:
        return const ProfileNav();
      default:
        return const HomePageNav();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: GNav(
        onTabChange: (int index) {
          setState(() {
            _index = index;
          });
        },
        gap: 7,
        backgroundColor: const Color.fromARGB(255, 234, 230, 230),
        padding: const EdgeInsets.all(10),
        tabMargin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        color: const Color(0xFF1E3D33),
        tabBackgroundColor: const Color(0xFFA3DCCA),
        activeColor: const Color(0xFF1E3D33),
        textStyle: const TextStyle(
          color: Color(0xFF1E3D33),
          fontSize: 20,
        ),
        iconSize: 30,
        tabs: [
          GButton(
            text: "Home Page",
            icon: const Icon(Icons.house_rounded).icon!,
          ),
          GButton(
            text: "Your Events",
            icon: const Icon(Icons.calendar_today_rounded).icon!,
          ),
          GButton(
            text: "Upcoming Events",
            icon: const Icon(Icons.assignment_turned_in_rounded).icon!,
          ),
          GButton(
            text: "Profile",
            icon: const Icon(Icons.person_outline_rounded).icon!,
          ),
        ],
      ),
      body: tabChangeBodyFunction(),
    );
  }
}
