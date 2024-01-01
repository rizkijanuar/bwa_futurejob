import 'package:bwa_futurejob/theme.dart';
import 'package:bwa_futurejob/widgets/job_list.dart';
import 'package:flutter/material.dart';

class SecondHomepage extends StatelessWidget {
  final String titleHome;
  final String imageHome;

  SecondHomepage({required this.titleHome, required this.imageHome});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    imageHome,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 270,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 190.0,
                      left: 24.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleHome,
                          style: detalTitleStyle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "12,309 available",
                          style: detalSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    top: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Big Companies"),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          JobList(
                            imageJob: "assets/images/icon_jp.png",
                            titleJob: "Front-End Developer",
                            subTitleJob: "Google",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          JobList(
                            imageJob: "assets/images/icon_jp2.png",
                            titleJob: "UI Designer",
                            subTitleJob: "Instagram",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          JobList(
                            imageJob: "assets/images/icon_jp3.png",
                            titleJob: "Data Scientist",
                            subTitleJob: "Facebook",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    top: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New Startups"),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          JobList(
                            imageJob: "assets/images/icon_jp.png",
                            titleJob: "Front-End Developer",
                            subTitleJob: "Google",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          JobList(
                            imageJob: "assets/images/icon_jp2.png",
                            titleJob: "UI Designer",
                            subTitleJob: "Instagram",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          JobList(
                            imageJob: "assets/images/icon_jp3.png",
                            titleJob: "Data Scientist",
                            subTitleJob: "Facebook",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
