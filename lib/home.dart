import 'package:flutter/material.dart';
import 'package:sared_loginpage/shared_preference.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? mail = UserSimplePreferences.getUserName();
  String? pwd = UserSimplePreferences.getPassword();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("$mail"),
          ),
          Container(
            child: Text('$pwd'),
          )
        ],
      ),
    );
  }
}
