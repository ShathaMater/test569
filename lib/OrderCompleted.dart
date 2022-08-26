import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DrawerUi.dart';
import 'RequestExtraFrees.dart';

class OrderCompleted extends StatefulWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  State<OrderCompleted> createState() => _OrderCompletedState();
}

class _OrderCompletedState extends State<OrderCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 90,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'ORDER COMPLETED ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              ' You have earned ',
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '   20 ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    primary: Colors.blue.shade100),
                                onPressed: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                        builder: (context) =>
                                            const RequestExtraFrees())),
                                child: Text(
                                  'RequestExtraFrees',
                                  style: TextStyle(
                                      color: Colors.blue.shade500,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //  color: Colors.blue.shade900),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    primary: Colors.blue.shade800),
                                onPressed: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                        builder: (context) =>
                                            const RequestExtraFrees())),
                                child: Text(
                                  'CONFIRM',
                                  style: TextStyle(color: Colors.white,
                                  fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
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

//Stack(
//   children: [
//     Container(
//       width: double.infinity,
//       height: double.infinity,
//       color: Colors.white,
//     ),
//     Stack(
//       children: [
//         Text(
//           'ORDER COMPLETED ',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 25,
//               color: Colors.black),
//         ),
//         Text(
//           '   You have earned ',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontWeight: FontWeight.w200,
//               fontSize: 20,
//               color: Colors.black),
//         ),
//         Text(
//           '     20 ',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 20,
//               color: Colors.black),
//         ),
//         Container(
//           width: double.infinity,
//           height: 50,
//           margin: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue.shade900),
//           child: ElevatedButton(
//             onPressed: () => Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                     builder: (context) => const RequestExtraFrees())),
//             child: Text(
//               'RequestExtraFrees',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         Container(
//           width: double.infinity,
//           height: 50,
//           margin: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue.shade900),
//           child: ElevatedButton(
//             onPressed: () => Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                     builder: (context) => const RequestExtraFrees())),
//             child: Text(
//               'CONFIRM',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//
//
//       ],
//     )
//   ],
// ),
