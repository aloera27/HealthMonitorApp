
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class  TemperatureScreen extends StatefulWidget {
  @override
  _TemperatureScreenState createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {


  List<TempData> _charData;
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
                LineSeries<TempData, double>(
                dataSource: _charData,
                xValueMapper: (TempData user, _) =>user.day,
                yValueMapper: (TempData user, _)=> user.temp)
      
              ],
          
              ),
          ))));
    }}

    List<TempData> getCharData(){
      final List<TempData> charData=[
        TempData(1, 98.5),
        TempData(2, 100.4),
        TempData(3, 100.1),
        TempData(4, 98.5),
        TempData(5, 97.5),
        TempData(6, 98),
        
        
      ];
      return charData; 
    }
  
class TempData{
TempData(this.day, this.temp);
final double day; 
final double temp; 

}

    



    