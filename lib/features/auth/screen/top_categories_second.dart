// import 'package:mistri/constants/global_variables.dart';
// //import 'package:mistri/features/auth/screen/category_deals_screen.dart';
// import 'package:flutter/material.dart';

// class TopCategories2 extends StatelessWidget {
//   const TopCategories2({Key? key}) : super(key: key);

//   void navigateToCategoryPage(BuildContext context, String category) {
//   //   Navigator.pushNamed(context, CategoryDealsScreen.routeName,
//   //       arguments: category);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
      
//       elevation: 50,
//       child: Container(
//         //padding: EdgeInsets.all(20),
//         //color:Colors.red,
//         height: 60,
//         child: ListView.builder(
//           itemCount: GlobalVariables.categoryImages2.length,
//           scrollDirection: Axis.horizontal,
//           itemExtent: 110,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () => navigateToCategoryPage(
//                 context,
//                 GlobalVariables.categoryImages[index]['title']!,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
                  
//                   InkWell(
//                     onTap: (){},
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(50),
//                         child: Image.asset(
//                           GlobalVariables.categoryImages2[index]['image']!,
//                           fit: BoxFit.cover,
//                           height: 40,
//                           width: 40,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     GlobalVariables.categoryImages2[index]['title']!,
//                     style: const TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),

//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }