import 'package:flutter/material.dart';

import 'loginpage.dart';

class firstbuttons extends StatelessWidget {
  const firstbuttons({
    Key? key,
    this.button_name,
    required this.onPressed,
  }) : super(key: key);

  final String? button_name;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 200,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 43, 43, 71),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            onPressed: onPressed,
            child: Text(
              button_name!,
              style: TextStyle(
                fontSize: 18,
              ),
            )));
  }
}
