import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with AutomaticKeepAliveClientMixin<SearchScreen> {
  @override
  int counter = 0;
  void stateSetter() {
    setState(() {
      counter++;
    });
  }

  Widget build(BuildContext context) {
    var fin = 0;
    return Container(
      color: Colors.black,
      height: 200,
      child: Row(
        children: <Widget>[
          MaterialButton(
            onPressed: this.stateSetter,
            color: Colors.deepOrange,
            child: Text("$counter"),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
