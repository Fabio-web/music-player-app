import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "SFPro"
      ),
    );
  }
}
