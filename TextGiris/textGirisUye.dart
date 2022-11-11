import 'package:flutter/material.dart';

import '../const/ColorsItems .dart';
import '../const/ProjectKeys.dart';

Text textGirisUye() {
    return Text(
      //Text kısmının clean code yap ve sağa götür
      ProjectKeys().GirisUye,
      style: const TextStyle(
        color: ColorsItems.grey,
      ),
    );
  }