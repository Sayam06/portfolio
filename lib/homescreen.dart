import "package:flutter/material.dart";
import 'package:portfolio/init.dart';
import 'package:url_launcher/url_launcher.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 40.0).animate(_controller);
    _controller.forward();
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                    decoration: BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                        Color.fromRGBO(142, 50, 179, 1),
                        Color.fromRGBO(255, 178, 221, 1),
                      ]),
                    ),
                    child: Image.asset(
                      "assets/images/homescreen_bg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: w * 0.15),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: w * 0.1,
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/welcome.png",
                              height: w * 0.08,
                            ),
                          ),
                          SizedBox(height: w * 0.03),
                          Container(
                            width: w * 0.18,
                            child: Image.asset(
                              "assets/images/Press play to Enter story mode.png",
                            ),
                          ),
                          SizedBox(height: w * 0.03),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(InitWorld.routeName);
                                },
                                child: Container(
                                  width: w * 0.1,
                                  child: Image.asset(
                                    "assets/images/start.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              AnimatedBuilder(
                                animation: _controller,
                                builder: (context, child) {
                                  return Transform.translate(
                                    offset: Offset(_animation.value, 0),
                                    child: Container(
                                      width: w * 0.05,
                                      child: Image.asset(
                                        "assets/images/arrow.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: w * 0.08),
                          Text(
                            "Follow me at",
                            style: TextStyle(
                              fontFamily: "Joystix",
                              fontSize: w * 0.01,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: w * 0.02),
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    const url = "https://www.facebook.com/sayamgul06/";
                                    if (await canLaunchUrl(Uri.parse(url)))
                                      await launchUrl(Uri.parse(url));
                                    else
                                      throw "Could not launch $url";
                                  },
                                  child: Image.asset(
                                    "assets/images/facebook.png",
                                    height: w * 0.02,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.05,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    const url = "https://www.instagram.com/sayyummmmm/";
                                    if (await canLaunchUrl(Uri.parse(url)))
                                      await launchUrl(Uri.parse(url));
                                    else
                                      throw "Could not launch $url";
                                  },
                                  child: Image.asset(
                                    "assets/images/instagram.png",
                                    height: w * 0.02,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.05,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    const url = "https://www.linkedin.com/in/sayam-sarkar-60833b203/";
                                    if (await canLaunchUrl(Uri.parse(url)))
                                      await launchUrl(Uri.parse(url));
                                    else
                                      throw "Could not launch $url";
                                  },
                                  child: Image.asset(
                                    "assets/images/linkedin.png",
                                    height: w * 0.02,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: w * 0.05,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
