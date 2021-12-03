import 'package:flutter/material.dart';

import 'pantallas/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Topicos',
      home: MyHomePage("Sistema de Encuestas"), 
    );
  }
}
