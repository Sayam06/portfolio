import 'package:flutter/material.dart';
import 'package:portfolio/contact_me.dart';
import 'package:portfolio/level1_start.dart';
import 'package:portfolio/level2_start.dart';
import 'package:portfolio/level3_start.dart';
import 'package:portfolio/level4_start.dart';

class Congratulations extends StatefulWidget {
  static const routeName = "/congrats";

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/congratulations.png",
                          height: w * 0.05,
                        ),
                        SizedBox(
                          height: w * 0.03,
                        ),
                        Image.asset(
                          "assets/images/congrats text.png",
                          height: w * 0.05,
                        ),
                        SizedBox(
                          height: w * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(ContactMe.routeName);
                          },
                          child: Image.asset(
                            "assets/images/contact me button.png",
                            height: w * 0.05,
                          ),
                        ),
                        SizedBox(
                          height: w * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: w * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(Level1Start.routeName);
                                    },
                                    child: Image.asset(
                                      "assets/images/go to level 1.png",
                                      height: w * 0.018,
                                    ),
                                  ),
                                  SizedBox(
                                    height: w * 0.01,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(Level2Start.routeName);
                                    },
                                    child: Image.asset(
                                      "assets/images/go to level 2.png",
                                      height: w * 0.018,
                                    ),
                                  ),
                                  SizedBox(
                                    height: w * 0.01,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(Level3Start.routeName);
                                    },
                                    child: Image.asset(
                                      "assets/images/go to level 3.png",
                                      height: w * 0.018,
                                    ),
                                  ),
                                  SizedBox(
                                    height: w * 0.01,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(Level4Start.routeName);
                                    },
                                    child: Image.asset(
                                      "assets/images/go to level 4.png",
                                      height: w * 0.018,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
