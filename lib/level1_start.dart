import 'package:flutter/material.dart';
import 'package:portfolio/level1_1.dart';

class Level1Start extends StatefulWidget {
  static const routeName = "/level1";

  @override
  State<Level1Start> createState() => _Level1StartState();
}

class _Level1StartState extends State<Level1Start> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: (h < (0.45 * w) || w / h <= 16 / 9)
          ? Container(
              height: h,
              width: w,
              child: Center(child: Text("Oops, website not compatible with the device screen resolution. This is a desktop only website. Try rotating your device/resizing your browser window and check if it helps :(")),
            )
          : Container(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/level 1.png",
                          height: w * 0.05,
                        ),
                        SizedBox(
                          height: w * 0.03,
                        ),
                        Image.asset(
                          "assets/images/Know about me.png",
                          height: w * 0.018,
                        ),
                        SizedBox(
                          height: w * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(Level1_1.routeName);
                          },
                          child: Image.asset(
                            "assets/images/start level 1.png",
                            height: w * 0.06,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
