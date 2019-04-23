import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:readjson/Json_classes/badge_class.dart';
import 'requirements.dart';

class Readjsonfile {
  List<dynamic> mbRequirements;

  Future<List<dynamic>> MeritBadges() async {
    print('performing jsonextraction');
    String jsonString = await FutureMeritBadges();
    final jsonResponse = json.decode(jsonString);
    MeritBadgeRequirements meritBadgeRequirements =
        new MeritBadgeRequirements.fromJson(jsonResponse);

    mbRequirements = meritBadgeRequirements.requirements;

    return mbRequirements;
  }

  Future<String> FutureMeritBadges() async {
    return await rootBundle.loadString('assets/meritbadgerequirements.json');
  }

  Future<BadgeData> SingleBadge(name) async {
    print('performing jsonextraction');
    String jsonString = await FutureSingleBadge(name);
    print(jsonString.length);
    print("hello");
    final jsonResponse = json.decode(jsonString);
    BadgeData badgeData = new BadgeData.fromJson(jsonResponse);
    return badgeData;
  }

  Future<String> FutureSingleBadge(String name) async {
    print("From futureSingleBadgefunction");
    print(name.toLowerCase().replaceAll(" ", ""));
    return await rootBundle.loadString('assets/json_files/safety.json');
  }
}
