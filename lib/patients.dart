//import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_application_1/heart.dart';
import 'package:flutter_application_1/selection.dart';
//import 'package:flutter_application_1/oxygen.dart';

import 'months.dart';



class PatientSelection extends StatefulWidget{
@override 
_PatientSelectionState createState() => _PatientSelectionState();
}
class _PatientSelectionState extends State<PatientSelection> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Choose Patient"),
      ),

      body: Container(
        //backgroundColor: Colors.white,
        alignment: Alignment.center,
       child: Column(
          
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            
          
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    primary: Colors.black, 
                   minimumSize: const Size(200, 50),
                   //maximumSize: const Size(200, 50), 
                   ),
                   child: Text('Patient 1'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => Month()), 
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
                     primary: Colors.black,
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Patient 2'),
                   onPressed: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => Month()), 
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
                    primary: Colors.black,
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Patient 3'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => Month()), 
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
                    primary: Colors.black,
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Patient 4'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => Month()), 
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
                  primary: Colors.black,
                   minimumSize: const Size(200, 50),
                   ),
                   child: Text('Patient 5'),
                   onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)  => Month()), 
                     );

                   },


              )]      
       ),
      ),
    );
  }
}