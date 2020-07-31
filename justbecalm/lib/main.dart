import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:justbecalm/Service/API.dart';

import 'Screens/App/App.dart';

void main() async {
  API();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}
