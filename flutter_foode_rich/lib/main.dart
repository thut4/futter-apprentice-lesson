import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/component/foodelich_theme.dart';
import 'package:flutter_fooder_rich/pages/home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderLichTheme.dark();

    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
