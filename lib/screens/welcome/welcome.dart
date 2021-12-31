import 'package:flutter/material.dart';
import 'package:music_player_app/constants/colors.dart';
import 'package:music_player_app/custom_icons.dart';
import 'package:music_player_app/screens/auth/login.dart';
import 'package:music_player_app/widgets/button_builder.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 50),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/white_desk_headphone.png"),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Wrap(
              runSpacing: 50,
              alignment: WrapAlignment.center,
              children: [
                Text("MY MUSIC", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 50)),
                Wrap(
                  runSpacing: 15,
                  alignment: WrapAlignment.center,
                  children: [
                    Text("Discover new music.",
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24)),
                    Text("Explore the largest community of\nartists, bands, podcasters and creators\nof music & audio.",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                        textAlign: TextAlign.center),
                  ],
                ),
                Wrap(
                  runSpacing: 10,
                  children: [
                    ButtonBuilder("SING UP",
                        color: kPrimaryColor, backgroundColor: kSecondaryColor
                    ),
                    ButtonBuilder("CONTINUE WITH FACEBOOK",
                        color: kPrimaryColor,
                        backgroundColor: kAccentColor,
                        icon: CustomIcons.facebook_icon),
                    ButtonBuilder("CONTINUE WITH APPLE",
                        color: kSecondaryColor,
                        backgroundColor: kGrey,
                        icon: CustomIcons.apple_icon),
                    ButtonBuilder("LOG IN",
                      color: kSecondaryColor,
                      backgroundColor: Colors.transparent,
                      paddingVertical: 5,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
