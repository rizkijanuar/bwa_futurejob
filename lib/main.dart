import 'package:bwa_futurejob/pages/detail_page.dart';
import 'package:bwa_futurejob/pages/home_page.dart';
import 'package:bwa_futurejob/pages/second_homepage.dart';
import 'package:flutter/material.dart';
import 'package:bwa_futurejob/pages/splash_page.dart';
import 'package:bwa_futurejob/pages/started_page.dart';
import 'package:bwa_futurejob/pages/signin_page.dart';
import 'package:bwa_futurejob/pages/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashPage(),
        '/started-page': (context) => StartedPage(),
        '/signin-page': (context) => SignInPage(),
        '/signup-page': (context) => SignUpPage(),
        '/home-page': (context) => HomePage(),
        '/detail-page': (context) => DetailPage()
      },
    );
  }
}
