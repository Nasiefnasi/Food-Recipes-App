import 'package:flutter/material.dart';
import 'package:noteapp/design/SelectFoodPage/listModel.dart';
import 'package:velocity_x/velocity_x.dart';

class FavouriteListPage extends StatelessWidget {
  const FavouriteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 0, 0),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox, 
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: "Favorite Food"
                .text.align(TextAlign.start)
                     
                .size(40)
                .fontFamily("CarterOne")
                .align(TextAlign.start)
                .color(Colors.white)
                // .fontWeight(FontWeight.w900)
                .extraBlack
                .make(),
              ),
              Expanded(
                child: ListView.builder(itemCount: 4,
                  itemBuilder: (context, index) {
                  return ListModel();
                },),
              )
            ],
          ),
        ));
  }
}
