import 'package:flutter/material.dart';

import 'screens/screen_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent.shade200),
      home: SearchScreen(),
    );
  }
}
