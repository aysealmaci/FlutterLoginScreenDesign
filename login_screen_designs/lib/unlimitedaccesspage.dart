import 'package:flutter/material.dart';

import 'firstbuttons.dart';
import 'loginpage.dart';

class UnlimitedAccessPage extends StatelessWidget {
  const UnlimitedAccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/3.GIF',
              height: 250,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Get unlimited",
                style: TextStyle(
                    color: Color.fromARGB(255, 44, 43, 71), fontSize: 38)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("access!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 44, 43, 71), fontSize: 38)),
                SizedBox(
                  height: 8,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prices(
                  per_month: "11.99",
                  per_year: "143.99",
                ),
                SizedBox(
                  width: 20,
                ),
                prices(
                  per_month: "4.99",
                  per_year: "59.99",
                ),
              ],
            ),
            SizedBox(height: 20),
            firstbuttons(
              button_name: "Go Premium",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class prices extends StatelessWidget {
  prices({
    Key? key,
    this.per_month,
    this.per_year,
  }) : super(key: key);

  final String? per_month;
  final String? per_year;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 241, 241, 242),
          ),
          child: Column(
            children: [
              Text(
                "\$" + per_month!,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 44, 43, 71),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "\$" + per_month!,
                    style: TextStyle(color: Color.fromARGB(255, 135, 134, 158)),
                  ),
                  Text(
                    " per month",
                    style: TextStyle(color: Color.fromARGB(255, 199, 197, 209)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "\$" + per_year!,
                    style: TextStyle(color: Color.fromARGB(255, 135, 134, 158)),
                  ),
                  Text(
                    " per year",
                    style: TextStyle(color: Color.fromARGB(255, 199, 197, 209)),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
