import 'package:flutter/material.dart';
import 'package:ngothotest/Models/FriendModel.dart';
import 'package:ngothotest/Widgets/FriendsCard.dart';

class FriendsHolder extends StatefulWidget {
  FriendsHolder({Key key}) : super(key: key);

  @override
  _FriendsHolderState createState() => _FriendsHolderState();
}

class _FriendsHolderState extends State<FriendsHolder> {
  List<Friend> friends = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      friends = [
        Friend(
            image:
                'https://images.unsplash.com/photo-1612529316907-6430d7cb88fd?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            name: 'Sharon'),
        Friend(
            image:
                'https://images.unsplash.com/photo-1612324007974-6123467b69b2?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            name: 'Dave'),
        Friend(
            image:
                'https://images.unsplash.com/photo-1567141958790-a30b4c1abe65?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNleHklMjBsYWRpZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            name: 'Grace'),
        Friend(
            image:
                'https://images.unsplash.com/photo-1605572644938-46ac8f05d399?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHNleHklMjBsYWRpZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            name: 'Artem'),
        Friend(
            image:
                'https://images.unsplash.com/photo-1575881122010-dfda094fb8b3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHNleHklMjBsYWRpZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            name: 'Obi')
      ];
      friends.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return FriendContainer(
            friend: friends[index],
          );
        },
      ),
    );
  }
}
