// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: GNav(
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
        iconSize: 40,
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            height: height * 0.21,
            width: width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/home_bg_image.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: const Center(
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
          // SizedBox(height: 10),
          Expanded(
              child: Container(
            width: width,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListWheelScrollView(
                overAndUnderCenterOpacity: 0.9,
                physics: const FixedExtentScrollPhysics(),
                diameterRatio: 6,
                squeeze: 1.5,
                itemExtent: 200,
                children: [
                  Material(
                    // elevation: 10,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Event Name:",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Event Description",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.calendar_today_rounded),
                                iconSize: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    // elevation: 10,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Event Name:",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Event Description",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.calendar_today_rounded),
                                iconSize: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Event Name:",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Event Description",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.calendar_today_rounded),
                                iconSize: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
