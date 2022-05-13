import 'package:flutter/material.dart';

class RegisterPage1 extends StatefulWidget {
  const RegisterPage1({Key? key}) : super(key: key);

  @override
  State<RegisterPage1> createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SafeArea(
                child: SingleChildScrollView(
          child: Form(
            //key:registerform,
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                        child: const Text(
                          'M',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Welcome To Mistri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Creat An Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: const Text(
                      'Sign up with your own active email and new password or login into your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Material(
                      elevation: 5,
                      child: TextFormField(
                        onSaved: (value) {
                          //username = value!;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person, color: Colors.blue),
                          labelText: 'Full Name',
                          hintText: 'Enter fullname here',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfffb5607), width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Material(
                      elevation: 5,
                      child: TextFormField(
                        onSaved: (value) {
                          //email = value!;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(Icons.email, color: Colors.blue),
                          labelText: 'Email',
                          hintText: 'Enter email here',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfffb5607), width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Material(
                      elevation: 5,
                      child: TextFormField(
                        onSaved: (value) {
                          //phone = value!;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(Icons.phone, color: Colors.blue),
                          labelText: 'Phone',
                          hintText: 'Enter phone here',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfffb5607), width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Material(
                      elevation: 5,
                      child: TextFormField(
                        onSaved: (value) {
                          //phone = value!;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(Icons.location_city,
                              color: Colors.blue),
                          labelText: 'Address',
                          hintText: 'Enter address here',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfffb5607), width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Material(
                      elevation: 5,
                      child: TextFormField(
                        onSaved: (value) {
                          //password = value!;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.lock, color: Colors.blue),
                          labelText: 'Password',
                          hintText: 'Enter password here',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfffb5607), width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.pushNamed(context, '/otp1');
                    },
                    child: const Text('SignUp',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: const Size(150, 40),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Already have an account?',
                        style: TextStyle(fontSize: 15)),
                    TextButton(
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ))
                  ])
                ],
              ),
            ),
          ),
        ))));
  }
}
