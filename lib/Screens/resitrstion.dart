import 'package:beautiful_ui_app/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'login.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool _shawPassword = true;
  bool _shawPassword1 = true;

  void forPassword() {
    if (_shawPassword == true) {
      setState(() {
        _shawPassword = false;
      });
    } else {
      setState(() {
        _shawPassword = true;
      });
    }
  }

  void forPassword1() {
    if (_shawPassword1 == true) {
      setState(() {
        _shawPassword1 = false;
      });
    } else {
      setState(() {
        _shawPassword1 = true;
      });
    }
  }

  _textFieldData(
    IconData icon,
    String hintName,
    TextInputType typeOfKey,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: typeOfKey,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white.withOpacity(0.85),
        ),
        decoration: InputDecoration(
          hintText: hintName,
          border: InputBorder.none,
          icon: Icon(icon, color: Colors.grey),
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }

  _textFieldData1(IconData icon, String hintName, TextInputType typeOfKey,
      [IconButton? IconsForPasswoed]) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        obscureText: _shawPassword,
        keyboardType: typeOfKey,
        style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.85)),
        decoration: InputDecoration(
          hintText: hintName,
          suffixIcon: IconsForPasswoed,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: this._shawPassword
                ? Colors.grey
                : Theme.of(context).primaryColor,
          ),
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }

  _textFieldData2(IconData icon, String hintName, TextInputType typeOfKey,
      [IconButton? IconsForPasswoed]) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        obscureText: _shawPassword1,
        keyboardType: typeOfKey,
        style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.85)),
        decoration: InputDecoration(
          hintText: hintName,
          suffixIcon: IconsForPasswoed,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: this._shawPassword1
                ? Colors.grey
                : Theme.of(context).primaryColor,
          ),
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/myWalpaperImage.jpg",
              fit: BoxFit.cover,
              color: Colors.black38,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 9),
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.white)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontFamily: "CreteRound"),
                          ),
                          Text(
                            "!",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: "CreteRound",
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sing in to your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: "CreteRound"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      _textFieldData(
                        Icons.mail_outline,
                        "Email",
                        TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _textFieldData(
                        MdiIcons.phone,
                        "Phone Number",
                        TextInputType.phone,
                      ),

// TODO: password textfields....................................

                      SizedBox(
                        height: 10,
                      ),
                      _textFieldData1(
                        Icons.lock_outline,
                        "Password",
                        TextInputType.visiblePassword,
                        IconButton(
                          color: this._shawPassword
                              ? Colors.grey
                              : Theme.of(context).primaryColor,
                          icon: this._shawPassword
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () => forPassword(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _textFieldData2(
                        MdiIcons.lockAlertOutline,
                        "Conform Password",
                        TextInputType.multiline,
                        IconButton(
                          color: this._shawPassword1
                              ? Colors.grey
                              : Theme.of(context).primaryColor,
                          icon: this._shawPassword1
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () => forPassword1(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: double.maxFinite,
                        color: Theme.of(context).primaryColor,
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            "Sing Up",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  MdiIcons.googlePlus,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                Icon(
                                  MdiIcons.facebook,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an account ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "CreteRound",
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),

                              child: Row(
                                children: [
                                  Text(
                                    " Log In",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontFamily: "CreteRound",
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    " ?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "CreteRound",
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
