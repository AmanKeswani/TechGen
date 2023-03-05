// ignore_for_file: file_names, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:techgen/constants/dbConstants.dart';
import 'package:techgen/constants/routes.dart';
import 'package:techgen/models/user.dart';

class CloudUsers {
  final users = FirebaseFirestore.instance.collection(usersCollection);

  Future<void> deleteUser({
    required User user,
  }) async {
    try {
      await users.doc(user.id).delete();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> updateUser({
    required User user,
  }) async {
    try {
      await users.doc(user.id).update({
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
      });
    } catch (_) {
      rethrow;
    }
  }

  Stream<Iterable<User>> allUsers({required String id}) => users
      .snapshots()
      .map((event) => event.docs.map((doc) => User.fromSnapshot(doc)));

  Future<Iterable<User>> getUsers() async {
    try {
      return await users.get().then((value) {
        return value.docs.map((doc) => User.fromSnapshot(doc));
      });
    } catch (_) {
      rethrow;
    }
  }

  Future<User?> createNewUser({
    required User user,
  }) async {
    final newUser = await users.add({
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
    });

    final fetchedUser = await newUser.get();
    return User(
      admin: fetchedUser[adminUser],
      collegeName: fetchedUser[collegeNameUser],
      diamonds: fetchedUser[diamondsUser],
      emailID: fetchedUser[emailIdUser],
      eventList: fetchedUser[eventsListUser],
      firstName: fetchedUser[firstNameUser],
      friendsList: fetchedUser[friendsListUser],
      head: fetchedUser[headUser],
      id: fetchedUser.id.toString(),
      lastName: fetchedUser[lastNameUser],
      password: fetchedUser[passwordUser],
      phoneNumber: fetchedUser[phoneNumberUser],
      registeredEvents: fetchedUser[registeredEventsUser],
      userName: fetchedUser[userNameUser],
      volunteer: fetchedUser[volunteerUser],
    );
  }

  static final CloudUsers _shared = CloudUsers._sharedInstance();
  CloudUsers._sharedInstance();
  factory CloudUsers() => _shared;

  Future<void> loginUser({
    required String username,
    required String password,
    required BuildContext context,
  }) async {
    var user = await users.where(userNameUser, isEqualTo: username).get();
    var userDocumentSnapshot = user.docs;
    print(userDocumentSnapshot.length);
    if (userDocumentSnapshot.isNotEmpty) {
      var currentUser = User.fromSnapshot(userDocumentSnapshot.first);
      print(currentUser.toString());
      Navigator.of(context)
          .pushNamedAndRemoveUntil(HomePageRoute, (_) => false);
    } else {
      Fluttertoast.showToast(msg: "No user with the given username exists");
    }
  }
}
