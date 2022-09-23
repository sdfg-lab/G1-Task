import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:
          [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:
              [
                Icon(Icons.close, size: 30,),
              ],
            ),
            const SizedBox(height: 15),
            Image.asset(
              'assets/images/Profile.png'
            ),
            const SizedBox(height: 10),
            Text(
              'Kenneth Gutierrez',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              'kenneth_gutierrez@gmail.com',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16),
            ),
            const SizedBox(height: 30),
            Image.asset(
                'assets/images/Notification.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Tours.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Location.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Language.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Invite Friends.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Line.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Help Center.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Setting.png'
            ),
            const SizedBox(height: 15),
            Image.asset(
                'assets/images/Log Out.png'
            ),
          ],
        ),
      ),
    );
  }
}
