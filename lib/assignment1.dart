import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment1'),
        backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      ),

      body: Center(
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.3), // สีเงา
                blurRadius: 10, // ความฟุ้งของเงา
                spreadRadius: 2, // ขอบเขตเงา
                offset: Offset(0, 5), // การเลื่อนเงา x,y
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              ClipOval(
                child: Image.asset(
                  'me.jpg',
                  width: 125,
                  height: 125,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20), // เว้นระยะห่าง
              const Text(
                'Supatchaya Benjanuwat',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 20),
              const Text(
                '650710727',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 20),
              const Text(
                'สาขาเทคโนโลยีสารสนเทศ (IT)',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 20),
              const Text(
                'เป็นนักศึกษาปี 4 ที่อยากเป็นคนรวย อยากถูกหวย แล้วนอนเลี้ยงหมาอยู่บ้านคับ อิอิ',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 233, 81, 81),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
