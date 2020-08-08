import 'package:flutter/material.dart';

class ArtistHead extends StatelessWidget {
  final artistImage;

  ArtistHead(this.artistImage);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        height: 85,
        width: 85,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(40))),
      ),
      Container(
        height: 75,
        width: 75,
        child: ClipOval(
          clipper: ArtistHeadClipper(),
          child: Center(child: this.artistImage),
        ),
      ),
    ]);
  }
}

class ArtistHeadClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTWH(0, 0, 75, 75);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
