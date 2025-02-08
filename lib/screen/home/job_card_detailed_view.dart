import 'package:flutter/material.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

class JobCardDetailedView extends StatefulWidget {
  const JobCardDetailedView({super.key});

  @override
  State<JobCardDetailedView> createState() => _JobCardDetailedViewState();
}

class _JobCardDetailedViewState extends State<JobCardDetailedView>
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

  bool isExpanded = false;

  String text =
      "6-7 Years proven experience in Estimation engineer /\n Bachelor's degree in electrical engineering /\n Candidates experience in the following reputed companies ,\nVoltas ,Blue Star ,Sterling Wilson ,L&T ,Tata Projects ,\nConsolidated contractors company etc/\n More details contact / Whatsapp; +91 773695506/\n 7736955504. We are accepting applications all over from\n Kerala";

  Widget _highlightText(String text, Color color) {
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
          color: color,
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

  Widget _buildHeading(String heading) {
    return Text(
      heading,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_circle_left_rounded),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ELECTRICAL ESTIMATION ENGINEER',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Qatar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: ScreenUtil.height * .025),
                _buildHeading('Description'),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Container(
                    // color: Colors.green,
                    padding: EdgeInsets.all(8),
                    child: RichText(
                      text: TextSpan(
                        text:
                            isExpanded ? text : "${text.substring(0, 300)}...",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black, // Default text color
                        ),
                        children: [
                          TextSpan(
                            text: isExpanded ? " Less" : " More",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue, // Blue color for More/Less
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil.height * .012,
                ),
                SizedBox(
                  height: ScreenUtil.height * .204,
                  // color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeading('Job Highlights'),
                      Text(
                        'Key points to consider',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      _highlightText(
                        "6-7 years proven experience in Estimation Engineer",
                        const Color.fromARGB(255, 199, 254, 204),
                      ),
                      _highlightText(
                        "Bachelor's degree in electrical Engineering",
                        const Color.fromARGB(255, 199, 254, 204),
                      ),
                      _highlightText(
                        "Candidates experience in the following reputed companies ,Voltas\n ,Blue Star ,Sterling Wilson ,L&T ,Tata Projects ,Consolidated\n contractors company etc",
                        const Color.fromARGB(255, 199, 254, 204),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil.height * .012,
                ),
                SizedBox(
                  height: ScreenUtil.height * .198,
                  // color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeading('Required Skills'),
                      _highlightText(
                        "Strong communication and interporsonal skills",
                        const Color.fromARGB(255, 225, 229, 230),
                      ),
                      _highlightText(
                        "Strong organizational and time management skill",
                        const Color.fromARGB(255, 225, 229, 230),
                      ),
                      _highlightText(
                        "Strong knowledge of electrical systems ,components ,materils ,\ninstallation processes",
                        const Color.fromARGB(255, 225, 229, 230),
                      ),
                      _highlightText(
                        "ability to work",
                        const Color.fromARGB(255, 225, 229, 230),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil.height * .019,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Est Salary',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                          color: const Color.fromARGB(255, 25, 47, 159)),
                    ),
                    Text(
                      '8000-10000 QAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil.height * .019,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Interview Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '14-02-2025',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
