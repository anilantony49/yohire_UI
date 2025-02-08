import 'package:flutter/material.dart';

class JobCardTwo extends StatefulWidget {
  final String title;
  final String place;
  final String salaryRange;
  final String qualification1;
  final String qualification2;
  final String qualification3;

  const JobCardTwo(
      {super.key,
      required this.title,
      required this.place,
      required this.salaryRange,
      required this.qualification1,
      required this.qualification2,
      required this.qualification3});

  @override
  State<JobCardTwo> createState() => _JobCardTwoState();
}

class _JobCardTwoState extends State<JobCardTwo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Animation duration
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight * .271,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color with opacity
            spreadRadius: 2, // How much the shadow spreads
            blurRadius: 3, // Softness of the shadow
            // offset:
            //     Offset(3, 3), // Positioning of the shadow (x, y)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Text(
                  widget.place,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  widget.salaryRange,
                  style: TextStyle(fontSize: 14),
                ),
                Container(
                  color: Colors.amber,
                  height: screenHeight * .128,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Container(
                          constraints: BoxConstraints(
                            minWidth:
                                screenWidth * .127, // Ensures a minimum width
                            maxWidth: double
                                .infinity, // Allows it to expand as needed
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4), // Adds some spacing
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 79, 241, 152),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            widget.qualification1,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Container(
                          constraints: BoxConstraints(
                            minWidth:
                                screenWidth * .127, // Ensures a minimum width
                            maxWidth: double
                                .infinity, // Allows it to expand as needed
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4), // Adds some spacing
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 79, 241, 152),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            widget.qualification2,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Container(
                          constraints: BoxConstraints(
                            minWidth:
                                screenWidth * .127, // Ensures a minimum width
                            maxWidth: double
                                .infinity, // Allows it to expand as needed
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4), // Adds some spacing
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 79, 241, 152),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            widget.qualification3,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * .012,
                ),
                Text(
                  'Posted 21 Hours ago',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: screenHeight * .025,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 35),
                  child: Icon(Icons.ios_share),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
