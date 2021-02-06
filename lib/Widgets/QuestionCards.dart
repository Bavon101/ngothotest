import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  QuestionCard({Key key, this.onTap, this.question}) : super(key: key);
  final String question;
  final Function onTap;

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: CircleAvatar(
        radius: width * .10,
        backgroundColor: Colors.grey[100],
        child: CircleAvatar(
          radius: width * .08,
          backgroundColor: Colors.grey[300],
          child: CircleAvatar(
            radius: width * .05,
            backgroundColor: Colors.grey[900],
            child: Text(widget.question,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: width*.05
            ),),
          ),
        ),
      ),
    );
  }
}
