// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, dead_code

import 'package:flutter/material.dart';
import 'package:maburo/pages/home/home_page.dart';
import 'package:maburo/pages/home/profile_page.dart';
import 'package:maburo/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 22,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
            onTap: (Value) {
              setState(() {
                currentIndex = Value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'assets/icon_home_blue.png',
                    width: 22,
                    color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'assets/icon_profile.png',
                    width: 22,
                    color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ProfilePage();
          break;
        default:
          return HomePage();
          break;
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
