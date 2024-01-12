
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
// variable


  void initState() {
    // TODO: implement initState

    // print("Init state Home");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Loading screen theke data map akare get korte hbe eikhane jehetu data
    // context akare ashbe map hiasbe save krbo
    Map weatherinfo = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(

        body: SafeArea(


        child: Column(
        children: <Widget>[

          //Search Bar
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color:Colors.,
            ),

            child: Row(
              children:<Widget> [

                GestureDetector(
                  onTap:() {},
                child:Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                  child:Icon(Icons.search_rounded,color: Colors.blue,),
                ),


                ),


                  Expanded(child:
                  TextField(
                     decoration: InputDecoration(
                        border: InputBorder.none,
                         hintText:"Search City Name"

                             

                     ),
                  )),

              ],

            ),



          ),



        ],



        ),

        )

        ),
    );
  }
}