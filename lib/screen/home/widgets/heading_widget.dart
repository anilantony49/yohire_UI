import 'package:flutter/material.dart';
import 'package:yohire_ui/screen/home/job_card_one_show_all_screen.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

class HeadingWidget extends StatelessWidget {
  final String title;
  const HeadingWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil.height * .038,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => JobCardOneShowAllScreen()),
              );
            },
            child: Text(
              'Show All',
              style: TextStyle(
                color: Color.fromARGB(255, 4, 85, 152), // Moved inside `color`
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
