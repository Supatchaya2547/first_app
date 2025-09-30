import 'package:flutter/material.dart';

class CounterWidget1 extends StatefulWidget {
  const CounterWidget1({super.key});

  @override
  State<CounterWidget1> createState() => _CounterWidget1State();
}

class _CounterWidget1State extends State<CounterWidget1> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First StatefulWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value:', style: TextStyle(fontSize: 20)),
            Text(
              '$counter',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Text('+ Increment'),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter - 1;
                    });
                  },
                  child: Text('- Decrement'),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
