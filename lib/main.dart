import 'package:test569/main.dart';
import 'package:flutter/material.dart';
import 'package:test569/splashScreen.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,

  ));

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SplachScreen();
  }


}
