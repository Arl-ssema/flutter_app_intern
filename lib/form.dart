import 'package:flutter/material.dart';
// import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/success.dart';

class Register extends StatefulWidget {
  const Register({super.key, required Column child});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController telController = TextEditingController();
  TextEditingController textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Car';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 40.0),
          child: Form(
            // color: Color.fromARGB(255, 241, 179, 200),
            key: _formKey,
            child: Column(
            children: <Widget>[
              // Add TextFormFields and ElevatedButton here.
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Name:',
                      style: TextStyle(
                          color: Colors.black, letterSpacing: 2.0),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: textController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Enter a search term',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        )
                      ),
                    ),
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Telephone number:',
                          style: TextStyle(
                              color: Colors.black, letterSpacing: 2.0),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: textController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              ),
                            )),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Email Address:',
                          style: TextStyle(
                              color: Colors.black, letterSpacing: 2.0),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: textController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Specify:',
                          style: TextStyle(
                              color: Colors.black, letterSpacing: 2.0),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                              controller: textController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              )),
                        ),
                      ]),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => success()),
                      );
                    },
                    child: Container(
                      color: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 10),
                      child: const Text(
                        'submit',
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}

// validator: (value) {
//   if (value == null || value.isEmpty) {
//     return 'Please enter some text';
//   }
//   if (!value.contains('@')) {
//     return 'This is not a valid email';
//   }
//   if (!value.contains('.com')) {
//     return 'This is not a valid email';
//   }
//   return null;
// },

// Row(
//   children: <Widget> [
//     Text('Order:'),
//     DropdownButton<String>(
//       value: dropdownValue,
//       items: <String>['Car', 'Spare parts', 'Other']
//       .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(
//             value,
//             style: TextStyle(fontSize: 20),
//         ),);
//       }) .toList(),
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//     ),
//   ]
  
// ),