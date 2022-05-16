import 'package:flutter/material.dart';
<<<<<<< HEAD
import './screen/register.dart';
=======
import 'package:mistri/screen/chooseaccount.dart';
import 'package:mistri/screen/login.dart';
import 'package:mistri/screen/otp1.dart';
import 'package:mistri/screen/otp2.dart';
import 'package:mistri/screen/register.dart';
import 'package:mistri/screen/welcome.dart';
>>>>>>> df39e1698dcfffca0b6792f3b450396e70900160

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: const RegisterPage(),
    );
  }
}
=======
      initialRoute: '/',
      routes:  {
          '/':(context) => const WelcomePage(),
          '/accountchoose':(context) => const AccountChosePage(),
          '/register1':(context) => const RegisterPage1(),
          '/otp1':(context) => const OTP1(),
          '/otp2':(context) => const OTP2(),  
          '/login':(context) => const LoginPage(),
      },
    );
  }
}


>>>>>>> df39e1698dcfffca0b6792f3b450396e70900160
