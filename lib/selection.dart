import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Weight.dart';
import 'package:flutter_application_1/bmi.dart';
import 'package:flutter_application_1/heart.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/oxygen.dart';
import 'package:flutter_application_1/splash_screen.dart';

import 'dart:async';

import 'package:flutter_application_1/temperature.dart';


class Selection extends StatefulWidget{
@override 
_SelectionState createState() => _SelectionState();
}
class _SelectionState extends State<Selection> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
       child: Column(
          
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              //  Container(
               //  margin: EdgeInsets.all(25), 
               //  child:
              
          
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   minimumSize: const Size(200, 50),
                   //maximumSize: const Size(200, 50), 
                   ),
                   child: Text('Temperature'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => TemperatureScreen()), 
                     );},
                 )
               ,
               Divider(
                  height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.white,
          ),

                


                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Oxygen Level'),
                   onPressed: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => OxygenScreen()), 
                     );}

                ,

                ), 

                Divider(
                  height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.white,
          ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Weight'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => GraphScreen()), 
                     );}

                

                ), 
                Divider(
                  height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.white,
          ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('BMI'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => BMIScreen()), 
                     );}

                ,

                ),

     //         Divider(
    //              height: 20,
    //        thickness: 5,
     //       indent: 20,
     //       endIndent: 0,
      //      color: Colors.white,
      //    ),

        //      ElevatedButton(
              //  style: ElevatedButton.styleFrom(
             //      minimumSize: const Size(200, 50),
              //     ),
             //      child: Text('Blood Pressure'),
              //     onPressed: (){
               //      Navigator.push(
              //         context, 
               //        MaterialPageRoute(builder: (context)  => HomeScreen()), 
           //          );}
//
         //
                   
         //     ),
Divider(
                  height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.white,
          ),


              ElevatedButton(
                style: ElevatedButton.styleFrom(
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Heart Rate'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => HeartScreen()), 
                     );

                   },


              )]      
       ),
      ),
    );
  }
}