import 'package:flutter/material.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

class JobCardThree extends StatefulWidget {
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
  State<JobCardThree> createState() => _JobCardThreeState();
}

class _JobCardThreeState extends State<JobCardThree>
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

  Widget _buildCompanyInfo() {
    return Container(
      constraints: BoxConstraints(
          minWidth: ScreenUtil.width * .127, maxWidth: double.infinity),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/company_logo.png'),
            ),
          ),
          SizedBox(width: ScreenUtil.width * .038),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.companyName,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                widget.place,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildJobPostTime() {
    return SizedBox(
      width: ScreenUtil.width * .293,
      // color: Colors.red,
      height: ScreenUtil.height * .025,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.history, size: 10),
          Text(
            'Posted ${widget.hours} hours ago',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildJobTitleAndLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        Text(
          widget.jobLocation,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
        ),
      ],
    );
  }

  Widget _buildTagRow() {
    return Row(
      children: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            constraints:
                BoxConstraints(minWidth: 70, maxWidth: double.infinity),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 199, 254, 204),
              borderRadius: BorderRadius.circular(5),
            ),
            height: ScreenUtil.height * .038,
            child: Center(
              child: Text(
                'Full-Time',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
        SizedBox(width: ScreenUtil.width * .025),

        // Conditionally show "No Degree Mentioned"
        if (widget.showNoDegreeMentioned)
          FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              constraints: BoxConstraints(
                  minWidth: ScreenUtil.width * .331, maxWidth: double.infinity),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 254, 204),
                borderRadius: BorderRadius.circular(5),
              ),
              height: ScreenUtil.height * .038,
              child: Center(
                child: Text(
                  'No Degree mentioned',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      constraints: BoxConstraints(
          minWidth: ScreenUtil.width * .459, maxWidth: double.infinity),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            width: 1, color: const Color.fromARGB(255, 231, 229, 229)),
        boxShadow: [
          BoxShadow(
            // offset: Offset(5, 6),
            color: Colors.black.withOpacity(0.1),
            blurStyle: BlurStyle.normal,
            spreadRadius: 2,
            blurRadius: 5,
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
            _buildCompanyInfo(),
            // Job Posted Time
            _buildJobPostTime(),
            // Job Title & Location
            _buildJobTitleAndLocation(),
            // Tags Row
            _buildTagRow()
          ],
        ),
      ),
    );
  }
}
