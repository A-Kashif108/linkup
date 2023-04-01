import "package:flutter/material.dart";

blueBoyTheme(context) {
  final blueBoyTheme = ThemeData(
      /*fontFamily:*/
      colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color.fromARGB(490, 255, 255, 255),
    secondary: const Color.fromARGB(490, 32, 80, 246),
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
      backgroundColor: const Color.fromARGB(490, 255, 255, 255),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
        )
  
  )
  ));
  return blueBoyTheme;
}
