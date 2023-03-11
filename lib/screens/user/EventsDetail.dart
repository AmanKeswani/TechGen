// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/constants/images.dart';
import 'package:techgen/models/events.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({super.key});

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  double? _height;
  double? _width;

  @override
  Widget build(BuildContext context) {
    final Event event = ModalRoute.of(context)?.settings.arguments as Event;

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: eventAppBar(title: event.eventName),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            eventImage(
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
            registerButtonBottomSheet()
          ],
        ),
      ),
    );
  }

  Widget registerButtonBottomSheet() {
    return Container(
      margin: EdgeInsets.all(20),
      width: _width! * 0.3,
      decoration: BoxDecoration(
        color: titleColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            height: _height! * 0.4,
            width: _width,
            decoration: BoxDecoration(
              color: tileColor,
            ),
            child: Column(
              children: [
                button(
                  text: "Register Individually",
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Registered. Add procedure here');
                  },
                ),
                dividerBottomSheet(),
                button(
                  text: "Join an existing Team",
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Add procedure here');
                  },
                ),
                dividerBottomSheet(),
                button(
                  text: "Create a new Team",
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Add procedure here');
                  },
                ),
              ],
            ),
          ),
        ),
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

  Padding dividerBottomSheet() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
          Text("OR"),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
        ],
      ),
    );
  }

  Widget button({
    required String text,
    required Function() onPressed,
  }) {
    return Container(
      margin: EdgeInsets.all(20),
      width: _width! * 0.7,
      decoration: BoxDecoration(
        color: titleColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget eventDescription(Event event) {
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

  AppBar eventAppBar({
    required String title,
  }) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 30,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 30,
          color: Colors.grey,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  Widget eventImage({
    required Event event,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: _height! * 0.25,
      width: _width!,
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

  Widget participantCount({
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
