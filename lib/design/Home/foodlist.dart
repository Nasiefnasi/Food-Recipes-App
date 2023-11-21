import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageFoofList extends StatelessWidget {
  const HomePageFoofList({
    super.key,
    required this.context,
    required this.datas,
  });

  final BuildContext context;
  final List datas;

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    // List data;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        30.heightBox,
        Stack(
          children: [
            Container(
              height: mediaqurey.height / 3,
              width: mediaqurey.width / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("${datas.length}"),
                    fit: BoxFit.cover,
                  ),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.black26)
                  ],
                  border: Border.all(color: Colors.white, width: 4)),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))
          ],
        ),
        10.heightBox,
        "Food Name"
            .text
            .fontFamily("ethnocentric")
            .extraBlack
            .color(Colors.white)
            .size(12)
            .make(),
      ],
    );

    // return ProdectAngle();
  }
}