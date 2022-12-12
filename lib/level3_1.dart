import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/level4_start.dart';
import 'package:url_launcher/url_launcher.dart';

class Level3_1 extends StatefulWidget {
  static const routeName = "/level3/1";

  @override
  State<Level3_1> createState() => _Level3_1State();
}

class _Level3_1State extends State<Level3_1> with TickerProviderStateMixin {
  late final AnimationController _controllerUfo;
  late Animation<double> _animationUfo;
  int selectedPage = 1;

  void initState() {
    super.initState();
    _controllerUfo = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animationUfo = Tween(begin: 1080.0, end: 0.0).animate(_controllerUfo);
  }

  @override
  void dispose() {
    _controllerUfo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
              children: [
                SizedBox(
                  height: w * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (selectedPage == 1)
                      Image.asset(
                        "assets/images/project showcase.png",
                        height: w * 0.03,
                      ),
                    if (selectedPage == 2)
                      Image.asset(
                        "assets/images/uni doc name.png",
                        height: w * 0.03,
                      ),
                    if (selectedPage == 3)
                      Image.asset(
                        "assets/images/level cleared.png",
                        height: w * 0.04,
                      ),
                  ],
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: w * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: w * 0.02),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                                child: selectedPage == 3
                                    ? Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: w * 0.1,
                                            width: w * 0.5,
                                            // color: Colors.white,
                                            child: Image.asset(
                                              "assets/images/click on the ufo to enter next level.png",
                                            ),
                                          ),
                                          SizedBox(
                                            height: w * 0.1,
                                          ),
                                          AnimatedBuilder(
                                            animation: _controllerUfo,
                                            builder: (context, child) {
                                              return Transform.translate(
                                                offset: Offset(0, _animationUfo.value),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pushNamed(Level4Start.routeName);
                                                  },
                                                  child: Container(
                                                    child: Image.asset(
                                                      "assets/images/ufo.png",
                                                      height: w * 0.1,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      )
                                    : Container(
                                        width: w * 0.5,
                                        height: w * 0.3,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            if (selectedPage == 1)
                                              Positioned(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    child: Image.asset(
                                                      "assets/images/project showcase start.png",
                                                      height: w * 0.3,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (selectedPage == 1)
                                              Positioned(
                                                bottom: w * 0.19,
                                                left: w * 0.21,
                                                // child: Align(
                                                // alignment: Alignment.topCenter,
                                                child: Container(
                                                  width: w * 0.4,
                                                  child: Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                            text: "hi there, this is dr. projectguy and he will show you some of the projects i have worked on and successfully completed. a small description with the github link for each project will be provided. to see my project journey, visit my ",
                                                            style: TextStyle(
                                                              fontFamily: "Joystix",
                                                              fontSize: w * 0.010,
                                                            )),
                                                        TextSpan(
                                                            text: "github",
                                                            recognizer: TapGestureRecognizer()
                                                              ..onTap = () async {
                                                                const url = "https://github.com/Sayam06";
                                                                if (await canLaunchUrl(Uri.parse(url)))
                                                                  await launchUrl(Uri.parse(url));
                                                                else
                                                                  throw "Could not launch $url";
                                                              },
                                                            style: TextStyle(
                                                              decoration: TextDecoration.underline,
                                                              fontFamily: "Joystix",
                                                              fontSize: w * 0.010,
                                                              color: Color.fromRGBO(102, 45, 145, 1),
                                                            )),
                                                        TextSpan(
                                                            text: " profile",
                                                            style: TextStyle(
                                                              fontFamily: "Joystix",
                                                              fontSize: w * 0.010,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                // ),
                                              ),
                                            if (selectedPage == 2)
                                              Positioned(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    child: Image.asset(
                                                      "assets/images/showcase bg.png",
                                                      height: w * 0.3,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (selectedPage == 2)
                                              Positioned(
                                                bottom: w * 0.075,
                                                left: w * 0.155,
                                                child: Container(
                                                  height: w * 0.2,
                                                  width: w * 0.5,
                                                  // color: Colors.white,
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: w * 0.0195,
                                                      ),
                                                      Container(
                                                        // color: Colors.white,
                                                        width: w * 0.215,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Image.asset(
                                                              "assets/images/unidoc logo.png",
                                                              height: w * 0.13,
                                                            ),
                                                            SizedBox(
                                                              height: w * 0.02,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () async {
                                                                const url = "https://github.com/orgs/DOCUDI/repositories";
                                                                if (await canLaunchUrl(Uri.parse(url)))
                                                                  await launchUrl(Uri.parse(url));
                                                                else
                                                                  throw "Could not launch $url";
                                                              },
                                                              child: Text(
                                                                "doc udi github link",
                                                                style: TextStyle(
                                                                  fontFamily: "Joystix",
                                                                  fontSize: w * 0.010,
                                                                  color: Color.fromRGBO(102, 45, 145, 1),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: w * 0.18,
                                                        child: Stack(
                                                          children: [
                                                            VerticalDivider(
                                                              color: Colors.white,
                                                              thickness: w * 0.003,
                                                            ),
                                                            VerticalDivider(
                                                              color: Colors.black,
                                                              thickness: w * 0.0015,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: w * 0.03,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              "doc-udi is a qr based healthcare management system, made to implement the concept of upi in the medical world.",
                                                              style: TextStyle(
                                                                fontFamily: "Joystix",
                                                                fontSize: w * 0.007,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: w * 0.01,
                                                            ),
                                                            Text(
                                                              "each doctor will have a unique qr that the patient has to scan to schedule/start appointments. once the patient scans the qr, the doctor will have access to all the previous medical records. the new prescription issued will be stored on cloud.",
                                                              style: TextStyle(
                                                                fontFamily: "Joystix",
                                                                fontSize: w * 0.007,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: w * 0.01,
                                                            ),
                                                            Text(
                                                              "made using flutter, react, nodejs, mongodb, python",
                                                              style: TextStyle(
                                                                fontFamily: "Joystix",
                                                                fontSize: w * 0.007,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        )),
                              ),
                              if (selectedPage == 3)
                                Image.asset(
                                  "assets/images/right arrow inactive.png",
                                  height: w * 0.06,
                                ),
                              if (selectedPage != 3)
                                GestureDetector(
                                  onTap: () {
                                    if (selectedPage == 2) {
                                      _controllerUfo.reset();
                                      _animationUfo = Tween(begin: 100.0, end: 0.0).animate(_controllerUfo);
                                      _controllerUfo.forward();
                                      _controllerUfo.repeat(reverse: true);
                                    }
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
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
