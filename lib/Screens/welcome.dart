import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../model.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;

  void onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54.withOpacity(0.7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(83),
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Have a nice day ",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontFamily: 'TrajanPro',
                                  letterSpacing: 1,
                                  wordSpacing: 1,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "!",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedTextKit(
                                animatedTexts: [
                                  for (final txt in ["Welcome, Jeremy"])
                                    WavyAnimatedText(
                                      txt,
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'CreteRound',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22,
                                      ),
                                    ),
                                ],
                              ),
                              Text(
                                "!",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontFamily: 'CreteRound',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.2),
                        ),
                        child: CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage("assets/my photo.jpg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: shadowContainerData.length,
        itemBuilder: (context, i) => Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 10,
              right: 10,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        shadowContainerData[i].image,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(top: 110),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(10),
                        ),
                        color: Colors.black.withOpacity(0.55),
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              shadowContainerData[i].name,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontFamily: 'CreteRound',
                                letterSpacing: 1,
                                wordSpacing: 1.5,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              shadowContainerData[i].devicesName,
                              style: TextStyle(
                                color: Theme.of(context).cardColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
