import 'package:techgen/models/user.dart';

class Team {
  final String teamName;
  final User teamHead;
  final String teamDescription;
  final List<User> teamMembers;

  Team({
    required this.teamName,
    required this.teamHead,
    required this.teamDescription,
    required this.teamMembers,
  });
}
