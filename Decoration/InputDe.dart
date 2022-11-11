import 'package:flutter/material.dart';

import '../const/ColorsItems .dart';

class nputDecoration {
  final emailInput = InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    hintText: 'E-posta',
    fillColor: Colors.white,
    filled: true,
  );

  final passwodInput = InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    hintText: 'Şifre',
    fillColor: ColorsItems.white,
    // Colors.white,

    filled: true,
  );
}