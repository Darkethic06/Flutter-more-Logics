// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageScreen extends StatefulWidget {
//   @override
//   _ImageScreenState createState() => _ImageScreenState();
// }

// class _ImageScreenState extends State<ImageScreen> {
//   File _image;

//   final imagePicker = ImagePicker();

//   Future getImage() async {
//     // final image = await imagePicker.getImage(source: ImageSource.camera);
//     setState(() {
//       _image = File(image.path);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child:
//               _image == null ? Text("No Image Selected") : Image.file(_image)),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           getImage();
//         },
//         backgroundColor: Colors.blue,
//         label: Icon(Icons.camera_alt),
//       ),
//     );
//   }
// }
