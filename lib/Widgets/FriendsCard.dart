import 'package:flutter/material.dart';
import 'package:ngothotest/Models/FriendModel.dart';

class FriendContainer extends StatelessWidget {
  const FriendContainer({Key key, this.friend}) : super(key: key);
  final Friend friend;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: height * .20,
        width: width * .25,
        child: Column(
          children: [
            Container(
              width: width * .25,
              height: width * .25,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                   friend.image,
                    fit: BoxFit.cover,
                  )),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(friend.name))
          ],
        ),
      ),
    );
  }
}
