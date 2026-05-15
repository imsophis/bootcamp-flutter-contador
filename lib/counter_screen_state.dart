import 'package:flutter/material.dart';

class CounterScreenState extends StatefulWidget {
  const CounterScreenState({super.key});

  @override
  State<CounterScreenState> createState() => _CounterScreenStateState();
}

class _CounterScreenStateState extends State<CounterScreenState> {
  int count = 0;

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
              style: TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                  color: count >= 0 ? Colors.blue : Colors.red,
              ),
            ),
            Text(
              count != 1 ? 'Clicks' : 'Click',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: add,
            child: Icon(Icons.plus_one_rounded),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: substraction,
            child: Icon(Icons.exposure_minus_1_rounded),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: reload,
            child: Icon(Icons.refresh),
          ),
        ],
      )
    );
  }

  void reload(){
    setState(() {
      count = 0;
    }) ;
  }

  void add(){
    setState(() {
      count++;
    }) ;
  }

  void substraction(){
    setState(() {
      count--;
    }) ;
  }
}
