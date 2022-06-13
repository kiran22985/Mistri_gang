import 'package:flutter/material.dart';
import 'package:mistri/screen/drawerpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xff2A2829),
          centerTitle: true,
          titleSpacing: 0,
          title: Container(
            padding: EdgeInsets.only(left: 30),
            width: 350,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items:const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label:'Booking'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.format_paint_rounded),
            label:'Professionals'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile'
            ),

      ]),
      drawer: const MyDrawer() ,
      
      
    );
  }
}
