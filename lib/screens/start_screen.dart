import 'package:flutter/material.dart';
import 'package:trip_it_task/account/sign_in.dart';
import 'package:trip_it_task/start_screens/screen1.dart';
import 'package:trip_it_task/start_screens/screen2.dart';
import 'package:trip_it_task/start_screens/screen3.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  final _controller = new PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
          Expanded(
              child: PageView(
                controller: _controller,
                children: <Widget>[
                  FirstStartScreen(),
                  SecondStartScreen(),
                  ThirdStartScreen(),
                ],
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              TextButton(onPressed: ()
              {
                setState(()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                });
              },
                child: Text(
                  'SKIP', style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(width: 200),
              TextButton(onPressed: ()
              {
                setState(()
                {
                  _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                });
              },
                child: Text(
                  'Next', style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
