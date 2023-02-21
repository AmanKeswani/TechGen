// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    double paddingg;
    if (_width >= 1200) {
      paddingg = _width * 0.2;
    } else if (_width >= 900) {
      paddingg = _width * 0.1;
    } else {
      paddingg = _width * 0.01;
    }
    return Container(
      // height: double.infinity,
      width: double.infinity,
      // color: Colors.red,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingg),
        child: Column(
          children: [
            Text(
              "Event Updates",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: _height * 0.015),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                height: _height * 0.5,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) =>
                      eventsCard(context, index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget eventsCard(BuildContext context, int index) {
  return InkWell(
    onTap: () {},
    child: ClipRRect(
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 15,
          right: 5,
        ),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 25,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Event Name:",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Event Decsription",
                  // style: ,
                )
              ],
            ),
            Icon(
              Icons.info_outline_rounded,
              size: 50,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    ),
  );
}
