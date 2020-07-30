import 'package:flashy_tab_bar/flashy_tab_bar.dart';
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
    return Scaffold(
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              print(curScreen);
              curScreen = index;
            });
          },
          children: <Widget>[
            HomeScreen(),
            SearchScreen(),
            FeaturedScreen(),
            LibraryScreen()
          ],
        ),
        bottomNavigationBar: FlashyTabBar(
            animationCurve: Curves.linear,
            selectedIndex: curScreen,
            showElevation: true,
            onItemSelected: (index) => setState(() {
              curScreen = index;
              controller.animateToPage(curScreen, duration: Duration(milliseconds: 250), curve: Curves.linear);
            }),
            items: [
              FlashyTabBarItem(
                  icon: CONSTANTS.homeScreenIcon,
                  title: Text(CONSTANTS.homeScreenName)),
              FlashyTabBarItem(
                  icon: CONSTANTS.searchScreenIcon,
                  title: Text(CONSTANTS.searchScreenName)),
              FlashyTabBarItem(
                  icon: CONSTANTS.featureScreenIcon,
                  title: Text(CONSTANTS.featureScreenName)),
              FlashyTabBarItem(
                  icon: CONSTANTS.libraryScreenIcon,
                  title: Text(CONSTANTS.libraryScreenName))
            ],

        )
    );
  }
}
