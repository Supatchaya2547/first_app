import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String name;
  final Color colorbox;
  final Widget childWidget;
  const GreetingWidget({super.key, this.name = 'World', this.colorbox = Colors.red, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Stateless Widget')),
      body: Center(
        child: Container(
          color: colorbox,
          child: childWidget,
        ),
      ),
    );
  }
}
