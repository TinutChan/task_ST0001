import 'package:flutter/material.dart';
import 'package:my_home/screens/my_home.dart';
import 'package:my_home/screens/my_room.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/items_category.dart';
import '../models/lists_items.dart';
import '../widgets/category_items.dart';
import '../widgets/devices_lists.dart';

class MyDevice extends StatelessWidget {
  const MyDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
          child: Stack(children: [
        Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jfif'), fit: BoxFit.cover),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Icon(Icons.arrow_back_ios_new),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 20,
                      bottom: 25,
                    ),
                    child: const Text(
                      'My Device',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Wrap(
                    runSpacing: 20,
                    spacing: 10,
                    alignment: WrapAlignment.spaceEvenly,
                    children: devices_list02.map((e) {
                      return DeviceLists(
                        colors: e.colors,
                        icons: e.icons,
                        texticons: e.texticons,
                      );
                    }).toList(),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, top: 35, bottom: 20),
                    child: const Text(
                      'Room Category',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          initialPage: 2,
                          disableCenter: true,
                          viewportFraction: 0.8,
                          height: 270,
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          scrollDirection: Axis.horizontal,
                        ),
                        items: categoryItems01.map((e) {
                          return CategoryItems(
                            colors: e.colors,
                            image: e.image,
                            title: e.title,
                          );
                        }).toList(),
                      )),
                  const SizedBox(height: 8.0),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 20, bottom: 8.0),
                      decoration: BoxDecoration(
                          color: const Color(0xfffdc2f02),
                          borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Category',
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyFamilyRoom()));
                    },
                  ),
                ]))
      ])),
    ));
  }
}
