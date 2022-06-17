import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/bottom_bar.dart';
import 'package:mistri/features/auth/screen/drawerpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //backgroundColor: Color(0xff2A2829),
      //     centerTitle: true,
      //     titleSpacing: 0,
      //     title: Container(
      //       padding: EdgeInsets.only(left: 30),
      //       width: 350,
      //       height: 40,
      //       decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(20)),
      //       child: Center(
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //               //prefixIcon: Icon(Icons.search),
      //               suffixIcon: IconButton(
      //                 icon: Icon(Icons.search),
      //                 onPressed: () {},
      //               ),
      //               hintText: 'Search...',
      //               border: InputBorder.none),
      //         ),
      //       ),
      //     )
      // ),
      bottomNavigationBar:BottonBar(),
      drawer: const MyDrawer() ,
      
      
    );
  }
}
