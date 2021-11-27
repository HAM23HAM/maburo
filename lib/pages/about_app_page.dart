// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:maburo/theme.dart';

class AboutAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: backgroundColor1,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'About App',
            style: primaryTextStyle,
          ),
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/developer-detail');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Developer Detail',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: header(),
      ),
      backgroundColor: backgroundColor3,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 16,
            ),
            Image.asset(
              'assets/maburo.png',
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Maburo',
                      style: primaryTextStyle.copyWith(
                          fontSize: 24, fontWeight: bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Online Shoe Store App',
                    style: secondaryTextStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Maburo is an online shoe store application developed for the final project of mobile development programming practicum. This application was developed by a student named Muhammad Ilham by using Flutter technology and using the API from Builtwith Angga.',
                    textAlign: TextAlign.justify,
                    style: secondaryTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gallery',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                            right: 6,
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Image.asset(
                              'assets/SS_1.jpg',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Image.asset(
                              'assets/SS_2.jpg',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset(
                                'assets/SS_3.jpg',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset(
                                'assets/SS_4.jpg',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset(
                                'assets/SS_5.jpg',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset(
                                'assets/SS_6.jpg',
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thanks to',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Allah SWT, Mr. Kurniawan Teguh Martono, all MDP practicum assistants, Builtwith Angga',
                    textAlign: TextAlign.justify,
                    style: secondaryTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            signInButton(),
          ],
        ),
      ),
    );
  }
}
