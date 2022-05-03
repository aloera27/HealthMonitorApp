

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class OxygenScreen extends StatefulWidget {
  @override
  _OxygenScreenState createState() => _OxygenScreenState();
}

class _OxygenScreenState extends State<OxygenScreen> {
 

  List<OxygenData> _charData;
  @override 
  void initState(){
    _charData=getCharData();
    super.initState();
  }
  
   
      @override
    Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:Container(
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                title: AxisTitle(
                  text: 'Day of the Month', 
                  textStyle: TextStyle(
                  color:Colors.black, 
                  fontFamily: 'Roboto', 
                  fontSize: 16,
                )
              ),
              
              ),
primaryYAxis: CategoryAxis(
                title: AxisTitle(
                  text: 'Percentage of Oxygen Level ', 
                  textStyle: TextStyle(
                  color:Colors.black, 
                  fontFamily: 'Roboto', 
                  fontSize: 16,
                )
              ),
              
              ),
            

            
              series: <ChartSeries>[
                LineSeries<OxygenData, double>(
                dataSource: _charData,
                xValueMapper: (OxygenData user, _) =>user.day,
                yValueMapper: (OxygenData user, _)=> user.oxygen)
      
              ],
            
              ),
          ))));
    }}

    List<OxygenData> getCharData(){
      final List<OxygenData> charData=[
        OxygenData(1, 99),
        OxygenData(2, 95),
        OxygenData(3, 98.5),
        OxygenData(4, 99),
        OxygenData(5, 98),
        OxygenData(6, 97),
        
        
      ];
      return charData; 
    }
  
class OxygenData{
OxygenData(this.day, this.oxygen);
final double day; 
final double oxygen; 

}



