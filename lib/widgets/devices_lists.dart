import 'package:flutter/material.dart';

class DeviceLists extends StatelessWidget {
  final Color? colors;
  final String? icons;
  final String? texticons;
  const DeviceLists({Key? key, this.colors, this.icons, this.texticons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      padding: const EdgeInsets.all(8.0),
      width: 170,
      height: 60,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                //color: Colors.white,
                image: DecorationImage(image: AssetImage('$icons'))),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '$texticons',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
