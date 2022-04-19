import 'package:flutter/material.dart';
import 'package:my_home/screens/my_device.dart';
import 'package:my_home/widgets/family_room_items.dart';
import '../models/family_room_list.dart';

class MyFamilyRoom extends StatelessWidget {
  const MyFamilyRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pink.jpg'), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.zero,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: const Icon(Icons.arrow_back_ios_new),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyDevice()));
                          },
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 0, top: 15.0),
                    child: Text('Family Room'),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 110,
                  ),
                  Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: family_room_icons.map((e) {
                        return FamilyRoomItems(
                          image: e.image,
                        );
                      }).toList()),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 150,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/xiaomi.png'),
                        )),
                  ),
                ]),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 30, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Xiaomi cctv',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text('Gtc 231')
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Colors.grey,
                              image: DecorationImage(
                                  image: AssetImage('assets/xiaomi.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 20, top: 30, bottom: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(child: Text('cctv1'))),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text('cctv1'))),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text('Battery'),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              margin: const EdgeInsets.only(right: 40),
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                '79',
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text('memory'),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              margin: const EdgeInsets.only(right: 80),
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
