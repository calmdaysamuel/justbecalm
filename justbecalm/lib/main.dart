import 'package:flutter/material.dart';
import 'package:justbecalm/Service/API.dart';

import 'Screens/App/App.dart';

void main() {
  API();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}
