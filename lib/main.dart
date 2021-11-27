// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:maburo/pages/about_app_page.dart';
import 'package:maburo/pages/cart_page.dart';
import 'package:maburo/pages/developer_detail.dart';
import 'package:maburo/pages/edit_profile.dart';
import 'package:maburo/pages/home/main_page.dart';
import 'package:maburo/pages/product_page.dart';
import 'package:maburo/pages/sign_in_page.dart';
import 'package:maburo/pages/sign_up_page.dart';
import 'package:maburo/pages/splash_page.dart';
import 'package:maburo/providers/auth_provider.dart';
import 'package:maburo/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(create: (context) => ProductProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/developer-detail': (context) => DeveloperDetailPage(),
          '/about-app': (context) => AboutAppPage(),
          '/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
