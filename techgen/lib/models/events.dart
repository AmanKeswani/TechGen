import 'package:techgen/models/teams.dart';
import 'package:techgen/models/user.dart';

class Event {
  final int id;
  final DateTime startDate;
  final DateTime endDate;
  final String eventName;
  final String eventDescription;
  final String redirectLink;
  final List<User> participantList;
  final List<Team> teamList;
  final List<User> headList;
  final List<User> volunteerList;
  final List<User> adminList;
  final String eventBanner;

  Event({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.eventName,
    required this.eventDescription,
    required this.redirectLink,
    required this.participantList,
    required this.teamList,
    required this.headList,
    required this.volunteerList,
    required this.adminList,
    required this.eventBanner,
  });

  void registerTeam({required Team team}) {
    // add team in this.teams and update on firebase as well as add all team members in participants
  }

  void removeTeam({required Team team}) {
    // same as above
  }
}
