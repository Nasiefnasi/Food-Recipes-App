// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});
  
  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 0, 0),
      body: Container(
        child: ListView(
          children: [
            10.heightBox,
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: "Food Details"
                    .text
                    .align(TextAlign.start)
                    .size(35)
                    .fontFamily("CarterOne")
                    .align(TextAlign.start)
                    .color(Colors.white)
                    .bold
                    .make(),
              ),
            ),
            10.heightBox,
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 1),
                child: "Food Name"
                    .text
                    .fontFamily("ethnocentric")
                    .overflow(TextOverflow.ellipsis)
                    .extraBold
                    .color(Colors.white)
                    .size(25)
                    .make(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
              child: Container(
                width: 20,
                height: mediaqurey.height * .45,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1295633127/photo/grilled-chicken-meat-and-fresh-vegetable-salad-of-tomato-avocado-lettuce-and-spinach-healthy.jpg?s=1024x1024&w=is&k=20&c=2HQ3drj21kzwpvGYh-YjAmPVShsv7vbnOPNEJ-lg_pQ="),
                        fit: BoxFit.cover),
                    border: Border.all(width: 3, color: Colors.white),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(23)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 10,
                          color: Colors.black45)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                height: mediaqurey.height * 0.07,
                // color: Colors.amber,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              clipBehavior: Clip.hardEdge,
                              height: 16,
                              width: 15,
                              decoration: const BoxDecoration(
                                  // color: Colors.purple,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://www.iconpacks.net/icons/2/free-time-icon-3487-thumb.png"),
                                      fit: BoxFit.cover))),
                          // const Icon(
                          //   Icons.timer,
                          //   size: 15,
                          // ),
                          "45 Minutes"
                              .text
                              .size(10)
                              .color(Colors.black54)
                              .make()
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.leaderboard,
                            size: 15,
                          ),
                          "Bigner".text.size(10).color(Colors.black54).make()
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              clipBehavior: Clip.hardEdge,
                              height: 16,
                              width: 15,
                              decoration: const BoxDecoration(
                                  // color: Colors.purple,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/599/599502.png"),
                                      fit: BoxFit.cover))),
                          // Image.network("https://png.pngtree.com/png-vector/20190226/ourmid/pngtree-fire-logo-icon-design-template-vector-png-image_705402.jpg",),
                          // Icon(
                          //   Icons.timer,
                          //   size: 15,
                          // ),
                          "45 Minutes"
                              .text
                              .size(10)
                              .color(Colors.black54)
                              .make()
                        ],
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 30, right: 26),
              child:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum Lorem ipsum dolor sit amet, comes from a line in section 1.10.32."
                      .text
                      .align(TextAlign.left)
                      .color(Colors.white)
                      .make(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 30, right: 26),
              child: "Ingredients"
                  .text
                  .align(TextAlign.left)
                  .fontFamily("Alternate")
                  .color(Colors.white)
                  .size(20)
                  .make(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 10, right: 226),
              child:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10."
                      .text
                      .align(TextAlign.left)
                      .color(Colors.white)
                      .make(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 30, right: 26),
              child: "Setps"
                  .text
                  .align(TextAlign.left)
                  .fontFamily("Alternate")
                  .color(Colors.white)
                  .size(20)
                  .make(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 10, right: 226),
              child:
                  "Contrary to of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10."
                      .text
                      .align(TextAlign.left)
                      .color(Colors.white)
                      .make(),
            ),
            40.heightBox
          ],
        ),
      ),
    );
  }
}
