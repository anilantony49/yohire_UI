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
          children:[ Container(
              width: screenWidth * .561,
              height: screenHeight * .281,
          
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
            )],
          
        
  )}
}
