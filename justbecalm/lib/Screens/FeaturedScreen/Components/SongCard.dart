import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final imageUrl;
  final albumName;
  final songName;
  final artistName;
  final albumId;
  final artistId;

  SongCard(
      {this.imageUrl,
      this.albumName,
      this.songName,
      this.artistName,
      this.albumId,
      this.artistId});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
      width: 300,
      child: CupertinoContextMenu(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
                image: NetworkImage(this.imageUrl), fit: BoxFit.cover),
          ),

          child: Container(
            height: 300,
            width: 300,
            child: Column(
              children: <Widget>[Text(this.artistName), Text(this.songName)],
            ),
          ),
        ),
        actions: <Widget>[
          CupertinoContextMenuAction(
            child: const Text('Go to Artist'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoContextMenuAction(
            child: const Text('Go to Album'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
