import 'package:flutter/material.dart';

class ProfessionalScreen extends StatefulWidget {
  const ProfessionalScreen({ Key? key }) : super(key: key);

  @override
  State<ProfessionalScreen> createState() => _ProfessionalScreenState();
}

class _ProfessionalScreenState extends State<ProfessionalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Text('professional page'),
      )),
      
    );
  }
}