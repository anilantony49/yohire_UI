import 'package:flutter/material.dart';
import 'package:yohire_ui/screen/home/widgets/job_card_widget.dart';

class JobCardOne extends StatelessWidget {
  const JobCardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          JobCardWidget(
              companyName: 'The Adroit',
              place: 'Navi Mumbai, Maharashtra',
              hours: 9,
              title: 'intern Customer Acquisition'),
          SizedBox(
            width: 15,
          ),
          JobCardWidget(
              companyName: 'Infosys BPM',
              place: 'Bangaluru, Karnataka',
              hours: 19,
              title: 'Hiring for Customer Service - Senior Process Executive'),
          SizedBox(
            width: 15,
          ),
          JobCardWidget(
              companyName: 'Webstream\n Communication Group',
              place: 'Mumbai, Maharashtra',
              hours: 14,
              title: 'Event Executive - Physical,Hybrid and virtual Events'),
          SizedBox(
            width: 15,
          ),
          JobCardWidget(
              companyName: 'Sk Cafe And Restaurant\n consultancy',
              place: 'Pune, Maharashtra',
              hours: 8,
              title: 'Customer Servie Captian'),
        ],
      ),
    );
  }
}
