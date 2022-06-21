import 'package:flutter/material.dart';

class ProRegPage3 extends StatefulWidget {
  const ProRegPage3({Key? key}) : super(key: key);

  @override
  State<ProRegPage3> createState() => _ProRegPage3State();
}

class _ProRegPage3State extends State<ProRegPage3> {
  // Initial Selected Value
  String selectedValue1 = "Select profession";
  String selectedValue2 = "Select service time";
  String selectedValue3 = "Select service charge";
  List<DropdownMenuItem<String>> get dropdownItems1 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Select profession"), value: "Select profession"),
      DropdownMenuItem(child: Text("plumber"), value: "plumber"),
      DropdownMenuItem(child: Text("carpenter"), value: "carpenter"),
      DropdownMenuItem(child: Text("electrician"), value: "electrician"),
      DropdownMenuItem(child: Text("Beautician"), value: "Beautician"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Select service time"), value: "Select service time"),
      DropdownMenuItem(child: Text("10Am"), value: "10Am"),
      DropdownMenuItem(child: Text("11Am"), value: "11Am"),
      DropdownMenuItem(child: Text("12Pm"), value: "12Pm"),
      //DropdownMenuItem(child: Text("1Pm"), value: "12Pm"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems3 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Select service charge"), value: "Select service charge"),
      DropdownMenuItem(child: Text("200"), value: "200"),
      DropdownMenuItem(child: Text("400"), value: "400"),
      DropdownMenuItem(child: Text("400"), value: "400"),
      DropdownMenuItem(child: Text("500"), value: "500"),
    ];
    return menuItems;
  }

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
                    )
                  ]),
                  const SizedBox(height: 20),
                  const Text(
                    'Creat An Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      'Select your profession and provide your verified certificate to register',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    margin: const EdgeInsets.only(left: 60, right: 20),
                    padding: const EdgeInsets.only(left:60),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton(
                      //style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                        value: selectedValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue1 = newValue!;
                          });
                        },
                        items: dropdownItems1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    margin: const EdgeInsets.only(left: 60, right: 20),
                    padding: const EdgeInsets.only(left: 60,),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton(
                         //style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                        value: selectedValue2,
                        //dropdownColor: Colors.green,
                        //icon: const Icon(Icons.flag),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue2 = newValue!;
                          });
                        },
                        items: dropdownItems2),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    margin: const EdgeInsets.only(left: 60, right: 20),
                    padding: const EdgeInsets.only(left: 60,),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton(
                      //style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                        value: selectedValue3,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue3 = newValue!;
                          });
                        },
                        items: dropdownItems3),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Material(
                      //elevation: 5,
                      child: TextFormField(
                        onSaved: (value) {
                          //email = value!;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(Icons.details, color: Colors.blue),
                          labelText: 'Description',
                          hintText: 'Description here',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfffb5607), width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.pushNamed(context, '');
                    },
                    child: const Text('upload document >',
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
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.pushNamed(context, '/proreg4');
                    },
                    child: const Text('Submit',
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
                ],
              ),
            ),
          ),
        ))));
  }
}
