// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:techgen/constants/dbConstants.dart';
import 'package:techgen/models/events.dart';

class CloudEvents {
  final events = FirebaseFirestore.instance.collection(eventsCollection);

  static final CloudEvents _shared = CloudEvents._sharedInstance();
  CloudEvents._sharedInstance();
  factory CloudEvents() => _shared;

  Stream<Iterable<Event>> allEvents({required String id}) => events
      .snapshots()
      .map((event) => event.docs.map((doc) => Event.fromSnapshot(doc)));

  Future<Event> createNewEvent({
    required Event event,
  }) async {
    final newEvent = await events.add({
      eventNameEvent: event.eventName,
      eventDescriptionEvent: event.eventDescription,
      startDateEvent: event.startDate,
      endDateEvent: event.endDate,
      eventBannerEvent: event.eventBanner,
      redirectLinkEvent: event.redirectLink,
      participantListEvent: event.participantList,
      teamListEvent: event.teamList,
      adminListEvent: event.adminList,
      headListEvent: event.headList,
      volunteerListEvent: event.volunteerList,
    });

    return Event.fromSnapshot(newEvent);
  }

  Future<Event?> getUserById({
    required String id,
  }) async {
    return await events
        .where(idEvent, isEqualTo: id)
        .get()
        .then((value) => Event.fromSnapshot(value));
  }
}
