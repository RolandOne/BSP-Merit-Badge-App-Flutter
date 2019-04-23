import 'dart:async';
import 'package:flutter/material.dart';

enum NavBarItem { Alphabetical, Rank, Specialist }

class BottomNavBarBloc {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.Rank;

  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavBarItem.Alphabetical);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.Rank);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.Specialist);
    }
  }

  close() {
    _navBarController?.close();
  }
}

class BottomNavBarApp extends StatefulWidget {
  @override
  _BottomNavBarAppState createState() => _BottomNavBarAppState();
}

class _BottomNavBarAppState extends State<BottomNavBarApp> {
  BottomNavBarBloc _bottomNavBarBloc;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    _bottomNavBarBloc = BottomNavBarBloc();
  }

  @override
  void dispose() {
    _bottomNavBarBloc.close();
    super.dispose();
  }


}
