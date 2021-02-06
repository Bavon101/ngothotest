import 'package:flutter/material.dart';

class GenderFields extends StatefulWidget {
  GenderFields({Key key, this.gender, this.onChanged}) : super(key: key);
  final String gender;
  final Function onChanged;

  @override
  _GenderFieldsState createState() => _GenderFieldsState();
}

class _GenderFieldsState extends State<GenderFields> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(widget.gender),
          Container(
            height: height*.05,
            width: width*.45,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[800]
              )
            ),
            child: TextFormField(
              onChanged: (keyed) => widget.onChanged(keyed),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Input Value',
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
