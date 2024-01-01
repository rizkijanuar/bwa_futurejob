import 'package:bwa_futurejob/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Image.asset(
                    "assets/images/icon_jp.png",
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Front-End Developer",
                  style: detailTitleStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Google, Inc • Jakarta",
                  style: detailSubtitleStyle,
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About the job",
                        style: detailThirdtitleStyle,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Full-Time On Site",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Start at 18,000 per month",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Qualifications",
                        style: detailThirdtitleStyle,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Candidate must possess at least a\nBachelor's Degree.",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Able to use Microsoft Office\nand Google based service.",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Have an excellent time management,\ngood at organized and details",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Responsibilities",
                        style: detailThirdtitleStyle,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Initiate and promote any programs, events,\ntraining, or activities.",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dot.png",
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Assessing and anticipating needs and\ncollaborate with Division.",
                            style: detailFourtitleStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 51.0),
                  child: Container(
                    width: 200,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4141A4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Apply for job",
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Message Recruiter",
                  style: detailSubtitleStyle,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
