import 'package:flutter/material.dart';
import 'package:football_live/api_manager.dart';
import 'package:football_live/page_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: Text(
          "Football Live",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: FootballApi().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return pageBody(snapshot.data);
          } else {
            print('No Data!');
          }
        },
      ),
    );
  }
}
