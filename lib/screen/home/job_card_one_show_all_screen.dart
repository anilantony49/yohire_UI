import 'package:flutter/material.dart';
import 'package:yohire_ui/screen/home/widgets/job_card_three.dart';
import 'package:yohire_ui/screen/home/widgets/search_appbar.dart';

class JobCardOneShowAllScreen extends StatelessWidget {
  const JobCardOneShowAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppbar(),
      body: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6),
          child: SingleChildScrollView(
              child: Column(
            children: [
              JobCardThree(
                  companyName: 'The Adroit',
                  place: 'Navi Mumbai, Maharashtra',
                  hours: 19,
                  title: 'Intern Customer Acquisition',
                  jobLocation: 'Navi Mumbai, Maharashtra'),
              JobCardThree(
                companyName: 'Infosys BPM',
                place: 'Bangaluru, karnataka',
                hours: 19,
                title: 'Hiring For Customer Service Senior Process Executive',
                jobLocation: 'Bangaluru, karnataka',
                showNoDegreeMentioned: true,
              ),
              JobCardThree(
                  companyName: 'Webstreem Communications Group',
                  place: 'Mumbai, Maharashtra',
                  hours: 14,
                  title: 'Event Executive Phsical, Hybrid And Virtual Events',
                  jobLocation: 'Mumbai, Maharashtra'),
              JobCardThree(
                  companyName: 'Sk Cafe And Restaurant Consultancy',
                  place: 'Pune, Maharastra',
                  hours: 8,
                  title: 'Customer Service Captain',
                  jobLocation: 'Pune, Maharastra'),
              JobCardThree(
                companyName: 'Elementz Consultants Pvt.Ltd',
                place: 'Pune, Maharastra',
                hours: 16,
                title: 'Customer Executive Collections (Kharadi, Pune)',
                jobLocation: 'Pune, Maharastra',
                showNoDegreeMentioned: true,
              )
            ],
          ))),
    );
  }
}
