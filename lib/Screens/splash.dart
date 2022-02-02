import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beautiful_ui_app/Screens/bottom_nav_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ButtomNavBar(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black54.withOpacity(0.85)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange.shade300,
                        radius: 60,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: Image.asset("assets/hotel.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          for (final txt in ["Hotel App"])
                            TypewriterAnimatedText(
                              txt,
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "CreteRound",
                                  letterSpacing: 1,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(2, 2),
                                      blurRadius: 5,
                                    )
                                  ]),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    Text(
                      "  Online Hotel Rooms \n            &\n Luxry Service For Evryone",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: "TrajanPro",
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(2, 2))
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
