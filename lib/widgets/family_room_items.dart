import 'package:flutter/material.dart';

class FamilyRoomItems extends StatelessWidget {
  final String? image;
  const FamilyRoomItems({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('$image')))),
    );
  }
}
