// // // import 'dart:io';

// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/services.dart';

// // // import 'package:image_picker/image_picker.dart';


// import 'package:shared_preferences/shared_preferences.dart';

// class UserSimpleprefrences {
//   static SharedPreferences? _preferences;
//   static const _keyUsername = 'usarname';

//   static const _keyPassword = 'password';
//   static Future init() async =>
//       _preferences = await SharedPreferences.getInstance();

//   static Future setUsername(String name) async =>
//       await _preferences!.setString(_keyUsername, name);
//   static String? getUserName() => _preferences!.getString(_keyUsername);

//   static Future setPassword(String password) async =>
//       await _preferences!.setString(_keyPassword, password);
//   static String? getPassword() => _preferences!.getString(_keyPassword);
// }


// // // class SharedPreferenceImage extends StatefulWidget {
// // //   const SharedPreferenceImage({Key? key}) : super(key: key);

// // //   @override
// // //   State<SharedPreferenceImage> createState() => _SharedPreferenceImageState();
// // // }

// // // class _SharedPreferenceImageState extends State<SharedPreferenceImage> {
// // //   Future<File>? imageFile;
// // //   Future pickImageFromGallery(ImageSource source) async {
// // //     imageFile = (await ImagePicker().pickImage(source: source)) as Future<File>;
// // //   }

// // //   Widget imagefromGallery() {
// // //     return FutureBuilder<File>(
// // //         future: imageFile,
// // //         builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.done) {
// // //             if (null == snapshot.data) {
// // //               return Text('error');
// // //             }
// // //             return Image.file(snapshot.data);
// // //           }
// // //         });
// // //   }

// // //   /*Future pickImageFromGallery(ImageSource source) async {
// // //     try {
// // //       final image = await ImagePicker().pickImage(source: source);
// // //       if (image == null) return;

// // //       final temporaryImage = File(image.path);
// // //       setState(() {
// // //         this.image = temporaryImage;
// // //       });
// // //     } on PlatformException catch (e) {
// // //       print("Unable to Pick image $e");
// // //     }
// // //   }
// // // */
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Image From gallery'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           imageFile != null
// // //               ? Image.file(
// // //                   image,
// // //                   width: 180,
// // //                   height: 180,
// // //                   fit: BoxFit.cover,
// // //                 )
// // //               : FlutterLogo(
// // //                   size: 200,
// // //                 ),
// // //           Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: ElevatedButton(
// // //                 onPressed: () {
// // //                   pickImage(ImageSource.gallery);
// // //                 },
// // //                 child: Text('imagefrom gallery')),
// // //           ),
// // //           GestureDetector(
// // //               onTap: () {},
// // //               child: Container(
// // //                 height: MediaQuery.of(context).size.height / 5,
// // //                 width: MediaQuery.of(context).size.width / 2,

// // //                 //  child: Image(image: AssetImage('assets/child.webp')),
// // //               )),
// // //           ElevatedButton(
// // //               onPressed: () {
// // //                 pickImage(ImageSource.camera);
// // //               },
// // //               child: Text('Image from camera'))
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }


import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
   static SharedPreferences? _preferences;
  static const _keyUsername = 'usarname';

  static const _keyPassword = 'password';
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUsername(String name) async =>
      await _preferences!.setString(_keyUsername, name);
  static String? getUserName() => _preferences!.getString(_keyUsername);

  static Future setPassword(String password) async =>
      await _preferences!.setString(_keyPassword, password);
  static String? getPassword() => _preferences!.getString(_keyPassword);

}

