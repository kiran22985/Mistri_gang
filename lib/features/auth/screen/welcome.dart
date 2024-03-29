import 'package:flutter/material.dart';
import 'package:mistri/common/widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/';
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          //Image.asset(''),
          Positioned(
            left: 50,
            top: 150,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 30,
                      color: Colors.blue,
                      child: const Text('M',style: TextStyle(color: Colors.white),),
                    ),
                    const SizedBox(width: 30,),
                    const Text('Welcome To Mistri',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  width: 310,
                  child: const Text('The platform helps customers  book reliable and high quality services delivered by trained professionals conveniently at home ',textAlign: TextAlign.center,)),
                  const SizedBox(height: 40,),
                  Container(
                    width: 310,
                    child: const Text('Your On Demand Home Services Expert',textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ),
                  const SizedBox(height:25),
                  Row(
                    children: const [
                      Text('Affordable'),
                      SizedBox(width: 15,),
                      Text('Trusted'),
                      SizedBox(width: 15,),
                      Text('Quick')
                    ],
                  ),
                  const SizedBox(height: 50,),
                  CustomButton(text: 'Get Started', onTap: (){
                    Navigator.pushNamed(context, '/accountchoose');
                  })
              ],
            ),
          )
        ],
      )),
    );
  }
}