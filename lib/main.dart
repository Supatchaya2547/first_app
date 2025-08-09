import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 58, 148, 183),
        ),
      ),
      home: MyWidget(),
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Time App'),
//         backgroundColor: const Color.fromARGB(255, 218, 251, 193),
//       ),
//       body: Center(
//         child: Container(
//           height: 250,
//           width: 250,
//           color: Colors.blue,
//           child: Center(
//             child: Text('Hello, Supatchaya Benjanuwat 650710727',
//               overflow: TextOverflow.fade,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//               softWrap: true,
//               ))),
//       ),
//     );
//   }
// }

// ROW
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Time App'),
//         backgroundColor: const Color.fromARGB(255, 218, 251, 193),
//       ),
//       body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.red,
//           ),
//           SizedBox(
//             width: 50
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.green,
//           ),
//           SizedBox(
//             width: 50
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.blue,
//           )
//           ]),
//     );
//   }
// }

// COLUMN
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Time App'),
//         backgroundColor: const Color.fromARGB(255, 218, 251, 193),
//       ),
//       body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.red,
//           ),
//           SizedBox(
//             width: 50
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.green,
//           ),
//           SizedBox(
//             width: 50
//           ),
//           Expanded(
//             child: Container(
//               height: 100,
//              color: Colors.blue,
//           ),
//           )
//         ],),
//           SizedBox(
//             height: 50
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.red,
//           ),
//           SizedBox(
//             height: 50
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.green,
//           ),
//           SizedBox(
//             height: 50
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.blue,
//           )
//           ]),
//     );
//   }
// }

// ROW Expanded
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Time App'),
//         backgroundColor: const Color.fromARGB(255, 218, 251, 193),
//       ),
//       body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Expanded(
//             child: Container(
//               height: 100,
//               color: Colors.blue,
//           )),

//           Expanded(
//             child: Container(
//               height: 100,
//               color: Colors.red,
//           )),

//           Expanded(
//             child: Container(
//               height: 100,
//               color: Colors.green,
//           ))
//           ]),
//     );
//   }
// }

// COLUMN Expanded
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Time App'),
//         backgroundColor: const Color.fromARGB(255, 218, 251, 193),
//       ),
//       body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Expanded(
//             flex: 1,
//             child: Container(
//               width: 100,
//               color: Colors.blue,
//           )),

//           Expanded(
//             flex: 2,
//             child: Container(
//               width: 100,
//               color: Colors.red,
//           )),

//           Expanded(
//             flex: 4,
//             child: Container(
//               width: 100,
//               color: Colors.green,
//           ))
//           ]),
//     );
//   }
// }

//Exercise 2
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Color Layout', style: TextStyle(color: Colors.white)),
//         backgroundColor: const Color.fromARGB(255, 54, 72, 208),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20),
//           Row(
//             children: [
//               SizedBox(width: 20),
//               Container(width: 100, height: 100, color: Colors.red),
//               SizedBox(width: 20),
//               Container(width: 100, height: 100, color: Colors.green),
//               SizedBox(width: 20),
//               Container(width: 100, height: 100, color: Colors.blue),
//               SizedBox(width: 20),
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: [
//               SizedBox(width: 20),
//               Expanded(
//                 flex: 1,
//                 child: Container(height: 100, color: Colors.yellow),
//               ),
//               SizedBox(width: 20),
//               Expanded(
//                 flex: 2,
//                 child: Container(height: 100, color: Colors.purple),
//               ),
//               SizedBox(width: 20),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

//Exercise 2 Stack
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Color Layout', style: TextStyle(color: Colors.white)),
//         backgroundColor: const Color.fromARGB(255, 54, 72, 208),
//       ),
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             height: 150,
//             width: 150,
//             decoration: BoxDecoration(color: Colors.red),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.green,
//             ),
//           ),
//           Positioned(
//             top: 10,
//             right: 20,
//             child: Container(
//               height: 50,
//               width: 50,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.yellow,
//               ),
//               child: Text("99+", textAlign: TextAlign.right,),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Exercise 3
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Color Layout', style: TextStyle(color: Colors.white)),
//         backgroundColor: const Color.fromARGB(255, 54, 72, 208),
//       ),

//       body: Center(
//         child: Stack(
//           children: [
//             Container(
//               height: 300,
//               width: 120,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//             Positioned(
//               top: 10,
//               right: 20,
//               child: Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 110,
//               right: 20,
//               child: Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.yellow,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 210,
//               right: 20,
//               child: Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://dt.lnwfile.com/_/dt/_raw/8a/y8/nr.jpg", height: 150,width: 150),
            SizedBox(height: 50,),
            Image.asset('dog.jpg'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: (){
                print('Clicked!');
              }, 
              child: Text('Click me!')),
              TextButton(
                onPressed: (){
                  print('Text Button');
                }, 
                child: Text('Click me!!')),
          ],
        ),
      ),
      );
  }
}
