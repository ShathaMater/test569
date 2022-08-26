import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order776 extends StatefulWidget {
  const Order776({Key? key}) : super(key: key);

  @override
  State<Order776> createState() => _Order776State();
}

class _Order776State extends State<Order776> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Orders #775',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Distance',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 25)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(' 1.0 km',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20)),
                    ],
                  ),
                  VerticalDivider(
                    width: 20,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(' Time',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 25)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(' 26 min',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      Text('Cost',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 25)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(' 20 km',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                  leading: Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber.shade400),
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
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  trailing: Text(
                    'Completed',
                    style: TextStyle(color: Colors.blue.shade800, fontSize: 16),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (context) => PickupForm()));
                  }),
              SizedBox(
                height: 5,
              ),
              ListTile(
                  leading: Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue.shade900),
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
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  trailing: Text(
                    '20',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (context) => PickupForm()));
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      ' #775 ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  Text(
                    '     11: 50pm May 2022',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TabBar(tabs: [
                Tab(
                  child: Text(
                    'Sender',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Receiver',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Item Details',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ]),
              TabBarView(children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sender',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Carolyn Fox',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18)),
                            Container(
                              width: 43,
                              height: 43,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 0,
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        ListTile(
                            leading: Icon(
                              Icons.location_on_sharp,
                              color: Colors.black,
                            ),
                            title: const Text(
                              "Adress",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            minLeadingWidth: 0,
                            onTap: () {
                              // Navigator.pop(context);
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(builder: (context) => PickupForm()));
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(' Building Name',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 25)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' Example',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20)),
                              ],
                            ),
                            Column(
                              children: [
                                Text(' Building Number',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 25)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' 123',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20)),
                              ],
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Column(
                              children: [
                                Text('Cost',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 25)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' 20 km',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text('التااااااني'),
                Text('الثالث'),
              ])
            ]),
          ),
        ),
      ),
    );
  }
}
