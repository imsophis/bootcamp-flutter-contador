import 'package:contador/counter_screen_state.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// statelessvidget - es lo mismo
// statefull - cambia
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.cyanAccent),
      home: CounterScreenState(),
    ); // widget principal- raiz de widgets
  }
}