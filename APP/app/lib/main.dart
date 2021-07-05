import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Home(),
      
    );
  }
}