import 'package:bwa_futurejob/pages/second_homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String image;

  JobCard({required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondHomepage(
              titleHome: text,
              imageHome: image,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
