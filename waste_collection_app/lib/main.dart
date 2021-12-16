import 'package:flutter/material.dart';
import 'nav.dart';
import 'register.dart';

void main(){runApp(MyApp());}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute:'/',
        // routes:{
        //   '/':(context)=>home(),
        //   '/register':(context)=>register(),
        title: 'Waste collection app',
        home:Nav()

        );
  }
}