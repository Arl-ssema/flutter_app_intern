import 'package:flutter/material.dart';
import 'package:flutter_application_1/form.dart';
// import 'package:flutter_application_1/form.dart';
// import 'package:flutter_application_1/text.dart';

void main() {
  runApp(const MaterialApp(home: Signin()));
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  // TextEditingController emailCtrl = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        // ),

        backgroundColor: Color.fromARGB(255, 236, 246, 248),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 90.0, 30.0, 0),
              child: Column(
                children: <Widget>[
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.shutterstock.com/image-vector/vector-car-parts-tire-isolated-600w-1962329059.jpg'),
                          radius: 40.0,
                        ),
                        Text(
                          'Fixer Upper',
                          style: TextStyle(
                            letterSpacing: 2.0,
                            fontSize: 30.0,
                            color: Colors.blueGrey,
                          ),
                        )
                      ]),
                  // const Divider(height: 10.0, color: Colors.black),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: const Text(
                            'Email:',
                            style: TextStyle(
                                color: Colors.black, letterSpacing: 2.0),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextField(
                            controller: textController,
                            // validator: (value) {
                            //   if(value == null || value.isEmpty){
                            //     return 'Please enter some text';
                            //   }
                            //   if(!value.contains('@')){
                            //     return 'This is not a valid email';
                            //   }
                            //   if(!value.contains('.com')){
                            //     return 'This is not a valid email';
                            //   }
                            // },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(height: 30.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Password:',
                            style: TextStyle(
                                color: Colors.black, letterSpacing: 2.0),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextField(
                            controller: pwdController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register(child: Column())),
                      );
                    },
                    child: Container(
                      color: Colors.blueAccent,
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Do not have an account?',
                          style: TextStyle(color: Colors.blue)),
                      TextButton(
                        onPressed: () { },
                        child: Container(
                          color: Colors.blueAccent,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
           
// title: Row ()Text(widget.title)
// onPressed: _incrementCounter,
// tooltip: 'Increment',
// Card(
//   backgroundColor: Colors.amber
// ),
// child: Column(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   crossAxisAlignment: CrossAxisAlignment.stretch,
//   
// ),