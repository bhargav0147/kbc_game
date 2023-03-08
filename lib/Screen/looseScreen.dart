import 'package:flutter/material.dart';

class Loose extends StatefulWidget {
  const Loose({Key? key}) : super(key: key);

  @override
  State<Loose> createState() => _LooseState();
}

class _LooseState extends State<Loose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cancel.png",
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              "Sorry you are lose",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/reloading.png",
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
