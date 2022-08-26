import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test569/pagelocation.dart';
import 'package:test569/privacy%20policy.dart';
import 'package:test569/profile.dart';
import 'package:test569/terms.dart';
import 'package:test569/test569/Schedule.dart';
import 'package:test569/timeEarning.dart';
import 'DrawerUi.dart';
import 'OrderCompleted.dart';
import 'RequestExtraFrees.dart';
import 'arrived.dart';
import 'forgetPassword.dart';
import 'home.dart';





class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  var size, width, height;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DrawerUi())));
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
              alignment: AlignmentDirectional.center,
              color: Colors.white,
              child: Image.asset('images/aoo.png')),
          SizedBox(height: 300),
          // InkWell(
          //     onTap: () {
          //       Navigator.pushReplacement(context,
          //           MaterialPageRoute(builder: (context) => Onbording()));
          //     },
          //     child: Container(
          //         child: Text('Delivero',
          //             textAlign: TextAlign.end,
          //             style: TextStyle(fontSize: 27, fontFamily: 'Dancing')))),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Container(
          //     // width: width/2,
          //     // height: height/2,
          //     margin: EdgeInsets.only(bottom: 30),
          //     child: Divider(
          //       color: Colors.black,
          //       thickness: 4.5,
          //       indent: 550,
          //       endIndent: 550,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
