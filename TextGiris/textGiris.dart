import 'package:flutter/material.dart';

import '../const/ProjectKeys.dart';
import '../const/ProjectStyle.dart';

class textGiris extends StatelessWidget {
  const textGiris({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //Text kısmının clean code yap ve sağa götür
      ProjectKeys().GirisSec,
      style: ProjectStyle.Sec,
    );
  }
}