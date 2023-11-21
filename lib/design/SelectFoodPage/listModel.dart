// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ListModel extends StatelessWidget {
  const ListModel({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: mediaqurey.height * .13,
        // color: Colors.white.withOpacity(0.3),
        width: double.infinity,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(1, 5), blurRadius: 2, color: Colors.black54),
            ],
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/466441898/photo/wooden-background.jpg?s=612x612&w=0&k=20&c=UGqYQYhPWZyuy2UkOadiSL-BGqeXdQhIibkS1H9LVRA="),
                fit: BoxFit.cover),
            // color: const Color.fromARGB(63, 0, 0, 0).withOpacity(0.3),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        // child: Card(color: Colors.white.withOpacity(0.3), elevation: 0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, 4),
                        blurRadius: 2,
                        color: Colors.black45),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1000&format=pjpg&exif=0&iptc=0",
                      ),
                      fit: BoxFit.cover),
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20))),
              alignment: Alignment.topLeft,
              height: mediaqurey.height * .116,
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: "Food Name"
                            .text
                            .fontFamily("ethnocentric")
                            .overflow(TextOverflow.ellipsis)
                            .extraBold
                            .color(Colors.white)
                            .size(12)
                            .make(),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          // color: Colors.amberAccent,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child:
                                "Food xczxcxzccxzczxczxczxczxczxczxczxczxczxczxczxcxzcxzcvzxjhvcjhzxvcjhzxvcjhvzxjcvjzxcvjhzxvjchvzxljvclkzxvczxjvclhzxvcljhvzxljchvzxjlvhcljzxvhcjlvhzxljcvhzxjlcvljzxvhcljzxhvcjlhvcljvzxljcvhzljxcvhjlzxhvcjzxvcjlvzxjlhcvjlzxvcljzxvhcjlzxvlzxjcvhzxljchvxzjlvhclxzcvjxzhcvzxczxczxcxzcxzczxczxzxcxzcxzczxName"
                                    .text
                                    .color(Colors.white)
                                    .size(11)
                                    .bold
                                    .overflow(TextOverflow.fade)
                                    .make(),
                          ),
                        ),
                      ),
                      5.heightBox
                    ]),
                // color: Colors.brown,
              )),
          Expanded(
              child: Container(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_rounded),
              color: Colors.white,
            ),
            // color: Colors.yellow,
          ))
        ]),
      ),
    );
  }
}
