import 'package:flutter/material.dart';
import 'package:ngothotest/Widgets/GenderFields.dart';

class PieView extends StatefulWidget {
  PieView({Key key}) : super(key: key);

  @override
  _PieViewState createState() => _PieViewState();
}

class _PieViewState extends State<PieView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              GenderFields(
                gender: 'Men',
                onChanged: (keyed){

                },
              ),
              GenderFields(
                gender: 'Women',
                onChanged: (keyed){

                },
              ),
            ],
          )
        ],
      ),
    );
  }
}