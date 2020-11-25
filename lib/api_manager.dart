import 'dart:convert';

import 'package:football_live/football_model.dart';
import 'package:http/http.dart';

class FootballApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";
  static String apiKey = "e211b89a13ecddaf99535e2cc9ae4f98";
  static const headers = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': "e211b89a13ecddaf99535e2cc9ae4f98"
  };

  Future<List<FootballMatch>> getAllMatches() async {
    Response res = await get(apiUrl, headers: headers);
    var body;
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("\n\nApi: ${body['response']}\n\n");
      List<FootballMatch> matches = matchesList
          .map((dynamic item) => FootballMatch.fromJson(item))
          .toList();
      return matches;
    }
  }
}
