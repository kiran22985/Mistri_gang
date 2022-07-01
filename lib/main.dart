import 'package:flutter/material.dart';
import 'package:mistri/features/auth/screen/admin_screen.dart';
import 'package:mistri/features/auth/screen/welcome.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:mistri/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
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
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
       home: Provider.of<UserProvider>(context).user.type == 'user'
              ? const AdminScreen()
              : const WelcomePage()
              
          
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const WelcomePage(),
      //   '/home': (context) => const HomePage(),
      //   '/accountchoose': (context) => const AccountChosePage(),
      //   '/register1': (context) => const RegisterPage1(),
      //   '/otp1': (context) => const OTP1(),
      //   '/otp2': (context) => const OTP2(),
      //   '/login': (context) => const LoginPage(),
      //   '/verified': (context) => const VerifiedPage(),
      //   '/reset1': (context) => const ResetPage1(),
      //   '/reset2': (context) => const ResetPage2(),
      //   '/reset3': (context) => const ResetPage3(),
      //   '/proreg1': (context) => const ProRegPage1(),
      //   '/proreg2': (context) => const ProRegPage2(),
      //   '/proreg3':(context)=>const ProRegPage3(),
      //   '/proreg4': (context) => const ProRegPage4(),
      //   '/bottombar':(context)=>const BottonBar(),
      //   '/about':(context)=>const About(),
      //   '/servicepage1':(context)=>SErvicePage1(),
      //   '/viewservice1':(context)=>const ViewService1(),
      //   '/viewservice2':(context)=>const ViewService2(),
      //   '/viewservice3':(context)=>const ViewService3(),
      //   '/admin':(context)=>const AdminScreen(),


      // },
    );
  }
}
