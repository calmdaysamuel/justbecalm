import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:justbecalm/Screens/SongScreen/Components/AudioSlider.dart';
import 'package:justbecalm/Screens/SongScreen/Components/MoreOptions.dart';
import 'package:justbecalm/Screens/SongScreen/Components/SongControl.dart';
import 'package:justbecalm/Screens/SongScreen/Components/SongInfo.dart';

class SongScreen extends StatefulWidget {
  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FaIcon(FontAwesomeIcons.chevronLeft),
                SongInfo(),
                FaIcon(FontAwesomeIcons.bars)
              ],
            ),
            AudioSlider(),
            SongControl()
          ],
        ),
      ),
    );
  }
}
