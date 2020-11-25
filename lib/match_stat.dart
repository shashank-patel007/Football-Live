import 'package:flutter/material.dart';
import 'football_model.dart';

Widget matchTile(FootballMatch match) {
  var home = match.goal.home;
  var away = match.goal.away;
  if (home == null) home = 0;
  if (away == null) away = 0;
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 12.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Text(
            match.home.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match.home.logoUrl,
          width: 36,
        ),
        Expanded(
          child: Text(
            "${home} - ${away}",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match.away.logoUrl,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            match.away.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}
