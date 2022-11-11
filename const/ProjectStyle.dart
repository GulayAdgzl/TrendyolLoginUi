import 'package:flutter/material.dart';

import '../trendyolLogin.dart';
import 'ColorsItems .dart';

class ProjectStyle {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.lime,
      fontSize: 16,
      fontWeight: FontWeight.w600);

  static TextStyle Giris =
      const TextStyle(color: ColorsItems.white, fontSize: 20);
  static TextStyle Sec =
      const TextStyle(color: Color.fromARGB(255, 143, 135, 135));
}