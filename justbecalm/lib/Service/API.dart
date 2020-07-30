import 'package:spotify/spotify.dart';

class API {

  // ignore: non_constant_identifier_names
  static  var SPOTIFY;
  API(){
    String clientID = "663fb963adbb41b580ab4fcf1cf40ea5";
    String clientSecret = "2b6eec22cf6442d5972fd74aeeda423f";

    var credentials = SpotifyApiCredentials(clientID, clientSecret);
    API.SPOTIFY = SpotifyApi(credentials);
  }

  //Get Album
  static Future<Album> getAlbum(String albumId) async {
    return await SPOTIFY.albums.get(albumId);
  }

  //Get list of Albums
  static Future<Iterable<Album>> getAlbums(Iterable<String> albumIds) async{
    return await SPOTIFY.albums.list(albumIds);
  }

  //Get tracks in Album
  static Pages<TrackSimple> getTracksInAlbum(String albumId){
    return SPOTIFY.albums.getTracks(albumId);
  }

  //Get Track
  static Future<Track> getTrack(String trackId) async {
    return await SPOTIFY.tracks.get(trackId);
  }

  //Get list of tracks
  static Future<Iterable<Track>> getListOfTracks(Iterable<String> trackIds) async {
    return await SPOTIFY.tracks.list(trackIds);
  }

  //Get artist
  static Future<Artist> getArtist(String artistId) async {
    return await SPOTIFY.artists.get(artistId);
  }

  //Get list of artists
  static Future<Iterable<Artist>> getArtists(Iterable<String> artistIds) async {
    return await SPOTIFY.artists.list(artistIds);
  }

  //Get search results
}