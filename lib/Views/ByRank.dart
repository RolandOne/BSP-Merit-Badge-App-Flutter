import 'package:flutter/material.dart';

class ByRankListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTileRankBadges(0, ["Safety", "Citizenship in the Home"]),
        ExpansionTileRankBadges(1, [
          "Citizenship in the Community",
          "Filipino Heritage",
          "First Aid",
          "Ecology",
          "Tree Farming"
        ]),
        ExpansionTileRankBadges(2, [
          "Citizenship in the Nation",
          "Physical Fitness",
          "Weather",
          "Swimming",
          "Soil and Water Conservation"
        ]),
        ExpansionTileRankBadges(3, ["Camping", "Emergency Preparedness"]),
        ExpansionTileRankBadges(4, ["World Brother Hood", "Lifesaving"]),
      ],
    );
  }
}

class RankMeritBadges {
  int index;

  RankMeritBadges(this.index);

  List<String> Test = [
    'Second Class / Explorer',
    'First Class / Pathfinder',
    'Outdoorsman',
    'Venturer',
    'Eagle'
  ];

  String title() {
    return Test[index];
  }
}

class ExpansionTileRankBadges extends StatelessWidget {
  final int ranknumber;
  final List<String> ranksbadges;

  ExpansionTileRankBadges(this.ranknumber, this.ranksbadges);

  List<String> Ranks = [
    'Explorer',
    'Pathfinder',
    'Outdoorsman',
    'Venturer',
    'Eagle'
  ];

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Image.asset(
        'assets/images/ranks/${Ranks[ranknumber]}.jpg',
        scale: 3,
      ),
      initiallyExpanded: true,
      title: Text(
        Ranks[ranknumber],
        textAlign: TextAlign.center,
      ),
      children: <Widget>[
        Container(
          height: 120.0,
          child: Column(
            children: <Widget>[
              Expanded(
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 1,
                  children: ExpansionTileChild(ranksbadges),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

List<Widget> ExpansionTileChild(List<String> strings) {
  return strings.map((item) => new RowOfBadges(item)).toList();
}

class RowOfBadges extends StatelessWidget {
  final String meritbadge;

  RowOfBadges(this.meritbadge);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: () => print('tapped'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 2,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
            Container(
                height: 30.0,
                child: Center(
                    child: Text(
                  meritbadge,
                  textAlign: TextAlign.center,
                )))
          ],
        ),
      ),
    );
  }
}
