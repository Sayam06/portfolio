import 'package:flutter/material.dart';
import 'package:portfolio/congratulations.dart';
import 'package:portfolio/contact_me.dart';
import 'package:portfolio/homescreen.dart';
import 'package:portfolio/init.dart';
import 'package:portfolio/level1_1.dart';
import 'package:portfolio/level1_start.dart';
import 'package:portfolio/level2_1.dart';
import 'package:portfolio/level2_start.dart';
import 'package:portfolio/level3_1.dart';
import 'package:portfolio/level3_start.dart';
import 'package:portfolio/level4_1.dart';
import 'package:portfolio/level4_start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homescreen(),
      routes: {
        InitWorld.routeName: (ctx) => InitWorld(),
        Level1Start.routeName: (ctx) => Level1Start(),
        Level1_1.routeName: (ctx) => Level1_1(),
        Level2Start.routeName: (ctx) => Level2Start(),
        Level2_1.routeName: (ctx) => Level2_1(),
        Level3Start.routeName: (ctx) => Level3Start(),
        Level3_1.routeName: (ctx) => Level3_1(),
        Level4Start.routeName: (ctx) => Level4Start(),
        Level4_1.routeName: (ctx) => Level4_1(),
        Congratulations.routeName: (ctx) => Congratulations(),
        ContactMe.routeName: (ctx) => ContactMe(),
      },
    );
  }
}
