//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final Function validator;
  final Widget prefixicon;
  final Widget suffixicon;
  final String hinttext;
  const AuthTextFormField(
      {required this.controller,
      required this.obscureText,
      required this.validator,
      required this.prefixicon,
      required this.suffixicon,
      required this.hinttext,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        /* icon: Icon(
          Icons.person,
          size: 40,
          color: Color(0xffDC2A1F),
        ),*/
        hintText: hinttext,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: 'Username',
      ),
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      /*
        Validate the input by providing a validator() function to the TextFormField. 
        If the user’s input isn’t valid, the validator function returns a String containing an error message. 
        If there are no errors, the validator must return null.
      */
      /* validator: (String? value) {
        return (value != null && value.contains('@'))
            ? 'Do not use the @ char.'
            : null;
      },*/
      validator: (value) => validator(value),
    );
  } // widget build

}// class
