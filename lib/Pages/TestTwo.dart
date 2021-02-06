import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

class TestTwo extends StatefulWidget {
  TestTwo({Key key}) : super(key: key);

  @override
  _TestTwoState createState() => _TestTwoState();
}

class _TestTwoState extends State<TestTwo> {
  bool taped = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.grey[400],
          onPressed: () => Navigator.pop(context),
        ),
        shadowColor: Colors.grey[100],
        backgroundColor: Colors.white,
        title: CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Text('2',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Container(
            height: height * .50,
            width: width * .80,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1612480797665-c96d261eae09?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'))),
                  width: width * .80,
                  height: height * .45,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Which of our potential Caraboo Cup third-round opponents do you prefer?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: width*.04
                                  ),
                            ),
                            answerContainer(
                              greater: true,
                                height: height,
                                width: width,
                                option: 'reading'.toUpperCase(),
                                percentage: '51%'),
                            answerContainer(
                              greater: false,
                                height: height,
                                width: width,
                                option: 'luton town'.toUpperCase(),
                                percentage: '49%')
                          ],
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1529248236319-f679e0ba552d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGdhbWUlMjBvZiUyMHRocm9uZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              child: Text('B',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * .05,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('6m'),
                        IconButton(
                          icon: Icon(Icons.forward),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.animation),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget answerContainer(
          {double height, double width, String option, String percentage,bool greater}) =>
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: GestureDetector(
          onTap: () {
            setState(() {
              taped = !taped;
            });
          },
          child: Container(
            height: height * .06,
            decoration: BoxDecoration(color: Colors.black87),
            child: Padding(
              padding:  EdgeInsets.only(left: !taped ? 8:0,right: 8),
              child: Row(
                children: [
                    Diagonal(
                  clipHeight: !taped ? 0:15,
                  axis: Axis.vertical,
                  position: DiagonalPosition.TOP_RIGHT,
                  child: GestureDetector(
                    
                    child: Container(
                    width: !taped ? width * .40: greater ? width * .45:width * .39,
                    height: height * .06,
                    color: taped ? greater ? Colors.grey:Colors.redAccent :Colors.transparent,
                    child: Center(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(left: taped ? 8 :0),
                          child: Text(
                            option,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ),
                
                  Spacer(),
                taped ?  Text(percentage,style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)):Container(height: 0,)
                ],
              ),
            ),
          ),
        ),
      );
}


