import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int section = 0;
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
                section == 0
                    ? mainprofile()
                    : SizedBox(
                        height: 0,
                      ),
                section == 1
                    ? profilesection()
                    : SizedBox(
                        height: 0,
                      ),
                section == 2
                    ? passwordsection()
                    : SizedBox(
                        height: 0,
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

  Widget mainprofile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Account',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              section = 1;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                        border: InputBorder.none, hintText: '   Edit Profile'),
                    validator: (value) => value.isEmpty ? 'Enter Name' : null,
                    onChanged: (value) => setState(() {}),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              section = 2;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
            ],
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
    );
  }

  Widget profilesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Basic Information',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'First Name',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '   First Name'),
              validator: (value) => value.isEmpty ? '     First Name' : null,
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
            'Last Name',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Last Name'),
              validator: (value) => value.isEmpty ? '     Last Name' : null,
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
            'Your Email',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Your Email'),
              validator: (value) => value.isEmpty ? '     Your Email' : null,
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
            'Your Email',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Your Email'),
              validator: (value) => value.isEmpty ? '     Your Email' : null,
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
            'Your Twitter',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Your Twitter'),
              validator: (value) => value.isEmpty ? '     Your Twitter' : null,
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
            'Your Facebook',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Your Facebook'),
              validator: (value) => value.isEmpty ? '     Your Facebook' : null,
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
            'Your LinkedIn',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Your LinkedIn'),
              validator: (value) => value.isEmpty ? '     Your LinkedIn' : null,
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
            'Your Biography',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Your Biography'),
              validator: (value) =>
                  value.isEmpty ? '     Your Biography' : null,
              onChanged: (value) => setState(() {}),
            ),
          ),
        ),
        SizedBox(
          height: 20,
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
                'Update',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget passwordsection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Change Password',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Current Password',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '   Current Password'),
              validator: (value) =>
                  value.isEmpty ? '     Current Password' : null,
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
            'New Password',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    New Password'),
              validator: (value) => value.isEmpty ? '     New Password' : null,
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
            'Re-Enter Password',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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
                  border: InputBorder.none, hintText: '    Re-Enter Password'),
              validator: (value) =>
                  value.isEmpty ? '     Re-Enter Password' : null,
              onChanged: (value) => setState(() {}),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 100),
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
                'Change Password',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
