import 'package:flutter/material.dart';
import 'package:sared_loginpage/newlogin.dart';
import 'package:sared_loginpage/shared_preference.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Loginnew());
    //MyHomePage(name: 'name')
    // SharedPreferenceImage()
    // LoginPage(),
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SafeArea(
          child: ListView(children: [
            TextFormField(
              initialValue: name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'yourname'),
              onChanged: (name) => setState(
                () => this.name = name,
              ),
            )
          ]),
        ));
  }
}
