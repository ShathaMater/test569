import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      elevation: 5,
      title: Text(
        'NEW SCHDULE',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.timer,
              color: Colors.black,
            ),
            title: Text(
              "Time",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          // Row(
          //   children: [
          //     Container(
          //       alignment: Alignment.topLeft,
          //       margin: EdgeInsets.all(5),
          //       padding: EdgeInsets.all(5),
          //       height: 35,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.grey.shade200,
          //         boxShadow: [
          //           BoxShadow(
          //               offset: Offset(0, 10),
          //               blurRadius: 50,
          //               color: Color(0xffEEEEEE)),
          //         ],
          //       ),
          //       child: TextField(
          //         decoration: InputDecoration(
          //           border: OutlineInputBorder(
          //             borderSide: BorderSide(color: Colors.black38, width: 1.5),
          //           ),
          //           hintText: "From",
          //           enabledBorder: InputBorder.none,
          //           focusedBorder: InputBorder.none,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Container(
          //       alignment: Alignment.topRight,
          //       margin: EdgeInsets.all(5),
          //       padding: EdgeInsets.all(5),
          //       height: 35,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.grey.shade200,
          //         boxShadow: [
          //           BoxShadow(
          //               offset: Offset(0, 10),
          //               blurRadius: 50,
          //               color: Color(0xffEEEEEE)),
          //         ],
          //       ),
          //       child: TextField(
          //         decoration: InputDecoration(
          //           border: OutlineInputBorder(
          //             borderSide: BorderSide(color: Colors.black38, width: 1.5),
          //           ),
          //           hintText: "From",
          //           enabledBorder: InputBorder.none,
          //           focusedBorder: InputBorder.none,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          ListTile(
            leading: Icon(
              Icons.replay,
              color: Colors.black,
            ),
            title: Text(
              "Repeart",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            padding: EdgeInsets.all(5),
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
                  borderSide: BorderSide(color: Colors.black38, width: 1.5),
                ),
                hintText: "From",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade900),
            child: ElevatedButton(
              onPressed: () {},
              // => Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(
              //         builder: (context) => const PageLocation())),
              child: Text(
                'SAVE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                  Text('Schedual',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 25)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Would you like to schedule your work periods. ',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 98,
              margin: EdgeInsets.only(top: 20, right: 16, left: 18, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10 :00 am - 04:00pm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Daily',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.start,
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 250,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched == value;
                            });
                          }),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 98,
              margin: EdgeInsets.only(top: 20, right: 16, left: 18),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text(
                            '   10 :00 am - 04:00pm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 10,),
                          Text(
                            '    Daily',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.start,
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 250,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched == value;
                            });
                          }),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 16, right: 16, top: 140, bottom: 25),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return dialog;
                          });
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 60)),
                    child: Text(
                      '+ADD NEW',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
