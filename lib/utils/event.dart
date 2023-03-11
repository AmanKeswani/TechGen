import 'package:flutter/material.dart';
import 'package:techgen/constants/colors.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/models/events.dart';

final event = Event(
  adminList: [],
  endDate: 'EndDate',
  eventBannerId: '1C3075dpF5IXwhCWYSV2jwbgE8ObYcQtI',
  eventDescription: """""",
  eventName: 'Name',
  headList: [],
  id: '0',
  participantList: ['a', 'b', 'c', 'd', 'e', 'f'],
  redirectLink:
      'https://www.figma.com/file/ugr814tvNfvXravD3TOz4n/Tech-Gen?node-id=298-100&t=NlxmWUYDYlVTrsbr-0',
  startDate: 'startDate',
  teamList: ['a', 'b', 'c', 'd', 'e', 'f'],
  volunteerList: [],
);

Widget eventCard({
  required BuildContext context,
  required String eventName,
  required String eventDescription,
}) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () => Navigator.of(context).pushNamed(
      EventDetailsPageRoute,
      arguments: event,
    ),
    child: Container(
      width: width * 0.8,
      height: height * 0.2,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.015,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: tileColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName,
                    style: const TextStyle(
                      fontSize: 20,
                      color: titleColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    eventDescription,
                    style: const TextStyle(
                      fontSize: 12,
                      color: titleColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.calendar_month_outlined,
                size: 40,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: titleColor,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02,
                      vertical: height * 0.0115,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
