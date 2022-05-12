import 'package:flutter/material.dart';

class OTP1 extends StatefulWidget {
  const OTP1({ Key? key }) : super(key: key);

  @override
  State<OTP1> createState() => _OTP1State();
}

class _OTP1State extends State<OTP1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children:const  [
          Image(image: AssetImage('assets/images/')),
          SizedBox(height: 30,),
          Text('OTP Verification',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),)
        ],
      )),
      
    );
  }
}