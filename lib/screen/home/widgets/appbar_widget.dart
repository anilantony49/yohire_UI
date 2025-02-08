import 'package:flutter/material.dart';
import 'package:yohire_ui/utils/screen_responsive.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil.height * .102,
      child: Padding(
        padding: EdgeInsets.only(top: ScreenUtil.height * .051),
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
                onPressed: () {},
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
