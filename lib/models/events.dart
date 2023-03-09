import 'package:techgen/constants/dbConstants.dart';

class Event {
  final String id;
  final String eventName;
  final String eventDescription;
  final String startDate;
  final String endDate;
  final String eventBanner;
  final String redirectLink;
  final List<dynamic> participantList;
  final List<dynamic> teamList;
  final List<dynamic> adminList;
  final List<dynamic> headList;
  final List<dynamic> volunteerList;

  Event({
    required this.id,
    required this.eventName,
    required this.eventDescription,
    required this.startDate,
    required this.endDate,
    required this.eventBanner,
    required this.redirectLink,
    required this.participantList,
    required this.teamList,
    required this.adminList,
    required this.headList,
    required this.volunteerList,
  });

  Event.fromSnapshot(snapshot)
      : id = snapshot.id,
        eventName = snapshot.data()[eventNameEvent],
        eventDescription = snapshot.data()[eventDescriptionEvent],
        startDate = snapshot.data()[startDateEvent],
        endDate = snapshot.data()[endDateEvent],
        eventBanner = snapshot.data()[eventBannerEvent],
        redirectLink = snapshot.data()[redirectLinkEvent],
        participantList = snapshot.data()[participantListEvent],
        teamList = snapshot.data()[teamListEvent],
        adminList = snapshot.data()[adminListEvent],
        headList = snapshot.data()[headListEvent],
        volunteerList = snapshot.data()[volunteerListEvent];
}
