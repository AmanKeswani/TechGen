import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:techgen/constants/dbConstants.dart';

class User {
  final String id;
  final String firstName;
  final String lastName;
  final String userName;
  final String phoneNumber;
  final String emailID;
  final String password;
  final String collegeName;
  final bool admin;
  final bool head;
  final bool volunteer;
  final int diamonds;
  final List<String> friendsList;
  final List<String> eventList;
  final List<String> registeredEvents;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.phoneNumber,
    required this.emailID,
    required this.password,
    required this.collegeName,
    required this.admin,
    required this.head,
    required this.volunteer,
    required this.diamonds,
    required this.friendsList,
    required this.eventList,
    required this.registeredEvents,
  });

  User.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot.id,
        firstName = snapshot.data()[firstNameUser],
        lastName = snapshot.data()[lastNameUser],
        userName = snapshot.data()[lastNameUser],
        phoneNumber = snapshot.data()[lastNameUser],
        emailID = snapshot.data()[lastNameUser],
        password = snapshot.data()[lastNameUser],
        collegeName = snapshot.data()[lastNameUser],
        admin = snapshot.data()[lastNameUser],
        head = snapshot.data()[lastNameUser],
        volunteer = snapshot.data()[lastNameUser],
        diamonds = snapshot.data()[lastNameUser],
        friendsList = snapshot.data()[lastNameUser],
        eventList = snapshot.data()[lastNameUser],
        registeredEvents = snapshot.data()[lastNameUser];
}
