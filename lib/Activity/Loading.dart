import 'package:flutter/material.dart';
import 'Datapack//Data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override



  //getting data in Loading screen
  void Data_fetching_and_sending() async // getting data for an instance
      {
   Data  instance = Data(Location: "Sylhet");
   await instance.getData();

   // wait some sec to show Loading screen animation
   Future.delayed(const Duration(seconds: 2),(){


     //sending data to home page
     Navigator.pushReplacementNamed(context, '/home',arguments: { // ei argument akta map type data jeta onno route state e send kore
       "temp" : instance.temp,
       "humidity" : instance.humidity,
       "air_speed" :instance.air_speed,
       "description":instance.description,
       "main":instance.main,
       "location" :instance.Location,
     });


   });




  }


  //initial state
  @override
  void initState() {
    super.initState();
    print("Inital state");
    print("Loading Screen ");
    Data_fetching_and_sending(); //function called

  }














  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body:Center(
        child: Column(
          children: <Widget> [

            const Text("ABOHAOWA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 65,color: Colors.white),),

             const Text("A Weather App",style: TextStyle(color: Colors.white,fontSize: 20),),
            Image.asset("Assests/Images/raining.png",height: 450,width: 450,),

        const SizedBox(height: 40),
         //spinner on Loading screen
          const SpinKitSpinningLines(
      color: Colors.white,
          size: 80.0,
    ),



          ],



        ),


      )




    );
  }
}
