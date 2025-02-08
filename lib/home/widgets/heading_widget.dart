import 'package:flutter/material.dart';
import 'package:yohire_ui/home/job_card_one_show_all_screen.dart';

class HeadingWidget extends StatelessWidget {
  final String title;
  const HeadingWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * .038,
      // color: Colors.red,
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
