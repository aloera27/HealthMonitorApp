import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {


  List<BmiData> _charData;
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

            

            
              series: <ChartSeries>[
                LineSeries<BmiData, double>(
                dataSource: _charData,
                xValueMapper: (BmiData user, _) =>user.day,
                yValueMapper: (BmiData user, _)=> user.bmi)
      
              ],
            
              ),
          ))));
    }}

    List<BmiData> getCharData(){
      final List<BmiData> charData=[
        BmiData(1, 25),
        BmiData(2, 30),
        BmiData(3, 40),
        BmiData(4, 41),
        BmiData(5, 44),
        BmiData(6, 45),
        
        
      ];
      return charData; 
    }
  
class BmiData{
BmiData(this.day, this.bmi);
final double day; 
final double bmi; 

}
