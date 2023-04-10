import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url_1 = Uri.parse(
    'https://lens.snapchat.com/161627d6ffda45e79cdda2183bb7d58a?share_id=NrrZW4yJerM&locale=en-IN');
final Uri url_4 = Uri.parse(
    'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=dc2d519ae3d547f8a91de9ebecc7acf7&metadata=01');
final Uri url_3 = Uri.parse(
    'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=21e7590161244076aef6c24da05c19fa&metadata=01');
final Uri url_2 = Uri.parse(
    'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=91013bd4e19246bf994f8f7df071954c&metadata=01');
final Uri url_5 = Uri.parse(
    'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=0a9e720e95284b4bbf70a59c393095b1&metadata=01');
final Uri url_6 = Uri.parse(
    'https://lens.snapchat.com/9b9dc8f920da45f2ae91d934c2a54ce9?share_id=7caYuUOtTYU&locale=en-IN');

class My_page extends StatefulWidget {
  const My_page({Key? key}) : super(key: key);

  @override
  _My_pageState createState() => _My_pageState();
}

class _My_pageState extends State<My_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white54,
                child: Image.asset('im/img6.png'),
              ),
              onTap: _launchUrl6,
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white54,
                child: Image.asset('im/img1.png'),
              ),
              onTap: _launchUrl4,
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white54,
                child: Image.asset('im/img4.png'),
              ),
              onTap: _launchUrl1,
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white54,
                child: Image.asset('im/img3.png'),
              ),
              onTap: _launchUrl3,
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white54,
                child: Image.asset('im/img2.png'),
              ),
              onTap: _launchUrl2,
            ),

            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white54,
                child: Image.asset('im/img5.png'),
              ),
              onTap: _launchUrl5,
            ),
          ],
        ),
      ),
    );
  }
}

Future _launchUrl1() async {
  if (!await launchUrl(url_1, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url_1';
  }
}

Future _launchUrl2() async {
  if (!await launchUrl(url_2, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url_2';
  }
}

Future _launchUrl3() async {
  if (!await launchUrl(url_3, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url_3';
  }
}

Future _launchUrl4() async {
  if (!await launchUrl(url_4, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url_4';
  }
}

Future _launchUrl5() async {
  if (!await launchUrl(url_5, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url_5';
  }
}

Future _launchUrl6() async {
  if (!await launchUrl(url_6, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url_6';
  }
}
