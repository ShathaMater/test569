import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Text('Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/aoo.png'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 154,
                height: 117,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Distance',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '160 Km',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 154,
                height: 117,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade100),
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Missions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '22',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
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
          SizedBox(
            height: 15,
          ),
          ListTile(
              leading: const Icon(Icons.face_outlined, color: Colors.black),
              title: const Text(
                "Driver Name ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                'Benjamin Garrett',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              onTap: () {}),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
              leading: const Icon(Icons.phone, color: Colors.black),
              title: const Text(
                "Phone Number ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                '+1  XXX XXX XXX',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              onTap: () {}),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'LOGOUT',
              style: TextStyle(color: Colors.blueAccent.shade400),
            ),
            style:
            ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                primary: Colors.white,


            ),
          )
        ]),
      ),
    ));
  }
}
