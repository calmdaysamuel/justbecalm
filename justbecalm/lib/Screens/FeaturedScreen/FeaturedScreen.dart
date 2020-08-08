import 'package:flutter/material.dart';
import 'package:justbecalm/Service/API.dart';
import 'package:justbecalm/Service/PROCESSING.dart';
import 'package:spotify/spotify.dart';

import 'Components/SongCard.dart';

class FeaturedScreen extends StatefulWidget {
  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen>
    with AutomaticKeepAliveClientMixin<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder<Recommendations>(
        future: API.getRecommendations_ArtistOnly(["5IH6FPUwQTxPSXurCrcIov"]),
        builder:
            (BuildContext context, AsyncSnapshot<Recommendations> snapshot) {
          if (snapshot.hasData) {
            print(snapshot.hasData);
            return FutureBuilder<Iterable<Track>>(
                future: PROCESSING.ifeaturePageSong(snapshot.data),
                builder: (BuildContext context,
                    AsyncSnapshot<Iterable<Track>> snapshot_1) {
                  if (snapshot_1.hasData) {
                    return Container(
                      decoration: BoxDecoration(),
                      child: ListView(
                        children: PROCESSING.featurePageSong(snapshot_1.data),
                      ),
                    );
                  } else {
                    return Container(
                      color: Colors.blueAccent,
                      child: Text("day"),
                    );
                  }
                });
          } else {
            print(snapshot.hasData);
            return Container(
              color: Colors.greenAccent,
              child: Text("day"),
            );
          }
        });
  }

  @override
  bool get wantKeepAlive => true;
}
