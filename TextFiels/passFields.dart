import 'package:flutter/material.dart';

import '../Decoration/InputDe.dart';

textPassword() {
    final TextEditingController _passwordController = TextEditingController();
    return TextField(
      //keyboardType: TextInputType.password,
      keyboardType: TextInputType.text,
      obscureText: true,

      autofocus: true,
      autofillHints: const [AutofillHints.password],
      textInputAction: TextInputAction.next,
      decoration: nputDecoration().passwodInput,
      controller: _passwordController,
    );
  }