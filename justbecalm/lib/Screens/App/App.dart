import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justbecalm/Screens/FeaturedScreen/FeaturedScreen.dart';
import 'package:justbecalm/Screens/HomeScreen/HomeScreen.dart';
import 'package:justbecalm/Screens/LibraryScreen/LibraryScreen.dart';
import 'package:justbecalm/Screens/SearchScreen/SearchScreen.dart';
import 'package:justbecalm/Service/API.dart';
import 'package:justbecalm/Styles/CONSTANTS.dart';
import 'package:spotify/spotify.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int curScreen = 0;
  final controller = PageController(
    keepPage: true,
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    var tabs = [
      HomeScreen(),
      SearchScreen(),
      FeaturedScreen(),
      LibraryScreen()
    ];
    return CupertinoTabScaffold(
      tabBuilder: (context, i) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(child: tabs[i]);
          },
        );
      },
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.black87,
        activeColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: CONSTANTS.homeScreenIcon,
              title: Text(CONSTANTS.homeScreenName)),
          BottomNavigationBarItem(
              icon: CONSTANTS.searchScreenIcon,
              title: Text(CONSTANTS.searchScreenName)),
          BottomNavigationBarItem(
              icon: CONSTANTS.featureScreenIcon,
              title: Text(CONSTANTS.featureScreenName)),
          BottomNavigationBarItem(
              icon: CONSTANTS.libraryScreenIcon,
              title: Text(CONSTANTS.libraryScreenName))
        ],
      ),
    );
  }
}
