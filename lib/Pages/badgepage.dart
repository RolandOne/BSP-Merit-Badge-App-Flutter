import 'package:flutter/material.dart';

//class BadgePage extends StatelessWidget {
//
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text(lineRequirement[0].toString()),
//        ),
//        body: ListView.builder(
//            itemCount: lineRequirement.indexOf(""),
//            itemBuilder: (context, i) => ListTile(
//                  contentPadding:
//                      EdgeInsets.only(top: 8.0, left: 10.0, right: 8.0),
//                  title: Text(lineRequirement.sublist(1)[i].toString()),
//                )));
//  }
//}

class BadgePage2 extends StatelessWidget {
  final List<String> lineRequirement;
  final String badgeName;

  BadgePage2({this.lineRequirement, this.badgeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                  tag: badgeName.toString(),
                  child: Image.asset(
                      'assets/images/${badgeName.toString().toLowerCase().replaceAll(" ", "")}.png')),
              title: Text(badgeName),
            ),
//            Container(
//              color: Colors.white,
//              alignment: Alignment(0, 0),
//              child: Hero(
//                tag: lineRequirement[0].toString(),
//                child: CircleAvatar(
//                  radius: 80.0,
//                  backgroundImage: AssetImage(
//                      'assets/images/${lineRequirement[0].toString().toLowerCase().replaceAll(" ", "")}.png'),
//                  backgroundColor: Colors.green,
//                ),
//              ),
//            ),
            expandedHeight: 200.0,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // To convert this infinite list to a list with three items,
                // uncomment the following line:
                // if (index > 3) return null;
                return ListTile(
                  title: Text(lineRequirement[index]),
                );
              },
              // Or, uncomment the following line:
              childCount: lineRequirement.length,
            ),
          )
        ],
      ),
    );
  }
}
