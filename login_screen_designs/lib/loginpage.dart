import 'package:flutter/material.dart';
import 'package:login_screen_designs/unlimitedaccesspage.dart';

import 'firstbuttons.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //bool _passwordVisible=true;
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/2.GIF',
              height: 250,
              width: 300,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Let's Start!",
                style: TextStyle(
                    color: Color.fromARGB(255, 44, 43, 71), fontSize: 39)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 241, 241, 242),
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 241, 241, 242),
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                          child: Icon(_obsecureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                    obscureText: _obsecureText,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  firstbuttons(
                    button_name: "Sign in",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UnlimitedAccessPage()));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 185, 184, 198)),
                          ),
                          SizedBox(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 43, 43, 71)),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
