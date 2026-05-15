import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  int count = 0;
  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Click', style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print("Count ${count}");
        },
        child: Icon(Icons.plus_one_rounded),
      ),
    );
  }
}