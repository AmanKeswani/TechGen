import 'package:techgen/models/events.dart';
import 'package:techgen/models/user.dart';

class Team {
  final List<User> teamMembers;
  final User teamHead;
  final String teamName;
  final String teamDescription;

  Team({
    required this.teamMembers,
    required this.teamHead,
    required this.teamName,
    required this.teamDescription,
  });

  void registerEvent({
    required Event event,
    required Team team,
  }) {
    // Register event and add on firebase
  }
}
