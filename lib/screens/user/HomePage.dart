// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/screens/user/navs/HomePageNav.dart';
import 'package:techgen/screens/user/navs/profile/ProfileNav.dart';
import 'package:techgen/screens/user/navs/UpcomingEventsNav.dart';

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
        gap: 5,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(7),
        tabMargin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        color: titleColor,
        tabBackgroundColor: tileColor,
        activeColor: titleColor,
        textStyle: const TextStyle(
          color: titleColor,
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
