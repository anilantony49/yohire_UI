import 'package:flutter/material.dart';
import 'package:yohire_ui/screen/home/job_card_detailed_view.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

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

  Widget _buildHightlightText(String text) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Container(
        constraints: BoxConstraints(
          minWidth: ScreenUtil.width * .127, // Ensures a minimum width
          maxWidth: double.infinity, // Allows it to expand as needed
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 8, vertical: 4), // Adds some spacing
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 199, 254, 204),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JobCardDetailedView()),
        );
      },
      child: Container(
        width: double.infinity,
        height: ScreenUtil.height * .271,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, // Shadow color with opacity
              spreadRadius: 1, // How much the shadow spreads
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
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
                  ),
                  Text(
                    widget.place,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.salaryRange,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    // color: Colors.amber,
                    height: ScreenUtil.height * .128,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHightlightText(
                          widget.qualification1,
                        ),
                        _buildHightlightText(
                          widget.qualification2,
                        ),
                        _buildHightlightText(
                          widget.qualification3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.height * .022,
                  ),
                  Text(
                    'Posted 21 Hours ago',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: ScreenUtil.height * .025,
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
      ),
    );
  }
}
