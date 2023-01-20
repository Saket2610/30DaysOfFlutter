import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_first/utils/routes.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  // build is a meathod
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        //the below widget is for device with different screen sizes
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login1.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
                child: Text("20 height mai yeh dikhaye ga ye text"),
              ),
              Text(
                "welcome",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      child: Text("Login button"),
                      // style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
