import 'package:flutter/material.dart';
import 'package:phinfo/pages/generate_page.dart';

class PhInfo extends StatelessWidget {
  const PhInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: GeneratePage());
  }
}
