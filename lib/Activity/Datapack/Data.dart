import 'dart:convert';
import 'package:http/http.dart';


class Data {

  String? temp;
  String? humidity;
  String? air_speed;
  String? description;
  String? main;
  String? Location;

  //constructor

  Data({this.Location}) {
    Location;
  }

  //get data method

  Future<void> getData() async // Async function ke control power dey pause resume korar
  {
    try { // checking error


         //await function er jnno wait kore jatokhn na function data get kore return kore eita async ei power dey
      Response response = await get(Uri.parse
        (                                               //Location variable location ene dibi url e
          "http://api.openweathermap.org/data/2.5/weather?q=$Location&appid=e34a5eb0b4c5ff748fdf9219a63d224e"));

      Map? Dictionary = jsonDecode(response.body); // Json total tai akta dictionary bola cole ja akta map

      //description
      List Weather = Dictionary?["weather"];  // dictionary map er moddeh map o thake list o thake
      Map weatherdata = Weather[0];
      String Main = weatherdata["main"];
      String des = weatherdata["description"];
      //Assigning data
      main = Main;
      description = des;



      //Temp,humidity
      Map basedata = Dictionary?["main"];
      double Temp = basedata["temp"]-273.25;
      int humi = basedata["humidity"];
      //Assigning data
      temp = Temp.toStringAsFixed(2);
      humidity = humi.toString();



      //air speed
      Map windata = Dictionary?["wind"];
      double windspeed = windata["speed"]/0.27777777777778;
      //assigning
      air_speed = windspeed.toStringAsFixed(2); //jehetu parameter gulo string tai string bania newa howese
    }




    catch(e) //if error occured then default data
    {
      Location = "Data Not Found";
      description = "Data Not Found";
      temp = "Data Not Found";
      humidity = "Data Not Found";
      air_speed = "Data Not Found";
    }




  }



}