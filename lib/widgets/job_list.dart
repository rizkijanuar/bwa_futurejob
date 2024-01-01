import 'package:bwa_futurejob/theme.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  final String imageJob;
  final String titleJob;
  final String subTitleJob;

  JobList(
      {required this.imageJob,
      required this.titleJob,
      required this.subTitleJob});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageJob,
          width: 45,
          height: 45,
        ),
        SizedBox(
          width: 27.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleJob,
                style: jobTextStyle,
              ),
              Text(
                subTitleJob,
                style: jobSubtitleStyle,
              ),
              SizedBox(
                height: 18,
              ),
              Divider(
                color: Color(0xffECEDF1),
                thickness: 2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
