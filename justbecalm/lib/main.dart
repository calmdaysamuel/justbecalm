import 'package:flutter/material.dart';
import 'package:justbecalm/Screens/SongScreen/SongScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SongScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
