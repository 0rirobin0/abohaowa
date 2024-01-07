import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';


class data {

  String? temp;
  String? humidity;
  String? air_speed;
  String? description;
  String? main;
  String? Location;

  //constructor

  data({this.Location}) {
    this.Location;
  }

  //get data method

  Future<void> getData() async
  {
    Response response = await get(Uri.parse
      (
        "http://api.openweathermap.org/data/2.5/weather?q=$Location&appid=e34a5eb0b4c5ff748fdf9219a63d224e")) as Response;
       Map? Dictionary=jsonDecode(response.body);

      //description
       List Weather=Dictionary?["weather"];
       Map weatherdata=Weather?[0];
       String Main=weatherdata["main"];
       String des= weatherdata["description"];



    //Assigning data
    this.main=Main;
    this.description= des;

    //Temp,humidity
    Map basedata =Dictionary?["main"];
    double Temp=basedata?["temp"];
    int humi=basedata["humidity"];

    this.temp=Temp.toString();
    this.humidity=humi.toString();

    //air speed
    Map windata=Dictionary?["wind"];
    double windspeed=windata["speed"];
    //assigning
    this.air_speed=windspeed.toString();







  }



}