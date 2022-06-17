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
      body: SafeArea(child: Center(
        child: Text('Home page'),
      )),
      
    );
  }
}
