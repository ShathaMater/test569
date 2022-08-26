import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:test569/home.dart';
import 'DrawerUi.dart';

class PageLocation extends StatefulWidget {
  const PageLocation({Key? key}) : super(key: key);

  @override
  State<PageLocation> createState() => _PageLocationState();
}

class _PageLocationState extends State<PageLocation> {
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
                  return Stack(children: [
                    Positioned(
                      top: 40,
                      child: CircleAvatar(
                        radius: 40,
                        child: Image.asset('images/aoo.png'),
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                'Benjamin Garrett',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '+1 XXX XXX XXX',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Delivery Area',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          '    Gaza',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Completed Orders',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          '    15',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SlideAction(
                                  onSubmit: () {},
                                  borderRadius: 20,
                                  outerColor: Colors.deepPurple,
                                  innerColor: Colors.white,
                                  sliderButtonIcon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )

// Container(
//   height: 60,
//   margin: EdgeInsets.all(30),
//   width: double.infinity,
//   child: FlatButton(
//     child: Text(
//         currentIndex == contents.length - 1 ? "CONTINUE" : "NEXT"),
//     onPressed: () {
//       if (currentIndex == contents.length - 1) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (_) => LoginScreen(),
//           ),
//         );
//       }
//       _controller.nextPage(
//         duration: Duration(milliseconds: 100),
//         curve: Curves.bounceIn,
//       );
//     },
//     color: Theme.of(context).primaryColor,
//     textColor: Colors.white,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(20),
//     ),
//   ),
// ),

                        ),
                  ]);
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
      ),
    );
  }
}
