import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  const Textfields({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(maxLength: 1002,
      decoration: const InputDecoration(

         enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.red),   
                      ),  
       
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        icon: Icon(Icons.person),
        hintText: 'What do people call you?',
        // labelText: 'Name *',
      ),
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      // validator: (String? value) {
      //   return (value != null && value.contains('@'))
      //       ? 'Do not use the @ char.'
      //       : null;
      // },
    );
  }
}
