import 'package:flutter/material.dart';
import 'package:portfolio/level4_1.dart';

class Level4Start extends StatefulWidget {
  static const routeName = "/level4";

  @override
  State<Level4Start> createState() => _Level4StartState();
}

class _Level4StartState extends State<Level4Start> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: (h < (0.45 * w) || w < 700)
          ? Container(
              height: h,
              width: w,
              child: Center(child: Text("Oops, website not compatible with the device screen resolution. This is a desktop only website. Try rotating your device and check if it helps :(")),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: w * 0.03,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: w * 0.03),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Image.asset(
                              "assets/images/back to level 3.png",
                              height: w * 0.02,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/level 4.png",
                                      height: w * 0.05,
                                    ),
                                    SizedBox(
                                      height: w * 0.03,
                                    ),
                                    Image.asset(
                                      "assets/images/explore my work journey.png",
                                      height: w * 0.018,
                                    ),
                                    SizedBox(
                                      height: w * 0.03,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(Level4_1.routeName);
                                      },
                                      child: Image.asset(
                                        "assets/images/start level 1.png",
                                        height: w * 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
