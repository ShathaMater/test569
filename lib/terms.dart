import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
              SizedBox(
                height: 10,
              ),
              Text('Terms & Conditions ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. '
                  'It has roots in a piece of classical Latin literature from'
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece '
                  'of classical Latin literature fromContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece'
                  ' of classical Latin literature from'
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece '
                  'of classical Latin literature fromContrary to popular belief,'
                  ' Lorem Ipsum is not simply random text. It has roots in a piece of '
                  'classical Latin literature from Contrary to popular belief, Lorem Ipsum is not simply random text.'
                  ' It has roots in a piece of classical Latin literature from'
                  'Contrary to popular belief, Lorem Ipsum is not simply random text.'
                  ' It has roots in a piece of classical Latin literature from'
                  'Contrary to popular belief, Lorem Ipsum is not simply random text.'
                  ' It has roots in a piece of classical Latin literature from' 'of classical Latin literature fromContrary to popular belief,'
                  ' Lorem Ipsum is not simply random text. It has roots in a piece of '
                  'classical Latin literature from Contrary to popular belief, Lorem Ipsum is not simply random text.'
                  ' It has roots in a piece of classical Latin literature from'
                  'Contrary to popular belief, Lorem Ipsum is not simply random text.'
                  ' It has roots in a piece of classical Latin literature from'
                  'Contrary to popular belief, Lorem Ipsum is not simply random text.'
                  ' It has roots in a piece of classical Latin literature from'
                      ,
              style: TextStyle(fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }
}
