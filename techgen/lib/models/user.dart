import 'package:techgen/models/events.dart';
import 'package:techgen/models/teams.dart';

class User {
  final String uid;
  final String firstName;
  final String lastName;
  final int phoneNumber;
  final String emailID;
  final String collegeName;
  final List<User> friends;
  final bool admin;
  final bool head;
  final bool volunteer;
  final List<Event> eventList;
  final List<Event> registeredEvents;
  final int diamonds;

  User({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.emailID,
    required this.collegeName,
    required this.friends,
    required this.admin,
    required this.head,
    required this.volunteer,
    required this.eventList,
    required this.registeredEvents,
    required this.diamonds,
  });

  void addFriend({
    required String uid,
  }) {
    // Add friend here and update on firebase
  }

  void removeFriend({
    required String uid,
  }) {
    // Remove friend and update on firebase
  }

  void createTeam({required Team team}) {
    //
  }
}
