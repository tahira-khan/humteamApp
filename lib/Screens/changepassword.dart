import 'package:humteampro/Screens/myhome.dart';
import 'package:humteampro/Widgets/customTextField.dart';
import 'package:humteampro/constraints/const.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController previouspass = TextEditingController();
  TextEditingController newpass = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5DBDF),
      appBar: AppBar(
        flexibleSpace: Container(decoration: kBoxDecorationgradient),
        title: KAppbarimage,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 10.0, bottom: 5.0, right: 15.0),
            child: Center(
              child: Container(
                  height: 150.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange, Colors.red],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image(
                    image: AssetImage('images/Logo_humteam_white.png'),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 5.0, bottom: 25.0),
            child: Center(
              child: Text(
                'Reset Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                CustomTextField(
                  controller: previouspass,
                  data: Icons.lock,
                  isObsecure: true,
                  hintText: 'Enter your previous password',
                ),
                CustomTextField(
                  controller: newpass,
                  data: Icons.lock_clock,
                  isObsecure: true,
                  hintText: 'Enter your new password',
                ),
                CustomTextField(
                  controller: confirmpass,
                  data: Icons.lock_open_rounded,
                  isObsecure: true,
                  hintText: 'Enter your confirm password',
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                        builder: (_) => MyHome(),
                      );
                      Navigator.push(context, route);
                    },
                    child: Text(
                      'Reset Password',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
