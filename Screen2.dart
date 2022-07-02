import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(children: [
                SizedBox(
                  height: 20,
                ),
                Text("Login",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 35,
                    ),
                    hintText: "Student Name",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    hintText: "Email ID",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    child: SizedBox(
                      width: 320,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Screen2();
                          }));
                        },
                        child: const Text("Login"),
                      ),
                    ),
                  ),
                )
              ]))),
    );
  }
}
