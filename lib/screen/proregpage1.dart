import 'package:flutter/material.dart';

class ProRegPage1 extends StatefulWidget {
  const ProRegPage1({ Key? key }) : super(key: key);

  @override
  State<ProRegPage1> createState() => _ProRegPage1State();
}

class _ProRegPage1State extends State<ProRegPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SafeArea(
          child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Creat An Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Select your city',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/flag.png',
                        height: 50,
                        width: 50,
                      ),
                      const Text(
                        'Nepal    ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(children: [
                      InkWell(
                        child: const Text(
                          '>  Kathmandu',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/profreg2');
                        },
                      ),
                      InkWell(
                        child: const Text(
                          '>  Bhaktapur',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/profreg2');
                        },
                      ),
                      InkWell(
                        child: const Text(
                          '>  Lalitpur',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/profreg2');
                        },
                      ),
                      InkWell(
                        child: const Text(
                          '>  Dhulikhel',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/profreg2');
                        },
                      ),
                    ]),
                  ),
                ],
              )),
        )));
  }
}