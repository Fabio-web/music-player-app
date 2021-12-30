import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player_app/constants/colors.dart';
import 'package:music_player_app/screens/welcome/welcome.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kSecondaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music player',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "SFPro"),
      home: WelcomePage(),
    );
  }
}
