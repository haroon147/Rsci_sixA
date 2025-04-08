import 'package:flutter/material.dart';
import 'package:sixa_class_rsci/Week6/screen_two.dart';

class ScreenOne extends StatelessWidget {

  String myValue;

  ScreenOne({super.key,required this.myValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SCREEN TWO"),),
      body: Container(
        color: Colors.black38,
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.pinkAccent,
                child: Text("Screem"),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Return"),),
             GestureDetector(
               onDoubleTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>  ScreenTwo()));
               },
               child: Container(
                 color: Colors.green,
                 width: MediaQuery.of(context).size.width*0.2,
                 height: MediaQuery.of(context).size.height*0.2,
               ),
             ),
              Text(myValue.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),
    );
  }
}
