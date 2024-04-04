// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 58, 60),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to register page",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: username,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: password,
                      hintStyle: TextStyle(color: Colors.amber),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10))),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      username = usernamecontroller.text;
                      password = passwordcontroller.text;
                      print(usernamecontroller.text);
                      print(passwordcontroller.text);
                      setState(() {});
                    },
                    child: Text("register")),
                Text(
                  username,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  password,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
