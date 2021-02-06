import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({Key key, this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // if you need this
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
