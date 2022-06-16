import 'package:alphabet/showdata.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: MyHomePage(),

      initialRoute: '/',
      routes: {
        '/':(context) => MyHomePage(),
        Showdata.routename:(context) => Showdata(),
      },
    );
  }
}
