import 'package:flutter/material.dart';

class BurcDetail extends StatefulWidget {
  @override
  _BurcDetailState createState() => _BurcDetailState();
}

class _BurcDetailState extends State<BurcDetail> {
  double _updateState() {
    setState(() {
     // double width=400;
      //double height=400;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width=400;
    double height=400;
    return MaterialApp(
      title: 'Koç',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Burçlar'),
          backgroundColor: Colors.indigo,
          leading:IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon:Icon(
                Icons.arrow_back,
                color: Colors.white,
              )
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {_updateState();}),
              AnimatedContainer(duration: Duration(milliseconds: 900),
                curve: Curves.bounceIn,
                width: width,
                height: height,
                color: Colors.pink,
                child: Center(
                  child: Text(
                    'animation',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline5,
                  ),

                ),)
            ],


          ),
        ),
      ),
    );
  }

  }




