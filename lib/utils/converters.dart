import 'package:techgen/constants/dbConstants.dart';
import 'package:techgen/models/user.dart';

Map<String, Object> toJSON({
  required User user,
}) =>
    <String, Object>{
      idUser.toString(): user.id,
      firstNameUser.toString(): user.firstName,
      lastNameUser.toString(): user.lastName,
      userNameUser.toString(): user.userName,
      phoneNumberUser.toString(): user.phoneNumber,
      emailIdUser.toString(): user.emailID,
      passwordUser.toString(): user.password,
      collegeNameUser.toString(): user.collegeName,
      adminUser.toString(): user.admin,
      headUser.toString(): user.head,
      volunteerUser.toString(): user.volunteer,
      diamondUser.toString(): user.diamonds,
      friendListUser.toString(): user.friendsList,
      eventListUser.toString(): user.eventList,
      registeredEventsUser.toString(): user.registeredEvents,
    };

userToObject(Map<String, dynamic> userJSON) => User(
      admin: userJSON[adminUser] as bool,
      collegeName: userJSON[collegeNameUser] as String,
      diamonds: userJSON[diamondUser] as int,
      emailID: userJSON[emailIdUser] as String,
      eventList: userJSON[eventListUser] as List<dynamic>,
      firstName: userJSON[firstNameUser] as String,
      friendsList: userJSON[friendListUser] as List<dynamic>,
      head: userJSON[headUser] as bool,
      id: userJSON[idUser] as String,
      lastName: userJSON[lastNameUser] as String,
      password: userJSON[passwordUser] as String,
      phoneNumber: userJSON[phoneNumberUser] as String,
      registeredEvents: userJSON[registeredEventsUser] as List<dynamic>,
      userName: userJSON[userNameUser] as String,
      volunteer: userJSON[volunteerUser] as bool,
    );
