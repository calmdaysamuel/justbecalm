import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justbecalm/Screens/FeaturedScreen/Components/ArtistHead.dart';
import 'package:justbecalm/Service/API.dart';
import 'package:spotify/spotify.dart' as Spotify;
class SongCard extends StatelessWidget {
  final imageUrl;
  final albumName;
  final songName;
  final artistName;
  final albumId;
  final artistId;

  final albumUrl;

  final artistUrl;

  SongCard(
      {this.imageUrl,
      this.albumName,
      this.songName,
      this.artistName,
      this.albumId,
      this.artistId,
      this.albumUrl,
      this.artistUrl});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Spotify.Artist>(
      future: API.getArtist(artistId),
      builder: (BuildContext context, AsyncSnapshot<Spotify.Artist> snapshot){
        if(snapshot.hasData) {
          return AspectRatio(
            aspectRatio: 2 / 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(this.imageUrl), fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CupertinoContextMenu(
                            child: ArtistHead(Image.network(snapshot.data.images[2].url)),
                            actions: <Widget>[
                              CupertinoContextMenuAction(child: Text("Go to Artist")),
                              CupertinoContextMenuAction(child: Text("Go to Album"))
                            ],),
                          Container(
                            width: 160,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  this.artistName,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  this.albumName,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                      Text(
                        this.songName,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }else{
          return Container();
        }
      }
    );
  }
}
