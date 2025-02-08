import 'package:flutter/material.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

class JobCardWidget extends StatelessWidget {
  final String companyName;
  final String place;
  final int hours;
  final String title;

  const JobCardWidget(
      {super.key,
      required this.companyName,
      required this.place,
      required this.hours,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.width * 0.561,
      height: ScreenUtil.height * 0.281,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 2,
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            width: 1, color: const Color.fromARGB(255, 231, 229, 229)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                  minWidth: ScreenUtil.width * .129, maxWidth: double.infinity),
              // color: Colors.amber,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/company_logo.png'),
                    ),
                  ),
                  SizedBox(width: ScreenUtil.width * .021),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      Text(
                        place,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: const Color.fromARGB(255, 131, 128, 128)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: ScreenUtil.width * .278,
              height: ScreenUtil.height * .025,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.history, size: 10),
                  Text(
                    'Posted $hours hours ago',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: const Color.fromARGB(255, 131, 128, 128)),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
