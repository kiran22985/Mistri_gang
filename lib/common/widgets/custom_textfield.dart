import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller1;
  //final VoidCallback onSave;
  const CustomeTextField(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.controller1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Material(
        //elevation: 5,
        child: TextFormField(
          keyboardType: TextInputType.text,
          controller: controller1,
          decoration: InputDecoration(
            icon: const Icon(Icons.person, color: Colors.blue),
            labelText: labelText,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xfffb5607), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return '$hintText';
            }
            return null;
          },
        ),
      ),
    );
  }
}
