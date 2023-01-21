import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_first/utils/routes.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// underscore matlab '_' ki uss naam ko private karna
class _login_pageState extends State<login_page> {
  String name = "";
  bool changeButton = false;
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
                "welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          //yeh function build ko dubara call karta hai
                        });
                      },
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

                    InkWell(
                      onTap: () async {
                        // Navigator.pushNamed(context, MyRoutes.HomeRoute);
                        setState(() {
                          changeButton = true;
                        });
                        //await async main kaam karta hai
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 100,
                        height: 50,
                        // color: Colors.deepPurple,
                        //color ek hi jahah ho sakta hai
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          // borderRadius:
                          // BorderRadius.circular(changeButton ? 40 : 10),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login button"),
                    //   // style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //   },
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
