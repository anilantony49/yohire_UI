import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.amber,
      height: screenHeight * .102,
      child: Padding(
        padding: EdgeInsets.only(top: screenHeight * .051),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage("assets/image/yohire_logo.png")),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 4, 85, 152)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(6), // Makes it a square button
                    ),
                  ),
                ),
                onPressed: () {
                  // print("Device Screen Height: $screenHeight pixels");
                  // print("Device Screen Height: $screenWidth pixels");
                },
                child: Text(
                  'Login/register',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
