import 'dart:math';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final keyform = GlobalKey<FormState>();
  TextEditingController txtuser = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtpwd = TextEditingController();
  bool isShowPwd = true;
  bool isUpdate = false;
  int? updateIndex;

  void clearForm() {
    txtuser.clear();
    txtpwd.clear();
    txtemail.clear();
    txtphone.clear();
    txtadd.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 3, 214, 3),
              Color.fromARGB(139, 46, 240, 233),
              Color.fromARGB(255, 3, 214, 3),
            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Form(
          key: keyform,
          child: Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 450),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(139, 46, 240, 233),
                      borderRadius: BorderRadius.circular(20),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10),

                        Text(
                          'REGISTER',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 234, 0),
                              ),
                            ),
                            labelText: "enter your username",
                            labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 255, 234, 0),
                            ),
                            prefixIcon: Icon(Icons.person, color: Colors.white),
                          ),
                          controller: txtuser,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "username is require";
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: 15),

                        // EMAIL
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 234, 0),
                              ),
                            ),
                            labelText: "enter your email",
                            labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 255, 234, 0),
                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.white),
                          ),
                          controller: txtemail,
                        ),

                        SizedBox(height: 15),

                        // PHONE
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 234, 0),
                              ),
                            ),
                            labelText: "enter your phone number",
                            labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 255, 234, 0),
                            ),
                            prefixIcon: Icon(Icons.phone, color: Colors.white),
                          ),
                          controller: txtphone,
                        ),

                        SizedBox(height: 15),

                        // PASSWORD
                        TextFormField(
                          obscureText: isShowPwd,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 234, 0),
                              ),
                            ),
                            labelText: "enter your password",
                            labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 255, 234, 0),
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isShowPwd = !isShowPwd;
                                });
                              },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          controller: txtpwd,
                        ),

                        SizedBox(height: 25),

                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(123, 231, 235, 6),
                            ),
                            width: double.infinity,
                            height: 50,
                            child: Center(
                              child: Text(
                                'REGISTER',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
