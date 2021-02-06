import 'package:flutter/material.dart';
import 'package:ngothotest/Pages/Home.dart';
import 'package:ngothotest/Pages/PieTest.dart';
import 'package:ngothotest/Pages/TestTwo.dart';
import 'package:ngothotest/Widgets/QuestionCards.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height*.40,
            ),
            CircleAvatar(
              radius: width * .10,
              backgroundColor: Colors.grey[400],
              child: Icon(
                Icons.person,
                color: Colors.grey[900],
                size: width * .10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Akumu Bavon',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: width * .05),
              ),
            ),
            IconButton(
              icon: Icon(Icons.phone),
              onPressed: () {
                launch("tel://254793956682");
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Click the options below to navigate to respective  tests',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300
              ),
              ),
            ),
            Wrap(
              spacing: width*.05,
              children: [
                QuestionCard(
                  question: '1',
                  onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
                ),
                QuestionCard(
                  question: '2',
                  onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TestTwo())),
                ),
                QuestionCard(
                  question: '3',
                  onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PieView())),
                ),
              ],
            ),
            SizedBox(
              height: height*.20,
            ),
          ],
        ),
      ),
    );
  }
}
