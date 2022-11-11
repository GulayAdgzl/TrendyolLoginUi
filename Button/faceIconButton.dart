import 'package:flutter/material.dart';


import '../const/ImageItems.dart';
import '../launch_manager_trendyol.dart';

TextButton facebookIconButton() {
    return TextButton(
      onPressed: () {
        launchURL('https://facebook.com/');
      },
      child: Container(
        height: 50,
        //margin: const EdgeInsets.all(10),

        child: Expanded(
          child: Row(
            children: [
              //Image.asset("assets/facebook.png"),
              Image.asset(ImageItems().facebook),
            ],
          ),
        ),
      ),
    );
  }
  
  void launchURL(String s) {
  }
  
