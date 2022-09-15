import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}
