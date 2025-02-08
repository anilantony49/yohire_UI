import 'package:flutter/material.dart';
import 'package:yohire_ui/home/home_screen.dart';

class SearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(Icons.arrow_circle_left_rounded),
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
          labelText: 'Search jobs',
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.cancel,
              color: Colors.grey,
            ),
            onPressed: () {
              // Clear the text field or handle any logic on close button press
            },
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.0);  // Set preferred height here
}
