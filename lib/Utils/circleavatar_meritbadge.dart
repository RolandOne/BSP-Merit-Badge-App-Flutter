import 'package:flutter/material.dart';

class CircleAvatarMeritBadge extends StatelessWidget {
  String mbRequirements;


  CircleAvatarMeritBadge(this.mbRequirements);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(
          'assets/images/${mbRequirements.toLowerCase().replaceAll(" ", "")}.png'),
    );
  }
}
