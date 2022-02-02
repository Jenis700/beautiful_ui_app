import 'dart:ui';

import 'package:beautiful_ui_app/Screens/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54.withOpacity(0.7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(right: 180, top: 15),
              child: Text(
                "MEDIA ROOM",
                style: TextStyle(
                    fontFamily: 'TrajanPro', fontSize: 25, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                child: ImageIcon(
                  AssetImage("assets/menu.png"),
                  size: 30,
                  color: Colors.white,
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen())),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SelectCard(),
      ),
    );
  }
}

class SelectCard extends StatefulWidget {
  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  bool isSwitched1 = false;

  bool isSwitched2 = false;

  bool isSwitched3 = false;

  bool isSwitched4 = false;

  bool isSwitched5 = false;

  bool isSwitched6 = false;

  bool isSwitched7 = false;

// TODO : Colors for Icons ..........................................
  Color iconColors1 = Colors.black;

  Color iconColors2 = Colors.black;

  Color iconColors3 = Colors.black;

  Color iconColors4 = Colors.black;

  Color iconColors5 = Colors.black;

  Color iconColors6 = Colors.black;

  Color iconColors7 = Colors.black;

  // TODO : Colors for Captions ..........................................
  Color captionColor1 = Colors.grey;

  Color captionColor2 = Colors.grey;

  Color captionColor3 = Colors.grey;

  Color captionColor4 = Colors.grey;

  Color captionColor5 = Colors.grey;

  Color captionColor6 = Colors.grey;

  Color captionColor7 = Colors.grey;

// TODO : Switch buttons ..........................................
  void switchButton1(bool value) {
    if (!isSwitched1) {
      setState(() {
        isSwitched1 = true;
        iconColors1 = Theme.of(context).primaryColor;
        captionColor1 = Theme.of(context).primaryColor;
      });
    } else {
      setState(() {
        isSwitched1 = false;
        iconColors1 = Colors.black;
        captionColor1 = Colors.grey;
      });
    }
  }

  // TODO: Music na icon mate.............
  bool musicIcons = false;

  void switchButton2(bool value) {
    if (isSwitched2 == false) {
      setState(() {
        isSwitched2 = true;
        iconColors2 = Theme.of(context).primaryColor;
        captionColor2 = Theme.of(context).primaryColor;
      });
    } else {
      setState(() {
        isSwitched2 = false;
        iconColors2 = Colors.black;
        captionColor2 = Colors.grey;
      });
    }
  }

  void switchButton3(bool value) {
    if (isSwitched3 == false) {
      setState(() {
        isSwitched3 = true;
        iconColors3 = Theme.of(context).primaryColor;
        captionColor3 = Theme.of(context).primaryColor;
      });
    } else {
      setState(() {
        isSwitched3 = false;
        iconColors3 = Colors.black;
        captionColor3 = Colors.grey;
      });
    }
  }

  String onOffTv = 'OFF';

  void switchButton4(bool value) {
    if (isSwitched4 == false) {
      setState(() {
        isSwitched4 = true;
        iconColors4 = Theme.of(context).primaryColor;
        captionColor4 = Theme.of(context).primaryColor;
        onOffTv = 'ON';
      });
    } else {
      setState(() {
        isSwitched4 = false;
        iconColors4 = Colors.black;
        captionColor4 = Colors.grey;
        onOffTv = 'OFF';
      });
    }
  }

  String onOff = 'OFF';

  void switchButton5(bool value) {
    if (isSwitched5 == false) {
      setState(() {
        isSwitched5 = true;
        iconColors5 = Theme.of(context).primaryColor;
        captionColor5 = Theme.of(context).primaryColor;
        onOff = 'ON';
      });
    } else {
      setState(() {
        isSwitched5 = false;
        iconColors5 = Colors.black;
        captionColor5 = Colors.grey;
        onOff = 'OFF';
      });
    }
  }

  void switchButton6(bool value) {
    if (isSwitched6 == false) {
      setState(() {
        isSwitched6 = true;
        iconColors6 = Theme.of(context).primaryColor;
        captionColor6 = Theme.of(context).primaryColor;
      });
    } else {
      setState(() {
        isSwitched6 = false;
        iconColors6 = Colors.black;
        captionColor6 = Colors.grey;
      });
    }
  }

  void switchButton7(bool value) {
    if (isSwitched7 == false) {
      setState(() {
        isSwitched7 = true;
        iconColors7 = Theme.of(context).primaryColor;
        captionColor7 = Theme.of(context).primaryColor;
      });
    } else {
      setState(() {
        isSwitched7 = false;
        iconColors7 = Colors.black;
        captionColor7 = Colors.grey;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: 15, right: 15, left: 15),
        child: Column(
          children: [
            Row(
              children: [
//........................column 1...................................................................................
                Column(
                  children: [
//TODO.........................container 1..........................................
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                      height: 110,
                      width: 160,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey.shade300.withOpacity(0.5),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/imageIcon4.png"),
                                    color: iconColors1,
                                    size: 32,
                                  ),
                                  FlutterSwitch(
                                    width: 40.0,
                                    height: 22.0,
                                    toggleSize: 15.0,
                                    borderRadius: 30.0,
                                    activeColor: Theme.of(context).primaryColor,
                                    value: isSwitched1,
                                    onToggle: switchButton1,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Air Conditioner",
                                    style: TextStyle(
                                        fontFamily: 'CreteRound',
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 0.6),
                                  ),
                                  Text(
                                    "27°C",
                                    style: TextStyle(
                                      fontFamily: 'CreteRound',
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w900,
                                      color: captionColor1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
//TODO.........................container 2..........................................
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                      height: 110,
                      width: 160,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey.shade300.withOpacity(0.5),),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/imageIcon3.png"),
                                    size: 35,
                                    color: iconColors2,
                                  ),
                                  FlutterSwitch(
                                    width: 40.0,
                                    height: 22.0,
                                    toggleSize: 15.0,
                                    borderRadius: 30.0,
                                    activeColor: Theme.of(context).primaryColor,
                                    value: isSwitched2,
                                    onToggle: switchButton2,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "All Speakers",
                                    style: TextStyle(
                                        fontFamily: 'CreteRound',
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 0.6),
                                  ),
                                  Text(
                                    "75% Volume",
                                    style: TextStyle(
                                      fontFamily: 'CreteRound',
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w900,
                                      color: captionColor2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
//.....................................column 2................................................................................
                Column(
                  children: [
//TODO.........................container 3..........................................
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                      height: 110,
                      width: 160,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey.shade300.withOpacity(0.5),),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/images9.png"),
                                    color: iconColors3,
                                    size: 36,
                                  ),
                                  FlutterSwitch(
                                    width: 40.0,
                                    height: 22.0,
                                    toggleSize: 15.0,
                                    borderRadius: 30.0,
                                    activeColor: Theme.of(context).primaryColor,
                                    value: isSwitched3,
                                    onToggle: switchButton3,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Air Conditioner",
                                    style: TextStyle(
                                        fontFamily: 'CreteRound',
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 0.6),
                                  ),
                                  Text(
                                    "27°C",
                                    style: TextStyle(
                                      fontFamily: 'CreteRound',
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w900,
                                      color: captionColor3,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
//TODO.........................container 4..........................................
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                      height: 110,
                      width: 160,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey.shade300.withOpacity(0.5),),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.tv,
                                    color: iconColors4,
                                    size: 28,
                                  ),
                                  FlutterSwitch(
                                    width: 40.0,
                                    height: 22.0,
                                    toggleSize: 15.0,
                                    borderRadius: 30.0,
                                    activeColor: Theme.of(context).primaryColor,
                                    value: isSwitched4,
                                    onToggle: switchButton4,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Samsung Tv",
                                    style: TextStyle(
                                        fontFamily: 'CreteRound',
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 0.6),
                                  ),
                                  Text(
                                    onOffTv,
                                    style: TextStyle(
                                      fontFamily: 'CreteRound',
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w900,
                                      color: captionColor4,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 100,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey.shade300.withOpacity(0.5),),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Kushu kushu Mera.."),
                          Text("Satyamev Jayate(Ku.."),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.fast_rewind, size: 27),
                          IconButton(
                            icon: musicIcons
                                ? Icon(Icons.pause, size: 27)
                                : Icon(Icons.play_arrow, size: 27),
                            onPressed: () {
                              setState(() {
                                musicIcons = !musicIcons;
                              });
                            },
                          ),
                          Icon(Icons.fast_forward, size: 27),
                          Icon(Icons.stop, size: 27),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
//TODO.........................container 5..........................................
                Container(
                  margin: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                  height: 110,
                  width: 160,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.grey.shade300.withOpacity(0.5),),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ImageIcon(
                                AssetImage("assets/imageIcon2.png"),
                                color: iconColors5,
                                size: 30,
                              ),
                              FlutterSwitch(
                                width: 40.0,
                                height: 22.0,
                                toggleSize: 15.0,
                                borderRadius: 30.0,
                                activeColor: Theme.of(context).primaryColor,
                                value: isSwitched5,
                                onToggle: switchButton5,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Play Station 4",
                                style: TextStyle(
                                    fontFamily: 'CreteRound',
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.6),
                              ),
                              Text(
                                onOff,
                                style: TextStyle(
                                  fontFamily: 'CreteRound',
                                  letterSpacing: 0.7,
                                  fontWeight: FontWeight.w900,
                                  color: captionColor5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
//TODO.........................container 6..........................................
                Container(
                  margin: EdgeInsets.only(bottom: 5, top: 5, right: 5),
                  height: 110,
                  width: 160,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.grey.shade300.withOpacity(0.5),),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ImageIcon(
                                AssetImage("assets/preview.png"),
                                color: iconColors6,
                                size: 26,
                              ),
                              FlutterSwitch(
                                width: 40.0,
                                height: 22.0,
                                toggleSize: 15.0,
                                borderRadius: 30.0,
                                activeColor: Theme.of(context).primaryColor,
                                value: isSwitched6,
                                onToggle: switchButton6,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Sound System",
                                style: TextStyle(
                                    fontFamily: 'CreteRound',
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.6),
                              ),
                              Text(
                                "connected",
                                style: TextStyle(
                                  fontFamily: 'CreteRound',
                                  letterSpacing: 0.7,
                                  fontWeight: FontWeight.w900,
                                  color: captionColor6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300,
                ),
                child: TextField(
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Enter a search term',
                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1.5),
                    ),
                    prefixIcon: Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
