import 'package:flutter/material.dart';
import 'package:abohaowa_weather/Activity/Home.dart';
import 'package:abohaowa_weather/Activity/Loading.dart';
import 'package:abohaowa_weather/Activity/Location.dart';
void main() {
  runApp(MaterialApp(


    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes:
    {
      "/" : (context) => const Loading(),
      "/home" : (context) =>const Home(),
      "/Location" : (context) =>const Location(),
    },



  ));
}

