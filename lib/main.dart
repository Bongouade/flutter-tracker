import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'tracker_controller.dart';
import 'home_screen.dart';

void main() => runApp(FlutterTracker());

class FlutterTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tracker",
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<TrackerController>(
        create: (context) => TrackerController(),
        child: HomeScreen(),
      ),
    );
  }
}
