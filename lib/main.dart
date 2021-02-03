import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test_app_1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test_app_1'),
        ),
        body: SafeArea(
          child: Center(
            child: MyWidget(),
          )
        )
      ),
    );
  }
}


class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> { 
  
  bool widgetVisible1 = true;
  bool widgetVisible2 = true;
  
  void showWidget1(){setState(() {widgetVisible1 = true;});}

  void hideWidget1(){setState(() {widgetVisible1 = false;});}

  void showWidget2(){setState(() {widgetVisible2 = true;});}

  void hideWidget2(){setState(() {widgetVisible2 = false;});}

  

  
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Visibility(
          visible: widgetVisible1,
          child: Container(
            child:RaisedButton(onPressed: hideWidget2,
                               onLongPress: showWidget2,
                               child: Text('Click To Hide Next Button',
                                 textAlign: TextAlign.center,
                                 style: TextStyle(fontSize: 20)    
                                 )
                              )
                          ,)
                    ),

        const SizedBox(height: 150),

        Visibility(
          visible: widgetVisible2,
          child: Container(
            child: RaisedButton(onPressed: hideWidget1,
                                onLongPress: showWidget1,
                                child: Text('Click To Hide\nPrevious Button',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20)
                                  )
                                )
                            ,)
                    )
        ],
    );
  }
}