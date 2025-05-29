import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Image.asset("Images/logo.png"),
            Text(
              "Welcome TO AIRBNB",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          suffixIcon: Icon(Icons.email, color: Colors.white),
                        ),
                        validator: (valueEmail) {
                          if (!valueEmail!.contains("@")) {
                            print('Not A Valid Email');
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                        ),
                        validator: (valuepasswprd) {
                          if (valuepasswprd!.length < 5) {
                            print('Password must be atleast of 6 character');
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          padding: EdgeInsets.symmetric(
                            horizontal: 60,
                            vertical: 40,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Don't have account? Create here",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
