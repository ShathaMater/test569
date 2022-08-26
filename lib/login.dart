import 'package:flutter/material.dart';
import 'package:test569/pagelocation.dart';

import 'forgetPassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 95),
                      width: 73,
                      height: 76,
                      child: Image.asset(
                        'images/aoo.png',
                        fit: BoxFit.cover,
                      )),
                  Text(
                    'Welcom in ',
                    style: TextStyle(fontSize: 20, fontFamily: 'Dancing'),
                  ),
                  Text(
                    'Delivere App',
                    style: TextStyle(fontSize: 30, fontFamily: 'Dancing'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 1.5),
                        ),
                        hintText: "Phone Number",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 1.5),
                        ),
                        hintText: "Password",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                    builder: (context) => ForgetPassword())),
                            child: Text("Forget Password ?")),
                        TextButton(
                            onPressed: () {},
                            child: Text("Restore Password ",
                                style: TextStyle(color: Colors.blue.shade900))),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade900),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const PageLocation())),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    'Or With',
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(double.infinity, 60)),
                      onPressed: () {},
                      child: Text(
                        'Facebook ',
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(double.infinity, 60)),
                      onPressed: () {},
                      child: Text(
                        'Apple Store ',
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
