import 'dart:async';
import 'package:bwa_futurejob/pages/started_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // INISIALISASI VARIABLE
  bool isLoading = true;

  // MENAMBAHKAN TIMER UNTUK SPLASHSCREEN DISINI
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartedPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/images/logo.png"),
              width: 59,
              height: 78,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "FUTUREJOB",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            if (isLoading)
              CircularProgressIndicator(
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
