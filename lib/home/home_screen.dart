import 'package:flutter/material.dart';
import 'package:yohire_ui/home/widgets/appbar_widget.dart';
import 'package:yohire_ui/home/widgets/heading_widget.dart';
import 'package:yohire_ui/home/widgets/job_card_one.dart';
import 'package:yohire_ui/home/widgets/job_card_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // This section stays fixed and doesn't scroll
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * .038, right: screenWidth * .038),
              child: Container(
                height: screenHeight * 0.5,
                color: Colors.green,
                child: Column(children: [
                  AppbarWidget(),
                  HeadingWidget(
                    title: 'On Trending',
                  ),
                  SizedBox(
                    height: screenHeight * .012,
                  ),
                  JobCardOne(),
                  SizedBox(
                    height: screenHeight * .012,
                  ),
                  HeadingWidget(
                    title: 'Recommendations',
                  ),
                ]),
              ),
            ),
            // This section is the scrollable one for JobCardTwo
            Expanded( // Ensures this part takes the remaining space
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Column(
                    children: [
                      JobCardTwo(
                          title: 'Electrical Estimation Engineer',
                          place: 'Qatar',
                          salaryRange: 'Salary Est :8000-10000 QAR',
                          qualification1:
                              '6-7 Years proven experience in estimation engineer',
                          qualification2:
                              "Bachelor's degress in electrical engineering",
                          qualification3:
                              'Candidates experience in the following reputed companies,\n voltas ,Blue star ,Sterling Wilson ,L&T ,Tata projects ,\n Consolidated contractors company etc.'),
                      SizedBox(
                        height: screenHeight * .012,
                      ),
                      JobCardTwo(
                          title: 'Sales Officer Female',
                          place: 'Dubai, Dubai, United Arab Emirates',
                          salaryRange: 'Salary Est : 2000-3000+INCENTIVES AED',
                          qualification1:
                              'Minimum 1-2 Years experience in any sales /',
                          qualification2: 'Age 20-35 /',
                          qualification3:
                              'Must have excellent convincing communication skill and \npassion for sales /'),
                      SizedBox(
                        height: screenHeight * .012,
                      ),
                      JobCardTwo(
                          title: 'Sales Officer Female',
                          place: 'Dubai, Dubai, United Arab Emirates',
                          salaryRange: 'Salary Est : 2000-3000+INCENTIVES AED',
                          qualification1:
                              'Minimum 1-2 Years experience in any sales /',
                          qualification2: 'Age 20-35 /',
                          qualification3:
                              'Must have excellent convincing communication skill and \npassion for sales /'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
