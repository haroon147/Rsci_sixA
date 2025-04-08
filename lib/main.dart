import 'package:flutter/material.dart';
import 'package:sixa_class_rsci/Week6/screen_one.dart';
import 'package:sixa_class_rsci/Week6/week_six_home.dart';

import 'Week6/ListviewandGrid.dart';
import 'Week6/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/home',
      // routes:{
      //   'home': (context)=> WeekSixHome(),
      //   'screen_one':(context)=>ScreenOne(myValue: '',),
      // },
      title: 'Flutter Demo',
      theme: ThemeData(
        ),
       home: ListViewAndGrid(),
    );
  }
}
