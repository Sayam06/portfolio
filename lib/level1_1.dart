import 'package:flutter/material.dart';
import 'package:portfolio/level2_start.dart';

class Level1_1 extends StatefulWidget {
  static const routeName = "/level1/1";

  @override
  State<Level1_1> createState() => _Level1_1State();
}

class _Level1_1State extends State<Level1_1> {
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
                        "assets/images/main_background.png",
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                    right: w * 0.03,
                    bottom: w * 0.09,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(Level2Start.routeName);
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/images/astro.png",
                          height: w * 0.2,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: w * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/i am sayam.png",
                              height: w * 0.02,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // color: Colors.black,
                                  child: Image.asset(
                                    "assets/images/sayam.png",
                                    height: w * 0.2,
                                  ),
                                ),
                                SizedBox(
                                  width: w * 0.05,
                                ),
                                Container(
                                  // color: Colors.black,
                                  width: w * 0.3,
                                  child: Text(
                                    "I am a final year undergrad student studying computer science and engineering from vellore institute of technology, vellore. i am from the city of joy, Calcutta. I have completed my +2 from delhi public school, ruby park.",
                                    style: TextStyle(
                                      fontFamily: "Joystix",
                                      color: Colors.white,
                                      fontSize: w * 0.012,
                                    ),
                                    softWrap: true,
                                  ),
                                )
                              ],
                            ),
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
