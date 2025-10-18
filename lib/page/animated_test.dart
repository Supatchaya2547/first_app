import 'package:flutter/material.dart';

class AnimatedTest extends StatefulWidget {
  const AnimatedTest({super.key});

  @override
  State<AnimatedTest> createState() => _AnimatedTestState();
}

class _AnimatedTestState extends State<AnimatedTest> {
  double _size = 100;
  Color _color = Colors.red;
  double _opacity = 1.0;
  bool _isLeft = false;
  double _padding = 10;

  int currentLight = 0; // 0 = แดง, 1 = เหลือง, 2 = เขียว

  void _changeLight() {
    setState(() {
      currentLight = (currentLight + 1) % 3; // สลับ 0 -> 1 -> 2 -> 0
    });
  }

  double _getOpacity(int lightIndex) {
    // ถ้าเป็นไฟที่กำลังสว่าง = 1.0, ถ้าไม่ใช่ = 0.3
    return currentLight == lightIndex ? 1.0 : 0.3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Traffic Light")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ไฟแดง
            AnimatedOpacity(
              opacity: _getOpacity(0),
              duration: const Duration(milliseconds: 600),
              child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),

            // ไฟเหลือง
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: _getOpacity(1),
              duration: const Duration(milliseconds: 600), // ยิ่งเยอะ ยิ่งช้า
              child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
            ),

            //ไฟเขียว
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: _getOpacity(2),
              duration: const Duration(milliseconds: 600),
              child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _changeLight,
              child: const Text("เปลี่ยนไฟ"),
            ),
          ],
        ),
      ),
    );
  }
}
