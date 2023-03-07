// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:techgen/constants/dbConstants.dart';
import 'package:techgen/models/teams.dart';

class CloudTeams {
  final teams = FirebaseFirestore.instance.collection(teamsCollection);

  static final CloudTeams _shared = CloudTeams._sharedInstance();
  CloudTeams._sharedInstance();
  factory CloudTeams() => _shared;

  Stream<Iterable<Team>> getAllTeams() => teams
      .snapshots()
      .map((event) => event.docs.map((team) => Team.fromSnapshot(team)));

  Future<Team> getTeamById({required String id}) async => await teams
      .where(idTeam, isEqualTo: id)
      .get()
      .then((value) => Team.fromSnapshot(value.docs.first));

  Future<Iterable<Team>> getTeamByMember({
    required String userId,
  }) async =>
      await teams
          .where(
            teamMembersTeam,
            arrayContains: userId,
          )
          .get()
          .then((value) => value.docs.map((e) => Team.fromSnapshot(e)));
}
