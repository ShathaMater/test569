import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test569/PickupForm.dart';

import 'Order776.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Orders',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 25)),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.dashboard_sharp,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Active',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18)),
              SizedBox(
                height: 8,
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('To Pickup Location',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.blueAccent.shade700,
                            fontWeight: FontWeight.w900,
                            fontSize: 18)),
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
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PickupForm()));
                        }),
                    SizedBox(
                      height: 5,
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
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => PickupForm()));
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Order776()));
                          },
                          child: Container(
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
                      height: 10,
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Completed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.grey.shade300,
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
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => PickupForm()));
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
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => PickupForm()));
                  }),
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
                height: 10,
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.grey.shade300,
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
                    'Canceled',
                    style: TextStyle(color: Colors.red.shade300, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => PickupForm()));
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
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => PickupForm()));
                  }),
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
            ],
          ),
        ),
      ),
    );
  }
}
