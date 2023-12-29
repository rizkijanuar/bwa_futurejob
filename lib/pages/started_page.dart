import 'package:flutter/material.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 30.0,
              right: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Build Your Next \nFuture Career Like \na Master",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "18,000 jobs available",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 320.0,
                    ),
                    child: Container(
                      width: 200,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xff4141A4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      width: 200,
                      height: 45,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
