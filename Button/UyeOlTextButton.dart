import 'package:flutter/material.dart';

import '../const/ProjectKeys.dart';

TextButton textUyeOl() {
    return TextButton(
      onPressed: () {},
      child: Text(
        ProjectKeys().GirisUyeOl,
        style: const TextStyle(
          color: Colors.orange,
        ),
        //Text kısmının clean code yap ve sağa götür
      ),
    );
  }