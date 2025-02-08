import 'package:flutter/material.dart';

class JobCardThree extends StatelessWidget {
  final String companyName;
  final String place;
  final int hours;
  final String title;
  final String jobLocation;
  final bool showNoDegreeMentioned; // Optional parameter

  const JobCardThree({
    super.key,
    required this.companyName,
    required this.place,
    required this.hours,
    required this.title,
    required this.jobLocation,
    this.showNoDegreeMentioned = false, // Default: false
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      constraints: BoxConstraints(
          minWidth: screenWidth * .459, maxWidth: double.infinity),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 3,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company Info
            Container(
              constraints: BoxConstraints(
                  minWidth: screenWidth * .127, maxWidth: double.infinity),
              color: Colors.amber,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/company_logo.png'),
                    ),
                  ),
                  SizedBox(width: screenWidth * .038),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Text(
                        place,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Job Posted Time
            Container(
              width: screenWidth * .293,
              color: Colors.red,
              height: screenHeight * .025,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.history, size: 10),
                  Text(
                    'Posted $hours hours ago',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                  ),
                ],
              ),
            ),

            // Job Title & Location
            Container(
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    jobLocation,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                ],
              ),
            ),

            // Tags Row
            Row(
              children: [
                Container(
                  constraints:
                      BoxConstraints(minWidth: 70, maxWidth: double.infinity),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: screenHeight * .038,
                  child: Center(
                    child: Text(
                      'Full-Time',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * .025),

                // Conditionally show "No Degree Mentioned"
                if (showNoDegreeMentioned)
                  Container(
                    constraints: BoxConstraints(
                        minWidth: screenWidth * .331,
                        maxWidth: double.infinity),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: screenHeight * .038,
                    child: Center(
                      child: Text(
                        'No Degree mentioned',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
