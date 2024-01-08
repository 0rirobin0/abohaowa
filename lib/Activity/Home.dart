import 'dart:convert';
import 'dart:io';
import 'package:abohaowa_weather/Activity/Data/data.dart';
import 'package:abohaowa_weather/Activity/Location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'Data/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String? temp;
  String? humidity;
  String? air_speed;
  String? description;
  String? main;
  String? Location;


  //fuction to get data

  void Startup () async
  {
  data instance = data(Location: "Helsinki");
    await instance.getData();

    //
    //
    // print(instance.Location);
    // print(instance.description);
    // print(instance.temp);
    // print(instance.humidity);
    // print(instance.air_speed);

    setState(() {
        Location = instance.Location;
        description = instance.description;
        temp = instance.temp;
        humidity = instance.humidity;
        air_speed = instance.air_speed;


    });



  }




  void initState() {
    // TODO: implement initState

    print("Init state called");
    Startup();
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Weather Today"),
         backgroundColor: Colors.deepOrange,




       ),
      body: Column(

        children: <Widget>[


          FloatingActionButton(onPressed:  ()=>setState(() {

          })),

          Text("Location :$Location"),
          Text("Temparature :$temp"),
          Text("Description :$description" ,style: TextStyle(color: Colors.green,)),
          Text("Humidity :$humidity"),
          Text("Wind Speed :$air_speed"),







        ],
      )


    );
  }
}
