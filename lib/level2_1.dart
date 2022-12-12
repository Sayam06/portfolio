import 'package:flutter/material.dart';
import 'package:portfolio/level3_start.dart';

class Level2_1 extends StatefulWidget {
  static const routeName = "/level2/1";

  @override
  State<Level2_1> createState() => _Level2_1State();
}

class _Level2_1State extends State<Level2_1> with TickerProviderStateMixin {
  int selectedPage = 1;
  late final AnimationController _controllerAstro;
  late Animation<double> _animationAstro;
  late final AnimationController _controllerUfo;
  late Animation<double> _animationUfo;

  void initState() {
    super.initState();
    _controllerUfo = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controllerAstro = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animationUfo = Tween(begin: 1080.0, end: 0.0).animate(_controllerUfo);
    _animationAstro = Tween(begin: 0.0, end: -1080.0).animate(_controllerAstro);
  }

  @override
  void dispose() {
    _controllerAstro.dispose();
    _controllerUfo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
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
                      height: h,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/main_background.png",
                        fit: BoxFit.fill,
                      )),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: w * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (selectedPage == 1)
                              Image.asset(
                                "assets/images/Character Skills.png",
                                height: w * 0.03,
                              ),
                            if (selectedPage == 2)
                              Image.asset(
                                "assets/images/character interests.png",
                                height: w * 0.03,
                              ),
                            if (selectedPage == 3)
                              Image.asset(
                                "assets/images/level cleared.png",
                                height: w * 0.04,
                              ),
                          ],
                        ),
                        Container(
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
                                            if (selectedPage != 3) {
                                              _controllerUfo.reset();
                                              _animationUfo = Tween(begin: 0.0, end: w).animate(_controllerUfo);
                                              _controllerUfo.forward();

                                              _controllerAstro.reset();
                                              _animationAstro = Tween(begin: -w, end: 0.0).animate(_controllerAstro);
                                              _controllerAstro.forward();
                                            }
                                            if (selectedPage == 3) {
                                              _controllerUfo.reset();
                                              _animationUfo = Tween(begin: 0.0, end: 0.0).animate(_controllerUfo);
                                              _controllerUfo.forward();
                                            }

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
                                                  )
                                                ],
                                              )
                                            : Container(
                                                width: w * 0.5,
                                                height: w * 0.3,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: Container(
                                                          child: Image.asset(
                                                            "assets/images/skills bg.png",
                                                            height: w * 0.3,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    if (selectedPage == 1)
                                                      Positioned(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            height: w * 0.28,
                                                            width: w * 0.5,
                                                            // color: Colors.white,
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  width: w * 0.195,
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      skills(w, "cpp", "c++/c"),
                                                                      skills(w, "dsa", "dsa,os"),
                                                                      skills(w, "flutter", "flutter"),
                                                                      skills(w, "nodejs", "node js"),
                                                                      skills(w, "python", "python, java"),
                                                                      skills(w, "solidity", "solidity"),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: w * 0.042,
                                                                ),
                                                                Container(
                                                                  height: w * 0.2,
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
                                                                  width: w * 0.04,
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Text(
                                                                        "these skills are constantly being upgraded",
                                                                        style: TextStyle(
                                                                          fontFamily: "Joystix",
                                                                          color: Colors.black,
                                                                          fontSize: w * 0.010,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: w * 0.02,
                                                                      ),
                                                                      Text(
                                                                        "character skills increase at a higher level",
                                                                        style: TextStyle(
                                                                          fontFamily: "Joystix",
                                                                          color: Colors.black,
                                                                          fontSize: w * 0.010,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: w * 0.02,
                                                                      ),
                                                                      Text(
                                                                        "tip: increase skills with constant learning",
                                                                        style: TextStyle(
                                                                          fontFamily: "Joystix",
                                                                          color: Color.fromRGBO(102, 45, 145, 1),
                                                                          fontSize: w * 0.010,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (selectedPage == 2)
                                                      Positioned(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            height: w * 0.28,
                                                            width: w * 0.5,
                                                            // color: Colors.white,
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  width: w * 0.195,
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      skills(w, "music", "music"),
                                                                      skills(w, "photography", "photography"),
                                                                      skills(w, "long drives", "long drives"),
                                                                      skills(w, "hiking", "hiking"),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: w * 0.042,
                                                                ),
                                                                Container(
                                                                  height: w * 0.2,
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
                                                                  width: w * 0.04,
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Text(
                                                                        "these are some activities the character is interested in and performs in his leisure time",
                                                                        style: TextStyle(
                                                                          fontFamily: "Joystix",
                                                                          color: Colors.black,
                                                                          fontSize: w * 0.010,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: w * 0.02,
                                                                      ),
                                                                      Text(
                                                                        "tip: regularly brush-up on these interests to stay productive",
                                                                        style: TextStyle(
                                                                          fontFamily: "Joystix",
                                                                          color: Color.fromRGBO(102, 45, 145, 1),
                                                                          fontSize: w * 0.010,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
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
                                            if (selectedPage != 2) {
                                              _controllerUfo.reset();
                                              _animationUfo = Tween(begin: w, end: 0.0).animate(_controllerUfo);
                                              _controllerUfo.forward();

                                              _controllerAstro.reset();
                                              _animationAstro = Tween(begin: 0.0, end: -w).animate(_controllerAstro);
                                              _controllerAstro.forward();
                                            }

                                            if (selectedPage == 2) {
                                              _controllerUfo.reset();
                                              _animationUfo = Tween(begin: w * 0.1, end: 0.0).animate(_controllerUfo);
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
                                  // if (selectedPage == 1)
                                  Positioned(
                                    left: w * 0.41,
                                    bottom: -(w * 0.05),
                                    child: AnimatedBuilder(
                                      animation: _controllerAstro,
                                      builder: (context, child) {
                                        return Transform.translate(
                                          offset: Offset(_animationAstro.value, 0),
                                          child: Container(
                                            child: Image.asset(
                                              "assets/images/moving astro.png",
                                              height: w * 0.15,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  // if (selectedPage != 1)
                                  Positioned(
                                    left: w * 0.385,
                                    bottom: -(w * 0.05),
                                    child: selectedPage != 3
                                        ? AnimatedBuilder(
                                            animation: _controllerUfo,
                                            builder: (context, child) {
                                              return Transform.translate(
                                                offset: Offset(_animationUfo.value, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                    "assets/images/ufo.png",
                                                    height: w * 0.1,
                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        : AnimatedBuilder(
                                            animation: _controllerUfo,
                                            builder: (context, child) {
                                              return Transform.translate(
                                                offset: Offset(0, _animationUfo.value),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pushNamed(Level3Start.routeName);
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
                                  )
                                ],
                              ),
                              SizedBox(
                                height: w * 0.05,
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

  Container skills(double w, String img, String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: w * 0.004),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // color: Colors.white,
            height: w * 0.03,
            width: w * 0.03,
            child: Image.asset(
              "assets/images/$img.png",
              height: w * 0.03,
            ),
          ),
          SizedBox(
            width: w * 0.015,
          ),
          Text(
            "$name",
            style: TextStyle(
              fontFamily: "Joystix",
              color: Colors.black,
              fontSize: w * 0.015,
            ),
          )
        ],
      ),
    );
  }
}
