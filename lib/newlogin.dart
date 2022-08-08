// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sared_loginpage/home.dart';
import 'package:sared_loginpage/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginnew extends StatefulWidget {
  const Loginnew({Key? key}) : super(key: key);

  @override
  State<Loginnew> createState() => _LoginnewState();
}

class _LoginnewState extends State<Loginnew> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  String name = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      name = UserSimplePreferences.getUserName() ?? '';
      password = UserSimplePreferences.getPassword() ?? '';
    });
    // name = UserSimplePreferences.getUserName() ?? '';
    // password = UserSimplePreferences.getPassword() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shared preferance'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                controller: emailController,
                // initialValue: '$name',
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid mail id '),
                onChanged: (name) {
                  setState(() {
                    this.name = emailController.text;
                  });
                }),
          ),
          //  buildPassword(),
          Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: pwdController,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your secure password'),
                onChanged: ((passwords) => setState(() {
                      password = pwdController.text;
                    })),
              )),
          
          
        

          Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                // onPressed: (){},
                onPressed: () async {
                  await UserSimplePreferences.setUsername(name);
                  await UserSimplePreferences.setPassword(password);
                  print("User name: ${name}");
                                    print("Password: ${password}");

                  var snackBar = SnackBar(
                    content: Text('please enter valid email 0r password'),
                    duration: Duration(seconds: 2),
                  );

                  name == ''  || password      == ''
                      ? ScaffoldMessenger.of(context).showSnackBar(snackBar)
                      : Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Home())));

                   
                    
                },
                child: Text('Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
