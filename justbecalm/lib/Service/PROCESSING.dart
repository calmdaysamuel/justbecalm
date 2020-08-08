import 'package:justbecalm/Screens/FeaturedScreen/Components/SongCard.dart';
import 'package:spotify/spotify.dart';

import 'API.dart';

class PROCESSING {
  static List<SongCard> featurePageSong(Iterable<Track> songs) {
    List<SongCard> tracks = [];
    for (var track in songs) {
      // ignore: non_constant_identifier_names
      var CompleteTrack = track;
      print(CompleteTrack.name);
      tracks.add(SongCard(
        imageUrl: CompleteTrack.album.images[0].url,
        albumName: CompleteTrack.album.name,
        songName: CompleteTrack.name,
        artistName: CompleteTrack.artists[0].name,
        albumId: CompleteTrack.album.id,
        artistId: CompleteTrack.artists[0].id,
        albumUrl: CompleteTrack.album.href,
        artistUrl: CompleteTrack.artists[0].href,
      ));
    }

    return tracks;
  }

  static Future<Iterable<Track>> ifeaturePageSong(Recommendations rd) async {
    var songs = rd.tracks.map((e) => e.id);
    return await API.getListOfTracks(songs);
  }
}
