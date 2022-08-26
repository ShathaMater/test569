import 'package:flutter/material.dart';
import 'package:test569/privacy%20policy.dart';
import 'package:test569/profile.dart';
import 'package:test569/rewords.dart';
import 'package:test569/terms.dart';
import 'package:test569/test569/Schedule.dart';
import 'package:test569/wallet.dart';

import 'Orders.dart';
import 'home.dart';

class DrawerUi extends StatefulWidget {
  const DrawerUi({Key? key}) : super(key: key);

  @override
  _DrawerUiState createState() => _DrawerUiState();
}

class _DrawerUiState extends State<DrawerUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.blue.shade600,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        padding: EdgeInsets.only(
                          top: 50
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'images/aoo.png',
                                  fit: BoxFit.cover,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Delivere App',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Dancing',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: ListTile(
                              leading: Icon(
                                Icons.home_filled,
                                color: Colors.grey.shade400,
                              ),
                              title: const Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onTap: () => Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (context) => Onbording())),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.timer,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  "Schedule",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Schedule()));
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.reorder_sharp,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  "Order",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Orders()));
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.account_balance_wallet,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  "Wallet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Wallet()));
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.star,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  "Rewords",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Rewordrs()));
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.face_rounded,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  " Profile",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pushReplacement(
                                      context, MaterialPageRoute(builder: (context) => Profile()));

                                  Navigator.pop(context);
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.event_note_outlined,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  "Terms & Condutions",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context, MaterialPageRoute(builder: (context) => Terms()));

                                  Navigator.pop(context);
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: ListTile(
                                leading: Icon(Icons.privacy_tip_outlined,
                                    color: Colors.grey.shade400),
                                title: const Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));

                                  Navigator.pop(context);
                                }),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              side: BorderSide(width: 2, color: Colors.white),
                              primary: Colors.blue.shade600,
                              minimumSize: const Size(double.infinity, 60)),
                          onPressed: () {
                            // AuthHelper.authHelper.logout();
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/Logout');
                          },
                          child: const Text(
                            'LOGOUT ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
