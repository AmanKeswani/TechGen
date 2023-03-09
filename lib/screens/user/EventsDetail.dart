// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/constants/images.dart';
import 'package:techgen/models/events.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({super.key});

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Event event = ModalRoute.of(context)?.settings.arguments as Event;

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: eventAppBar(event: event),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            eventImage(
              height: height,
              width: width,
              event: event,
            ),
            participantCount(
              pCount: 120,
              tCount: 10,
            ),
            eventDescription(event),
            Expanded(
              child: SizedBox(
                height: double.infinity,
              ),
            ),
            registerButton(width)
          ],
        ),
      ),
    );
  }

  Container registerButton(double width) {
    return Container(
      margin: EdgeInsets.all(20),
      width: width * 0.3,
      decoration: BoxDecoration(
        color: titleColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Padding eventDescription(Event event) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          event.eventDescription,
          style: TextStyle(
            fontSize: 20,
            color: titleColor,
          ),
        ),
      ),
    );
  }

  AppBar eventAppBar({required Event event}) {
    return AppBar(
      title: Text(
        event.eventName,
        style: TextStyle(
          color: titleColor,
          fontSize: 30,
        ),
      ),
      leading: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.black,
        size: 30,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  Container eventImage({
    required double height,
    required double width,
    required Event event,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: height * 0.25,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        image: DecorationImage(
          image: NetworkImage(
            "$GDrivePrefix${event.eventBannerId}",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Align participantCount({
    required int pCount,
    required int tCount,
  }) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: titleColor,
            width: 1,
          ),
        ),
        child: Text(" $pCount Participants | $tCount Teams"),
      ),
    );
  }
}
