import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    // Use Future.delayed to navigate after 1 second
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushNamed(context, "/home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body:

        Column(
          children: [
           SizedBox(height: 400),

            Row(
              children: <Widget>[
                SizedBox(width: 30,),
                Text('Abohaowa',style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize:50,color: Colors.white),),
                SizedBox(width: 20,),
                Icon(Icons.cloud,color: Colors.white, size: 80,),
              ],
            ),
          ],
        ),




    );
  }
}
