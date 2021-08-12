import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController controller;

  Widget get emailtextfield => TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: 'Write your Email Address',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      );

  Widget get passwordtextField => TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          hintText: 'password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      );

  Widget get phoneTextField => TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.call),
          hintText: 'Write your Phone Number',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      );

  Widget title(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 50.0,
              child: Image.asset('assets/images/Telegram-2.png'),
            ),
            title("Set new Photo or Video"),
            title("get new Photo or Video"),
            SizedBox(height: 10),
            emailtextfield,
            SizedBox(height: 10),
            phoneTextField,
            SizedBox(height: 10),
            passwordtextField,
          ],
        ),
      ),
    );
  }
}
