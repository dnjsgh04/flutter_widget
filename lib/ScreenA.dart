import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen a"),
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/b');
            },
                child: Text("move to B")

            ),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/c');
            },
                child: Text("move to C")
            )
          ],
        ),
      ),
    );
  }
}
