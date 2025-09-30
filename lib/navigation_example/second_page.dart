import 'package:first_app/navigation_example/first_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  
  final String name;
  final int age;
  const SecondPage({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: const Color.fromARGB(255, 236, 220, 170),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name $name'),
            Text('Age: $age'),
            ElevatedButton(onPressed: () {
                Navigator.pop(context);
                //Navigator.pushNamed(context, '/');
              }, child: Text('< First Page')),
          ],
        ),
      ),
    );
  
  }
}