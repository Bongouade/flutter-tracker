import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'package:github/github.dart';

import 'contentRepos.dart';

class TrackerController extends ChangeNotifier {
  List _trackerList = [];
  final gitHub = GitHub();
  final query = 'stars:>10000';

  TrackerController() {
    _initTrackerList();
  }

  List getTracker() {
    return UnmodifiableListView(_trackerList);
  }

  Future _initTrackerList() async {
    int maxResults = 20;

    var repos = gitHub.search.repositories(query,
        sort: 'stars', pages: (maxResults * 2 / 30).ceil());

    repos = repos.where((repo) => !contentRepos.contains(repo.fullName));

    final reposList = await repos.take(maxResults).toList();

    _trackerList = reposList;
    notifyListeners();
    gitHub.dispose();
  }
}
