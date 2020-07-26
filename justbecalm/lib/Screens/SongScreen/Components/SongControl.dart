import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SongControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.repeat),
          Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Icon(Icons.chevron_left),
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Icon(Icons.chevron_right),
                  )
                ],
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )
                ),
                child: Icon(Icons.play_arrow, size: 40, color: Colors.white,),
              )
            ],
          ),
          Icon(Icons.repeat),
        ],
      ),
    );
  }
}
