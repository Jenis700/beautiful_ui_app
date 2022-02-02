import 'package:beautiful_ui_app/Screens/login.dart';
import 'package:beautiful_ui_app/Screens/rooms.dart';
import 'package:beautiful_ui_app/Screens/setting.dart';
import 'package:beautiful_ui_app/Screens/welcome.dart';
import 'package:flutter/material.dart';

class ButtomNavBar extends StatefulWidget {
  ButtomNavBar({Key? key}) : super(key: key);

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  List<Widget> bottomScreens = [
    WelcomeScreen(),
    RoomsScreen(),
    // ProfileScreen(),
    SettingScreen(),
    LoginScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedIconTheme: IconThemeData(
            color: Theme.of(context).backgroundColor,
            size: 22,
          ),
          // backgroundColor: Colors.lightBlue,
          currentIndex: _selectedIndex,

          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(
                AssetImage("assets/roomsIcon.png"),
                size: 33,
              ),
              label: 'Rooms',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.account_circle,
            //     size: 26,
            //   ),
            //   label: 'Profile',
            // ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(
                AssetImage("assets/settings-3837983-3204380.png"),
                size: 33,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: ImageIcon(
                AssetImage("assets/login3.png"),
                size: 33,
              ),
              label: 'Login',
            ),
          ],
        ),
      ),
      body: PageView(
        children: bottomScreens,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._selectedIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }
}
