import 'package:flutter/material.dart';
import 'package:portfolio/level3_1.dart';

class Level3Start extends StatefulWidget {
  static const routeName = "/level3";

  @override
  State<Level3Start> createState() => _Level3StartState();
}

class _Level3StartState extends State<Level3Start> {
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
                              "assets/images/back to level 2.png",
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
                                      "assets/images/level 3.png",
                                      height: w * 0.05,
                                    ),
                                    SizedBox(
                                      height: w * 0.03,
                                    ),
                                    Image.asset(
                                      "assets/images/explore my projects.png",
                                      height: w * 0.018,
                                    ),
                                    SizedBox(
                                      height: w * 0.03,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(Level3_1.routeName);
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
