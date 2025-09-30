import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;
  final boxColor = Colors.blue;

  @override
void initState(){
  super.initState();
  setState(() {
    counter = 2;
  });
}

Color getColorBox(){
  if (counter % 2 == 0) {
    return Colors.blue;
  }else{
    return Colors.red;
  }
}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First StatefulWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: getColorBox(), child: Text('Counter : $counter')), 
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  counter = counter + 1;
                });
              },
              child: Text('+ Increment'))
              
            ], 
        ),
      ),
    );
  }
}
