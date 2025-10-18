import 'package:flutter/material.dart';

class CustomCounterWidget extends StatefulWidget {
  final String title;
  final Color backgroundColor;
  final ValueChanged<Color> setTeamWin;
  const CustomCounterWidget({super.key, required this.title, required this.backgroundColor, required this.setTeamWin});

  @override
  State<CustomCounterWidget> createState() => _CustomCounterWidgetState();
}

class _CustomCounterWidgetState extends State<CustomCounterWidget> {
  int _counter = 0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.title}:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: (){
                _incrementCounter;
                if(_counter >= 21){
                  widget.setTeamWin(widget.backgroundColor);
                  return;
                }
              }, 
              
              child: Text('Increment+'))
          ],
        )
      );
  }
}