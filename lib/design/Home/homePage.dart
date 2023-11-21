// ignore_for_file: prefer_final_fields
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:noteapp/design/Home/foodlist.dart';
import 'package:velocity_x/velocity_x.dart';
class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.6);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 0, 0),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  children: [
                    "food recipes"
                        .text
                        .uppercase
                        .size(40)
                        .fontFamily("CarterOne")
                        .align(TextAlign.start)
                        .color(Colors.white)
                        // .fontWeight(FontWeight.w900)
                        .bold
                        .make(),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: "What time is it?\nIt's cooking time!"
                          .text
                          .size(33)
                          .fontFamily("TypoStyle")
                          .fontWeight(FontWeight.w100)
                          .align(TextAlign.start)
                          .color(const Color.fromARGB(188, 255, 255, 255))
                          // .fontWeight(FontWeight.w900)
                          .make(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          20.heightBox,
          AspectRatio(
            aspectRatio: 1.07,
            child:  SizedBox(
              // height: 400,
              width: double.infinity,
              // color: Colors.amber,
              child: PageView.builder(
                controller: _pageController,
                physics: const ClampingScrollPhysics(),
                itemCount: imagees.length,
                itemBuilder: (context, index) {
                  return anglecard(imagees.length);
                },
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
              )),
        ],
      )),
    );
  }

  var imagees = [5, 4, 4, 44, 4];

  Widget anglecard(int Index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.00;
        if (_pageController.position.haveDimensions) {
          value = imagees.length.toDouble() - (_pageController.page ?? 0);
          value = (value * .0).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * (value) / 5,
          child: HomePageFoofList(context: context, datas: imagees),
        );
      },
    );

    // return ProdectAngle();
  }
}
