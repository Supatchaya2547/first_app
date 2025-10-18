import 'package:first_app/components/custom_card.dart';
import 'package:first_app/components/custom_counter_widget.dart';
import 'package:flutter/material.dart';

class SimpleCustomWidget extends StatefulWidget {
  const SimpleCustomWidget({super.key});

  @override
  State<SimpleCustomWidget> createState() => _SimpleCustomWidgetState();
}

class _SimpleCustomWidgetState extends State<SimpleCustomWidget> {
Color backgroundTeamWin = Colors.white;
void setTeamWin(Color backgroundColor){
  setState(() {
    backgroundTeamWin = backgroundColor;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Widget')),
      backgroundColor: backgroundTeamWin,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCounterWidget(title: 'TEAM A', backgroundColor: Colors.red, setTeamWin: setTeamWin,),
            SizedBox(height: 15,),
            CustomCounterWidget(title: 'TEAM B', backgroundColor: Colors.blue, setTeamWin: setTeamWin,)
          ],
        ),
      ),
    );
  }
}
