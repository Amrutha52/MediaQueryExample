import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    var screenWidth = MediaQuery.sizeOf(context).width; // To determine width
    var screenHeight = MediaQuery.sizeOf(context).height; // To determine height
    var screenOrientation = MediaQuery.of(context).orientation; // current orientation of a screen 
    return Scaffold(
      backgroundColor: screenWidth > 500 ? Colors.green : Colors.yellow ,
      body: InkWell(
        onTap: (){
          if(screenOrientation == Orientation.landscape)
            {
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.portraitUp]); // Default function from services class
            }
          else
            {
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.landscapeLeft]);
            }
          setState(() {});
        },
        child: Container(
          height: screenHeight*0.5,
          width: screenWidth/2, // screen widthnte 50% or screenWidth*0.5
          color: Colors.black,
          child: Text("${screenOrientation.name.toString()},",
            style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
      )
      // Center(
      //   child: Column(
      //     children: [
      //       Text("${screenHeight.toString()}"),
      //       Text("${screenWidth.toString()}")
      //     ],
      //   ),
      // ),
    );
  }
}
