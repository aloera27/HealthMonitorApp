
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  List<WeightData> _charData;
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
                  text: 'Units lbs', 
                  textStyle: TextStyle(
                  color:Colors.black, 
                  fontFamily: 'Roboto', 
                  fontSize: 16,
                )
              ),
              
              ),

            
              series: <ChartSeries>[
                LineSeries<WeightData, double>(
                dataSource: _charData,
                xValueMapper: (WeightData patient, _) =>patient.day,
                yValueMapper: (WeightData patient, _)=> patient.weight)
      
              ],
          
              ),
          ))));
    }}

    List<WeightData> getCharData(){
      final List<WeightData> charData=[
        WeightData(1, 135),
        WeightData(2, 137),
        WeightData(3, 130),
        WeightData(4, 125),
        WeightData(5, 130),
        WeightData(6, 140),
        
        
      ];
      return charData; 
    }
  
class WeightData{
WeightData(this.day, this.weight);
final double day; 
final double weight; 

}

    