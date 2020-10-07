import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Account',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Profile',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1 - 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '   Edit Profile'),
                      validator: (value) => value.isEmpty ? 'Enter Name' : null,
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Password',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1 - 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '   Change Password'),
                      validator: (value) => value.isEmpty ? 'Enter Name' : null,
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: OutlineButton(
                    onPressed: () async {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    highlightElevation: 0,
                    borderSide: BorderSide(color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: 70,
                left: MediaQuery.of(context).size.width / 2 - 145,
                child: Material(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(),
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Image.asset('assets/images/2.png'),
                  ),
                )),
            Positioned(
              top: 145,
              left: MediaQuery.of(context).size.width / 2 + 130,
              child: FadeIn(
                child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.camera,
                    ),
                    onPressed: () async {}),
              ),
            ),
            Positioned(
                top: 80,
                left: MediaQuery.of(context).size.width / 2 - 55,
                child: Material(
                  elevation: 8.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 60.0,
                  ),
                )),
            Positioned(
              top: 160,
              left: MediaQuery.of(context).size.width / 2 + 25,
              child: FadeIn(
                child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.camera,
                    ),
                    onPressed: () async {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
