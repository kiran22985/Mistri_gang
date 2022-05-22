// import 'package:flutter/material.dart';

// class ProRegPage3 extends StatefulWidget {
//   const ProRegPage3({ Key? key }) : super(key: key);

//   @override
//   State<ProRegPage3> createState() => _ProRegPage3State();
// }

// class _ProRegPage3State extends State<ProRegPage3> {
//   List<DropdownMenuItem<String>> get dropdownItems {
//     List<DropdownMenuItem<String>> menuItems = const [
//       DropdownMenuItem(
//         child: Text('prof1'),
//         value: 'prof1',
//       ),
//       DropdownMenuItem(
//         child: Text('prof2'),
//         value: 'prof2',
//       ),
//       DropdownMenuItem(
//         child: Text('prof3'),
//         value: 'prof3',
//       )
//     ];
//     return menuItems;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//             child: SafeArea(
//                 child: SingleChildScrollView(
//           child: Form(
//             //key:registerform,
//             child: Container(
//               margin: const EdgeInsets.only(top: 40),
//               child: Column(
//                 children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                     Container(
//                       alignment: Alignment.center,
//                       width: 30,
//                       height: 30,
//                       color: Colors.blue,
//                       child: const Text(
//                         'M',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     const Text(
//                       'Welcome To Mistri',
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     )
//                   ]),
//                   const SizedBox(height: 20),
//                   const Text(
//                     'Creat An Account',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const SizedBox(
//                     width: 350,
//                     child: Text(
//                       'Select your profession and provide your verified certificate to register',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     height: 40,
//                     margin: const EdgeInsets.only(left: 60, right: 20),
//                     padding: const EdgeInsets.only(left: 16, right: 16),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 1),
//                         borderRadius: BorderRadius.circular(5)),
//                     child: DropdownButtonFormField(
//                         icon: const Icon(Icons.arrow_drop_down),
//                         iconSize: 32,
//                         style:
//                             const TextStyle(fontSize: 18, color: Colors.black),
//                         decoration: const InputDecoration.collapsed(
//                             hintText: 'Select Profession'),
//                         value: selectedValue,
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedValue = newValue!;
//                           });
//                         },
//                         items: dropdownItems),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: 40,
//                     margin: const EdgeInsets.only(left: 60, right: 20),
//                     padding: const EdgeInsets.only(left: 16, right: 16),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 1),
//                         borderRadius: BorderRadius.circular(5)),
//                     child: DropdownButtonFormField(
//                         icon: const Icon(Icons.arrow_drop_down),
//                         iconSize: 32,
//                         style:
//                             const TextStyle(fontSize: 18, color: Colors.black),
//                         decoration: const InputDecoration.collapsed(
//                             hintText: 'Select Profession'),
//                         value: selectedValue,
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedValue = newValue!;
//                           });
//                         },
//                         items: dropdownItems),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     height: 40,
//                     margin: const EdgeInsets.only(left: 60, right: 20),
//                     padding: const EdgeInsets.only(left: 16, right: 16),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 1),
//                         borderRadius: BorderRadius.circular(5)),
//                     child: DropdownButtonFormField(
//                         icon: const Icon(Icons.arrow_drop_down),
//                         iconSize: 32,
//                         style:
//                             const TextStyle(fontSize: 18, color: Colors.black),
//                         decoration: const InputDecoration.collapsed(
//                             hintText: 'Select Profession'),
//                         value: selectedValue,
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedValue = newValue!;
//                           });
//                         },
//                         items: dropdownItems),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     height: 80,
//                     padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                     child: Material(
//                       //elevation: 5,
//                       child: TextFormField(
//                         onSaved: (value) {
//                           //email = value!;
//                         },
//                         decoration: InputDecoration(
//                           icon: const Icon(Icons.details, color: Colors.blue),
//                           labelText: 'Description',
//                           hintText: 'Description here',
//                           border: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                                 color: Color(0xfffb5607), width: 2.0),
//                             borderRadius: BorderRadius.circular(5.0),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () async {
//                       Navigator.pushNamed(context, '');
//                     },
//                     child: const Text('upload document >',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                     style: ElevatedButton.styleFrom(
//                       elevation: 10,
//                       primary: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20)),
//                       minimumSize: const Size(150, 40),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () async {
//                       Navigator.pushNamed(context, '/profreg4');
//                     },
//                     child: const Text('Submit',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                     style: ElevatedButton.styleFrom(
//                       elevation: 10,
//                       primary: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20)),
//                       minimumSize: const Size(150, 40),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ))));
//   }
// }