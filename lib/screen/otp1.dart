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
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:  [
              const Image(image: AssetImage('assets/images/otp.png'),width: 350,height: 230,),
              const SizedBox(height: 30,),
              const Text('OTP Verification',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              const SizedBox(height: 20,),
              const Text('We will send you 4 digits OTP code on this email ',textAlign: TextAlign.center,),
              //const SizedBox(height: 20,),
              Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: Material(
                  elevation: 10.0,
                  shadowColor: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress, 
                    decoration: InputDecoration(
                      hintText: 'anushkagiri2298@gmail.com',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                        
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/otp2');
                  },
                  
                   child: const Text('Get OTP',textScaleFactor: 1.2,),style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size(150,40),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    
                  ),
                  )
            ],
          ),
        ),
      )),
      
    );
  }
}