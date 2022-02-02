import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameAndImage {
  String name;
  String devicesName;
  String? image;

  NameAndImage(
    this.name,
    this.devicesName,
    this.image,
  );
}

List shadowContainerData = [
  NameAndImage(
    'Living Room',
    '4 devices',
    'assets/living room.jpg',
  ),
  NameAndImage(
    'Media Room',
    '6 devices',
    'assets/media room.jpg',
  ),
  NameAndImage(
    'Bathroom Room',
    '1 devices',
    'assets/bath room.jpg',
  ),
  NameAndImage(
    'Bedroom Room',
    '2 devices',
    'assets/bed room.jpg',
  ),
  NameAndImage(
    'Kitchen Room',
    '5 devices',
    'assets/kitchen room.jpg',
  ),
  NameAndImage(
    'Pooja Room',
    '2 devices',
    'assets/Pooja-Room.jpg',
  ),
  NameAndImage(
    'Party Room',
    '7 devices',
    'assets/party room.jpg',
  ),
  NameAndImage(
    'OutDoor Room',
    'No devices',
    'assets/outdoor-rooms.jpg',
  ),
];

//.......................................................................................................................
//
// class ForRoom {
//   String name;
//   String caption;
//   IconData icon;
//
//   ForRoom(this.name, this.caption, this.icon);
// }
//
// List roomItemList = [
//   ForRoom(
//     "Air Conditioner",
//     "27°C",
//     Icons.air_outlined,
//   ),
//   ForRoom(
//     "Air Conditioner",
//     "27°C",
//     Icons.air_outlined,
//   ),
//   ForRoom(
//     "Air Conditioner",
//     "27°C",
//     Icons.air_outlined,
//   ),
//   ForRoom(
//     "Air Conditioner",
//     "27°C",
//     Icons.air_outlined,
//   ),
// ];

/*

bool isSwitched1 = false;

bool isSwitched2 = false;

bool isSwitched3 = false;

bool isSwitched4 = false;

bool isSwitched5 = false;

bool isSwitched6 = false;

bool isSwitched7 = false;

//ToDO : Icon color..............................
Color iconColors1 = Colors.black;

Color iconColors2 = Colors.black;

Color iconColors3 = Colors.black;

Color iconColors4 = Colors.black;

Color iconColors5 = Colors.black;

Color iconColors6 = Colors.black;

Color iconColors7 = Colors.black;

//ToDO : caption color..............................
Color captionColor1 = Colors.black;

Color captionColor2 = Colors.black;

Color captionColor3 = Colors.black;

Color captionColor4 = Colors.black;

Color captionColor5 = Colors.black;

Color captionColor6 = Colors.black;

Color captionColor7 = Colors.black;

//ToDO : Switch button function ..............................
void switchButton1(bool value) {
  if (isSwitched1 == false) {
    setState(() {
      isSwitched1 = true;
      iconColors1 = Theme.of(context).primaryColor;
      captionColor1 = Theme.of(context).primaryColor;
    });
  } else {
    setState(() {
      isSwitched1 = false;
      iconColors1 = Colors.black;
      captionColor1 = Colors.black;
    });
  }
}void switchButton2(bool value) {
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
      captionColor2 = Colors.black;
    });
  }
}void switchButton3(bool value) {
  if (isSwitched1 == false) {
    setState(() {
      isSwitched1 = true;
      iconColors1 = Theme.of(context).primaryColor;
      captionColor1 = Theme.of(context).primaryColor;
    });
  } else {
    setState(() {
      isSwitched1 = false;
      iconColors1 = Colors.black;
      captionColor1 = Colors.black;
    });
  }
}void switchButton4(bool value) {
  if (isSwitched1 == false) {
    setState(() {
      isSwitched1 = true;
      iconColors1 = Theme.of(context).primaryColor;
      captionColor1 = Theme.of(context).primaryColor;
    });
  } else {
    setState(() {
      isSwitched1 = false;
      iconColors1 = Colors.black;
      captionColor1 = Colors.black;
    });
  }
}void switchButton5(bool value) {
  if (isSwitched1 == false) {
    setState(() {
      isSwitched1 = true;
      iconColors1 = Theme.of(context).primaryColor;
      captionColor1 = Theme.of(context).primaryColor;
    });
  } else {
    setState(() {
      isSwitched1 = false;
      iconColors1 = Colors.black;
      captionColor1 = Colors.black;
    });
  }
}void switchButton6(bool value) {
  if (isSwitched1 == false) {
    setState(() {
      isSwitched1 = true;
      iconColors1 = Theme.of(context).primaryColor;
      captionColor1 = Theme.of(context).primaryColor;
    });
  } else {
    setState(() {
      isSwitched1 = false;
      iconColors1 = Colors.black;
      captionColor1 = Colors.black;
    });
  }
}void switchButton7(bool value) {
  if (isSwitched1 == false) {
    setState(() {
      isSwitched1 = true;
      iconColors1 = Theme.of(context).primaryColor;
      captionColor1 = Theme.of(context).primaryColor;
    });
  } else {
    setState(() {
      isSwitched1 = false;
      iconColors1 = Colors.black;
      captionColor1 = Colors.black;
    });
  }
}*/
