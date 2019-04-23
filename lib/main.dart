import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:readjson/Json_classes/readfile.dart';
import 'package:readjson/Json_classes/specialist_ratings.dart';
import 'package:readjson/Views/ByRank.dart';
import 'package:readjson/blocs/bloc_navigation.dart';
import 'Views/Alphabetical.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Merti Badge App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Merit Badges'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

//  PageController controller = PageController();
//  int pageIndex = 0;

  final _bottomNavBarBloc = BottomNavBarBloc();

//  void bottomTapped(int index) {
//    setState(() {
//      pageIndex = index;
//      controller.animateToPage(index,
//          duration: Duration(milliseconds: 500), curve: Curves.ease);
//    });
//  }

//  void pageChanged(int index) {
//    setState(() {
//      pageIndex = index;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StreamBuilder(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (context, AsyncSnapshot<NavBarItem> snapshot) {
          return BottomNavigationBar(
            currentIndex: snapshot.data.index,
            onTap: _bottomNavBarBloc.pickItem,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.sort_by_alpha), title: Text('Alphabetical')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.brightness_high),
                  title: Text('Rank Requirement')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grade), title: Text('Specialization'))
            ],
          );
        },
      ),
//        BottomNavigationBar(
//            currentIndex: pageIndex,
//            onTap: (int index) {
//              bottomTapped(index);
//            },
//            items: [
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.sort_by_alpha), title: Text('Alphabetical')),
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.brightness_high),
//                  title: Text('Rank Requirement')),
//              BottomNavigationBarItem(
//                  icon: Icon(Icons.grade), title: Text('Specialization'))
//            ]),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.Alphabetical:
              return viewpagebuilder(0);
            case NavBarItem.Rank:
              return viewpagebuilder(1);
            case NavBarItem.Specialist:
              return viewpagebuilder(2);
          }
//            PageView.builder(
//            controller: controller,
//            onPageChanged: (index) {
//              pageChanged(index);
//            },
//            itemBuilder: (context, i) {
//              return viewpagebuilder(i, mbRequirements);
//            },
//          );
        },
      ),
    );
  }
}

Widget viewpagebuilder(int index) {
  var specialist = Specialist();
  switch (index) {
    case 0:
      {
        return AlphabeticalListView();
      }
      break;

    case 1:
      {
        return ByRankListView();
      }
      break;

    default:
      {
        return CustomScrollView(
          slivers: <Widget>[
            SpecialistHeaderandList('Agriculturist', specialist.Agriculturist),
            SpecialistHeaderandList('Airman', specialist.Airman),
            SpecialistHeaderandList('Artisan', specialist.Artisan),
            SpecialistHeaderandList('Artist', specialist.Artist),
          ],
        );
      }
      break;
  }
}

List<Widget> ExpansionTileChild(List<String> strings) {
  return strings.map((item) => new RowOfBadges(item)).toList();
}

class SpecialistHeaderandList extends StatelessWidget {
  final String RatingTitle;
  final List<String> RequiredBadges;

  SpecialistHeaderandList(this.RatingTitle, this.RequiredBadges);

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeaderBuilder(
      builder: (context, state) => new Container(
            height: 60.0,
            color: (state.isPinned ? Colors.green : Colors.lightBlue)
                .withOpacity(1.0 - state.scrollPercentage),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              RatingTitle,
              style: const TextStyle(color: Colors.white),
            ),
          ),
      sliver: new SliverList(
        delegate: new SliverChildBuilderDelegate(
          (context, i) => new ListTile(
                leading: new CircleAvatar(
                  child: new Text('0'),
                ),
                title: new Text('${RequiredBadges[i]}'),
              ),
          childCount: RequiredBadges.length,
        ),
      ),
    );
  }
}
