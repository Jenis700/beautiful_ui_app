import 'package:beautiful_ui_app/Screens/resitrstion.dart';
import 'package:beautiful_ui_app/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _textFieldData(IconData icon, String hintName) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        style: TextStyle(fontSize: 20, color: Colors.grey),
        decoration: InputDecoration(
          hintText: hintName,
          border: InputBorder.none,
          icon: Icon(icon, color: Colors.grey),
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
                      SizedBox(
                        height: 150,
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
                                fontSize: 35,
                                fontFamily: "CreteRound"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            "Sing in to your account",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: "CreteRound"),
                          ),
                          Text(
                            "...",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 22,
                                fontFamily: "CreteRound"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      _textFieldData(Icons.mail_outline, "Email"),
                      SizedBox(
                        height: 20,
                      ),
                      _textFieldData(Icons.lock_outline, "Password"),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
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
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(top: 20),
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
                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Create account ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "CreteRound",
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SingUpScreen(),
                                ),
                              ),
                              child: Text(
                                " Sing Up?",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontFamily: "CreteRound",
                                  fontSize: 16,
                                ),
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
          ),
        ],
      ),
    );
  }
}