import 'package:bwa_futurejob/theme.dart';
import 'package:bwa_futurejob/widgets/job_card.dart';
import 'package:bwa_futurejob/widgets/job_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 24.0,
          right: 24.0,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi👋",
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Aan Citra Lestaryyy",
                  style: subTitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/images/my_pic.png",
              width: 50,
              height: 50,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hot Categories",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xff272C2F,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      image: 'assets/images/card_category.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Mobile Developer',
                      image: 'assets/images/card_category2.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'App Designer',
                      image: 'assets/images/card_category3.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Content Writer',
                      image: 'assets/images/card_category4.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Video Grapher',
                      image: 'assets/images/card_category5.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Just Posted",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff272C2F),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Column(
                  children: [
                    JobList(
                      imageJob: "assets/images/icon_jp.png",
                      titleJob: "Front-End Developer",
                      subTitleJob: "Google",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    JobList(
                      imageJob: "assets/images/icon_jp2.png",
                      titleJob: "UI Designer",
                      subTitleJob: "Instagram",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    JobList(
                      imageJob: "assets/images/icon_jp3.png",
                      titleJob: "Data Scientist",
                      subTitleJob: "Facebook",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff4141A4),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/ic_bottom.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/ic_bottom2.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/ic_bottom3.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/ic_bottom4.png",
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              body(),
            ],
          ),
        ),
      ),
    );
  }
}
