import 'package:flutter/material.dart';

import 'DrawerUi.dart';

class PickupForm extends StatefulWidget {
  const PickupForm({Key? key}) : super(key: key);

  @override
  State<PickupForm> createState() => _PickupFormState();
}

class _PickupFormState extends State<PickupForm> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade800,
          ),
          child: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => DrawerUi())),
          ),
        ),
      ),
      title: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.all(20),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
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
              borderSide: BorderSide(color: Colors.black38, width: 1.5),
            ),
            hintText: "   Find Location",
            prefixIcon: Icon(Icons.search),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
