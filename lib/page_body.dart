import 'package:flutter/material.dart';
import 'package:football_live/goal_stat.dart';
import 'package:football_live/match_stat.dart';
import 'package:football_live/team_stat.dart';
import 'football_model.dart';

Widget pageBody(List<FootballMatch> allmatches) {
  return Column(
    children: <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                teamStat(
                  "Home Team",
                  allmatches[0].home.logoUrl,
                  allmatches[0].home.name,
                ),
                goalState(
                  allmatches[0].fixture.status.elapsedTime,
                  allmatches[0].goal.home,
                  allmatches[0].goal.away,
                ),
                teamStat(
                  "Visitor Team",
                  allmatches[0].away.logoUrl,
                  allmatches[0].away.name,
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF4373D9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "MATCHES",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(
                        allmatches[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
