import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'tracker_controller.dart';

class TrackerListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List _tracketList = Provider.of<TrackerController>(context).getTracker();

    if (_tracketList.isEmpty) {
      return Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Text(
          "Aucun Traker en cours",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.orange[600],
            fontSize: 18.0,
          ),
        ),
      );
    }
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: _tracketList.length,
          itemBuilder: (context, index) {
            final repo = _tracketList[index];
            bool flutter = ("flutter/flutter") == repo.fullName ? true : false;
            return Container(
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    // color: Colors.red,
                    width: 45.0,
                    height: 40.0,
                    child: Text(
                      "${index + 1}",
                      style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: flutter ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                      // style: TextStyle(
                      //   fontSize: 16.0,
                      //   color: flutter ? Colors.blue : Colors.black,
                      // ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    // color: Colors.red,
                    alignment: Alignment.centerLeft,
                    width: 300.0,
                    height: 40.0,
                    child: Text(
                      "${repo.fullName}",
                      style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: flutter ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    // color: Colors.red,
                    alignment: Alignment.centerRight,
                    width: 75.0,
                    height: 40.0,
                    child: Text(
                      "${repo.stargazersCount.toString()}",
                      style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: flutter ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
