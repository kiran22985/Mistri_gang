// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// class UserProfile extends StatefulWidget {
//   const UserProfile({Key? key}) : super(key: key);
//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }
// class _UserProfileState extends State<UserProfile> {
//   File? pickedImage;
//   void imagePickerOption() {
//     Get.bottomSheet(
//       SingleChildScrollView(
//         child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(10.0),
//             topRight: Radius.circular(10.0),
//           ),
//           child: Container(
//             color: Colors.white,
//             height: 250,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Text(
//                     "Pic Image From",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       pickImage(ImageSource.camera);
//                     },
//                     icon: const Icon(Icons.camera),
//                     label: const Text("CAMERA"),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       pickImage(ImageSource.gallery);
//                     },
//                     icon: const Icon(Icons.image),
//                     label: const Text("GALLERY"),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       Get.back();
//                     },
//                     icon: const Icon(Icons.close),
//                     label: const Text("CANCEL"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   pickImage(ImageSource imageType) async {
//     try {
//       final photo = await ImagePicker().pickImage(source: imageType);
//       if (photo == null) return;
//       final tempImage = File(photo.path);
//       setState(() {
//         pickedImage = tempImage;
//       });
//       Get.back();
//     } catch (error) {
//       debugPrint(error.toString());
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("profile"),
//       ),
//       body: Center(
//         child: SafeArea(
//             child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.indigo, width: 5),
//                         borderRadius: const BorderRadius.all(
//                           Radius.circular(100),
//                         ),
//                       ),
//                       child: ClipOval(
//                         child: pickedImage != null
//                             ? Image.file(
//                                 pickedImage!,
//                                 width: 170,
//                                 height: 170,
//                                 fit: BoxFit.cover,
//                               )
//                             : Image.asset(
//                                 'assets/images/profile.jpg',
//                                 width: 170,
//                                 height: 170,
//                                 fit: BoxFit.cover,
//                               ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 5,
//                       child: IconButton(
//                         onPressed: imagePickerOption,
//                         icon: const Icon(
//                           Icons.add_a_photo_outlined,
//                           color: Colors.blue,
//                           size: 30,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 "User Name",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 40,
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Material(
//                   //elevation: 5,
//                   child: TextFormField(
//                     onSaved: (value) {
//                       //username = value!;
//                     },
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.person, color: Colors.blue),
//                       labelText: 'Full Name',
//                       hintText: 'Enter fullname here',
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Color(0xfffb5607), width: 2.0),
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 40,
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Material(
//                   //elevation: 5,
//                   child: TextFormField(
//                     onSaved: (value) {
//                       //email = value!;
//                     },
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.email, color: Colors.blue),
//                       labelText: 'Email',
//                       hintText: 'Enter email here',
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Color(0xfffb5607), width: 2.0),
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 40,
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Material(
//                   //elevation: 5,
//                   child: TextFormField(
//                     onSaved: (value) {
//                       //phone = value!;
//                     },
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.phone, color: Colors.blue),
//                       labelText: 'Phone',
//                       hintText: 'Enter phone here',
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Color(0xfffb5607), width: 2.0),
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 40,
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Material(
//                   //elevation: 5,
//                   child: TextFormField(
//                     onSaved: (value) {
//                       //phone = value!;
//                     },
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.location_city, color: Colors.blue),
//                       labelText: 'Address',
//                       hintText: 'Enter address here',
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Color(0xfffb5607), width: 2.0),
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 50,
//                 padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
//                 child: Material(
//                   //elevation: 5,
//                   child: TextFormField(
//                     onSaved: (value) {
//                       //password = value!;
//                     },
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.lock, color: Colors.blue),
//                       labelText: 'Password',
//                       hintText: 'Enter password here',
//                       border: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Color(0xfffb5607), width: 2.0),
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 20),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   Navigator.pushNamed(context, '');
//                 },
//                 child: const Text('Edit Profile',
//                     style:
//                         TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//                 style: ElevatedButton.styleFrom(
//                   elevation: 10,
//                   primary: Colors.blue,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   minimumSize: const Size(150, 40),
//                 ),
//               ),
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }