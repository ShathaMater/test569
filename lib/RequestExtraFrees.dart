import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DrawerUi.dart';

class RequestExtraFrees extends StatefulWidget {
  const RequestExtraFrees({Key? key}) : super(key: key);

  @override
  State<RequestExtraFrees> createState() => _RequestExtraFreesState();
}

class _RequestExtraFreesState extends State<RequestExtraFrees> {
  var width, size, height;
  final bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
              onChanged: (value) {
                print(value);
              },
              // هنا لو بدي اعرف كل عملية كتابة
              style: TextStyle(),
              //فيني العب بالنص الي انا بكتبو كمستخدم
              maxLines: 3,
              minLines: 1,
              // هنا حددت انو اسمحلي بثلاث سطور بعدين خليليلي اياه سكرول بعد الثالث يعني
              maxLength: 45,
              // هنا بحدد عدد الحروف المسموح فيها وبدلع بالاخر عداد لو بدي اخفي
              // buildCounter:(context,{required int currentLenght, required bool isFocused , maxLenght)
              // return null;}
              decoration: InputDecoration(
                contentPadding: EdgeInsetsDirectional.zero,
                constraints: BoxConstraints(
                    minHeight: 10,
                    maxHeight: 50 //هنا افضل طريقة لتحدبد حجم الطول   الfield
                    ),
                counterText: '',
                //هي طريقة تانية لاخفاء الاشي الي بظهر تحت لل counter
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38, width: 1.5),
                ),
                disabledBorder: OutlineInputBorder(
                    // هنا ي حلوة بدل ما اغلب حالي واطو بكونتير لا بساخدم هذول الخاصيات الي في وبعمل لكل حالة الديزاين الي بدي اياه
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
                    return Column(children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white,
                      ),
                      Positioned(
                          child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              width: double.infinity,
                              height: 500,
                              margin: EdgeInsets.only(top: 100),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Stack(
                                  children: [
                                    Text(
                                      'WHY YOU REQUESTED EXTRA FEES ?',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: width / 3,
                                              height: height / 5,
                                              margin: EdgeInsets.only(
                                                  left: 2, top: 30),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: width / 4,
                                                    height: height / 6,
                                                    child: Image.asset(
                                                      'images/img.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    '  Stairs',
                                                    textAlign: TextAlign.end,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: width / 4,
                                              height: height / 5,
                                              margin: EdgeInsets.only(
                                                  left: 2, top: 30),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: width / 4,
                                                    height: 95,
                                                    child: Image.asset(
                                                      'images/img.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    '  Stairs',
                                                    textAlign: TextAlign.end,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: width / 4,
                                              height: height / 5,
                                              margin: EdgeInsets.only(
                                                  left: 2, top: 30),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: width / 4,
                                                    height: 95,
                                                    child: Image.asset(
                                                      'images/img.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    '  Stairs',
                                                    textAlign: TextAlign.end,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
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
        )

        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Container(
        //     width: double.infinity,
        //     height: 500,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //           image: NetworkImage(
        //               'https://www.google.com/maps/d/viewer?msa=0&ll=32.'
        //               '46476605151161%2C35.301572000000014&spn=0.006092%2C0.011362&dg=feature&mid=1kt15vu8n6BK9DXzJux8kGCaUe0Y&z=16'),
        //         ),
        //         border: Border.all(color: Colors.white54),
        //         color: Colors.white,
        //         borderRadius: BorderRadius.only(
        //             topRight: Radius.circular(30),
        //             topLeft: Radius.circular(30))),
        //   ),
        // )
        );
  }
}
//
// Stack(
// // overflow: Overflow.visible,
// children: [
// Container(
// width: double.infinity,
// height: double.infinity,
// color: Colors.white,
// ),
// Positioned(
// //  top: 100,
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 16.0),
// child: Container(
// width: double.infinity,
// height: 500,
// margin: EdgeInsets.only(top: 100),
// decoration: BoxDecoration(
// border: Border.all(color: Colors.grey),
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(30),
// topRight: Radius.circular(30),
// ),
// ),
// child: Padding(
// padding: const EdgeInsets.all(16.0),
// child: Stack(
// children: [
// Text(
// 'WHY YOU REQUESTED EXTRA FEES ?',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 18,
// ),
// textAlign: TextAlign.start,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// InkWell(
// onTap: () {},
// child: Padding(
// padding: const EdgeInsets.all(5.0),
// child: Container(
// width: width / 3,
// height: height / 5,
// margin: EdgeInsets.only(left: 2, top: 30),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(color: Colors.grey)),
// child: Column(
// children: [
// Container(
// padding: EdgeInsets.all(10),
// width: width / 4,
// height: height / 6,
// child: Image.asset(
// 'images/img.png',
// fit: BoxFit.cover,
// ),
// ),
// Text(
// '  Stairs',
// textAlign: TextAlign.end,
// )
// ],
// ),
// ),
// ),
// ),
// InkWell(
// onTap: () {},
// child: Padding(
// padding: const EdgeInsets.all(5.0),
// child: Container(
// width: width / 4,
// height: height / 5,
// margin: EdgeInsets.only(left: 2, top: 30),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(color: Colors.grey)),
// child: Column(
// children: [
// Container(
// padding: EdgeInsets.all(10),
// width: width / 4,
// height: 95,
// child: Image.asset(
// 'images/img.png',
// fit: BoxFit.cover,
// ),
// ),
// Text(
// '  Stairs',
// textAlign: TextAlign.end,
// )
// ],
// ),
// ),
// ),
// ),
// InkWell(
// onTap: () {},
// child: Padding(
// padding: const EdgeInsets.all(5.0),
// child: Container(
// width: width / 4,
// height: height / 5,
// margin: EdgeInsets.only(left: 2, top: 30),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(color: Colors.grey)),
// child: Column(
// children: [
// Container(
// padding: EdgeInsets.all(10),
// width: width / 4,
// height: 95,
// child: Image.asset(
// 'images/img.png',
// fit: BoxFit.cover,
// ),
// ),
// Text(
// '  Stairs',
// textAlign: TextAlign.end,
// )
// ],
// ),
// ),
// ),
// ),
// ],
// ),
// SizedBox(
// height: 20,
// ),
// ],
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
