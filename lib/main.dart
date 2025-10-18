import 'package:first_app/api_example/ApiExample.dart';
import 'package:first_app/api_example/ApiExampleList.dart';
import 'package:first_app/api_example/AssignmentWeek5.dart';
import 'package:first_app/api_example/firebase_test_crud.dart';
import 'package:first_app/api_pm25/api_pm25.dart';
import 'package:first_app/assignment1.dart';
import 'package:first_app/constant/themeData.dart';
import 'package:first_app/counter_widget.dart';
import 'package:first_app/form_example/form_example1.dart';
import 'package:first_app/greeting_widget.dart';
import 'package:first_app/navigation_example/first_page.dart';
import 'package:first_app/navigation_example/second_page.dart';
import 'package:first_app/page/aminimated_simple.dart';
import 'package:first_app/page/animated_test.dart';
import 'package:first_app/page/demo_share_preferences.dart';
import 'package:first_app/page/profile_custom_widget.dart';
import 'package:first_app/page/simple_custom_widget.dart';
import 'package:first_app/page/test_dark_light.dart';
import 'package:first_app/week_3.dart';
import 'package:first_app/widget_ass.dart';
import 'package:flutter/material.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // ค่าเริ่มต้นเป็น Light Mode

  void toggleTheme() {
    setState(() {
      _themeMode =
          (_themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: _themeMode, // set theme เปลี่ยนได้ตรงนี้

      darkTheme: darkTheme, //dark thme
      theme: lightTheme, //default thme

      home: AnimatedTest(),
      // home: TestDarkLight(switchMode: toggleTheme,),
    );
  }
}
