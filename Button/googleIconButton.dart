import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/googleSignIn.dart';

class googleButton extends StatelessWidget {
  const googleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () async {
          var data = await GoogleSignHelper.instance.signIn();
          if (data != null) {
            var userData = await GoogleSignHelper.instance.firebaseSignin();
          }
        },
        label: Text('Google'),
        icon: Icon(Icons.outbound_rounded));
  }
}
