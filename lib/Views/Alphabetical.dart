import 'package:flutter/material.dart';
import 'package:readjson/Utils/circleavatar_meritbadge.dart';
import 'package:readjson/Pages/badgepage.dart';
import 'package:readjson/Json_classes/database.dart';

class AlphabeticalListView extends StatelessWidget {


  List<String> Alphabetical = Data().AlphabeticalList;



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: Key('List'),
      itemCount: Alphabetical.length,
      itemBuilder: (context, i) => ListTile(
            leading: Hero(
              tag: Alphabetical[i].toString(),
              child: CircleAvatarMeritBadge(Alphabetical[i]),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BadgePage2(
                          lineRequirement: getListofRequirements(
                            Alphabetical[i]
                                .toLowerCase()
                                .toLowerCase()
                                .replaceAll(" ", ""),
                          ),
                          badgeName: Alphabetical[i],
                        )),
              );
            },
            title: Text(Alphabetical[i]),
          ),
    );
  }
}
