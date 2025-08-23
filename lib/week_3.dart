// ListView
import 'package:flutter/material.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ListView')),
//       backgroundColor: Colors.white,
//       body: ListView(
//         children: [
//           Container(
//             height: 400,
//             width: double.infinity,
//             color: Colors.red,
//             child: Text('Ttem 1'),
//           ),
//           Container(
//             height: 100,
//             width: double.infinity,
//             color: Colors.green,
//             child: Text('Ttem 2'),
//           ),
//           Container(
//               height: 200,
//               width: double.infinity,
//               color: Colors.blue,
//               child: Text('Ttem 3'),
//             ),
//             Container(
//               height: 200,
//               width: double.infinity,
//               color: Colors.yellow,
//               child: Text('Ttem 4'),
//             ),
//         ],
//       ),
//     );
//   }
// }



class Week3 extends StatelessWidget {
  const Week3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listProduct = ['Apple', 'Samsung', 'Oppo', 'Blackberry'];
    return Scaffold(
      appBar: AppBar(title: Text('ListView')),
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemCount: listProduct.length,
        itemBuilder: (context, index){
          return 
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   color: Colors.red,
          //   child: Text('Item ${listProduct[index]}'),
          // );

          ListTile(
            leading: Text('$index'),
            title: Text(listProduct[index]),
            subtitle: Text('loremlorem....'),
            trailing: Icon(Icons.edit),

          );
        },
        separatorBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 2,
            width: double.infinity,
            color: Colors.blueAccent,
          );
        }
      ),
    );
  }
}
