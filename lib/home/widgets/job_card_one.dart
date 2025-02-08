import 'package:flutter/material.dart';

class JobCardOne extends StatelessWidget {
  const JobCardOne({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            10,
            (index) => Container(
              width: screenWidth * .561,
              height: screenHeight * .281,
              margin: EdgeInsets.only(
                  left: index == 0 ? 0 : 12), // No margin for first container
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
            ),
          ),
        ));
  }
}
