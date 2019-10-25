import 'package:bottombar_navigation_pattern/bottombar_navigation_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Pattern',
      initialRoute: '/',
      routes: {
        '/': (context) => BottomBarNavigation(),
      },
    );
  }
}
