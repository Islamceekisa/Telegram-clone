import 'package:apps/Contacts.dart';
import 'package:apps/profile.dart';
import 'package:apps/setting.dart';
// profil popkasn ulash
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Contacts(),
    Profile(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal),
        // rang berilmagnda polni shu rangi chiqazib beradi
        home: SafeArea(
          child: Scaffold(
            body: _widgetOptions.elementAt(_selectedIndex),
            // selectedIndex-- elementlan bosganda ozgaradgan qlad
            backgroundColor: Colors.white,

            bottomNavigationBar: GNav(
              // buttonNacigatorbar-- paasdan har hil navigatorla ochish
              // novigator
              rippleColor:
                  Colors.grey[800], // bosmaganda avto chiqib turadgan rangi
              hoverColor: Colors.grey[700], // tab button hover color
              haptic: true, // haptic feedback

              // yon radiusi
              // tabActiveBorder: Border.all(
              //     color: Colors.black, width: 1), // tab button border
              // tabBorder:
              //     Border.all(color: Colors.grey, width: 1), // tab button border
              // tabShadow: [
              //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
              // ], // tab button shadow
              // curve: Curves.easeOutExpo, // tab animation curves
              // duration: Duration(milliseconds: 900), // tab animation duration
              // gap: 8, // the tab button gap between icon and text
              // color: Colors.grey[800], // unselected icon color
              activeColor: Colors.teal, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor:
                  Colors.teal.withOpacity(0.1), // selected tab background color
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 9), // navigation bar padding
              tabs: [
                GButton(
                  // pasdig button   iconka bn nomini yozlgan
                  icon: Icons.contact_phone,
                  text: 'Contacts',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Setting',
                )
              ],
              selectedIndex: _selectedIndex,

              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ));
  }
}
