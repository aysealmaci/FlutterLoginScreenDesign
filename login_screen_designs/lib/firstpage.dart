import 'package:flutter/material.dart';

import 'firstbuttons.dart';
import 'loginpage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Center(
              child: Image.asset(
                'assets/1.GIF',
                height: 250,
                width: 300,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Learn at home!",
                style: TextStyle(
                    color: Color.fromARGB(255, 44, 43, 71), fontSize: 39)),
            SizedBox(
              height: 30,
            ),
            firstbuttons(
              button_name: "Start Now",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ));
  }
}
