import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'DrawerUi.dart';
import 'PickupForm.dart';

class Arrived extends StatefulWidget {
  const Arrived({Key? key}) : super(key: key);

  @override
  State<Arrived> createState() => _ArrivedState();
}

class _ArrivedState extends State<Arrived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 90,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10, left: 5),
            child: Container(
              width: 60,
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
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade700),
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(30),
                            //   topRight: Radius.circular(30),
                            // )
                     ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  leading: Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.amber.shade400),
                                  ),
                                  title: const Text(
                                    "  Pickup Form",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  minLeadingWidth: 0,
                                  subtitle: Text(
                                    '  Rozalinda Restaurant',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PickupForm()));
                                  }),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                  leading: Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue.shade900),
                                  ),
                                  title: const Text(
                                    "   Droop Off",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  minLeadingWidth: 0,
                                  subtitle: Text(
                                    '   11425 Rafial Street',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PickupForm()));
                                  }),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SlideAction(
                                  onSubmit: () {},
                                  borderRadius: 20,
                                  outerColor: Colors.deepPurple,
                                  innerColor: Colors.white,
                                  text: 'Arrived To Pickup Locatin',
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  sliderButtonIcon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                              //     SizedBox(width: 5,),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
                child: Divider(
                  height: 5,
                  thickness: 5,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ));
  }
}
