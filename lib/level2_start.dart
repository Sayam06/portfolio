import 'package:flutter/material.dart';
import 'package:portfolio/level2_1.dart';

class Level2Start extends StatefulWidget {
  static const routeName = "/level2";

  @override
  State<Level2Start> createState() => _Level2StartState();
}

class _Level2StartState extends State<Level2Start> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
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
                        "assets/images/back to level 1.png",
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
                                "assets/images/level 2.png",
                                height: w * 0.05,
                              ),
                              SizedBox(
                                height: w * 0.03,
                              ),
                              Image.asset(
                                "assets/images/export my skills.png",
                                height: w * 0.018,
                              ),
                              SizedBox(
                                height: w * 0.03,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(Level2_1.routeName);
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
