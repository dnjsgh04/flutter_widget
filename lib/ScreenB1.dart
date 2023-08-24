import 'package:flutter/material.dart';

class ScreenB1 extends StatelessWidget {
  const ScreenB1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen b"),
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/a');
            },
                child: Text("move to C")
            )
          ],
        ),
      ),
    );
  }
}
