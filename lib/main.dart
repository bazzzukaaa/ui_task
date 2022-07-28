import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  return runApp(const UITask());
}

class UITask extends StatelessWidget {
  const UITask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
