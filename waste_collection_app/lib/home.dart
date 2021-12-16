
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: const <Widget>[
            ListTile(

              title: Text('Plastic'),
            ),
            ListTile(

              title: Text('Glass'),
            ),
            ListTile(

              title: Text('Paper'),
            ),
            ListTile(

              title: Text('Fabric'),
            ),
            ListTile(

              title: Text('Bread'),
            ),
          ],
        )



          );


  }
}