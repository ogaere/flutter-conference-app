import 'package:flutter_conference_app/models/data.dart';
import 'package:flutter_conference_app/models/list_items.dart';
import 'package:flutter/widgets.dart';

abstract class IHomePresenter {
  bool loaded;
  List<ListItem> scheduleList;
  List<ListItem> speakerList;

  PageStorageBucket get bucket;
  PageStorageKey get scheduleKey;
  PageStorageKey get speakersKey;
  PageStorageKey get aboutKey;

  int currentIndex;
  List<Widget> pages;

  void init();

  void refreshState({bool showSnackBar=false});
  void showNetworkError();
  void fetchData();
}

abstract class ISchedulePresenter {
  scheduleTap(BuildContext context, TalkBoss boss);
}

abstract class ISpeakersPresenter {
  speakerTap(BuildContext context, TalkBoss boss);
}
