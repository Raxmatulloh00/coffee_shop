import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const Spacer(flex: 2),
              Image.asset(
                "assets/images/coffee.png",
                fit: BoxFit.cover,
                height: 100,
                width: 200,
              ),
              const Spacer(flex: 1),
              Text(
                "Coffee Shop",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
              ),
              const Spacer(flex: 8),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.brown[900],
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
