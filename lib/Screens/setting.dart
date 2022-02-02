import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  _settingContainerData([
    IconData? iconSetting,
    Color? iconColorSetting,
    String? headTextSetting,
    String? smallTextSetting1,
    String? dotTextSetting,
    String? smallTextSetting2,
    String? dotTextSetting2,
    String? smallTextSetting3,
  ]) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: iconColorSetting,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              iconSetting,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headTextSetting!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  smallTextSetting1!,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                Text(
                  dotTextSetting!,
                  style: TextStyle(color: Theme
                      .of(context)
                      .primaryColor),
                ),
                Text(
                  smallTextSetting2!,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                Text(
                  dotTextSetting2!,
                  style: TextStyle(color: Theme
                      .of(context)
                      .primaryColor),
                ),
                Text(
                  smallTextSetting3!,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
//TODO :Mr. JENIS RADADIYA CONTAINER............................................................................................................
              Container(
                height: 110,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mr. Jenis Radadiya".toUpperCase(),
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "radadiyajenis2001@gmail,com",
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 47,
                        backgroundColor: Theme
                            .of(context)
                            .primaryColor,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/my photo.jpg",
                            fit: BoxFit.cover,
                            width: 90,
                            height: 90,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 1................with 1 elements............................................................................................................
              Container(
                height: 65,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: _settingContainerData(
                  Icons.wifi,
                  Colors.cyanAccent.shade400,
                  "Connection",
                  "Wi-Fi",
                  "  •  ",
                  "Bluetooth",
                  "  •  ",
                  "Flight mode",
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 2................with 2 elements............................................................................................................
              Container(
                height: 130,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.volumeHigh,
                        Colors.purple.shade500,
                        "Sound and vibration",
                        "Sound mode",
                        "  •  ",
                        "Ringtone",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.notificationClearAll,
                        Color(0xFFFF6e40).withOpacity(0.9),
                        "Notifications",
                        "Status bar",
                        "  •  ",
                        "Do not disturb",
                        "",
                        "",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

//TODO : Container no 3................with 5 elements............................................................................................................

              Container(
                height: 385,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.weatherSunny,
                        Color(0xff64DD17).withOpacity(0.85),
                        "Display",
                        "Brightness",
                        "  •  ",
                        "Eye comfort\n shield",
                        "  •  ",
                        "Navigation\n bar",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.wallpaper,
                        Colors.purpleAccent.shade400.withOpacity(0.9),
                        "Wallpaper",
                        "Home and",
                        " ",
                        "lock screen",
                        " ",
                        "wallpaper",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.themeLightDark,
                        Colors.cyanAccent[700],
                        "Themes",
                        "Themes",
                        "  •  ",
                        "Wallpaper",
                        "  •  ",
                        "Icons",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.home,
                        Colors.deepPurple,
                        "Home screen",
                        "Layout",
                        "  •  ",
                        "App icon",
                        " ",
                        "badges",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.lock,
                        Colors.yellow[700],
                        "Lock screen",
                        "Screen lock type",
                        "  •  ",
                        "Awlays On",
                        " ",
                        "Display",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 4................with 5 elements............................................................................................................
              Container(
                height: 355,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.security,
                        Colors.deepPurpleAccent.shade400,
                        "Biometrics and security",
                        "Face recognition",
                        "  •  ",
                        "Fingerprints",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        Icons.privacy_tip,
                        Colors.green.shade700,
                        "Privacy",
                        "Permission manager",
                        "",
                        "",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        Icons.location_on,
                        Colors.blueGrey,
                        "Location",
                        "Location permission",
                        "  •  ",
                        "Location requests",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.google,
                        Colors.red.shade800,
                        "Google",
                        "Google",
                        "  •  ",
                        "services",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.backupRestore,
                        Color(0xff64DD17).withOpacity(0.85),
                        "Accounts and backup",
                        "Manage accounts",
                        "  •  ",
                        "Smart Switch",
                        "",
                        "",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 5................with 1 elements............................................................................................................
              Container(
                height: 65,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: _settingContainerData(
                  Icons.wifi,
                  Colors.yellow.shade900,
                  "Advanced features",
                  "Android Auto",
                  "  •  ",
                  "Side key",
                  "  •  ",
                  "Bixby Routines",
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 6................with 3 elements............................................................................................................
              Container(
                height: 210,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.googleFit,
                        Colors.purpleAccent.shade400.withOpacity(0.9),
                        "Digital Wellbeing and Controls",
                        "Screen time",
                        "  •  ",
                        "App timers",
                        "  •  ",
                        "Bedtime mode",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.batteryChargingWirelessAlert,
                        Color(0xff64DD17).withOpacity(0.8),
                        "Battery and device care",
                        "Storage",
                        " ",
                        "Memory",
                        " ",
                        "Device protection",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.apps,
                        Colors.cyanAccent[700],
                        "Apps",
                        "Default apps",
                        "  •  ",
                        "App settings",
                        "",
                        "",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 7................with 2 elements............................................................................................................
              Container(
                height: 140,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.googleController,
                        Colors.orangeAccent,
                        "General management",
                        "Language and keyboard",
                        "  •  ",
                        "Date and time",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.seatPassenger,
                        Colors.redAccent.withOpacity(0.9),
                        "Accessibility",
                        "TalkBack",
                        "  •  ",
                        "Mono audio",
                        "  •  ",
                        "Assistant menu",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
//TODO : Container no 8................with 5 elements............................................................................................................
              Container(
                height: 355,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.microsoftWindows,
                        Colors.cyan,
                        "Software",
                        "Download and install",
                        "",
                        "",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.faceWomanProfile,
                        Colors.brown,
                        "User manual",
                        "User manual",
                        " ",
                        "lock screen",
                        " ",
                        "wallpaper",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.remote,
                        Colors.pink.shade800,
                        "Remote support",
                        "Remote support",
                        "",
                        "",
                        "",
                        "",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.details,
                        Colors.purpleAccent.shade700,
                        "About phone",
                        "Status",
                        "  •  ",
                        "Legal information",
                        "  •  ",
                        "Phone name",
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade700,
                      indent: 80,
                      endIndent: 30,
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: _settingContainerData(
                        MdiIcons.appleKeyboardOption,
                        Colors.deepOrange,
                        "Developer options",
                        "Developer options",
                        "",
                        "",
                        "",
                        "",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
