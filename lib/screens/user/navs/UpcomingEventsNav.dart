// ignore_for_file: file_names, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/utils/event.dart';

class UpcomingEventsNav extends StatefulWidget {
  const UpcomingEventsNav({super.key});

  @override
  State<UpcomingEventsNav> createState() => _UpcomingEventsNavState();
}

class _UpcomingEventsNavState extends State<UpcomingEventsNav> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Upcoming Events",
                  style: TextStyle(
                    fontSize: 30,
                    color: titleColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.03),
                eventCard(
                  context: context,
                  eventName: "Event Name",
                  eventDescription: "Event Description",
                ),
                SizedBox(height: height * 0.03),
                eventCard(
                  context: context,
                  eventName: "Event Name",
                  eventDescription: "Event Description",
                ),
                SizedBox(height: height * 0.03),
                eventCard(
                  context: context,
                  eventName: "Event Name",
                  eventDescription: "Event Description",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
