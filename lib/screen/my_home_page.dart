import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter > 0) 
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Increment Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("นับไปแล้ว $_counter ครั้ง", style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _decrementCounter, child: Icon(Icons.remove), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),),
                ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),),
              ],
            ),
            
            
          ],
        ),
        
      )
    );
  }
}