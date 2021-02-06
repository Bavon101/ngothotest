import 'package:flutter/material.dart';
import 'package:ngothotest/Pages/PieTest.dart';
import 'package:ngothotest/Pages/TestTwo.dart';

class TopView extends StatelessWidget {
  const TopView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
            top: height * .05,
            left: width * .02,
            child: Text(
              'Hello,\nBavon Akumu',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: width * .08),
            )),
        Positioned(
          top: height * .05,
          right: width * .02,
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TestTwo()));
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => PieView()));
            },
          ),
        ),
        Positioned(
          bottom: height * .08,
          left: width * .02,
          right: width * .02,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                earingsContainer(money: '135.50'),
                earingsContainer(money: '2,360.30')
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget earingsContainer({String money}) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'KSH $money',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            'Today\'s Earnings',
            style: TextStyle(color: Colors.blue, fontSize: 18),
          )
        ],
      );
}
