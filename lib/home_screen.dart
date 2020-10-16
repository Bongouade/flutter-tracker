import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'build_tracker_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Top Software repos On GitHub",
                  style: GoogleFonts.girassol(
                    fontSize: 30.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  // color: Colors.blue,
                  width: 45.0,
                  height: 30.0,
                  child: Text(
                    "Rank",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  // color: Colors.blue,
                  alignment: Alignment.centerLeft,
                  width: 300.0,
                  height: 30.0,
                  child: Text(
                    "Repo",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  // color: Colors.blue,
                  alignment: Alignment.centerRight,
                  width: 75.0,
                  height: 30.0,
                  child: Text(
                    "Stars",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            TrackerListBuilder(),
          ],
        ),
      ),
    );
  }
}
