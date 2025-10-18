// import 'package:flutter/material.dart';

// class SettingPage extends StatefulWidget {
//   const SettingPage({super.key});

//   @override
//   State<SettingPage> createState() => _SettingPageState();
// }

// class _SettingPageState extends State<SettingPage> {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: 'Settings',),
//       body: ListView(
//         children: [
//           SwitchListTile(
//             title: Text('notifications'),
//             secondary: Icon(Icon.notifications),
//             value: _turnOnNoti, 
//             onChanged: (bool? value){
//               setState(() {
//                 _turnOnNoti = !_turnOnNoti;
//               });
//             })
//         ],
//       ),
//     );
//   }
// }