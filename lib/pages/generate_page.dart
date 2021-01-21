import 'package:flutter/material.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click below to Generate a device report"),
            RaisedButton(
              child: Text("Generate"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
