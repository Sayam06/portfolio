import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/level1_start.dart';

class InitWorld extends StatefulWidget {
  static const routeName = "/init";

  @override
  State<InitWorld> createState() => _InitWorldState();
}

class _InitWorldState extends State<InitWorld> {
  void timer() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(Level1Start.routeName);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    timer();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: Container(
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/init_bg.png",
                  fit: BoxFit.cover,
                )),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(
                  "assets/images/init_world.png",
                  width: w * 0.5,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
