import 'dart:io';

import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailEditingcontroller = TextEditingController();
  TextEditingController _passwordEditingcontroller = TextEditingController();
  TextEditingController _firstnameEditingcontroler = TextEditingController();
  TextEditingController _lastnameEditingcontroller = TextEditingController();
  TextEditingController _citynameEditingcontroller = TextEditingController();
  TextEditingController _countrytextEditingcontroller = TextEditingController();
  TextEditingController _biotexEditngcontroller = TextEditingController();
  // TextEditingController _passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  File? imageFileofuser;
  get valuepasswprd => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.amber],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(1, 0),
              stops: [0, 1],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        title: Text(
          'Create New Account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.amber],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1, 0),
            stops: [0, 1],
            tileMode: TileMode.clamp,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Image.asset('images/signup.png', width: 200),
            ),
            Text(
              'Tell Us About You ',
              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _emailEditingcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (valueEmail) {
                        if (!valueEmail!.contains("@")) {
                          print('Please wite a valid email');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _passwordEditingcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (valuepassword) {
                        if (valuepasswprd!.length < 5) {
                          print('Password must be atleast of 6 character');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _firstnameEditingcontroler,
                      decoration: InputDecoration(
                        hintText: 'Enter your First Name',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (text) {
                        if (text!.isEmpty) {
                          print('Please wite your first name');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _lastnameEditingcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your last Name',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (lastname) {
                        if (lastname!.isEmpty) {
                          print('Please enter your last name');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _citynameEditingcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your city',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (cityname) {
                        if (cityname!.isEmpty) {
                          print('Enter Your City Name');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _countrytextEditingcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your Country',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (country) {
                        if (country!.isEmpty) {
                          print('Please Enter Your country');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                      right: 20,
                    ),
                    child: TextFormField(
                      controller: _biotexEditngcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your Bio',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                      validator: (bio) {
                        if (bio!.isEmpty) {
                          print('Plase Enter Your Bio');
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child:
                          imageFileofuser == null
                              ? const Icon(Icons.add_a_photo)
                              : CircleAvatar(
                                radius: MediaQuery.of(context).size.width / 5.0,
                                child: CircleAvatar(
                                  backgroundImage: FileImage(imageFileofuser!),
                                  radius:
                                      MediaQuery.of(context).size.width / 5.2,
                                ),
                              ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
