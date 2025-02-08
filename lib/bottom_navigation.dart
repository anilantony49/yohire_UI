import 'package:flutter/material.dart';
import 'package:yohire_ui/home/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  final List<Widget> _pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
      _controller.forward(from: 0.0); // Restart animation when tapping
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Fade animation duration
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    _controller
        .forward(); // Ensure animation starts for the first selected item
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildTabContent(String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 4),
        FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple, // The dot color
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? _buildTabContent('Home') // Show text and dot for 'Home'
                : const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? _buildTabContent('Circle') // Show text and dot for 'Search'
                : const Icon(
                    Icons.brightness_1_outlined,
                    color: Colors.amber,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? _buildTabContent('Profile') // Show text and dot for 'Profile'
                : const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}
