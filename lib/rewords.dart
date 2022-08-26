import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rewordrs extends StatefulWidget {
  const Rewordrs({Key? key}) : super(key: key);

  @override
  State<Rewordrs> createState() => _RewordrsState();
}

class _RewordrsState extends State<Rewordrs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(
              height: 10,
            ),
            Text('Rewords',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            SizedBox(
              height: 20,
            ),
            Text(
              'Get your rewords depending your'
              ' activity and your completed orders ',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 98,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(40)
                      ),
                      child: Image.asset(
                        'images/img.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Shopping',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'View the available discounts',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 98,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(40)
                      ),
                      child: Image.asset(
                        'images/img.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Restaurant',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'View the available discounts',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
