import 'package:flutter/material.dart';

class FeaturedScreen extends StatefulWidget {
  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> with AutomaticKeepAliveClientMixin<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sample Slivers"),
          leading: Icon(Icons.menu),
          backgroundColor: Colors.orangeAccent,
          floating: true,
          snap: true,
          pinned: true,
        ),
        SliverList(delegate: SliverChildListDelegate(
          [
            ListTile(leading: Icon(Icons.volume_off), title: Text("Volume Off"),),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ]
        )
        )
      ],
      
    );
  }

  @override
  bool get wantKeepAlive => true;
}
