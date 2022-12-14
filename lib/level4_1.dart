import 'package:flutter/material.dart';
import 'package:portfolio/congratulations.dart';

class Level4_1 extends StatefulWidget {
  static const routeName = "/level4/1";

  @override
  State<Level4_1> createState() => _Level4_1State();
}

class _Level4_1State extends State<Level4_1> {
  int selectedPage = 1;
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
                  Column(
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
                              "assets/images/work experience.png",
                              height: w * 0.03,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        // color: Colors.amber,
                        height: w * 0.2,
                        margin: EdgeInsets.only(top: w * 0.02, bottom: w * 0.01, right: w * 0.06, left: w * 0.06),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (selectedPage == 1)
                                  Image.asset(
                                    "assets/images/left arrow inactive.png",
                                    height: w * 0.06,
                                  ),
                                if (selectedPage != 1)
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPage--;
                                      });
                                    },
                                    child: Image.asset(
                                      "assets/images/left arrow.png",
                                      height: w * 0.06,
                                    ),
                                  ),
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (selectedPage == 1)
                                      Image.asset(
                                        "assets/images/boss battle 1.png",
                                        height: w * 0.035,
                                      ),
                                    if (selectedPage == 2)
                                      Image.asset(
                                        "assets/images/boss battle 2.png",
                                        height: w * 0.035,
                                      ),
                                    if (selectedPage == 3)
                                      Image.asset(
                                        "assets/images/boss battle 3.png",
                                        height: w * 0.035,
                                      ),
                                    if (selectedPage == 4)
                                      Image.asset(
                                        "assets/images/boss battle level cleared.png",
                                        height: w * 0.043,
                                      )
                                  ],
                                )),
                                if (selectedPage == 4)
                                  Image.asset(
                                    "assets/images/right arrow inactive.png",
                                    height: w * 0.06,
                                  ),
                                if (selectedPage != 4)
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPage++;
                                      });
                                    },
                                    child: Image.asset(
                                      "assets/images/right arrow.png",
                                      height: w * 0.06,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                              height: w * 0.05,
                            ),
                            if (selectedPage == 1)
                              Container(
                                width: w * 0.6,
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: "worked as a ",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                        color: Colors.white,
                                      )),
                                  TextSpan(
                                      text: "freelancer",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                      )),
                                  TextSpan(
                                      text: " for many companies such as walnut, afrotech solutions as well as different clients. worked on projects invloving use of flutter, firebase, nodejs. optimised certain applications of clients by efficient state management which includes reduction in app loading time as well.",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                        color: Colors.white,
                                      )),
                                ])),
                              ),
                            if (selectedPage == 2)
                              Container(
                                width: w * 0.6,
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: "associate developer at ",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                        color: Colors.white,
                                      )),
                                  TextSpan(
                                      text: "iinfoz techcrafts pvt. ltd.",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                      )),
                                  TextSpan(
                                      text: " responsible for making the app as well as the webiste for an upcoming startup-educircle. developed 25+ complex pages of the app using flutter. reduced the loading time of specific pages of the app by almost 1.02 seconds.",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                        color: Colors.white,
                                      )),
                                ])),
                              ),
                            if (selectedPage == 3)
                              Container(
                                width: w * 0.6,
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: "this is an upcoming boss battle which will be released after my ",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                        color: Colors.white,
                                      )),
                                  TextSpan(
                                      text: "summer internship at ubs for the summer of 2023",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                      )),
                                  TextSpan(
                                      text: ". This was an oncampus hire where 16 students were selected from among 3000 applicants. this invloved resume filtering, online assessments as well as 1:1 interviews.",
                                      style: TextStyle(
                                        fontFamily: "Joystix",
                                        fontSize: w * 0.012,
                                        color: Colors.white,
                                      )),
                                ])),
                              ),
                            if (selectedPage == 4)
                              Image.asset(
                                "assets/images/click on the ufo to enter next level.png",
                                height: w * 0.04,
                              ),
                          ],
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(bottom: w * 0.08, left: w * 0.1, right: w * 0.1),
                        // color: Colors.white,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (selectedPage == 4) Navigator.of(context).pushNamed(Congratulations.routeName);
                              },
                              child: Image.asset(
                                "assets/images/ufo.png",
                                height: w * 0.07,
                              ),
                            ),
                            SizedBox(width: w * 0.02),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black,
                                  ),
                                  height: w * 0.005,
                                  width: w * 0.6,
                                ),
                                if (selectedPage == 1)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(200, 204, 255, 1),
                                    ),
                                    height: w * 0.005,
                                    width: w * 0.150,
                                  ),
                                if (selectedPage == 2)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(200, 204, 255, 1),
                                    ),
                                    height: w * 0.005,
                                    width: w * 0.300,
                                  ),
                                if (selectedPage == 3)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(200, 204, 255, 1),
                                    ),
                                    height: w * 0.005,
                                    width: w * 0.450,
                                  ),
                                if (selectedPage == 4)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(200, 204, 255, 1),
                                    ),
                                    height: w * 0.005,
                                    width: w * 0.600,
                                  )
                              ],
                            ),
                            SizedBox(width: w * 0.02),
                            Container(
                              width: w * 0.07,
                              child: Text("new boss fights add after every work experience gained",
                                  style: TextStyle(
                                    fontFamily: "Joystix",
                                    fontSize: w * 0.008,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
    );
  }
}
