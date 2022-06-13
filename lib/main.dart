import 'package:flutter/material.dart';
import 'package:mistri/features/auth/screen/chooseaccount.dart';
import 'package:mistri/features/auth/screen/homepage.dart';
import 'package:mistri/features/auth/screen/login.dart';
import 'package:mistri/features/auth/screen/otp1.dart';
import 'package:mistri/features/auth/screen/otp2.dart';
import 'package:mistri/features/auth/screen/proregpage1.dart';
import 'package:mistri/features/auth/screen/proregpage2.dart';
import 'package:mistri/features/auth/screen/proregpage4.dart';
import 'package:mistri/features/auth/screen/register.dart';
import 'package:mistri/features/auth/screen/resetpass1.dart';
import 'package:mistri/features/auth/screen/resetpass2.dart';
import 'package:mistri/features/auth/screen/resetpass3.dart';
import 'package:mistri/features/auth/screen/verified.dart';
import 'package:mistri/features/auth/screen/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes:  {
          '/':(context) => const WelcomePage(),
          '/home':(context) => const HomePage(),
          '/accountchoose':(context) => const AccountChosePage(),
          '/register1':(context) => const RegisterPage1(),
          '/otp1':(context) => const OTP1(),
          '/otp2':(context) => const OTP2(),  
          '/login':(context) => const LoginPage(),
          '/verified':(context) => const VerifiedPage(),
          '/reset1':(context) => const ResetPage1(),
          '/reset2':(context) => const ResetPage2(),
          '/reset3':(context) => const ResetPage3(),
          '/proreg1':(context) => const ProRegPage1(),
          '/proreg2':(context) => const ProRegPage2(),
          '/proreg4':(context) => const ProRegPage4(),
      },
    );
  }
}


