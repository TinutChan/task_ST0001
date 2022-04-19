import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final String? title;
  final String? image;
  final Color? colors;
  const CategoryItems({
    Key? key,
    this.title,
    this.image,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 260,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '$title',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              margin: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('$image'))),
            ),
          ),
        ],
      ),
    );
  }
}
