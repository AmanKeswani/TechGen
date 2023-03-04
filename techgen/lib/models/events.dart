import 'package:techgen/models/teams.dart';
import 'package:techgen/models/user.dart';

class Event {
  final int id;
  final String eventName;
  final String eventDescription;
  final String startDate;
  final String endDate;
  final String eventBanner;
  final String redirectLink;
  final List<User> participantList;
  final List<Team> teamList;
  final List<User> adminList;
  final List<User> headList;
  final List<User> volunteerList;

  Event({
    required this.id,
    required this.eventName,
    required this.eventDescription,
    required this.startDate,
    required this.endDate,
    required this.eventBanner,
    required this.redirectLink,
    required this.participantList,
    required this.teamList,
    required this.adminList,
    required this.headList,
    required this.volunteerList,
  });
}
