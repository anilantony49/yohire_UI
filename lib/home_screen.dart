import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        height: 80,
        child: Row(
          children: [
            Image(image: AssetImage("assets/image/yohire_logo.png")),
            ElevatedButton(
              style: ButtonStyle(backgroundBuilder: Colors.blue),
              onPressed: () {}, child: Text('Login/register',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
