import 'package:flutter/material.dart';

import '../Decoration/InputDe.dart';

textEmail() {
    final TextEditingController _emailController = TextEditingController();
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      autofillHints: const [AutofillHints.email],
      textInputAction: TextInputAction.next,
      decoration: nputDecoration().emailInput,
      controller: _emailController,
    );
  }