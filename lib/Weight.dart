import 'package:charts_flutter/flutter.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  List<SalesData> _charData;
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
                LineSeries<SalesData, double>(
                dataSource: _charData,
                xValueMapper: (SalesData sales, _) =>sales.day,
                yValueMapper: (SalesData sales, _)=> sales.weight)
      
              ],
            //primaryXAxis: NumericAxis(),
              //primaryXAxis: 
              
            //primaryXAxis: name:'days', decimalPlaces:0), 

             // primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
           //   primaryYAxis:  NumericAxis(numberFormat: BasicNumericTickFormatterSpec.fromNumberFormat(numberFormat)),
              ),
          ))));
    }}

    List<SalesData> getCharData(){
      final List<SalesData> charData=[
        SalesData(1, 135),
        SalesData(2, 137),
        SalesData(3, 130),
        SalesData(4, 125),
        SalesData(5, 130),
        SalesData(6, 140),
        
        
      ];
      return charData; 
    }
  
class SalesData{
SalesData(this.day, this.weight);
final double day; 
final double weight; 

}

    