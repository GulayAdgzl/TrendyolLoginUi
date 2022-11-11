import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/ColorsItems .dart';
import '../const/ProjectKeys.dart';
import '../const/ProjectPadding.dart';
import '../const/ProjectStyle.dart';

class girisButton extends StatelessWidget {
  const girisButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
          height: 50,
          // margin: EdgeInsets.all(20),
          margin: ProjectPadding.pagePaddingAll,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsItems.orange,
            // Colors.orange,
          ),
          child: Center(
            child: Text(
              ProjectKeys().GirisYap,
              style: ProjectStyle.Giris,
            ),
          )),
    );
  }
}