//import 'dart:html';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // PageView controller
  final pageCtrl = PageController(
    initialPage: 0,
  );
  var _scrollController, _tabController;
  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.lightBlue,
              centerTitle: true,
              title: const Text("Remote Patient Monitoring System"),
              snap: true,
              floating: true,
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Tab>[
                  Tab(
                    icon: Icon(
                      Icons.favorite
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.airline_seat_flat,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.bookmark_border,
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            _releasePageTest(),
            _instockPage(),
            _instockPage(),
          ],
        ),
      ),
    );
  }

  
  List<String> names = ['January', 'Feb', 'March'];
  List<String> description = ['Weight Progress', 'Weight Progress', 'Weight Progress'];
  List<String> image = ['O A', 'G V', 'P C'];
  List<bool> productStock = [true, true, true];

  // Helpers
  _releasePageTest() {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (BuildContext context, int index) {
        return Product(
          names[index],
          description[index],
          image[index],
          productStock[index],
        );
      },
    );
  }

  Container _instockPage() {
    return Container(
      color: Colors.blue,
    );
  }
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}




class Product extends StatefulWidget {
  String productName;
  String productDescription;
  String productImageURL;
  bool inStock;

  Product(String productName, String productDescription, String productImageURL,
      bool inStock) {
    this.productName = productName;
    this.productDescription = productDescription;
    this.productImageURL = productImageURL;
    this.inStock = inStock;
  }

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        child: Container(
          color: Colors.white38,
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ////////////////////////////////// Product Discriptions
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 20,
                          width: 100,
                          child: Text(
                            widget.productName,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              //fontFamily: ,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 20,
                          width: 100,
                          child: Text(
                            widget.productDescription,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              //fontFamily: ,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 30,
                    ),
                    onPressed: () {},
                ),







            ])]
          )
        )));

              

                
              
        
             
             
              
             
             
             // Placeholder(), // widget.productImageURL
            
          
  
  }}