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
  final List<dynamic> friendsList;
  final List<dynamic> eventList;
  final List<dynamic> registeredEvents;

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

  Map<String, Object> toJSON({
    required User user,
  }) {
    return {
      idUser: user.id,
      firstNameUser: user.firstName,
      lastNameUser: user.lastName,
      userNameUser: user.userName,
      phoneNumberUser: user.phoneNumber,
      emailIdUser: user.emailID,
      passwordUser: user.password,
      collegeNameUser: user.collegeName,
      adminUser: user.admin,
      headUser: user.head,
      volunteerUser: user.volunteer,
      diamondsUser: user.diamonds,
      friendsListUser: user.friendsList,
      eventsListUser: user.eventList,
      registeredEventsUser: user.registeredEvents,
    };
  }

  User.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot.id,
        firstName = snapshot.data()[firstNameUser],
        lastName = snapshot.data()[lastNameUser],
        userName = snapshot.data()[userNameUser],
        phoneNumber = snapshot.data()[phoneNumberUser],
        emailID = snapshot.data()[emailIdUser],
        password = snapshot.data()[passwordUser],
        collegeName = snapshot.data()[collegeNameUser],
        admin = snapshot.data()[adminUser],
        head = snapshot.data()[headUser],
        volunteer = snapshot.data()[volunteerUser],
        diamonds = snapshot.data()[diamondsUser],
        friendsList = snapshot.data()[friendsListUser],
        eventList = snapshot.data()[eventsListUser],
        registeredEvents = snapshot.data()[registeredEventsUser];
}
