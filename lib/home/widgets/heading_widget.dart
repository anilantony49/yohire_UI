import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String title;
  const HeadingWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * .038,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Show All',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
