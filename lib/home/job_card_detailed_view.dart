import 'package:flutter/material.dart';
import 'package:yohire_ui/home/home_screen.dart';

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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(Icons.arrow_circle_left_rounded),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // color: Colors.blue,
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
                SizedBox(height: 20),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
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
                  height: 10,
                ),
                Container(
                  height: 160,
                  // color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Job Highlights',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Key points to consider',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
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
                            color: const Color.fromARGB(255, 199, 254, 204),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "6-7 years proven experience in Estimation Engineer",
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
                            color: const Color.fromARGB(255, 199, 254, 204),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Bachelor's degree in electrical Engineering",
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
                            color: const Color.fromARGB(255, 199, 254, 204),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Candidates experience in the following reputed companies ,Voltas\n ,Blue Star ,Sterling Wilson ,L&T ,Tata Projects ,Consolidated\n contractors company etc",
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
                  height: 10,
                ),
                Container(
                  height: 155,
                  // color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Required Skills',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
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
                            color: const Color.fromARGB(255, 225, 229, 230),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Strong communication and interporsonal skills",
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
                            color: const Color.fromARGB(255, 225, 229, 230),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Strong organizational and time management skill",
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
                            color: const Color.fromARGB(255, 225, 229, 230),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Strong knowledge of electrical systems ,components ,materils ,\ninstallation processes ",
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
                            color: const Color.fromARGB(255, 225, 229, 230),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "ability to work",
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
                  height: 15,
                ),
                Container(
                  // color: Colors.amber,
                  child: Column(
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
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  // color: Colors.amber,
                  child: Column(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
