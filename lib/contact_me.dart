import 'package:flutter/material.dart';

class ContactMe extends StatefulWidget {
  static const routeName = "/contactMe";

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
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
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: w * 0.03,
                        ),
                        Container(
                          // color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/contact me.png",
                                height: w * 0.03,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: w * 0.05,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: w * 0.12,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Image.asset(
                                    "assets/images/left arrow.png",
                                    height: w * 0.06,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: w * 0.12,
                            ),
                            Container(
                              // color: Colors.white,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/contact me bg.png",
                                      height: w * 0.38,
                                    ),
                                  ),
                                  Positioned(
                                    left: w * 0.2,
                                    bottom: w * 0.2,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/facebook.png",
                                          height: w * 0.05,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: w * 0.06,
                                        ),
                                        Image.asset(
                                          "assets/images/instagram.png",
                                          height: w * 0.05,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: w * 0.06,
                                        ),
                                        Image.asset(
                                          "assets/images/linkedin.png",
                                          height: w * 0.05,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
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
