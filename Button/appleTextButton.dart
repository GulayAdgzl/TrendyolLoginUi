import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/ImageItems.dart';
import '../const/ProjectKeys.dart';
import '../const/ProjectPadding.dart';

TextButton appleTextButton() {
  return TextButton(
    onPressed: () {
      launchUrl(Uri.parse('https://appleid.apple.com/sign-in/'));
    },
    child: Container(
      height: 50,
      //margin: const EdgeInsets.all(20),
      margin: ProjectPadding.pagePaddingAll,

      // ignore: prefer_const_constructors

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              // Image.asset("assets/apple.png"),
              Image.asset(ImageItems().apple),
              Text(
                ProjectKeys().GirisApple,
                //style: color: Colors.white,
                //Image.asset("assets/apple.png"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}