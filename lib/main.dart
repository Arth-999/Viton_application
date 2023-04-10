import 'package:flutter/material.dart';
import 'inventory.dart';
import 'login.dart';

void main() {
  return runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/second': (context) => const My_page(),
      },
    );
  }
}
