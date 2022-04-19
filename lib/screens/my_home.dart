import 'package:flutter/material.dart';
import 'package:my_home/models/lists_items.dart';
import 'package:my_home/widgets/device_list_02.dart';
import '../screens/my_device.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pink.jpg'), fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_forward_ios_rounded),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20.0),
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('assets/myhome.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'My Home',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Griya Permata Hijau')
                                ],
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            child: const Text(
                              'Select New Device',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Wrap(
                                        children: devices_list.map((e) {
                                          return DevicesLists(
                                            colors: e.colors,
                                            icons: e.icons,
                                            texticons: e.texticons,
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.zero,
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 50, right: 50, top: 25, bottom: 25),
                              decoration: BoxDecoration(
                                  color: Color(0xfffdc2f02),
                                  borderRadius: BorderRadius.circular(15)),
                              height: 50,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Add Devices',
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyDevice()));
                            },
                          ),
                        ]))),
          ],
        ),
      ),
    );
  }
}
