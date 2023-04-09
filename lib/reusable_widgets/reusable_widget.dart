import 'package:flutter/material.dart';

Image logoWidget(String imagePath){
  return Image.asset(
    imagePath,
    fit:BoxFit.fitWidth,
    width:240,
    height: 240,
    color: Colors.white,
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType, TextEditingController controller){
  return TextField(
    obscureText: isPasswordType,
    enableSuggestions: isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(
      color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefix:Icon(
          icon,
          color:Colors.white70,
        ),
        labelText :text,
        labelStyle: TextStyle(
          color:Colors.white.withOpacity(0.9)
        ),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width:0, style: BorderStyle.none),
        ),
      ),
     keyboardType:isPasswordType? TextInputType.visiblePassword:TextInputType.emailAddress,controller: controller,
  );
}