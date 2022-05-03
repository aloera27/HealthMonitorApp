
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class  HeartScreen extends StatefulWidget {
  @override
  _HeartScreenState createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {

  List<HeartData> _charData;
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
                  text: 'Beats per minute ', 
                  textStyle: TextStyle(
                  color:Colors.black, 
                  fontFamily: 'Roboto', 
                  fontSize: 16,
                )
              ),
              
              ),

            

            
              series: <ChartSeries>[
                LineSeries<HeartData, double>(
                dataSource: _charData,
                xValueMapper: (HeartData patient, _) =>patient.day,
                yValueMapper: (HeartData patient, _)=> patient.rate)
      
              ],
          
              ),
          ))));
    }}

    List<HeartData> getCharData(){
      final List<HeartData> charData=[
        HeartData(1, 90),
        HeartData(2, 96),
        HeartData(3, 100),
        HeartData(4, 102),
        HeartData(5, 95),
        HeartData(6, 95),
        
        
      ];
      return charData; 
    }
  
class HeartData{
HeartData(this.day, this.rate);
final double day; 
final double rate; 

}

    

