import 'package:flutter/material.dart';
import 'package:ngothotest/Widgets/Discoveries.dart';
import 'package:ngothotest/Widgets/FriendsHolder.dart';
import 'package:ngothotest/Widgets/TopView.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navi = 0;
  int cat = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            Container(
              height: height * .30,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1612480797665-c96d261eae09?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'))),
              child: TopView(),
            ),
            Positioned(
              top: height * .25,
              child: Container(
                height: height * .80,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(width * .10),
                      topRight: Radius.circular(width * .10),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                cat = 0;
                              });
                            },
                            child: Text(
                              'Friends',
                              style: TextStyle(
                                  color: cat == 0? Colors.black:Colors.grey[500],
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * .05),
                            ),
                          ),
                          SizedBox(width: width * .05),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                cat = 1;
                              });
                            },
                            child: Text(
                              'Community',
                              style: TextStyle(
                                  color: cat == 1? Colors.black:Colors.grey[500],
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * .05),
                            ),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: height*.02,),
                      FriendsHolder(),
                      Text(
                        'Discover',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height*.01,),
                      Container(
                        height: height * .50,
                        child: DiscoveryHolders(),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height * .08,
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: navi == 0 ? Colors.grey[700] : Colors.grey[400],
                size: width * .08,
              ),
              onPressed: () {
                setState(() {
                  navi = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.wallet_giftcard,
                color: navi == 1 ? Colors.grey[700] : Colors.grey[400],
                size: width * .08,
              ),
              onPressed: () {
                setState(() {
                  navi = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add_rounded,
                color: navi == 2 ? Colors.grey[700] : Colors.grey[400],
                size: width * .08,
              ),
              onPressed: () {
                setState(() {
                  navi = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_active,
                color: navi == 3 ? Colors.grey[700] : Colors.grey[400],
                size: width * .08,
              ),
              onPressed: () {
                setState(() {
                  navi = 3;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: navi == 4 ? Colors.grey[700] : Colors.grey[400],
                size: width * .08,
              ),
              onPressed: () {
                setState(() {
                  navi = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
