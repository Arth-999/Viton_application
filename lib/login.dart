import 'package:flutter/material.dart';
import 'inventory.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const DelayedDisplay(
                delay: Duration(seconds: 1),
                child: Text(
                  "Hello User",
                  style: TextStyle(
                    fontFamily: 'lobster',
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  )
                  ),
                ),
              DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0,8.0,8.0,8.0),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'We present you the new way to try on clothes ...',
                        textStyle: const TextStyle(
                          fontFamily: 'lobster',
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    displayFullTextOnTap: false,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const My_page(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Press me to find out',
                      style: TextStyle(
                          fontFamily: 'lobster',
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  Icon(Icons.add_ic_call)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
