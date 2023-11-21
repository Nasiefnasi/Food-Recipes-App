import 'package:flutter/material.dart';
import 'package:noteapp/design/newpost/textfilded.dart';
import 'package:velocity_x/velocity_x.dart';

class NewFoodpostpage extends StatelessWidget {
  const NewFoodpostpage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 0, 0),
      body: SafeArea(
          child: ListView(
        children: [
          18.heightBox,
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: "Favorite Food"
                .text
                .align(TextAlign.start)
                .size(40)
                .fontFamily("CarterOne")
                .align(TextAlign.start)
                .color(Colors.white)
                // .fontWeight(FontWeight.w900)
                .extraBlack
                .make(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
            child: Container(
              height: mediaqurey.height * .9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: mediaqurey.height * .23,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1000&format=pjpg&exif=0&iptc=0"),
                          fit: BoxFit.cover),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 8),
                            blurRadius: 9,
                            color: Colors.black54)
                      ],
                      color: const Color.fromARGB(255, 184, 166, 4),
                      borderRadius: BorderRadius.circular(20)),
                ),
                10.heightBox,

                // TextField(decoration: InputDecoration(  prefixIcon:  Icon(Icons.abc)),)
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 30, top: 20),
                  child: Textfields(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 30, top: 20),
                  child: Textfields(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 30, top: 20),
                  child: Textfields(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 30, top: 20),
                  child: Textfields(),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90, right: 90),
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),

                // TextFormField(
                //   decoration: const InputDecoration(
                //     icon: Icon(Icons.person),
                //     hintText: 'What do people call you?',
                //     labelText: 'Name *',
                //   ),
                //   onSaved: (String? value) {
                //     // This optional block of code can be used to run
                //     // code when the user saves the form.
                //   },
                //   validator: (String? value) {
                //     return (value != null && value.contains('@'))
                //         ? 'Do not use the @ char.'
                //         : null;
                //   },
                // )\
                20.heightBox,
              ]),
            ),
          ),
          25.heightBox,
        ],
      )),
    );
  }
}
