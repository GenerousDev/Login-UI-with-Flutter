import 'package:flutter/material.dart';
import 'Login.dart';
import 'Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String,WidgetBuilder>{
  MyLoginPage.tag: (context) => MyLoginPage(),
  MyHomePage.tag : (context) => MyHomePage()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyLoginPage(),
        routes: routes,
    );
  }
}


