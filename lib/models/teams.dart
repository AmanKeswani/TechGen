import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:techgen/constants/dbConstants.dart';

class Team {
  final String id;
  final String teamName;
  final String teamDescription;
  final String teamHead;
  final List<dynamic> teamMembers;
  final List<dynamic> previousEvents;

  Team({
    required this.id,
    required this.teamName,
    required this.teamHead,
    required this.teamDescription,
    required this.teamMembers,
    required this.previousEvents,
  });

  Team.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot.id,
        teamName = snapshot.data()[teamNameTeam],
        teamDescription = snapshot.data()[teamDescriptionTeam],
        teamHead = snapshot.data()[teamHeadTeam],
        teamMembers = snapshot.data()[teamMembersTeam],
        previousEvents = snapshot.data()[previousEventsTeam];
}
