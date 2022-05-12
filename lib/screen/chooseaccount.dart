import 'package:flutter/material.dart';

class AccountChosePage extends StatefulWidget {
  const AccountChosePage({ Key? key }) : super(key: key);

  @override
  State<AccountChosePage> createState() => _AccountChosePageState();
}

class _AccountChosePageState extends State<AccountChosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Choose account type'),
            const SizedBox(height:50),
            InkWell(
            //splashColor: Colors.blue,
            //highlightColor: Colors.brown,
            onTap: (){
              Navigator.pushNamed(context, '/register1');
            },
              child: Container(
              alignment: Alignment.center,
              width: 140,
              height: 150,
              child: const Image(image: AssetImage('assets/images/professional.jpg'),height: 110,width:140 ,),
              color: Colors.grey,


            ),
            
            ),
            SizedBox(height:20),
            Text('Professional'),
            const SizedBox(height:50),
            InkWell(child: Container(
              alignment: Alignment.center,
              width: 140,
              height: 150,
              child: const Image(image: AssetImage('assets/images/customer.jpg'),height: 110,width:140 ,),
              color: Colors.grey,


            ),
            onTap: (){},),
            SizedBox(height: 20,),
            Text('Seeker'),
          ],
        ),
      ))
    );
  }
}