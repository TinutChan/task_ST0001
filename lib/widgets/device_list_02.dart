import 'package:flutter/material.dart';

class DevicesLists extends StatelessWidget {
  final Color? colors;
  final String? icons;
  final String? texticons;
  const DevicesLists({Key? key, this.colors, this.icons, this.texticons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 135,
      height: 50,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('$icons'))),
            ),
            const SizedBox(
              width: 10,
            ),
            Text('$texticons'),
          ],
        ),
      ),
    );
  }
}
