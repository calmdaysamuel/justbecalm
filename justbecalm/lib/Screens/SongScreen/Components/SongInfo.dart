import 'package:flutter/material.dart';

class SongInfo extends StatelessWidget {
  String _songName;
  String _artistName;
  Image _albumCover;
  SongInfo();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.7;
    double height = MediaQuery.of(context).size.height * 0.75;
    Image albumCover;
    String songName;
    String artistName;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(width / 2),
              bottomRight: Radius.circular(width / 2))),
      child: Text("data"),
    );
  }
}
