import 'package:flutter/material.dart';
import 'BottomNavigationWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottom navigation bar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
